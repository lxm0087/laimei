/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : ceshi

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-09-22 21:46:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `phome_ecms_infoclass_news`
-- ----------------------------
DROP TABLE IF EXISTS `phome_ecms_infoclass_news`;
CREATE TABLE `phome_ecms_infoclass_news` (
  `classid` int(10) unsigned NOT NULL DEFAULT '0',
  `zz_title` text NOT NULL,
  `z_title` varchar(255) NOT NULL DEFAULT '',
  `qz_title` varchar(255) NOT NULL DEFAULT '',
  `save_title` varchar(10) NOT NULL DEFAULT '',
  `zz_titlepic` text NOT NULL,
  `z_titlepic` varchar(255) NOT NULL DEFAULT '',
  `qz_titlepic` varchar(255) NOT NULL DEFAULT '',
  `save_titlepic` varchar(10) NOT NULL DEFAULT '',
  `zz_newstime` text NOT NULL,
  `z_newstime` varchar(255) NOT NULL DEFAULT '',
  `qz_newstime` varchar(255) NOT NULL DEFAULT '',
  `save_newstime` varchar(10) NOT NULL DEFAULT '',
  `zz_ftitle` text NOT NULL,
  `z_ftitle` varchar(255) NOT NULL DEFAULT '',
  `qz_ftitle` varchar(255) NOT NULL DEFAULT '',
  `save_ftitle` varchar(10) NOT NULL DEFAULT '',
  `zz_smalltext` text NOT NULL,
  `z_smalltext` varchar(255) NOT NULL DEFAULT '',
  `qz_smalltext` varchar(255) NOT NULL DEFAULT '',
  `save_smalltext` varchar(10) NOT NULL DEFAULT '',
  `zz_writer` text NOT NULL,
  `z_writer` varchar(255) NOT NULL DEFAULT '',
  `qz_writer` varchar(255) NOT NULL DEFAULT '',
  `save_writer` varchar(10) NOT NULL DEFAULT '',
  `zz_befrom` text NOT NULL,
  `z_befrom` varchar(255) NOT NULL DEFAULT '',
  `qz_befrom` varchar(255) NOT NULL DEFAULT '',
  `save_befrom` varchar(10) NOT NULL DEFAULT '',
  `zz_newstext` text NOT NULL,
  `z_newstext` varchar(255) NOT NULL DEFAULT '',
  `qz_newstext` varchar(255) NOT NULL DEFAULT '',
  `save_newstext` varchar(10) NOT NULL DEFAULT '',
  `zz_diggtop` text NOT NULL,
  `z_diggtop` varchar(255) NOT NULL DEFAULT '',
  `qz_diggtop` varchar(255) NOT NULL DEFAULT '',
  `save_diggtop` varchar(10) NOT NULL DEFAULT '',
  `zz_experttext` text NOT NULL,
  `z_experttext` varchar(255) NOT NULL,
  `qz_experttext` varchar(255) NOT NULL,
  `save_experttext` varchar(10) NOT NULL,
  `zz_expertimg` text NOT NULL,
  `z_expertimg` varchar(255) NOT NULL,
  `qz_expertimg` varchar(255) NOT NULL,
  `save_expertimg` varchar(10) NOT NULL,
  `zz_expertjs` text NOT NULL,
  `z_expertjs` varchar(255) NOT NULL,
  `qz_expertjs` varchar(255) NOT NULL,
  `save_expertjs` varchar(10) NOT NULL,
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_ecms_infoclass_news
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_ecms_infotmp_news`
-- ----------------------------
DROP TABLE IF EXISTS `phome_ecms_infotmp_news`;
CREATE TABLE `phome_ecms_infotmp_news` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `classid` int(10) unsigned NOT NULL DEFAULT '0',
  `oldurl` varchar(200) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `tmptime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `keyboard` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `ftitle` varchar(120) NOT NULL DEFAULT '',
  `smalltext` varchar(255) NOT NULL DEFAULT '',
  `writer` varchar(30) NOT NULL DEFAULT '',
  `befrom` varchar(60) NOT NULL DEFAULT '',
  `newstext` mediumtext NOT NULL,
  `diggtop` int(11) NOT NULL DEFAULT '0',
  `experttext` varchar(255) NOT NULL DEFAULT '',
  `expertimg` varchar(120) NOT NULL DEFAULT '',
  `expertjs` varchar(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_ecms_infotmp_news
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_ecms_news`
-- ----------------------------
DROP TABLE IF EXISTS `phome_ecms_news`;
CREATE TABLE `phome_ecms_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` char(20) NOT NULL DEFAULT '',
  `filename` char(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(1) NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` char(14) NOT NULL DEFAULT '',
  `titleurl` char(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` char(80) NOT NULL DEFAULT '',
  `title` char(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` char(120) NOT NULL DEFAULT '',
  `ftitle` char(120) NOT NULL DEFAULT '',
  `smalltext` char(255) NOT NULL DEFAULT '',
  `diggtop` int(11) NOT NULL DEFAULT '0',
  `experttext` varchar(255) NOT NULL DEFAULT '',
  `expertimg` varchar(120) NOT NULL DEFAULT '',
  `expertjs` varchar(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`),
  KEY `useridis` (`userid`,`ismember`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_ecms_news
-- ----------------------------
INSERT INTO `phome_ecms_news` VALUES ('13', '13', '0', '0', '0', '0', '2017-09-22', '13', '1', 'admin', '0', '0', '1', '0', '0', '0', '1', '1506064002', '1506064002', '1', '0', '0', '', '/s/qiemeixiufu/index.html', '1', '1', '1', '', '切眉修复', '1506063916', '/d/file/ybzx/ybzh/2017-09-22/8907cdf2575023bd4cd61057111df011.png', '适用人群', '切眉损伤', '0', '', '', '');
INSERT INTO `phome_ecms_news` VALUES ('12', '1', '0', '0', '0', '0', '2017-09-22', '12', '1', 'admin', '0', '0', '1', '0', '0', '0', '1', '1506049638', '1506049638', '1', '0', '0', '', '/s/SdlLiposuctiona/index.html', '1', '1', '1', '', '吸脂减肥-360°', '1506049533', '/d/file/jdxm/2017-09-22/295dfa2e3e098635c8f84adbcda2b04e.jpg', '适用人群', '身体肥胖 | 皮肤松弛 | 大脸 | 蝴蝶袖 | 粗腿 | 面颊肥胖', '0', '', '', '');
INSERT INTO `phome_ecms_news` VALUES ('4', '56', '0', '0', '0', '0', '2017-09-21', '4', '1', 'admin', '0', '0', '1', '0', '0', '0', '1', '1505969891', '1505972869', '1', '0', '0', '', 'https://aibk10.kuaishang.cn/bs/im/68430/57712/573110.htm', '1', '1', '1', '', '九月份特邀专家团队', '1505969642', '/d/file/sygl/banner/2017-09-21/c8d9ad84d152d7ea7b58f0a5fe4c5d6c.jpg', '', ' 1', '0', '', '', '');
INSERT INTO `phome_ecms_news` VALUES ('5', '56', '0', '0', '0', '0', '2017-09-21', '5', '1', 'admin', '0', '0', '1', '0', '0', '0', '1', '1505972276', '1505972276', '1', '0', '0', '', ' /s/201709/', '1', '1', '1', '', '国际共享整形美容节-南昌莱美美容整形医院', '1505972167', '/d/file/sygl/banner/2017-09-21/2ebb22c9010e6eb2bd4d292f866d1ef7.jpg', '', '', '0', '', '', '');
INSERT INTO `phome_ecms_news` VALUES ('6', '56', '0', '0', '0', '0', '2017-09-21', '6', '1', 'admin', '0', '0', '1', '0', '0', '0', '1', '1505972400', '1505972400', '1', '0', '0', '', '/s/htqjw/index.html', '1', '1', '1', '', '嗨体祛颈纹', '1505972279', '/d/file/sygl/banner/2017-09-21/e4be60ddc69a564a0a44e2115f012704.jpg', '', '', '0', '', '', '');
INSERT INTO `phome_ecms_news` VALUES ('7', '56', '0', '0', '0', '0', '2017-09-21', '7', '1', 'admin', '0', '0', '1', '0', '0', '0', '1', '1505972474', '1505972474', '1', '0', '0', '', '/s/fenqi/index.html', '1', '1', '1', '', '莱美美容医院分期付款', '1505972403', '/d/file/sygl/banner/2017-09-21/9eb99c71353ed8f8cafa22d6f1e7e1e0.jpg', '', '', '0', '', '', '');
INSERT INTO `phome_ecms_news` VALUES ('8', '56', '0', '0', '0', '0', '2017-09-21', '8', '1', 'admin', '0', '0', '1', '0', '0', '0', '1', '1505972605', '1505972605', '1', '0', '0', '', '/s/BreastImplant/index.html', '1', '1', '1', '', 'U弧立体美胸', '1505972478', '/d/file/sygl/banner/2017-09-21/5b646a339f4032b3a486aae293d77cd8.jpg', '', '', '0', '', '', '');
INSERT INTO `phome_ecms_news` VALUES ('9', '56', '0', '0', '0', '0', '2017-09-21', '9', '1', 'admin', '0', '0', '1', '0', '0', '0', '1', '1505972681', '1505972681', '1', '0', '0', '', '/s/HyaluronicAcid/index.html', '1', '1', '1', '', '玻尿酸', '1505972608', '/d/file/sygl/banner/2017-09-21/18726d2fb58f40b8502120c970b7d94f.jpg', '', '', '0', '', '', '');
INSERT INTO `phome_ecms_news` VALUES ('10', '56', '0', '0', '0', '0', '2017-09-21', '10', '1', 'admin', '0', '0', '1', '0', '0', '0', '1', '1505972759', '1505972759', '1', '0', '0', '', '/s/Rhinoplastyc/index.html', '1', '1', '1', '', '多维美雕隆鼻', '1505972685', '/d/file/sygl/banner/2017-09-21/f59abfdf265078b144390eeb9391c845.jpg', '', '', '0', '', '', '');
INSERT INTO `phome_ecms_news` VALUES ('11', '1', '0', '0', '0', '0', '2017-09-22', '11', '1', 'admin', '0', '0', '1', '0', '0', '0', '1', '1506047902', '1506047902', '1', '0', '0', '', '/s/Rhinoplastyc/index.html', '1', '1', '1', '', '多维美雕隆鼻', '1506047804', '/d/file/jdxm/2017-09-22/e5ce1e4dac427108b97058a39a2a1eb2.jpg', '适用人群', '塌鼻 | 扁平鼻 | 蒜头鼻 | 驼峰鼻 | 歪鼻', '0', '', '', '');
INSERT INTO `phome_ecms_news` VALUES ('14', '13', '0', '0', '0', '0', '2017-09-22', '14', '1', 'admin', '0', '0', '1', '0', '0', '0', '1', '1506064076', '1506066225', '1', '0', '0', '', 's/qiemei/index.html', '1', '1', '1', '', '切眉', '1506064006', '/d/file/ybzx/ybzh/2017-09-22/3d057b3349b1052c391598a1ef5ce6ea.jpg', '适用人群', '眉形不满意人群', '0', '', '', '');

-- ----------------------------
-- Table structure for `phome_ecms_news_check`
-- ----------------------------
DROP TABLE IF EXISTS `phome_ecms_news_check`;
CREATE TABLE `phome_ecms_news_check` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` char(20) NOT NULL DEFAULT '',
  `filename` char(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(1) NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` char(14) NOT NULL DEFAULT '',
  `titleurl` char(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` char(80) NOT NULL DEFAULT '',
  `title` char(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` char(120) NOT NULL DEFAULT '',
  `ftitle` char(120) NOT NULL DEFAULT '',
  `smalltext` char(255) NOT NULL DEFAULT '',
  `diggtop` int(11) NOT NULL DEFAULT '0',
  `experttext` varchar(255) NOT NULL DEFAULT '',
  `expertimg` varchar(120) NOT NULL DEFAULT '',
  `expertjs` varchar(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`),
  KEY `useridis` (`userid`,`ismember`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_ecms_news_check
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_ecms_news_check_data`
-- ----------------------------
DROP TABLE IF EXISTS `phome_ecms_news_check_data`;
CREATE TABLE `phome_ecms_news_check_data` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` varchar(80) NOT NULL DEFAULT '',
  `writer` varchar(30) NOT NULL DEFAULT '',
  `befrom` varchar(60) NOT NULL DEFAULT '',
  `newstext` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_ecms_news_check_data
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_ecms_news_data_1`
-- ----------------------------
DROP TABLE IF EXISTS `phome_ecms_news_data_1`;
CREATE TABLE `phome_ecms_news_data_1` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` varchar(80) NOT NULL DEFAULT '',
  `writer` varchar(30) NOT NULL DEFAULT '',
  `befrom` varchar(60) NOT NULL DEFAULT '',
  `newstext` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_ecms_news_data_1
-- ----------------------------
INSERT INTO `phome_ecms_news_data_1` VALUES ('12', '1', '', '1', '0', '0', '0', '', '', '', '');
INSERT INTO `phome_ecms_news_data_1` VALUES ('13', '13', '', '1', '0', '0', '0', '', '', '', '');
INSERT INTO `phome_ecms_news_data_1` VALUES ('14', '13', '', '1', '0', '0', '0', '', '', '', '');
INSERT INTO `phome_ecms_news_data_1` VALUES ('4', '56', '', '1', '0', '0', '0', '', '', '', '<p>&nbsp;1</p>');
INSERT INTO `phome_ecms_news_data_1` VALUES ('5', '56', '', '1', '0', '0', '0', '', '', '', '');
INSERT INTO `phome_ecms_news_data_1` VALUES ('6', '56', '', '1', '0', '0', '0', '', '', '', '');
INSERT INTO `phome_ecms_news_data_1` VALUES ('7', '56', '', '1', '0', '0', '0', '', '', '', '');
INSERT INTO `phome_ecms_news_data_1` VALUES ('8', '56', '', '1', '0', '0', '0', '', '', '', '');
INSERT INTO `phome_ecms_news_data_1` VALUES ('9', '56', '', '1', '0', '0', '0', '', '', '', '');
INSERT INTO `phome_ecms_news_data_1` VALUES ('10', '56', '', '1', '0', '0', '0', '', '', '', '');
INSERT INTO `phome_ecms_news_data_1` VALUES ('11', '1', '', '1', '0', '0', '0', '', '', '', '');

-- ----------------------------
-- Table structure for `phome_ecms_news_doc`
-- ----------------------------
DROP TABLE IF EXISTS `phome_ecms_news_doc`;
CREATE TABLE `phome_ecms_news_doc` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` char(20) NOT NULL DEFAULT '',
  `filename` char(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(1) NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` char(14) NOT NULL DEFAULT '',
  `titleurl` char(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` char(80) NOT NULL DEFAULT '',
  `title` char(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` char(120) NOT NULL DEFAULT '',
  `ftitle` char(120) NOT NULL DEFAULT '',
  `smalltext` char(255) NOT NULL DEFAULT '',
  `diggtop` int(11) NOT NULL DEFAULT '0',
  `experttext` varchar(255) NOT NULL DEFAULT '',
  `expertimg` varchar(120) NOT NULL DEFAULT '',
  `expertjs` varchar(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`),
  KEY `useridis` (`userid`,`ismember`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_ecms_news_doc
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_ecms_news_doc_data`
-- ----------------------------
DROP TABLE IF EXISTS `phome_ecms_news_doc_data`;
CREATE TABLE `phome_ecms_news_doc_data` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` varchar(80) NOT NULL DEFAULT '',
  `writer` varchar(30) NOT NULL DEFAULT '',
  `befrom` varchar(60) NOT NULL DEFAULT '',
  `newstext` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_ecms_news_doc_data
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_ecms_news_doc_index`
-- ----------------------------
DROP TABLE IF EXISTS `phome_ecms_news_doc_index`;
CREATE TABLE `phome_ecms_news_doc_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`,`id`),
  KEY `havehtml` (`classid`,`truetime`,`havehtml`,`checked`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_ecms_news_doc_index
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_ecms_news_index`
-- ----------------------------
DROP TABLE IF EXISTS `phome_ecms_news_index`;
CREATE TABLE `phome_ecms_news_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`,`id`),
  KEY `havehtml` (`classid`,`truetime`,`havehtml`,`checked`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_ecms_news_index
-- ----------------------------
INSERT INTO `phome_ecms_news_index` VALUES ('13', '13', '1', '1506063916', '1506064002', '1506064002', '1');
INSERT INTO `phome_ecms_news_index` VALUES ('14', '13', '1', '1506064006', '1506064076', '1506066225', '1');
INSERT INTO `phome_ecms_news_index` VALUES ('12', '1', '1', '1506049533', '1506049638', '1506049638', '1');
INSERT INTO `phome_ecms_news_index` VALUES ('4', '56', '1', '1505969642', '1505969891', '1505972869', '1');
INSERT INTO `phome_ecms_news_index` VALUES ('5', '56', '1', '1505972167', '1505972276', '1505972276', '1');
INSERT INTO `phome_ecms_news_index` VALUES ('6', '56', '1', '1505972279', '1505972400', '1505972400', '1');
INSERT INTO `phome_ecms_news_index` VALUES ('7', '56', '1', '1505972403', '1505972474', '1505972474', '1');
INSERT INTO `phome_ecms_news_index` VALUES ('8', '56', '1', '1505972478', '1505972605', '1505972605', '1');
INSERT INTO `phome_ecms_news_index` VALUES ('9', '56', '1', '1505972608', '1505972681', '1505972681', '1');
INSERT INTO `phome_ecms_news_index` VALUES ('10', '56', '1', '1505972685', '1505972759', '1505972759', '1');
INSERT INTO `phome_ecms_news_index` VALUES ('11', '1', '1', '1506047804', '1506047902', '1506047902', '1');

-- ----------------------------
-- Table structure for `phome_enewsad`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsad`;
CREATE TABLE `phome_enewsad` (
  `adid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `picurl` varchar(255) NOT NULL DEFAULT '',
  `url` text NOT NULL,
  `pic_width` int(10) unsigned NOT NULL DEFAULT '0',
  `pic_height` int(10) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `adtype` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `target` varchar(10) NOT NULL DEFAULT '',
  `alt` varchar(120) NOT NULL DEFAULT '',
  `starttime` date NOT NULL DEFAULT '0000-00-00',
  `endtime` date NOT NULL DEFAULT '0000-00-00',
  `adsay` varchar(255) NOT NULL DEFAULT '',
  `titlefont` varchar(14) NOT NULL DEFAULT '',
  `titlecolor` varchar(10) NOT NULL DEFAULT '',
  `htmlcode` text NOT NULL,
  `t` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ylink` tinyint(1) NOT NULL DEFAULT '0',
  `reptext` text NOT NULL,
  PRIMARY KEY (`adid`),
  KEY `classid` (`classid`),
  KEY `t` (`t`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsad
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsadclass`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsadclass`;
CREATE TABLE `phome_enewsadclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsadclass
-- ----------------------------
INSERT INTO `phome_enewsadclass` VALUES ('1', '默认广告分类');

-- ----------------------------
-- Table structure for `phome_enewsadminstyle`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsadminstyle`;
CREATE TABLE `phome_enewsadminstyle` (
  `styleid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `stylename` char(30) NOT NULL DEFAULT '',
  `path` smallint(5) unsigned NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`styleid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsadminstyle
-- ----------------------------
INSERT INTO `phome_enewsadminstyle` VALUES ('1', '管理员后台界面', '1', '1');
INSERT INTO `phome_enewsadminstyle` VALUES ('2', '编辑后台界面', '2', '0');

-- ----------------------------
-- Table structure for `phome_enewsbefrom`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsbefrom`;
CREATE TABLE `phome_enewsbefrom` (
  `befromid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `sitename` char(60) NOT NULL DEFAULT '',
  `siteurl` char(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`befromid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsbefrom
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsbq`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsbq`;
CREATE TABLE `phome_enewsbq` (
  `bqid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `bqname` varchar(60) NOT NULL DEFAULT '',
  `bqsay` text NOT NULL,
  `funname` varchar(60) NOT NULL DEFAULT '',
  `bq` varchar(60) NOT NULL DEFAULT '',
  `issys` tinyint(1) NOT NULL DEFAULT '0',
  `bqgs` text NOT NULL,
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bqid`),
  KEY `classid` (`classid`),
  KEY `isclose` (`isclose`),
  KEY `myorder` (`myorder`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsbq
-- ----------------------------
INSERT INTO `phome_enewsbq` VALUES ('1', '文字调用标签', '<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">栏目ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看栏目ID点<a onclick=\\\"window.open(\\\'../ListClass.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a>，查看标题分类ID点<a onclick=\\\"window.open(\\\'../info/InfoType.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a>,当前ID=\\\'selfinfo\\\'<br />\r\n            多个栏目ID与标题分类ID可用,号格开，如\\\'1,2\\\'</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示条数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">显示前几条记录</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">是否显示时间</div>\r\n            </td>\r\n            <td height=\\\"25\\\">是否在标题后显示时间，0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">操作类型</div>\r\n            </td>\r\n            <td height=\\\"25\\\">具体看操作类型说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">是否显示栏目名</div>\r\n            </td>\r\n            <td height=\\\"25\\\">0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">时间格式化</div>\r\n            </td>\r\n            <td height=\\\"25\\\">形式：Y-m-d H:i:s．默认为：\\\'(m-d)\\\'</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">附加SQL条件</div>\r\n            </td>\r\n            <td height=\\\"25\\\">附加调用条件，如：&quot;title=\\\'帝国\\\'&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示排序</div>\r\n            </td>\r\n            <td height=\\\"25\\\">可指定按相应的字段排序，如：&quot;id desc&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td colspan=\\\"2\\\">\r\n            <div align=\\\"center\\\">（注：在栏目ID中写大栏目，系统会自己搜索子栏目的信息）</div>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_GetClassNews', 'phomenews', '1', '[phomenews]栏目ID,显示条数,标题截取数,是否显示时间,操作类型,是否显示栏目名,\\\'时间格式化\\\',附加SQL条件,显示排序[/phomenews]', '0', '1', '9');
INSERT INTO `phome_enewsbq` VALUES ('22', '留言板调用', '<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td width=\\\"40%\\\">\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td width=\\\"60%\\\">参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示信息数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">显示记录数</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">标签模板ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"left\\\">查看标签模板ID点<a onclick=\\\"window.open(\\\'ListBqtemp.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a></div>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">&nbsp;</div>\r\n            </td>\r\n            <td height=\\\"25\\\">模板标签变量说明：<br />\r\n            留言ID：[!--lyid--]，留言内容：[!--lytext--]<br />\r\n            回复内容：[!--retext--]，留言时间：[!--lytime--]<br />\r\n            留言者：[!--name--]，留言者邮箱：[!--email--]<br />\r\n            序号：[!--no--]</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">留言分类ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"left\\\">点击<strong><a onclick=\\\"window.open(\\\'../tool/GbookClass.php?[!--ehash--]\\\');\\\">这里</a></strong>查看分类ID，0为不限制</div>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_ShowLyInfo', 'gbookinfo', '1', '[gbookinfo]显示信息数,标签模板ID,留言分类ID[/gbookinfo]', '0', '3', '5');
INSERT INTO `phome_enewsbq` VALUES ('23', '专题调用标签', '<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">\r\n            <div align=\\\"center\\\">标签模板ID</div>\r\n            </div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看标签模板ID点<a onclick=\\\"window.open(\\\'ListBqtemp.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">&nbsp;</div>\r\n            </td>\r\n            <td height=\\\"25\\\">\r\n            <p>模板标签变量说明：(list.var)<br />\r\n            [!--classurl--]：专题链接，[!--classname--]：专题名称<br />\r\n            [!--classid--]：专题id，[!--classimg--]：专题图片<br />\r\n            [!--intro--]：专题简介,[!--no--]：序号</p>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">专题类别ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"left\\\">点击<strong><a onclick=\\\"window.open(\\\'../special/ListZtClass.php?[!--ehash--]\\\');\\\">这里</a></strong>查看分类ID，0为不限制，多个分类ID用逗号隔开，如\\\'1,2\\\'</div>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示专题数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">0为不限制</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">所属栏目ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">点击<strong><a onclick=\\\"window.open(\\\'../ListClass.php?[!--ehash--]\\\');\\\">这里</a></strong>查看栏目ID，0为不限制，多个栏目ID用逗号隔开，如\\\'1,2\\\'</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_ShowZtData', 'eshowzt', '1', '[eshowzt]标签模板ID,专题类别ID,显示专题数,所属栏目ID[/eshowzt]', '0', '2', '6');
INSERT INTO `phome_enewsbq` VALUES ('2', '图文信息调用(标题图片的信息)', '<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">栏目ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看栏目ID点<a onclick=\\\"window.open(\\\'../ListClass.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a>，查看标题分类ID点<a onclick=\\\"window.open(\\\'../info/InfoType.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a>,当前ID=\\\'selfinfo\\\'<br />\r\n            多个栏目ID与标题分类ID可用,号格开，如\\\'1,2\\\'</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">每行显示条数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">每行显示几个图片</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示总信息数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">显示信息总数</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">图片宽度，图片高度</div>\r\n            </td>\r\n            <td height=\\\"25\\\">图文信息图片大小</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">是否显示标题</div>\r\n            </td>\r\n            <td height=\\\"25\\\">是否在图片下显示标题，0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td bgcolor=\\\"#ffffff\\\" height=\\\"25\\\">\r\n            <div align=\\\"center\\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td bgcolor=\\\"#ffffff\\\" height=\\\"25\\\">\r\n            <div align=\\\"center\\\">操作类型说明</div>\r\n            </td>\r\n            <td height=\\\"25\\\">具体看操作类型说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">附加SQL条件</div>\r\n            </td>\r\n            <td height=\\\"25\\\">附加调用条件，如：&quot;title=\\\'帝国\\\'&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示排序</div>\r\n            </td>\r\n            <td height=\\\"25\\\">可指定按相应的字段排序，如：&quot;id desc&quot;</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_GetClassNewsPic', 'phomenewspic', '1', '[phomenewspic]栏目ID,每行显示条数,显示总信息数,图片宽度,图片高度,是否显示标题,标题截取数,操作类型,附加SQL条件,显示排序[/phomenewspic]', '0', '1', '9');
INSERT INTO `phome_enewsbq` VALUES ('5', '广告标签', '<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">广告ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看广告ID点<a onclick=\\\"window.open(\\\'../tool/ListAd.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_GetAd', 'phomead', '1', '[phomead]广告ID[/phomead]', '0', '3', '5');
INSERT INTO `phome_enewsbq` VALUES ('6', '投票标签', '<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">投票ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看投票ID点<a onclick=\\\"window.open(\\\'../tool/ListVote.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_GetVote', 'phomevote', '1', '[phomevote]投票ID[/phomevote]', '0', '3', '5');
INSERT INTO `phome_enewsbq` VALUES ('11', '带模板的信息调用标签[万能标签]', '<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">栏目ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看栏目ID点<a onclick=\\\"window.open(\\\'../ListClass.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a>，查看标题分类ID点<a onclick=\\\"window.open(\\\'../info/InfoType.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a>,当前ID=\\\'selfinfo\\\'<br />\r\n            多个栏目ID与标题分类ID可用,号格开，如\\\'1,2\\\'</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示条数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">显示前几条记录</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">是否显示栏目名</div>\r\n            </td>\r\n            <td height=\\\"25\\\">0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">操作类型</div>\r\n            </td>\r\n            <td height=\\\"25\\\">具体看操作类型说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">标签模板ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看标签模板ID点<a onclick=\\\"window.open(\\\'ListBqtemp.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">只显示有标题图片</div>\r\n            </td>\r\n            <td height=\\\"25\\\">0为不限制，1为只显示有标题图片的信息</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">附加SQL条件</div>\r\n            </td>\r\n            <td height=\\\"25\\\">附加调用条件，如：&quot;title=\\\'帝国\\\'&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示排序</div>\r\n            </td>\r\n            <td height=\\\"25\\\">可指定按相应的字段排序，如：&quot;id desc&quot;</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_GetEcmsInfo', 'ecmsinfo', '1', '[ecmsinfo]栏目ID,显示条数,标题截取数,是否显示栏目名,操作类型,模板ID,只显示有标题图片,附加SQL条件,显示排序[/ecmsinfo]', '0', '1', '10');
INSERT INTO `phome_enewsbq` VALUES ('12', '友情链接标签', '<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td width=\\\"40%\\\">\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td width=\\\"60%\\\">参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">每行显示记录数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">每行显示记录数</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示总记录数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"left\\\">总记录数</div>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">操作类型</div>\r\n            </td>\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"left\\\">0为所有记录，1为图片链接，2为文字链接</div>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">分类ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"left\\\">点击<strong><a onclick=\\\"window.open(\\\'../tool/LinkClass.php?[!--ehash--]\\\');\\\">这里</a></strong>查看分类ID，0为不限制</div>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">是否显示原链接</div>\r\n            </td>\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"left\\\">0为统计点击链接，1为显示原链接</div>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_GetSitelink', 'phomelink', '1', '[phomelink]每行显示数,显示总数,操作类型,分类id,是否显示原链接[/phomelink]', '0', '3', '5');
INSERT INTO `phome_enewsbq` VALUES ('15', '引用文件标签', '<p>[includefile]\\\'文件地址\\\'[/includefile]<br />\r\n文件地址需要为相对地址,并且从后台目录算起：&quot;../../header.html&quot;（这个地址的header.html是放在ecms根目录）</p>', 'sys_IncludeFile', 'includefile', '1', '[includefile]\\\'文件地址\\\'[/includefile]', '1', '4', '4');
INSERT INTO `phome_enewsbq` VALUES ('16', '读取远程页面', '<p>[readhttp]\\\'页面地址\\\'[/readhttp]</p>', 'sys_ReadFile', 'readhttp', '1', '[readhttp]\\\'页面地址\\\'[/readhttp]', '1', '4', '4');
INSERT INTO `phome_enewsbq` VALUES ('17', '网站信息统计', '<p>操作类型说明：\r\n<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\">\r\n    <tbody>\r\n        <tr bgcolor=\\\"#dbeaf5\\\">\r\n            <td width=\\\"25%\\\">\r\n            <div align=\\\"center\\\">操作类型</div>\r\n            </td>\r\n            <td width=\\\"75%\\\">内容</td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">0</div>\r\n            </td>\r\n            <td>统计栏目数据</td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">1</div>\r\n            </td>\r\n            <td>统计标题分类</td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">2</div>\r\n            </td>\r\n            <td>统计数据表</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<br />\r\n时间范围：0为不限；1为今日；2为本月；3为本年。<br />\r\n统计类型：0为统计信息数；1为统计评论数；2为统计点击数；3为统计下载数。<br />\r\n如果操作类型是&ldquo;统计数据表&rdquo;，栏目ID=\\\'数据表名\\\'</p>', 'sys_TotalData', 'totaldata', '1', '[totaldata]栏目ID,操作类型,时间范围,统计类型[/totaldata]', '0', '1', '7');
INSERT INTO `phome_enewsbq` VALUES ('18', 'FLASH幻灯信息调用', '<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">\r\n            <div align=\\\"center\\\">栏目ID</div>\r\n            </div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看栏目ID点<a onclick=\\\"window.open(\\\'../ListClass.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a>，查看标题分类ID点<a onclick=\\\"window.open(\\\'../info/InfoType.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a>,当前ID=\\\'selfinfo\\\'<br />\r\n            多个栏目ID与标题分类ID可用,号格开，如\\\'1,2\\\'</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示总数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">显示信息总数</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">图片宽度，图片高度</div>\r\n            </td>\r\n            <td height=\\\"25\\\">图文信息图片大小</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">是否显示标题</div>\r\n            </td>\r\n            <td height=\\\"25\\\">是否在图片下显示标题，0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td bgcolor=\\\"#ffffff\\\" height=\\\"25\\\">\r\n            <div align=\\\"center\\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td bgcolor=\\\"#ffffff\\\" height=\\\"25\\\">\r\n            <div align=\\\"center\\\">操作类型说明</div>\r\n            </td>\r\n            <td height=\\\"25\\\">具体看操作类型说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">附加SQL条件</div>\r\n            </td>\r\n            <td height=\\\"25\\\">附加调用条件，如：&quot;title=\\\'帝国\\\'&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示排序</div>\r\n            </td>\r\n            <td height=\\\"25\\\">可指定按相应的字段排序，如：&quot;id desc&quot;</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_FlashPixpic', 'phomeflashpic', '1', '[phomeflashpic]栏目ID,显示总数,图片宽度,图片高度,是否显示标题,标题截取数,操作类型,停顿秒数,附加SQL条件,显示排序[/phomeflashpic]', '0', '1', '9');
INSERT INTO `phome_enewsbq` VALUES ('19', '搜索关键字调用标签', '<p>栏目id为0，则显示所有栏目的关键字</p>\r\n<p>操作类型：0为搜索热门排行，1为最新搜索排行</p>', 'sys_ShowSearchKey', 'showsearch', '1', '[showsearch]每行显示条数,总条数,栏目id,操作类型[/showsearch]', '0', '1', '7');
INSERT INTO `phome_enewsbq` VALUES ('20', '循环子栏目数据标签', '<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">栏目ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看栏目ID点<a onclick=\\\"window.open(\\\'../ListClass.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a>，单个为父栏目ID，多栏目可用&quot;,&quot;格开<br />\r\n            当前栏目ID用：\\\'selfinfo\\\'</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示条数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">显示前几条记录</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">是否显示栏目名</div>\r\n            </td>\r\n            <td height=\\\"25\\\">0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">操作类型</div>\r\n            </td>\r\n            <td height=\\\"25\\\">0：栏目最新<br />\r\n            1：栏目热门<br />\r\n            2：栏目推荐<br />\r\n            3：栏目评论排行<br />\r\n            4：栏目头条<br />\r\n            5：栏目下载排行</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">标签模板ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看标签模板ID点<a onclick=\\\"window.open(\\\'ListBqtemp.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">只显示有标题图片</div>\r\n            </td>\r\n            <td height=\\\"25\\\">0为不限制，1为只显示有标题图片的信息</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示栏目数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">0为不限制</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示头条操作类型</div>\r\n            </td>\r\n            <td height=\\\"25\\\">0：不显示栏目头条<br />\r\n            1：栏目内容简介<br />\r\n            2：栏目推荐信息<br />\r\n            3：栏目头条信息<br />\r\n            4：栏目最新信息</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">头条标题截取数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">头条简介截取数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">头条只显示有标题图片</div>\r\n            </td>\r\n            <td height=\\\"25\\\">0为不限制，1为只显示有标题图片的信息</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">附加SQL条件</div>\r\n            </td>\r\n            <td height=\\\"25\\\">附加调用条件，如：&quot;title=\\\'帝国\\\'&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示排序</div>\r\n            </td>\r\n            <td height=\\\"25\\\">可指定按相应的字段排序，如：&quot;id desc&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">头条的模板变量<br />\r\n            (标签模板的页面模板内容中使用)</div>\r\n            </td>\r\n            <td height=\\\"25\\\">[!--sonclass.id--]：信息ID<br />\r\n            [!--sonclass.title--]：信息标题<br />\r\n            [!--sonclass.oldtitle--]：信息标题(不截取字数)<br />\r\n            [!--sonclass.titlepic--]：标题图片<br />\r\n            [!--sonclass.titleurl--]：信息链接<br />\r\n            [!--sonclass.text--]：信息简介</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_ForSonclassData', 'listsonclass', '1', '[listsonclass]栏目ID,显示条数,标题截取数,是否显示栏目名,操作类型,模板ID,只显示有标题图片,显示栏目数,显示头条操作类型,头条标题截取数,头条简介截取数,头条只显示有标题图片,附加SQL条件,显示排序[/listsonclass]', '0', '1', '9');
INSERT INTO `phome_enewsbq` VALUES ('21', '带模板的栏目导航标签', '<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">父栏目ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看栏目ID点<a onclick=\\\"window.open(\\\'../ListClass.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a><br />\r\n            \\\'0\\\'为显示所有一级栏目<br />\r\n            \\\'selfinfo\\\'显示本栏目下级栏目</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">\r\n            <div align=\\\"center\\\">标签模板ID</div>\r\n            </div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看标签模板ID点<a onclick=\\\"window.open(\\\'ListBqtemp.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">&nbsp;</div>\r\n            </td>\r\n            <td height=\\\"25\\\">\r\n            <p>模板标签变量说明：[!--bclassname--]：父栏目名,[!--bclassurl--]：父栏目链接,[!--bclassid--]：父栏目id</p>\r\n            <p>list.var模板标签：<br />\r\n            [!--classurl--]：栏目链接,[!--classname--]：栏目名称,[!--classid--]：栏目id,[!--classimg--]：栏目图片,[!--intro--]：栏目简介,[!--num--]：信息数,[!--no--]：序号</p>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">是否显示栏目信息数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示栏目数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">0为不限制</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_ShowClassByTemp', 'showclasstemp', '1', '[showclasstemp]父栏目ID,标签模板ID,是否显示栏目信息数,显示栏目数[/showclasstemp]', '0', '2', '6');
INSERT INTO `phome_enewsbq` VALUES ('24', '图库模型分页标签', '<p>\r\n<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">\r\n            <div align=\\\"center\\\">标签模板ID</div>\r\n            </div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看标签模板ID点<a onclick=\\\"window.open(\\\'ListBqtemp.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">&nbsp;</div>\r\n            </td>\r\n            <td height=\\\"25\\\">\r\n            <p><strong>模板标签变量说明：</strong><br />\r\n            图片集JS数组：[!--photor--]，缩略图导航：[!--smalldh--]<br />\r\n            分页导航：[!--select--]，标题分页导航：[!--titleselect--]，分页列表式导航：[!--listpage--]</p>\r\n            <p><strong>list.var模板标签：</strong><br />\r\n            图片名称：[!--picname--]，图片地址：[!--picurl--]</p>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">导航图片宽度<br />\r\n            导航图片高度</div>\r\n            </td>\r\n            <td height=\\\"25\\\">0为按原图大小</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</p>', 'sys_PhotoMorepage', 'eshowphoto', '1', '[eshowphoto]标签模板ID,导航图片宽度,导航图片高度[/eshowphoto]', '0', '1', '7');
INSERT INTO `phome_enewsbq` VALUES ('25', '复选项输出函数', '<p>如：[echocheckbox]\\\'title\\\',\\\'&lt;br&gt;\\\'[/echocheckbox]：表示按回车分隔输出title字段的项</p>', 'sys_EchoCheckboxFValue', 'echocheckbox', '1', '[echocheckbox]\\\'字段\\\',\\\'分隔符\\\'[/echocheckbox]', '0', '3', '5');
INSERT INTO `phome_enewsbq` VALUES ('26', '相关链接标签', '<p><strong>标签模板ID</strong>：查看标签模板ID点<a onclick=\\\"window.open(\\\'ListBqtemp.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a><br />\r\n<strong>操作类型</strong>：0为默认；1为按表；2为按栏目；3为按标题分类<br />\r\n<strong>操作对象</strong>：对应操作类型的表/栏目/标题分类。空则为默认。<br />\r\n<strong>是否显示栏目名</strong>：0为不显示；1为显示<br />\r\n<strong>只显示标题图片的信息</strong>：0为不限；1为只显示标题图片的信息</p>', 'sys_GetOtherLinkInfo', 'otherlink', '1', '[otherlink]标签模板ID,操作对象,调用条数,标题截取字数,是否显示栏目名,操作类型,只显示标题图片的信息[/otherlink]', '0', '1', '9');
INSERT INTO `phome_enewsbq` VALUES ('27', '评论调用标签', '<p><strong>标签模板ID</strong>：查看标签模板ID点<a onclick=\\\"window.open(\\\'ListBqtemp.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a><br />\r\n<strong>栏目ID</strong>：0为不限调用栏目，父栏目会应用于子栏目<br />\r\n<strong>信息ID</strong>：0为不限<br />\r\n<strong>显示推荐评论</strong>：0为不限；1为只显示推荐评论<br />\r\n<strong>操作类型</strong>：0为按发布时间；1为按支持数；2为按反对数<br />\r\n<strong>标签模板说明</strong>：[!--title--]:信息标题；[!--titleurl--]:信息链接；[!--titlepic--]:信息标题图片；[!--id--]:信息ID<br />\r\n[!--classid--]:栏目ID；[!--plid--]:评论ID；[!--username--]:发表者；[!--no--]:编号<br />\r\n[!--pltext--]:评论内容；[!--pltime--]:评论时间；[!--zcnum--]:支持数；[!--fdnum--]:反对数</p>', 'sys_ShowPlInfo', 'showplinfo', '1', '[showplinfo]调用条数,标签模板ID,栏目ID,信息ID,显示推荐评论,操作类型[/showplinfo]', '0', '3', '5');
INSERT INTO `phome_enewsbq` VALUES ('28', '循环栏目导航标签', '<p>\r\n<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">父栏目ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看栏目ID点<a onclick=\\\"window.open(\\\'../ListClass.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a><br />\r\n            \\\'0\\\'为显示所有一级栏目<br />\r\n            \\\'selfinfo\\\'显示本栏目下级栏目<br />\r\n            多栏目固定调用可用&quot;,&quot;格开</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">\r\n            <div align=\\\"center\\\">标签模板ID</div>\r\n            </div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看标签模板ID点<a onclick=\\\"window.open(\\\'ListBqtemp.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">&nbsp;</div>\r\n            </td>\r\n            <td height=\\\"25\\\">\r\n            <p>模板标签变量说明：[!--bclassname--]：父栏目名,[!--bclassurl--]：父栏目链接,[!--bclassid--]：父栏目id，[!--bclassimg--]：父栏目图片,[!--bintro--]：父栏目简介,[!--bnum--]：父栏目信息数,[!--bno--]：父栏目序号</p>\r\n            <p>list.var模板标签：<br />\r\n            [!--classurl--]：栏目链接,[!--classname--]：栏目名称,[!--classid--]：栏目id,[!--classimg--]：栏目图片,[!--intro--]：栏目简介,[!--num--]：信息数,[!--no--]：序号</p>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">是否显示栏目信息数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示栏目数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">0为不限制</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</p>', 'sys_ForShowSonClass', 'listshowclass', '1', '[listshowclass]父栏目ID,标签模板ID,是否显示栏目信息数,显示栏目数[/listshowclass]', '0', '2', '6');
INSERT INTO `phome_enewsbq` VALUES ('29', '调用TAGS的信息标签', '<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">TAGS的ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看TAGS的ID点<a onclick=\\\"window.open(\\\'../tags/ListTags.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a><br />\r\n            多个ID可以用,号格开，如\\\'1,2\\\'</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示条数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">显示前几条记录</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">标签模板ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看标签模板ID点<a onclick=\\\"window.open(\\\'ListBqtemp.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">栏目ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">限制只调用某一个或多个栏目的信息<br />\r\n            多个ID可以用,号格开，如\\\'1,2\\\'</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">系统模型ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">限制只调用某一个或多个系统模型的信息<br />\r\n            多个ID可以用,号格开，如\\\'1,2\\\'</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_eShowTagsInfo', 'tagsinfo', '0', '[tagsinfo]TAGS的ID,显示条数,标题截取数,标签模板ID,栏目ID,系统模型ID[/tagsinfo]', '0', '0', '9');
INSERT INTO `phome_enewsbq` VALUES ('30', '调用碎片的信息标签', '<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">碎片变量名</div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看碎片变量名点<a onclick=\\\"window.open(\\\'../sp/ListSp.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示条数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">显示前几条记录</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">截取几个字符</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<p><br />\r\n&nbsp;</p>\r\n<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td colspan=\\\"2\\\">\r\n            <div align=\\\"center\\\">碎片标签模板变量说明</div>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\" width=\\\"34%\\\">\r\n            <div align=\\\"center\\\">静态碎片</div>\r\n            </td>\r\n            <td height=\\\"25\\\" width=\\\"66%\\\">模板标签变量说明：[!--the.spname--]：碎片名称,[!--the.spid--]：碎片ID,[!--the.sppic--]：碎片效果图,[!--the.spsay--]：碎片描述\r\n            <p>list.var模板标签：<br />\r\n            [!--title--]：标题,[!--oldtitle--]：标题ALT,[!--newstime--]：发布时间,[!--id--]：碎片信息ID,[!--titleurl--]：标题链接,[!--titlepic--]：标题缩图,[!--bigpic--]：标题大图,[!--titlepre--]：标题左边,[!--titlenext--]：标题右边,[!--smalltext--]：内容简介,[!--no.num--]：编号</p>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">动态碎片</div>\r\n            </td>\r\n            <td height=\\\"25\\\">模板标签变量说明：[!--the.spname--]：碎片名称,[!--the.spid--]：碎片ID,[!--the.sppic--]：碎片效果图,[!--the.spsay--]：碎片描述\r\n            <p>list.var模板标签：<br />\r\n            支持变量同模型信息调用</p>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">代码碎片</div>\r\n            </td>\r\n            <td height=\\\"25\\\">无需标签模板，直接显示代码内容</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_eShowSpInfo', 'spinfo', '0', '[spinfo]碎片变量名,显示条数,标题截取数[/spinfo]', '0', '0', '9');
INSERT INTO `phome_enewsbq` VALUES ('31', '调用TAGS标签', '<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">分类ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">\\\'\\\'空为不限制，查看TAGS分类ID点<a onclick=\\\"window.open(\\\'../tags/TagsClass.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a><br />\r\n            多个可以用,号格开，如\\\'1,2\\\'<br />\r\n            内容页显示当前TAGS可以用\\\'selfinfo\\\'</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示数量</div>\r\n            </td>\r\n            <td height=\\\"25\\\">显示前几条记录，0为显示所有（\\\'selfinfo\\\'本设置无效）</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">每行显示数量</div>\r\n            </td>\r\n            <td height=\\\"25\\\">一行显示多少个TAGS，0为不换行</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示排序</div>\r\n            </td>\r\n            <td height=\\\"25\\\">使用默认设置\\\'\\\'空就可以，默认是\\\'tagid desc\\\'（\\\'selfinfo\\\'本设置无效）</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">只显示推荐</div>\r\n            </td>\r\n            <td height=\\\"25\\\">只显示推荐的TAGS，0为不限制，1为限制（\\\'selfinfo\\\'本设置无效）</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">推荐TAGS属性</div>\r\n            </td>\r\n            <td height=\\\"25\\\">如果是推荐的TAGS，内容是否要加粗或加红（\\\'selfinfo\\\'本设置无效）<br />\r\n            设置\\\'s\\\'表示加粗、\\\'r\\\'表示加红、同时加粗加红用\\\'s,r\\\'</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示间隔符</div>\r\n            </td>\r\n            <td height=\\\"25\\\">TAGS之间显示间隔符，默认是\\\' &amp;nbsp; \\\'</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">是否显示信息数量</div>\r\n            </td>\r\n            <td height=\\\"25\\\">是否在TAGS后显示信息数量，0为不显示，1为显示（\\\'selfinfo\\\'本设置无效）</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">链接附加参数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">可指定在TAGS链接后面增加参数，比如：\\\'&amp;tempid=模板ID\\\'</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">链接变量名</div>\r\n            </td>\r\n            <td height=\\\"25\\\">可指定在链接使用的变量名(需加引号)：tagname或tagid，默认为tagname，比如：\\\'tagname\\\'</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_eShowTags', 'showtags', '0', '[showtags]分类ID,显示数量,每行显示数量,显示排序,只显示推荐,推荐TAGS属性,显示间隔符,是否显示信息数,链接附加参数,链接变量名[/showtags]', '0', '0', '9');
INSERT INTO `phome_enewsbq` VALUES ('32', '当前位置标签', '', 'user_linknav', 'linknav', '0', '[linknav]$GLOBALS[navclassid][/linknav]', '0', '0', '0');

-- ----------------------------
-- Table structure for `phome_enewsbqclass`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsbqclass`;
CREATE TABLE `phome_enewsbqclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsbqclass
-- ----------------------------
INSERT INTO `phome_enewsbqclass` VALUES ('1', '信息调用');
INSERT INTO `phome_enewsbqclass` VALUES ('2', '栏目调用');
INSERT INTO `phome_enewsbqclass` VALUES ('3', '非信息调用');
INSERT INTO `phome_enewsbqclass` VALUES ('4', '其它标签');

-- ----------------------------
-- Table structure for `phome_enewsbqtemp`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsbqtemp`;
CREATE TABLE `phome_enewsbqtemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `modid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `temptext` text NOT NULL,
  `showdate` varchar(50) NOT NULL DEFAULT '',
  `listvar` text NOT NULL,
  `subnews` smallint(5) unsigned NOT NULL DEFAULT '0',
  `rownum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `docode` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsbqtemp
-- ----------------------------
INSERT INTO `phome_enewsbqtemp` VALUES ('1', '子栏目导航标签模板', '1', '| [!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]', 'Y-m-d H:i:s', '<a href=\\\"[!--classurl--]\\\">[!--classname--]</a> | ', '0', '1', '0', '0');
INSERT INTO `phome_enewsbqtemp` VALUES ('2', '标题列表模板', '1', '[!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]', 'Y-m-d H:i:s', '<li><a href=\"[!--titleurl--]\" title=\"[!--oldtitle--]\">[!--title--]</a></li>', '0', '1', '0', '0');
INSERT INTO `phome_enewsbqtemp` VALUES ('3', '标题+简介', '1', '[!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]', 'm-d', '<li><p><strong><a href=\"[!--titleurl--]\" title=\"[!--oldtitle--]\">[!--title--]</a></strong>[!--smalltext--] </p></li>', '60', '1', '0', '0');
INSERT INTO `phome_enewsbqtemp` VALUES ('4', '头条相关', '1', '[!--empirenews.listtemp--]<!--list.var1-->　<!--list.var2-->[!--empirenews.listtemp--]', 'Y-m-d H:i:s', '<a href=\"[!--titleurl--]\" title=\"[!--oldtitle--]\">·[!--title--]</a>', '0', '2', '0', '0');
INSERT INTO `phome_enewsbqtemp` VALUES ('5', '图片+标题+简介', '1', '[!--empirenews.listtemp--]\r\n<!--list.var1-->\r\n[!--empirenews.listtemp--]', 'Y-m-d H:i:s', '<table width=\\\"94%\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"0\\\" cellspacing=\\\"6\\\" class=\\\"picText\\\">\r\n<tr valign=\\\"top\\\">\r\n<td><a href=\\\"[!--titleurl--]\\\" target=\\\"_blank\\\"><img width=\\\"70\\\" height=\\\"78\\\" src=\\\"[!--titlepic--]\\\" alt=\\\"[!--oldtitle--]\\\" /></a></td>\r\n<td><strong><a href=\\\"[!--titleurl--]\\\" title=\\\"[!--oldtitle--]\\\">[!--title--]</a></strong>[!--smalltext--]</td>\r\n</tr>\r\n</table>', '56', '1', '0', '0');
INSERT INTO `phome_enewsbqtemp` VALUES ('7', '循环子栏目标签', '1', '<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"title\">\r\n<tr>\r\n<td><strong>[!--the.classname--]</strong></td>\r\n<td align=\"right\"><a href=\"[!--the.classurl--]\">更多&gt;&gt;</a></td>\r\n</tr>\r\n</table>\r\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"box\">\r\n<tr>\r\n<td><ul>\r\n       [!--empirenews.listtemp--]\r\n       <!--list.var1-->\r\n       [!--empirenews.listtemp--]\r\n</ul>\r\n</td>\r\n</tr>\r\n</table>', 'Y-m-d', '<li><a href=\"[!--titleurl--]\" title=\"[!--oldtitle--]\">[!--title--]</a> <span>[!--newstime--]</span></li>', '0', '1', '0', '0');
INSERT INTO `phome_enewsbqtemp` VALUES ('8', '头条标题', '1', '[!--empirenews.listtemp--]\r\n<!--list.var1-->\r\n[!--empirenews.listtemp--]', 'Y-m-d H:i:s', '<strong><a href=\"[!--titleurl--]\">[!--title--]</a></strong>\r\n<p>　　[!--smalltext--]</p>', '150', '1', '0', '0');
INSERT INTO `phome_enewsbqtemp` VALUES ('9', '标题+软件简介', '2', '[!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]', 'Y-m-d H:i:s', '<li><p><strong><a href=\\\"[!--titleurl--]\\\" title=\\\"[!--oldtitle--]\\\">[!--title--]</a></strong>[!--softsay--]</p></li>', '50', '1', '0', '0');
INSERT INTO `phome_enewsbqtemp` VALUES ('10', '排行列表', '1', '[!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]', 'Y-m-d H:i:s', '<li class=\"no[!--no.num--]\"><a href=\"[!--titleurl--]\" title=\"[!--oldtitle--]\">[!--title--]</a></li>', '0', '1', '0', '0');
INSERT INTO `phome_enewsbqtemp` VALUES ('11', '图片集分页模板', '1', '<script type=\\\"text/javascript\\\">\r\n        var photosr=new Array();\r\n        [!--photor--]\r\n        function GotoPhPage(page){\r\n                page=parseInt(page);\r\n                document.getElementById(\\\"showpagephoto\\\").innerHTML=photosr[page];\r\n                document.ViewPhotoForm.thisphpage.value=page;\r\n                document.ViewPhotoForm.tothephpage.options[page-1].selected=true;\r\n        }\r\n        //上一页\r\n        function PriPhPage(){\r\n                var thispage=parseInt(document.ViewPhotoForm.thisphpage.value);\r\n                var num=photosr.length;\r\n                if(thispage<=1)\r\n                {\r\n                        return false;\r\n                }\r\n                GotoPhPage(thispage-1);\r\n        }\r\n        //下一页\r\n        function NextPhPage(){\r\n                var thispage=parseInt(document.ViewPhotoForm.thisphpage.value);\r\n                var num=photosr.length;\r\n                if(thispage>=num-1)\r\n                {\r\n                        return false;\r\n                }\r\n                GotoPhPage(thispage+1);\r\n        }\r\n        function PhAutoPlay(){\r\n                var sec=parseInt(document.ViewPhotoForm.autoplaysec.value);\r\n                var i;\r\n                var num=photosr.length;\r\n                for(i=1;i<=sec;i++)\r\n                {\r\n                        if(document.ViewPhotoForm.autophstop.value==0)\r\n                        {\r\n                                window.setTimeout(\\\"PhAutoPlayExe(\\\"+i+\\\",\\\"+sec+\\\")\\\",i*1000);\r\n                        }\r\n                        else\r\n                        {\r\n                                break;\r\n                        }\r\n                }\r\n        }\r\n        function PhAutoPlayExe(num,sec){\r\n                var t;\r\n                if(document.ViewPhotoForm.autophstop.value==1)\r\n                {\r\n                        return \\\"\\\";\r\n                }\r\n                if(num==sec) \r\n                {\r\n                        t=NextPhPage();\r\n                        if(t==false)\r\n                        {\r\n                                GotoPhPage(1);\r\n                        }\r\n                        PhAutoPlay();\r\n                } \r\n        }\r\n        </script>\r\n        \r\n<table width=\\\"100%\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\">\r\n  <tr> \r\n    <td height=\\\"25\\\" id=\\\"showpagephoto\\\" align=\\\"center\\\"> \r\n      <!--list.var1-->\r\n    </td>\r\n  </tr>\r\n  <form name=\\\"ViewPhotoForm\\\" id=\\\"ViewPhotoForm\\\" method=\\\"POST\\\" action=\\\"\\\">\r\n    <tr> \r\n      <td height=\\\"25\\\"> <div align=\\\"center\\\"> \r\n          <input type=\\\"button\\\" name=\\\"Submit\\\" value=\\\"上一页\\\" onclick=\\\"PriPhPage();\\\">\r\n          &nbsp;&nbsp; \r\n          <select name=\\\"tothephpage\\\" onchange=\\\"GotoPhPage(this.options[this.selectedIndex].value)\\\">\r\n            [!--select--]\r\n          </select>\r\n          &nbsp;&nbsp; \r\n          <input type=\\\"button\\\" name=\\\"Submit2\\\" value=\\\"下一页\\\" onclick=\\\"NextPhPage();\\\">\r\n          <input name=\\\"thisphpage\\\" type=\\\"hidden\\\" value=\\\"1\\\">\r\n        </div></td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\\\"25\\\"><div align=\\\"center\\\">\r\n          <select name=\\\"autoplaysec\\\">\r\n            <option value=\\\"1\\\">1秒</option>\r\n            <option value=\\\"2\\\">2秒</option>\r\n            <option value=\\\"3\\\" selected>3秒</option>\r\n            <option value=\\\"4\\\">4秒</option>\r\n            <option value=\\\"5\\\">5秒</option>\r\n            <option value=\\\"6\\\">6秒</option>\r\n            <option value=\\\"7\\\">7秒</option>\r\n            <option value=\\\"8\\\">8秒</option>\r\n            <option value=\\\"9\\\">9秒</option>\r\n            <option value=\\\"10\\\">10秒</option>\r\n          </select>\r\n                  <input name=\\\"autophstop\\\" type=\\\"hidden\\\" value=\\\"0\\\">\r\n          <input type=\\\"button\\\" name=\\\"Submit3\\\" value=\\\"自动播放\\\" onclick=\\\"document.ViewPhotoForm.autophstop.value=0;PhAutoPlay();\\\">\r\n          &nbsp;<input type=\\\"button\\\" name=\\\"Submit32\\\" value=\\\"停止播放\\\" onclick=\\\"document.ViewPhotoForm.autophstop.value=1;\\\">\r\n        </div></td>\r\n    </tr>\r\n  </form>\r\n</table>\r\n<table width=\\\"500\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\">\r\n<tr><td>\r\n<marquee  behavior=alternate ONMOUSEOUT=\\\"this.scrollDelay=1\\\" ONMOUSEOVER=\\\"this.scrollDelay=600\\\"  scrollamount=1  SCROLLDELAY=1  border=0  scrolldelay=70  width=\\\"100%\\\"  align=middle>\r\n        [!--smalldh--]\r\n</marquee>\r\n</td></tr></table>', 'Y-m-d H:i:s', '<a href=\\\'#ecms\\\' onclick=\\\'NextPhPage();\\\' title=\\\'点击进入下一张图片\\\'><img src=\\\'[!--picurl--]\\\' alt=\\\'[!--picname--]\\\' border=1 class=\\\'photoresize\\\'></a><br><span style=\\\'line-height=18pt\\\'>[!--picname--]</span>', '0', '1', '0', '0');
INSERT INTO `phome_enewsbqtemp` VALUES ('12', '栏目tabs导航', '1', '[!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]', 'Y-m-d H:i:s', '<li id=\"tabnav_btn_[!--no--]\" onmouseover=\"tabit(this)\"><a href=\"[!--classurl--]\">[!--classname--]</a></li>', '0', '1', '0', '0');

-- ----------------------------
-- Table structure for `phome_enewsbqtempclass`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsbqtempclass`;
CREATE TABLE `phome_enewsbqtempclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsbqtempclass
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsbuybak`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsbuybak`;
CREATE TABLE `phome_enewsbuybak` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(20) NOT NULL DEFAULT '',
  `card_no` char(120) NOT NULL DEFAULT '',
  `buytime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cardfen` int(10) unsigned NOT NULL DEFAULT '0',
  `money` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `userdate` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsbuybak
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsbuygroup`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsbuygroup`;
CREATE TABLE `phome_enewsbuygroup` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `gname` varchar(255) NOT NULL DEFAULT '',
  `gmoney` int(10) unsigned NOT NULL DEFAULT '0',
  `gfen` int(10) unsigned NOT NULL DEFAULT '0',
  `gdate` int(10) unsigned NOT NULL DEFAULT '0',
  `ggroupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `gzgroupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `buygroupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `gsay` text NOT NULL,
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsbuygroup
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewscard`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewscard`;
CREATE TABLE `phome_enewscard` (
  `cardid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `card_no` char(30) NOT NULL DEFAULT '',
  `password` char(20) NOT NULL DEFAULT '',
  `money` int(10) unsigned NOT NULL DEFAULT '0',
  `cardfen` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` date NOT NULL DEFAULT '0000-00-00',
  `cardtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `carddate` int(10) unsigned NOT NULL DEFAULT '0',
  `cdgroupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cdzgroupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cardid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewscard
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsclass`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsclass`;
CREATE TABLE `phome_enewsclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `bclassid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `classname` varchar(50) NOT NULL DEFAULT '',
  `sonclass` text NOT NULL,
  `is_zt` tinyint(1) NOT NULL DEFAULT '0',
  `lencord` smallint(6) NOT NULL DEFAULT '0',
  `link_num` tinyint(4) NOT NULL DEFAULT '0',
  `newstempid` smallint(6) NOT NULL DEFAULT '0',
  `onclick` int(11) NOT NULL DEFAULT '0',
  `listtempid` smallint(6) NOT NULL DEFAULT '0',
  `featherclass` text NOT NULL,
  `islast` tinyint(1) NOT NULL DEFAULT '0',
  `classpath` text NOT NULL,
  `classtype` varchar(10) NOT NULL DEFAULT '',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `filename` tinyint(1) NOT NULL DEFAULT '0',
  `filetype` varchar(10) NOT NULL DEFAULT '',
  `openpl` tinyint(1) NOT NULL DEFAULT '0',
  `openadd` tinyint(1) NOT NULL DEFAULT '0',
  `newline` int(11) NOT NULL DEFAULT '0',
  `hotline` int(11) NOT NULL DEFAULT '0',
  `goodline` int(11) NOT NULL DEFAULT '0',
  `classurl` varchar(200) NOT NULL DEFAULT '',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `filename_qz` varchar(20) NOT NULL DEFAULT '',
  `hotplline` tinyint(4) NOT NULL DEFAULT '0',
  `modid` smallint(6) NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `firstline` tinyint(4) NOT NULL DEFAULT '0',
  `bname` varchar(50) NOT NULL DEFAULT '',
  `islist` tinyint(1) NOT NULL DEFAULT '0',
  `searchtempid` smallint(6) NOT NULL DEFAULT '0',
  `tid` smallint(6) NOT NULL DEFAULT '0',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `maxnum` int(11) NOT NULL DEFAULT '0',
  `checkpl` tinyint(1) NOT NULL DEFAULT '0',
  `down_num` tinyint(4) NOT NULL DEFAULT '0',
  `online_num` tinyint(4) NOT NULL DEFAULT '0',
  `listorder` varchar(50) NOT NULL DEFAULT '',
  `reorder` varchar(50) NOT NULL DEFAULT '',
  `intro` text NOT NULL,
  `classimg` varchar(255) NOT NULL DEFAULT '',
  `jstempid` smallint(6) NOT NULL DEFAULT '0',
  `addinfofen` int(11) NOT NULL DEFAULT '0',
  `listdt` tinyint(1) NOT NULL DEFAULT '0',
  `showclass` tinyint(1) NOT NULL DEFAULT '0',
  `showdt` tinyint(1) NOT NULL DEFAULT '0',
  `checkqadd` tinyint(1) NOT NULL DEFAULT '0',
  `qaddlist` tinyint(1) NOT NULL DEFAULT '0',
  `qaddgroupid` text NOT NULL,
  `qaddshowkey` tinyint(1) NOT NULL DEFAULT '0',
  `adminqinfo` tinyint(1) NOT NULL DEFAULT '0',
  `doctime` smallint(6) NOT NULL DEFAULT '0',
  `classpagekey` varchar(255) NOT NULL DEFAULT '',
  `dtlisttempid` smallint(6) NOT NULL DEFAULT '0',
  `classtempid` smallint(6) NOT NULL DEFAULT '0',
  `nreclass` tinyint(1) NOT NULL DEFAULT '0',
  `nreinfo` tinyint(1) NOT NULL DEFAULT '0',
  `nrejs` tinyint(1) NOT NULL DEFAULT '0',
  `nottobq` tinyint(1) NOT NULL DEFAULT '0',
  `ipath` varchar(255) NOT NULL DEFAULT '',
  `addreinfo` tinyint(1) NOT NULL DEFAULT '0',
  `haddlist` tinyint(4) NOT NULL DEFAULT '0',
  `sametitle` tinyint(1) NOT NULL DEFAULT '0',
  `definfovoteid` smallint(6) NOT NULL DEFAULT '0',
  `wburl` varchar(255) NOT NULL DEFAULT '',
  `qeditchecked` tinyint(1) NOT NULL DEFAULT '0',
  `wapstyleid` smallint(6) NOT NULL DEFAULT '0',
  `repreinfo` tinyint(1) NOT NULL DEFAULT '0',
  `pltempid` smallint(6) NOT NULL DEFAULT '0',
  `cgroupid` text NOT NULL,
  `yhid` smallint(6) NOT NULL DEFAULT '0',
  `wfid` smallint(6) NOT NULL DEFAULT '0',
  `cgtoinfo` tinyint(1) NOT NULL DEFAULT '0',
  `bdinfoid` varchar(25) NOT NULL DEFAULT '',
  `repagenum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keycid` smallint(6) NOT NULL DEFAULT '0',
  `allinfos` int(10) unsigned NOT NULL DEFAULT '0',
  `infos` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`classid`),
  KEY `bclassid` (`bclassid`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsclass
-- ----------------------------
INSERT INTO `phome_enewsclass` VALUES ('1', '0', '经典项目', '|', '0', '25', '10', '1', '0', '9', '', '1', 'jdxm', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '经典项目', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '9', '1', '0', '0', '0', '0', '', '1', '6', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '2', '2', '1505872935');
INSERT INTO `phome_enewsclass` VALUES ('2', '0', '眼部整形', '|13|', '0', '25', '10', '0', '0', '9', '', '0', 'ybzx', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '眼部整形', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '/d/file/p/2017-09-22/5d88c66a1052ccd8d31f4e15187b9d8a.png', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '9', '3', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505890577');
INSERT INTO `phome_enewsclass` VALUES ('3', '0', '鼻部整形', '|20|21|', '0', '25', '10', '0', '0', '0', '', '0', 'bbzx', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '鼻部整形', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505890630');
INSERT INTO `phome_enewsclass` VALUES ('4', '0', '胸部整形', '|22|23|24|25|', '0', '25', '10', '0', '0', '0', '', '0', 'xbzx', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '胸部整形', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505890663');
INSERT INTO `phome_enewsclass` VALUES ('5', '0', '面部轮廓', '|26|27|28|', '0', '25', '10', '0', '0', '0', '', '0', 'mblk', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '面部轮廓', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505890703');
INSERT INTO `phome_enewsclass` VALUES ('6', '0', '形体雕塑', '|29|30|', '0', '25', '10', '0', '0', '0', '', '0', 'xtds', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '形体雕塑', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505890769');
INSERT INTO `phome_enewsclass` VALUES ('7', '0', '微整形', '|31|32|33|34|', '0', '25', '10', '0', '0', '0', '', '0', 'wzx', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '微整形', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505890804');
INSERT INTO `phome_enewsclass` VALUES ('8', '0', '皮肤美容', '|35|36|37|38|39|40|', '0', '25', '10', '0', '0', '0', '', '0', 'pfmr', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '皮肤美容', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505890826');
INSERT INTO `phome_enewsclass` VALUES ('9', '0', '私密整形', '', '0', '25', '10', '0', '0', '0', '', '1', 'smzx', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '私密整形', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505890852');
INSERT INTO `phome_enewsclass` VALUES ('10', '0', '口腔美容', '|41|42|43|44|45|', '0', '25', '10', '0', '0', '0', '', '0', 'kqmr', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '口腔美容', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505890893');
INSERT INTO `phome_enewsclass` VALUES ('11', '0', '毛发种植', '', '0', '25', '10', '0', '0', '0', '', '1', 'mfzz', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '毛发种植', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505890920');
INSERT INTO `phome_enewsclass` VALUES ('23', '4', ' 乳房矫正', '', '0', '25', '10', '1', '0', '1', '|4|', '1', 'xbzx/rfjz', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', ' 乳房矫正', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '1', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505893063');
INSERT INTO `phome_enewsclass` VALUES ('13', '2', '眼部综合', '|', '0', '25', '10', '1', '0', '9', '|2|', '1', 'ybzx/ybzh', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '眼部综合', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '/d/file/p/2017-09-22/74fe2f10cc0b84204b3128b69f6438a2.png', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '9', '3', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '2', '2', '1505891349');
INSERT INTO `phome_enewsclass` VALUES ('14', '2', '眼部抗衰', '|', '0', '25', '10', '0', '0', '0', '|2|', '0', 'ybzx/ybks', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '眼部抗衰', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '/d/file/p/2017-09-22/d81d9d8c45d57c0eb089dbfd628905a6.png', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505891399');
INSERT INTO `phome_enewsclass` VALUES ('15', '2', '眼部修复', '|', '0', '25', '10', '0', '0', '0', '|2|', '0', 'ybzx/ybxf', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '眼部修复', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '/d/file/p/2017-09-22/3499975cf418e4aacd5accc7c58538f1.png', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505891808');
INSERT INTO `phome_enewsclass` VALUES ('16', '2', '眼眉综合', '|', '0', '25', '10', '0', '0', '0', '|2|', '0', 'ybzx/ymzh', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '眼眉综合', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '/d/file/p/2017-09-22/2efd9f6c642f4a5e8c1947a806ccb1a2.png', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505891840');
INSERT INTO `phome_enewsclass` VALUES ('22', '4', '丰胸整形', '', '0', '25', '10', '1', '0', '1', '|4|', '1', 'xbzx/fxzx', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '丰胸整形', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '1', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505892999');
INSERT INTO `phome_enewsclass` VALUES ('21', '3', '隆鼻', '', '0', '25', '10', '2', '0', '1', '|3|', '1', 'bbzx/lb', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '隆鼻', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505892924');
INSERT INTO `phome_enewsclass` VALUES ('20', '3', '甄别精品', '', '0', '25', '10', '1', '0', '1', '|3|', '1', 'bbzx/zbjp', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '甄别精品', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505892892');
INSERT INTO `phome_enewsclass` VALUES ('24', '4', '乳房修复', '', '0', '25', '10', '0', '0', '1', '|4|', '1', 'xbzx/rfxf', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '乳房修复', '1', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505893169');
INSERT INTO `phome_enewsclass` VALUES ('25', '4', '乳头整形', '', '0', '25', '10', '1', '0', '1', '|4|', '1', 'xbzx/rtzx', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '乳头整形', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505893237');
INSERT INTO `phome_enewsclass` VALUES ('26', '5', '面颌整形', '', '0', '25', '10', '1', '0', '1', '|5|', '1', 'mblk/mjzx', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '面颌整形', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505893316');
INSERT INTO `phome_enewsclass` VALUES ('27', '5', '耳部整形', '', '0', '25', '10', '1', '0', '1', '|5|', '1', 'mblk/ebzx', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '耳部整形', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505893353');
INSERT INTO `phome_enewsclass` VALUES ('28', '5', '唇部整形', '', '0', '25', '10', '1', '0', '1', '|5|', '1', 'mblk/cbzx', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '唇部整形', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505893384');
INSERT INTO `phome_enewsclass` VALUES ('29', '6', '吸脂塑形', '', '0', '25', '10', '1', '0', '1', '|6|', '1', 'xtds/xzsx', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '吸脂塑形', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505893413');
INSERT INTO `phome_enewsclass` VALUES ('30', '6', '脂肪填充', '', '0', '25', '10', '1', '0', '1', '|6|', '1', 'xtds/zftc', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '脂肪填充', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505893467');
INSERT INTO `phome_enewsclass` VALUES ('31', '7', '注射材料', '', '0', '25', '10', '1', '0', '1', '|7|', '1', 'wzx/zscl', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '注射材料', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505893496');
INSERT INTO `phome_enewsclass` VALUES ('32', '7', ' 注射除皱', '', '0', '25', '10', '1', '0', '1', '|7|', '1', 'wzx/zscz', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', ' 注射除皱', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505893522');
INSERT INTO `phome_enewsclass` VALUES ('33', '7', '注射塑型', '', '0', '25', '10', '1', '0', '1', '|7|', '1', 'wzx/zssx', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '注射塑型', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '1', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505893568');
INSERT INTO `phome_enewsclass` VALUES ('34', '7', '无创减肥', '', '0', '25', '10', '1', '0', '1', '|7|', '1', 'wzx/wcjf', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '无创减肥', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505893601');
INSERT INTO `phome_enewsclass` VALUES ('35', '8', '祛斑', '', '0', '25', '10', '1', '0', '1', '|8|', '1', 'pfmr/qb', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '祛斑', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '1', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505893631');
INSERT INTO `phome_enewsclass` VALUES ('36', '8', '皮肤治疗', '', '0', '25', '10', '1', '0', '1', '|8|', '1', 'pfmr/pfzl', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '皮肤治疗', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '1', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505893659');
INSERT INTO `phome_enewsclass` VALUES ('37', '8', '美白嫩肤', '', '0', '25', '10', '1', '0', '1', '|8|', '1', 'pfmr/mbmf', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '美白嫩肤', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '1', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505893695');
INSERT INTO `phome_enewsclass` VALUES ('38', '8', '除皱紧肤', '', '0', '25', '10', '1', '0', '1', '|8|', '1', 'pfmr/czjf', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '除皱紧肤', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505893729');
INSERT INTO `phome_enewsclass` VALUES ('39', '8', '永久脱毛', '', '0', '25', '10', '1', '0', '1', '|8|', '1', 'pfmr/yjtm', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '永久脱毛', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505893765');
INSERT INTO `phome_enewsclass` VALUES ('40', '8', ' 艺术纹绣', '', '0', '25', '10', '1', '0', '1', '|8|', '1', 'pfmr/ysxw', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', ' 艺术纹绣', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505893794');
INSERT INTO `phome_enewsclass` VALUES ('41', '10', '牙齿美容', '', '0', '25', '10', '1', '0', '1', '|10|', '1', 'kqmr/ycmr', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '牙齿美容', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505893854');
INSERT INTO `phome_enewsclass` VALUES ('42', '10', '牙齿矫正', '', '0', '25', '10', '1', '0', '1', '|10|', '1', 'kqmr/ycjz', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '牙齿矫正', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505893880');
INSERT INTO `phome_enewsclass` VALUES ('43', '10', '牙齿美白', '', '0', '25', '10', '1', '0', '1', '|10|', '1', 'kqmr/ycmb', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '牙齿美白', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505893910');
INSERT INTO `phome_enewsclass` VALUES ('44', '10', '牙齿种植', '', '0', '25', '10', '1', '0', '1', '|10|', '1', 'kqmr/yczz', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '牙齿种植', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505893933');
INSERT INTO `phome_enewsclass` VALUES ('45', '10', '牙齿治疗保健', '', '0', '25', '10', '1', '0', '1', '|10|', '1', 'kqmr/yczlbj', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '牙齿治疗保健', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505893960');
INSERT INTO `phome_enewsclass` VALUES ('46', '0', '关于莱美', '|47|48|49|50|51|52|53|57|58|60|61|62|', '0', '25', '10', '0', '0', '0', '', '0', 'gylm', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '关于莱美', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505962647');
INSERT INTO `phome_enewsclass` VALUES ('47', '46', '品牌介绍', '', '0', '25', '10', '0', '0', '0', '|46|', '1', 'gylm/ppjs', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '品牌介绍', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505962860');
INSERT INTO `phome_enewsclass` VALUES ('48', '46', '专家团队', '', '0', '25', '10', '1', '0', '1', '|46|', '1', 'gylm/zjlm', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '专家团队', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505963182');
INSERT INTO `phome_enewsclass` VALUES ('49', '46', '医院环境', '', '0', '25', '10', '1', '0', '1', '|46|', '1', 'gylm/yyhj', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '医院环境', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505963233');
INSERT INTO `phome_enewsclass` VALUES ('50', '46', '医院荣誉', '', '0', '25', '10', '1', '0', '1', '|46|', '1', 'gylm/yyry', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '医院荣誉', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505963285');
INSERT INTO `phome_enewsclass` VALUES ('51', '46', '尖端设备', '', '0', '25', '10', '1', '0', '1', '|46|', '1', 'gylm/jdsb', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '尖端设备', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505963314');
INSERT INTO `phome_enewsclass` VALUES ('52', '46', '媒体报道', '', '0', '25', '10', '1', '0', '1', '|46|', '1', 'gylm/mtbd', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '媒体报道', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505963346');
INSERT INTO `phome_enewsclass` VALUES ('53', '46', '来院路线', '', '0', '25', '10', '1', '0', '1', '|46|', '1', 'gylm/lylx', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '来院路线', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505963384');
INSERT INTO `phome_enewsclass` VALUES ('54', '0', '首页管理', '|55|56|', '0', '25', '10', '0', '0', '0', '', '0', 'sygl', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '首页管理', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505964025');
INSERT INTO `phome_enewsclass` VALUES ('55', '54', 'banner导航', '', '0', '25', '10', '1', '0', '1', '|54|', '1', 'sygl/subnav', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', 'banner导航', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1505964187');
INSERT INTO `phome_enewsclass` VALUES ('56', '54', 'banner管理', '', '0', '25', '10', '1', '0', '1', '|54|', '1', 'sygl/banner', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', 'banner管理', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '7', '7', '1505964244');
INSERT INTO `phome_enewsclass` VALUES ('57', '46', '莱美动态', '', '0', '25', '10', '1', '0', '1', '|46|', '1', 'gylm/lmdt', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '莱美动态', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '1', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1506086033');
INSERT INTO `phome_enewsclass` VALUES ('58', '46', '媒体报道', '', '0', '25', '10', '1', '0', '1', '|46|', '1', 'gylm/lmbd', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '媒体报道', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '1', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1506086106');
INSERT INTO `phome_enewsclass` VALUES ('59', '46', '友情链接', '', '0', '25', '10', '0', '0', '1', '|46|', '0', 'gylm/yqlj', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '友情链接', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '1', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1506086171');
INSERT INTO `phome_enewsclass` VALUES ('60', '46', '美丽案例', '', '0', '25', '10', '1', '0', '1', '|46|', '1', 'gylm/mlal', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '美丽案例', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '1', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1506086216');
INSERT INTO `phome_enewsclass` VALUES ('61', '46', '最新活动', '', '0', '25', '10', '1', '0', '1', '|46|', '1', 'gylm/zxhd', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '最新活动', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '1', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1506086425');
INSERT INTO `phome_enewsclass` VALUES ('62', '46', '医师组合', '', '0', '25', '10', '1', '0', '1', '|46|', '1', 'gylm/yszh', '.html', 'Y-m-d', '0', '.html', '0', '1', '10', '10', '10', '', '0', '0', '', '10', '1', '1', '10', '医师组合', '0', '0', '1', 'news', '0', '0', '2', '2', 'id DESC', 'newstime DESC', '', '', '1', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '1', '1', '0', '0', '0', '0', '', '1', '0', '0', '0', '', '0', '0', '0', '0', '', '0', '0', '0', '', '0', '0', '0', '0', '1506086464');

-- ----------------------------
-- Table structure for `phome_enewsclassadd`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsclassadd`;
CREATE TABLE `phome_enewsclassadd` (
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `classtext` mediumtext NOT NULL,
  `ttids` text NOT NULL,
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsclassadd
-- ----------------------------
INSERT INTO `phome_enewsclassadd` VALUES ('1', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('2', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('3', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('4', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('5', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('6', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('7', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('8', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('9', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('10', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('11', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('23', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('13', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('14', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('15', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('16', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('22', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('21', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('20', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('24', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('25', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('26', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('27', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('28', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('29', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('30', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('31', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('32', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('33', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('34', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('35', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('36', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('37', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('38', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('39', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('40', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('41', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('42', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('43', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('44', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('45', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('46', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('47', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('48', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('49', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('50', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('51', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('52', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('53', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('54', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('55', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('56', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('57', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('58', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('59', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('60', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('61', '', '');
INSERT INTO `phome_enewsclassadd` VALUES ('62', '', '');

-- ----------------------------
-- Table structure for `phome_enewsclassf`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsclassf`;
CREATE TABLE `phome_enewsclassf` (
  `fid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `f` varchar(30) NOT NULL DEFAULT '',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `fform` varchar(20) NOT NULL DEFAULT '',
  `fhtml` mediumtext NOT NULL,
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ftype` varchar(30) NOT NULL DEFAULT '',
  `flen` varchar(20) NOT NULL DEFAULT '',
  `fvalue` text NOT NULL,
  `fformsize` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsclassf
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsclassnavcache`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsclassnavcache`;
CREATE TABLE `phome_enewsclassnavcache` (
  `navtype` char(16) NOT NULL DEFAULT '',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `modid` smallint(5) unsigned NOT NULL DEFAULT '0',
  KEY `navtype` (`navtype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsclassnavcache
-- ----------------------------
INSERT INTO `phome_enewsclassnavcache` VALUES ('modclass', '0', '1');
INSERT INTO `phome_enewsclassnavcache` VALUES ('jsclass', '0', '0');
INSERT INTO `phome_enewsclassnavcache` VALUES ('listenews', '0', '0');
INSERT INTO `phome_enewsclassnavcache` VALUES ('listclass', '0', '0');

-- ----------------------------
-- Table structure for `phome_enewsclasstemp`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsclasstemp`;
CREATE TABLE `phome_enewsclasstemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(30) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsclasstemp
-- ----------------------------
INSERT INTO `phome_enewsclasstemp` VALUES ('1', '通用一级栏目模板', '<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n</head>\r\n<body class=\\\"channle\\\">\r\n[!--temp.header--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n<tr valign=\\\"top\\\">\r\n<td class=\\\"news_list\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n[listsonclass]\\\'selfinfo\\\',5,38,0,0,7,0,0[/listsonclass]</td>\r\n<td class=\\\"sider\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title\\\">\r\n<tr>\r\n<td><strong>推荐资讯</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"8\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td>[phomenewspic]\\\'selfinfo\\\',2,4,128,90,1,20,2[/phomenewspic]\r\n</td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n<tr>\r\n<td><strong>最后更新</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><ul>\r\n[ecmsinfo]\\\'selfinfo\\\',10,44,0,0,2,0[/ecmsinfo] \r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n<tr>\r\n<td><strong>热门点击</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><ol class=\\\"rank\\\">\r\n[ecmsinfo]\\\'selfinfo\\\',10,40,0,1,10,0[/ecmsinfo] \r\n</ol></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', '0');
INSERT INTO `phome_enewsclasstemp` VALUES ('2', '分类信息一级栏目模板', '<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n</head>\r\n<body class=\\\"channle\\\">\r\n[!--temp.header--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n<tr valign=\\\"top\\\">\r\n<td class=\\\"news_list\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n[listsonclass]\\\'selfinfo\\\',5,38,0,0,7,0,0[/listsonclass]</td>\r\n<td class=\\\"sider\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title\\\">\r\n<tr>\r\n<td><strong>分类信息搜索</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><form action=\\\"[!--news.url--]e/search/index.php\\\" method=\\\"post\\\" name=\\\"searchform\\\" id=\\\"searchform\\\">\r\n<table width=\\\"98%\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"0\\\" cellspacing=\\\"6\\\">\r\n<input type=\\\"hidden\\\" name=\\\"tbname\\\" value=\\\"info\\\">\r\n<input type=\\\"hidden\\\" name=\\\"tempid\\\" value=\\\"1\\\">\r\n<tr>\r\n<td><input name=\\\"keyboard\\\" type=\\\"text\\\" class=\\\"inputText\\\" id=\\\"keyboard\\\" size=\\\"18\\\" />\r\n<select name=\\\"show\\\">\r\n<option value=\\\"title,smalltext,myarea\\\" selected=\\\"selected\\\">不限</option>\r\n<option value=\\\"title\\\">信息标题</option>\r\n<option value=\\\"smalltext\\\">信息内容</option>\r\n<option value=\\\"myarea\\\">所在地</option>\r\n</select></td>\r\n</tr>\r\n<tr>\r\n<td><select name=\\\"classid\\\">\r\n<option value=\\\'9\\\'>所有分类</option>\r\n<option value=\\\'10\\\'>|-房屋信息</option>\r\n<option value=\\\'11\\\' >&nbsp;&nbsp;|-房屋求租</option>\r\n<option value=\\\'12\\\' >&nbsp;&nbsp;|-房屋出租</option>\r\n<option value=\\\'13\\\' >&nbsp;&nbsp;|-房屋求购</option>\r\n<option value=\\\'14\\\' >&nbsp;&nbsp;|-房屋出售</option>\r\n<option value=\\\'15\\\' >&nbsp;&nbsp;|-办公用房</option>\r\n<option value=\\\'16\\\' >&nbsp;&nbsp;|-旺铺门面</option>\r\n<option value=\\\'17\\\'>|-跳蚤市场</option>\r\n<option value=\\\'18\\\' >&nbsp;&nbsp;|-电脑配件</option>\r\n<option value=\\\'19\\\' >&nbsp;&nbsp;|-电器数码</option>\r\n<option value=\\\'20\\\' >&nbsp;&nbsp;|-通讯产品</option>\r\n<option value=\\\'21\\\' >&nbsp;&nbsp;|-居家用品</option>\r\n<option value=\\\'22\\\'>|-同城生活</option>\r\n<option value=\\\'23\\\' >&nbsp;&nbsp;|-本地新闻</option>\r\n<option value=\\\'24\\\' >&nbsp;&nbsp;|-购物打折</option>\r\n<option value=\\\'25\\\' >&nbsp;&nbsp;|-旅游活动</option>\r\n<option value=\\\'26\\\' >&nbsp;&nbsp;|-便民告示</option>\r\n<option value=\\\'27\\\'>|-求职招聘</option>\r\n<option value=\\\'28\\\' >&nbsp;&nbsp;|-工程技术</option>\r\n<option value=\\\'29\\\' >&nbsp;&nbsp;|-财务会计</option>\r\n<option value=\\\'30\\\' >&nbsp;&nbsp;|-餐饮行业</option>\r\n<option value=\\\'31\\\' >&nbsp;&nbsp;|-经营管理</option>\r\n</select>\r\n<input name=\\\"Submit2\\\" type=\\\"image\\\" value=\\\"搜索\\\" src=\\\"[!--news.url--]skin/default/images/search.gif\\\" />　\r\n[<a href=\\\"[!--news.url--]e/DoInfo/ChangeClass.php?mid=8\\\" target=\\\"_blank\\\">发布信息</a>]</td>\r\n</tr>\r\n</table>\r\n</form></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title\\\">\r\n<tr>\r\n<td><strong>地区导航</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td>[!--temp.infoarea--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n<tr>\r\n<td><strong>分类导航</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td>[!--temp.infoclassnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n<tr>\r\n<td><strong>热门点击</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><ol class=\\\"rank\\\">\r\n[ecmsinfo]\\\'selfinfo\\\',10,40,0,1,10,0[/ecmsinfo] \r\n</ol></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', '0');
INSERT INTO `phome_enewsclasstemp` VALUES ('3', '栏目封面', '<!doctype html>\r\n<html>\r\n<head>\r\n<link rel=\\\"shortout icon\\\" href=\\\"http://www.nclaimei.com/skin/laimei2017/images/favicon.ico\\\" />\r\n<meta name=\\\"renderer\\\" content=\\\"webkit\\\"/>\r\n<meta http-equiv=\\\"X-UA-Comabsolutetible\\\" content=\\\"IE=Edge,chrome=1\\\" />\r\n<meta name=\\\"format-detection\\\" content=\\\"telephone=on\\\"/>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>[!--pagetitle--]_南昌莱美美容医院</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedesc--]\\\">\r\n<link href=\\\"/skin/css/zxmr.css\\\" rel=\\\"stylesheet\\\"/>\r\n<link href=\\\"/skin/css/reset.css\\\" rel=\\\"stylesheet\\\"/>\r\n<script src=\\\"/skin//js/jquery-1.9.1.min.js\\\"></script>\r\n<script src=\\\"/skin/js/jquery.superslide.2.1.1.source.js\\\"></script>\r\n<script src=\\\"/skin/js/expert.js\\\"></script>\r\n<script src=\\\"/skin/js/indexapp.js\\\"></script>\r\n</head>\r\n<body>\r\n[!--temp.header--]\r\n<!--content pinpaiContent-->\r\n<div class=\\\"pinpaiContent pubW center relative clearfix\\\"> \r\n  <div class=\\\"contentRight fr  relative\\\" id=\\\"contentRight\\\">\r\n      <div class=\\\"seoNavs absolute fonts\\\">[!--newsnav--]</div>\r\n    <div class=\\\"pinpaiWrapper\\\">\r\n        <div class=\\\"content1 clearfix fonts\\\">\r\n      <ul>\r\n   [e:loop={\\\"select classname,classpath,classimg from [!db.pre!]enewsclass where bclassid =\\\'$GLOBALS[navclassid]\\\'\\\",10,24,0}]\r\n          <li>\r\n            <a href=\\\"<?=$public_r[newsurl].$bqr[\\\'classpath\\\']?>\\\" class=\\\"img\\\" target=\\\"_blank\\\">\r\n             <img src=\\\"<?=$bqr[\\\'classimg\\\']?>\\\" width=\\\"413\\\" height=\\\"285\\\" \\\"></a>\r\n            <a href=\\\"<?=$public_r[newsurl].$bqr[\\\'classpath\\\']?>\\\" target=\\\"_blank\\\"><?=$bqr[\\\'classname\\\']?></a>\r\n          </li>\r\n        [/e:loop]\r\n          </ul>\r\n      </div>\r\n      <div class=\\\"content2 clearfix fonts\\\">\r\n      <h1>猜你喜欢</h1>\r\n      <ul>\r\n              <li><a href=\\\"/s/FreckleRemovinga/index.html\\\" target=\\\"_blank\\\"><img src=\\\"/skin/picture/20921c0e5d66f0a3e858a959f60886a7.png\\\" width=\\\"356\\\" height=\\\"219\\\" alt=\\\"\\\"></a></li>\r\n              <li><a href=\\\"/s/RemoveEyeBaga/index.html\\\" target=\\\"_blank\\\"><img src=\\\"/skin/picture/11488dc20370d236e76f8bcdff549b7d.png\\\" width=\\\"356\\\" height=\\\"219\\\" alt=\\\"\\\"></a></li>\r\n              <li><a href=\\\"/s/Teethas/index.html\\\" target=\\\"_blank\\\"><img src=\\\"/skin/picture/b25d9186a79496dbaef0913088b47130.png\\\" width=\\\"356\\\" height=\\\"219\\\" alt=\\\"\\\"></a></li>\r\n            </ul>\r\n      </div>\r\n      <div class=\\\"content4 clearfix fonts\\\">\r\n        <ul>\r\n                  <li><a class=\\\"qiujing\\\"  href=\\\"javascript:void(0)\\\" onClick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\"></a><p>专业提供在线免费咨询服务，快速为您解答整形美容疑问。</p></li>\r\n                          <li><a class=\\\"chengxin\\\" href=\\\"javascript:void(0)\\\" onClick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\"></a><p>医生免费预约通道，到院无需排队即可享受美丽专属优惠。</p></li>\r\n                          <li><a class=\\\"reqing\\\"   href=\\\"http://www.nclaimei.com/gylm/lylx\\\"></a><p>无论您在本市还是外地，一份详细的交通指南让您轻松到达。</p></li>\r\n                </ul>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n<!--content pinpaiContent结束-->\r\n[!--temp.footer--]\r\n</body>\r\n</html>', '0');

-- ----------------------------
-- Table structure for `phome_enewsclasstempclass`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsclasstempclass`;
CREATE TABLE `phome_enewsclasstempclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsclasstempclass
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsclass_stats`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsclass_stats`;
CREATE TABLE `phome_enewsclass_stats` (
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `pvall` int(10) unsigned NOT NULL DEFAULT '0',
  `pvyear` int(10) unsigned NOT NULL DEFAULT '0',
  `pvhalfyear` int(10) unsigned NOT NULL DEFAULT '0',
  `pvquarter` int(10) unsigned NOT NULL DEFAULT '0',
  `pvmonth` int(10) unsigned NOT NULL DEFAULT '0',
  `pvweek` int(10) unsigned NOT NULL DEFAULT '0',
  `pvday` int(10) unsigned NOT NULL DEFAULT '0',
  `pvyesterday` int(10) unsigned NOT NULL DEFAULT '0',
  `ipall` int(10) unsigned NOT NULL DEFAULT '0',
  `ipyear` int(10) unsigned NOT NULL DEFAULT '0',
  `iphalfyear` int(10) unsigned NOT NULL DEFAULT '0',
  `ipquarter` int(10) unsigned NOT NULL DEFAULT '0',
  `ipmonth` int(10) unsigned NOT NULL DEFAULT '0',
  `ipweek` int(10) unsigned NOT NULL DEFAULT '0',
  `ipday` int(10) unsigned NOT NULL DEFAULT '0',
  `ipyesterday` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsclass_stats
-- ----------------------------
INSERT INTO `phome_enewsclass_stats` VALUES ('1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('11', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('23', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('13', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('20', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('24', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('25', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('26', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('27', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('28', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('29', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('30', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('32', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('33', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('34', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('35', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('36', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('37', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('38', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('39', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('42', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('43', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('44', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('45', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('46', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('47', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('48', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('49', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('50', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('51', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('52', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('53', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('54', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('55', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('56', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('57', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('58', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('59', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phome_enewsclass_stats` VALUES ('62', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `phome_enewsclass_stats_ip`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsclass_stats_ip`;
CREATE TABLE `phome_enewsclass_stats_ip` (
  `ip` char(21) NOT NULL DEFAULT '',
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsclass_stats_ip
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsclass_stats_set`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsclass_stats_set`;
CREATE TABLE `phome_enewsclass_stats_set` (
  `openstats` tinyint(1) NOT NULL DEFAULT '0',
  `pvtime` int(10) unsigned NOT NULL DEFAULT '0',
  `statsdate` int(10) unsigned NOT NULL DEFAULT '0',
  `changedate` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsclass_stats_set
-- ----------------------------
INSERT INTO `phome_enewsclass_stats_set` VALUES ('1', '3600', '0', '20130717');

-- ----------------------------
-- Table structure for `phome_enewsdiggips`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsdiggips`;
CREATE TABLE `phome_enewsdiggips` (
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL DEFAULT '0',
  `ips` mediumtext NOT NULL,
  KEY `classid` (`classid`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsdiggips
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsdo`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsdo`;
CREATE TABLE `phome_enewsdo` (
  `doid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `doname` varchar(60) NOT NULL DEFAULT '',
  `dotime` smallint(6) NOT NULL DEFAULT '0',
  `isopen` tinyint(1) NOT NULL DEFAULT '0',
  `doing` tinyint(4) NOT NULL DEFAULT '0',
  `classid` text NOT NULL,
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`doid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsdo
-- ----------------------------
INSERT INTO `phome_enewsdo` VALUES ('1', '自动刷新首页', '12', '0', '0', ',', '1273215883');

-- ----------------------------
-- Table structure for `phome_enewsdolog`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsdolog`;
CREATE TABLE `phome_enewsdolog` (
  `logid` bigint(20) NOT NULL AUTO_INCREMENT,
  `logip` varchar(20) NOT NULL DEFAULT '',
  `logtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `username` varchar(30) NOT NULL DEFAULT '',
  `enews` varchar(30) NOT NULL DEFAULT '',
  `doing` varchar(255) NOT NULL DEFAULT '',
  `pubid` bigint(16) unsigned NOT NULL DEFAULT '0',
  `ipport` varchar(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`logid`),
  KEY `pubid` (`pubid`)
) ENGINE=MyISAM AUTO_INCREMENT=488 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsdolog
-- ----------------------------
INSERT INTO `phome_enewsdolog` VALUES ('1', '::1', '2017-09-20 08:40:42', 'admin', 'login', '---', '0', '58141');
INSERT INTO `phome_enewsdolog` VALUES ('2', '::1', '2017-09-20 08:40:42', 'admin', 'login', '---', '0', '58157');
INSERT INTO `phome_enewsdolog` VALUES ('3', '::1', '2017-09-20 08:40:43', 'admin', 'login', '---', '0', '58160');
INSERT INTO `phome_enewsdolog` VALUES ('4', '::1', '2017-09-20 09:06:03', 'admin', 'SetEnews', '---', '0', '59708');
INSERT INTO `phome_enewsdolog` VALUES ('5', '::1', '2017-09-20 09:10:26', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '60192');
INSERT INTO `phome_enewsdolog` VALUES ('6', '::1', '2017-09-20 09:10:42', 'admin', 'ReIndex', '---', '0', '60221');
INSERT INTO `phome_enewsdolog` VALUES ('7', '::1', '2017-09-20 09:24:25', 'admin', 'EditTempvar', 'varid=2<br>var=footer&gid=1', '0', '61759');
INSERT INTO `phome_enewsdolog` VALUES ('8', '::1', '2017-09-20 09:25:35', 'admin', 'EditPublicTemp', 'gid=1', '0', '61888');
INSERT INTO `phome_enewsdolog` VALUES ('9', '::1', '2017-09-20 09:31:33', 'admin', 'EditPublicTemp', 'gid=1', '0', '62561');
INSERT INTO `phome_enewsdolog` VALUES ('10', '::1', '2017-09-20 09:33:43', 'admin', 'EditPublicTemp', 'gid=1', '0', '62790');
INSERT INTO `phome_enewsdolog` VALUES ('11', '::1', '2017-09-20 09:53:08', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '64992');
INSERT INTO `phome_enewsdolog` VALUES ('12', '::1', '2017-09-20 09:54:28', 'admin', 'ReIndex', '---', '0', '65148');
INSERT INTO `phome_enewsdolog` VALUES ('13', '::1', '2017-09-20 09:56:27', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '65415');
INSERT INTO `phome_enewsdolog` VALUES ('14', '::1', '2017-09-20 09:56:43', 'admin', 'ReIndex', '---', '0', '65443');
INSERT INTO `phome_enewsdolog` VALUES ('15', '::1', '2017-09-20 10:02:15', 'admin', 'AddClass', 'classid=1<br>classname=关于华翎', '0', '49811');
INSERT INTO `phome_enewsdolog` VALUES ('16', '::1', '2017-09-20 11:00:02', 'admin', 'login', '---', '0', '56397');
INSERT INTO `phome_enewsdolog` VALUES ('17', '::1', '2017-09-20 11:11:00', 'admin', 'login', '---', '0', '57644');
INSERT INTO `phome_enewsdolog` VALUES ('18', '::1', '2017-09-20 11:24:13', 'admin', 'login', '---', '0', '59638');
INSERT INTO `phome_enewsdolog` VALUES ('19', '::1', '2017-09-20 11:24:39', 'admin', 'EditPublicTemp', 'gid=1', '0', '59698');
INSERT INTO `phome_enewsdolog` VALUES ('20', '::1', '2017-09-20 11:25:28', 'admin', 'EditPublicTemp', 'gid=1', '0', '59806');
INSERT INTO `phome_enewsdolog` VALUES ('21', '::1', '2017-09-20 11:27:22', 'admin', 'EditPublicTemp', 'gid=1', '0', '60019');
INSERT INTO `phome_enewsdolog` VALUES ('22', '::1', '2017-09-20 12:26:26', 'admin', 'login', '---', '0', '50004');
INSERT INTO `phome_enewsdolog` VALUES ('23', '::1', '2017-09-20 12:27:56', 'admin', 'EditPublicTemp', 'gid=1', '0', '50274');
INSERT INTO `phome_enewsdolog` VALUES ('24', '::1', '2017-09-20 12:30:10', 'admin', 'login', '---', '0', '50653');
INSERT INTO `phome_enewsdolog` VALUES ('25', '::1', '2017-09-20 12:30:58', 'admin', 'EditPublicTemp', 'gid=1', '0', '50749');
INSERT INTO `phome_enewsdolog` VALUES ('26', '::1', '2017-09-20 12:37:24', 'admin', 'SetEnews', '---', '0', '51731');
INSERT INTO `phome_enewsdolog` VALUES ('27', '::1', '2017-09-20 12:39:33', 'admin', 'EditPublicTemp', 'gid=1', '0', '52030');
INSERT INTO `phome_enewsdolog` VALUES ('28', '::1', '2017-09-20 12:41:18', 'admin', 'EditPublicTemp', 'gid=1', '0', '52343');
INSERT INTO `phome_enewsdolog` VALUES ('29', '::1', '2017-09-20 14:53:46', 'admin', 'login', '---', '0', '63249');
INSERT INTO `phome_enewsdolog` VALUES ('30', '::1', '2017-09-20 14:54:59', 'admin', 'EditClass', 'classid=1<br>classname=经典项目', '0', '63303');
INSERT INTO `phome_enewsdolog` VALUES ('31', '::1', '2017-09-20 14:56:17', 'admin', 'AddClass', 'classid=2<br>classname=眼部整形', '0', '63325');
INSERT INTO `phome_enewsdolog` VALUES ('32', '::1', '2017-09-20 14:57:10', 'admin', 'AddClass', 'classid=3<br>classname=鼻部整形', '0', '63334');
INSERT INTO `phome_enewsdolog` VALUES ('33', '::1', '2017-09-20 14:57:43', 'admin', 'AddClass', 'classid=4<br>classname=胸部整形', '0', '63342');
INSERT INTO `phome_enewsdolog` VALUES ('34', '::1', '2017-09-20 14:58:23', 'admin', 'AddClass', 'classid=5<br>classname=面部轮廓', '0', '63355');
INSERT INTO `phome_enewsdolog` VALUES ('35', '::1', '2017-09-20 14:59:29', 'admin', 'AddClass', 'classid=6<br>classname=形体雕塑', '0', '63365');
INSERT INTO `phome_enewsdolog` VALUES ('36', '::1', '2017-09-20 15:00:04', 'admin', 'AddClass', 'classid=7<br>classname=微整形', '0', '63376');
INSERT INTO `phome_enewsdolog` VALUES ('37', '::1', '2017-09-20 15:00:26', 'admin', 'AddClass', 'classid=8<br>classname=皮肤美容', '0', '63383');
INSERT INTO `phome_enewsdolog` VALUES ('38', '::1', '2017-09-20 15:00:53', 'admin', 'AddClass', 'classid=9<br>classname=私密整形', '0', '63395');
INSERT INTO `phome_enewsdolog` VALUES ('39', '::1', '2017-09-20 15:01:33', 'admin', 'AddClass', 'classid=10<br>classname=口腔美容', '0', '63402');
INSERT INTO `phome_enewsdolog` VALUES ('40', '::1', '2017-09-20 15:02:00', 'admin', 'AddClass', 'classid=11<br>classname=毛发种植', '0', '63410');
INSERT INTO `phome_enewsdolog` VALUES ('41', '::1', '2017-09-20 15:06:11', 'admin', 'ChangeClassIslast', 'classid=1<br>classname=经典项目', '0', '63505');
INSERT INTO `phome_enewsdolog` VALUES ('42', '::1', '2017-09-20 15:07:13', 'admin', 'AddClass', 'classid=12<br>classname=面部轮廓', '0', '63530');
INSERT INTO `phome_enewsdolog` VALUES ('43', '::1', '2017-09-20 15:08:01', 'admin', 'ChangeClassIslast', 'classid=12<br>classname=面部轮廓', '0', '63557');
INSERT INTO `phome_enewsdolog` VALUES ('44', '::1', '2017-09-20 15:09:09', 'admin', 'AddClass', 'classid=13<br>classname=眼部综合', '0', '63594');
INSERT INTO `phome_enewsdolog` VALUES ('45', '::1', '2017-09-20 15:09:59', 'admin', 'AddClass', 'classid=14<br>classname=眼部抗衰', '0', '63612');
INSERT INTO `phome_enewsdolog` VALUES ('46', '::1', '2017-09-20 15:16:48', 'admin', 'AddClass', 'classid=15<br>classname=眼部修复', '0', '64004');
INSERT INTO `phome_enewsdolog` VALUES ('47', '::1', '2017-09-20 15:17:20', 'admin', 'AddClass', 'classid=16<br>classname=眼眉综合', '0', '64021');
INSERT INTO `phome_enewsdolog` VALUES ('48', '::1', '2017-09-20 15:17:58', 'admin', 'AddClass', 'classid=17<br>classname= 眼睑下垂', '0', '64043');
INSERT INTO `phome_enewsdolog` VALUES ('49', '::1', '2017-09-20 15:19:05', 'admin', 'AddClass', 'classid=18<br>classname=眼部祛脂', '0', '64083');
INSERT INTO `phome_enewsdolog` VALUES ('50', '::1', '2017-09-20 15:19:48', 'admin', 'AddClass', 'classid=19<br>classname=眼睑凹陷', '0', '64106');
INSERT INTO `phome_enewsdolog` VALUES ('51', '::1', '2017-09-20 15:31:55', 'admin', 'DelClass', 'classid=12<br>classname=面部轮廓', '0', '64331');
INSERT INTO `phome_enewsdolog` VALUES ('52', '::1', '2017-09-20 15:32:35', 'admin', 'DelClass', 'classid=17<br>classname= 眼睑下垂', '0', '64360');
INSERT INTO `phome_enewsdolog` VALUES ('53', '::1', '2017-09-20 15:32:51', 'admin', 'DelClass', 'classid=18<br>classname=眼部祛脂', '0', '64373');
INSERT INTO `phome_enewsdolog` VALUES ('54', '::1', '2017-09-20 15:33:02', 'admin', 'DelClass', 'classid=19<br>classname=眼睑凹陷', '0', '64382');
INSERT INTO `phome_enewsdolog` VALUES ('55', '::1', '2017-09-20 15:33:34', 'admin', 'ChangeClassIslast', 'classid=1<br>classname=经典项目', '0', '64403');
INSERT INTO `phome_enewsdolog` VALUES ('56', '::1', '2017-09-20 15:34:52', 'admin', 'AddClass', 'classid=20<br>classname=甄别精品', '0', '64444');
INSERT INTO `phome_enewsdolog` VALUES ('57', '::1', '2017-09-20 15:35:25', 'admin', 'AddClass', 'classid=21<br>classname=隆鼻', '0', '64462');
INSERT INTO `phome_enewsdolog` VALUES ('58', '::1', '2017-09-20 15:36:39', 'admin', 'AddClass', 'classid=22<br>classname=丰胸整形', '0', '64500');
INSERT INTO `phome_enewsdolog` VALUES ('59', '::1', '2017-09-20 15:37:43', 'admin', 'AddClass', 'classid=23<br>classname= 乳房矫正', '0', '64532');
INSERT INTO `phome_enewsdolog` VALUES ('60', '::1', '2017-09-20 15:39:29', 'admin', 'AddClass', 'classid=24<br>classname=乳房修复', '0', '64588');
INSERT INTO `phome_enewsdolog` VALUES ('61', '::1', '2017-09-20 15:40:38', 'admin', 'AddClass', 'classid=25<br>classname=乳头整形', '0', '64621');
INSERT INTO `phome_enewsdolog` VALUES ('62', '::1', '2017-09-20 15:40:55', 'admin', 'ChangeClassIslast', 'classid=24<br>classname=乳房修复', '0', '64638');
INSERT INTO `phome_enewsdolog` VALUES ('63', '::1', '2017-09-20 15:41:57', 'admin', 'AddClass', 'classid=26<br>classname=面颌整形', '0', '64673');
INSERT INTO `phome_enewsdolog` VALUES ('64', '::1', '2017-09-20 15:42:34', 'admin', 'AddClass', 'classid=27<br>classname=耳部整形', '0', '64699');
INSERT INTO `phome_enewsdolog` VALUES ('65', '::1', '2017-09-20 15:43:04', 'admin', 'AddClass', 'classid=28<br>classname=唇部整形', '0', '64715');
INSERT INTO `phome_enewsdolog` VALUES ('66', '::1', '2017-09-20 15:43:33', 'admin', 'AddClass', 'classid=29<br>classname=吸脂塑形', '0', '64731');
INSERT INTO `phome_enewsdolog` VALUES ('67', '::1', '2017-09-20 15:44:28', 'admin', 'AddClass', 'classid=30<br>classname=脂肪填充', '0', '64765');
INSERT INTO `phome_enewsdolog` VALUES ('68', '::1', '2017-09-20 15:44:56', 'admin', 'AddClass', 'classid=31<br>classname=注射材料', '0', '64783');
INSERT INTO `phome_enewsdolog` VALUES ('69', '::1', '2017-09-20 15:45:22', 'admin', 'AddClass', 'classid=32<br>classname= 注射除皱', '0', '64798');
INSERT INTO `phome_enewsdolog` VALUES ('70', '::1', '2017-09-20 15:46:08', 'admin', 'AddClass', 'classid=33<br>classname=注射塑型', '0', '64826');
INSERT INTO `phome_enewsdolog` VALUES ('71', '::1', '2017-09-20 15:46:41', 'admin', 'AddClass', 'classid=34<br>classname=无创减肥', '0', '64847');
INSERT INTO `phome_enewsdolog` VALUES ('72', '::1', '2017-09-20 15:47:11', 'admin', 'AddClass', 'classid=35<br>classname=祛斑', '0', '64861');
INSERT INTO `phome_enewsdolog` VALUES ('73', '::1', '2017-09-20 15:47:39', 'admin', 'AddClass', 'classid=36<br>classname=皮肤治疗', '0', '64876');
INSERT INTO `phome_enewsdolog` VALUES ('74', '::1', '2017-09-20 15:48:15', 'admin', 'AddClass', 'classid=37<br>classname=美白嫩肤', '0', '64895');
INSERT INTO `phome_enewsdolog` VALUES ('75', '::1', '2017-09-20 15:48:49', 'admin', 'AddClass', 'classid=38<br>classname=除皱紧肤', '0', '64919');
INSERT INTO `phome_enewsdolog` VALUES ('76', '::1', '2017-09-20 15:49:25', 'admin', 'AddClass', 'classid=39<br>classname=永久脱毛', '0', '64934');
INSERT INTO `phome_enewsdolog` VALUES ('77', '::1', '2017-09-20 15:49:54', 'admin', 'AddClass', 'classid=40<br>classname= 艺术纹绣', '0', '64943');
INSERT INTO `phome_enewsdolog` VALUES ('78', '::1', '2017-09-20 15:50:19', 'admin', 'ChangeClassIslast', 'classid=9<br>classname=私密整形', '0', '64955');
INSERT INTO `phome_enewsdolog` VALUES ('79', '::1', '2017-09-20 15:50:54', 'admin', 'AddClass', 'classid=41<br>classname=牙齿美容', '0', '64967');
INSERT INTO `phome_enewsdolog` VALUES ('80', '::1', '2017-09-20 15:51:20', 'admin', 'AddClass', 'classid=42<br>classname=牙齿矫正', '0', '64974');
INSERT INTO `phome_enewsdolog` VALUES ('81', '::1', '2017-09-20 15:51:50', 'admin', 'AddClass', 'classid=43<br>classname=牙齿美白', '0', '64981');
INSERT INTO `phome_enewsdolog` VALUES ('82', '::1', '2017-09-20 15:52:13', 'admin', 'AddClass', 'classid=44<br>classname=牙齿种植', '0', '64989');
INSERT INTO `phome_enewsdolog` VALUES ('83', '::1', '2017-09-20 15:52:40', 'admin', 'AddClass', 'classid=45<br>classname=牙齿治疗保健', '0', '65000');
INSERT INTO `phome_enewsdolog` VALUES ('84', '::1', '2017-09-20 15:53:03', 'admin', 'ChangeClassIslast', 'classid=11<br>classname=毛发种植', '0', '65010');
INSERT INTO `phome_enewsdolog` VALUES ('85', '::1', '2017-09-20 16:00:12', 'admin', 'ReListHtml_all', '---', '0', '49313');
INSERT INTO `phome_enewsdolog` VALUES ('86', '::1', '2017-09-20 16:24:03', 'admin', 'login', '---', '0', '50645');
INSERT INTO `phome_enewsdolog` VALUES ('87', '::1', '2017-09-20 18:03:22', 'admin', 'login', '---', '0', '59168');
INSERT INTO `phome_enewsdolog` VALUES ('88', '::1', '2017-09-20 18:07:56', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '59285');
INSERT INTO `phome_enewsdolog` VALUES ('89', '::1', '2017-09-20 18:08:07', 'admin', 'EditPublicTemp', 'gid=1', '0', '59285');
INSERT INTO `phome_enewsdolog` VALUES ('90', '::1', '2017-09-20 18:08:17', 'admin', 'ReIndex', '---', '0', '59285');
INSERT INTO `phome_enewsdolog` VALUES ('91', '::1', '2017-09-20 20:00:36', 'admin', 'login', '---', '0', '49796');
INSERT INTO `phome_enewsdolog` VALUES ('92', '::1', '2017-09-20 20:01:21', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '49839');
INSERT INTO `phome_enewsdolog` VALUES ('93', '::1', '2017-09-20 20:02:49', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '49981');
INSERT INTO `phome_enewsdolog` VALUES ('94', '::1', '2017-09-20 20:04:54', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '50082');
INSERT INTO `phome_enewsdolog` VALUES ('95', '::1', '2017-09-20 20:05:19', 'admin', 'ReListHtml_all', '---', '0', '50082');
INSERT INTO `phome_enewsdolog` VALUES ('96', '::1', '2017-09-20 20:05:27', 'admin', 'ReIndex', '---', '0', '50082');
INSERT INTO `phome_enewsdolog` VALUES ('97', '::1', '2017-09-20 20:05:52', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '50189');
INSERT INTO `phome_enewsdolog` VALUES ('98', '::1', '2017-09-20 20:07:27', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '50237');
INSERT INTO `phome_enewsdolog` VALUES ('99', '::1', '2017-09-20 20:10:32', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '50351');
INSERT INTO `phome_enewsdolog` VALUES ('100', '::1', '2017-09-20 20:16:21', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '50466');
INSERT INTO `phome_enewsdolog` VALUES ('101', '::1', '2017-09-20 20:16:33', 'admin', 'ReIndex', '---', '0', '50466');
INSERT INTO `phome_enewsdolog` VALUES ('102', '::1', '2017-09-21 08:27:51', 'admin', 'login', '---', '0', '50748');
INSERT INTO `phome_enewsdolog` VALUES ('103', '::1', '2017-09-21 08:29:14', 'admin', 'ReIndex', '---', '0', '50866');
INSERT INTO `phome_enewsdolog` VALUES ('104', '::1', '2017-09-21 08:31:23', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '50972');
INSERT INTO `phome_enewsdolog` VALUES ('105', '::1', '2017-09-21 08:31:38', 'admin', 'ReIndex', '---', '0', '50972');
INSERT INTO `phome_enewsdolog` VALUES ('106', '::1', '2017-09-21 09:24:02', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '52393');
INSERT INTO `phome_enewsdolog` VALUES ('107', '::1', '2017-09-21 09:27:18', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '52480');
INSERT INTO `phome_enewsdolog` VALUES ('108', '::1', '2017-09-21 09:28:42', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '52516');
INSERT INTO `phome_enewsdolog` VALUES ('109', '::1', '2017-09-21 09:30:02', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '52559');
INSERT INTO `phome_enewsdolog` VALUES ('110', '::1', '2017-09-21 09:31:01', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '52584');
INSERT INTO `phome_enewsdolog` VALUES ('111', '::1', '2017-09-21 09:31:02', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '52595');
INSERT INTO `phome_enewsdolog` VALUES ('112', '::1', '2017-09-21 09:33:08', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '52649');
INSERT INTO `phome_enewsdolog` VALUES ('113', '::1', '2017-09-21 09:34:26', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '52743');
INSERT INTO `phome_enewsdolog` VALUES ('114', '::1', '2017-09-21 09:41:00', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '53170');
INSERT INTO `phome_enewsdolog` VALUES ('115', '::1', '2017-09-21 09:43:06', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '53328');
INSERT INTO `phome_enewsdolog` VALUES ('116', '::1', '2017-09-21 09:44:10', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '53393');
INSERT INTO `phome_enewsdolog` VALUES ('117', '::1', '2017-09-21 09:46:23', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '53550');
INSERT INTO `phome_enewsdolog` VALUES ('118', '::1', '2017-09-21 09:47:19', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '53624');
INSERT INTO `phome_enewsdolog` VALUES ('119', '::1', '2017-09-21 09:47:49', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '53668');
INSERT INTO `phome_enewsdolog` VALUES ('120', '::1', '2017-09-21 09:47:59', 'admin', 'ReIndex', '---', '0', '53668');
INSERT INTO `phome_enewsdolog` VALUES ('121', '::1', '2017-09-21 09:48:00', 'admin', 'ReIndex', '---', '0', '53680');
INSERT INTO `phome_enewsdolog` VALUES ('122', '::1', '2017-09-21 09:48:39', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '53720');
INSERT INTO `phome_enewsdolog` VALUES ('123', '::1', '2017-09-21 09:50:49', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '53901');
INSERT INTO `phome_enewsdolog` VALUES ('124', '::1', '2017-09-21 10:05:05', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '54425');
INSERT INTO `phome_enewsdolog` VALUES ('125', '::1', '2017-09-21 10:06:04', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '54487');
INSERT INTO `phome_enewsdolog` VALUES ('126', '::1', '2017-09-21 10:07:22', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '54522');
INSERT INTO `phome_enewsdolog` VALUES ('127', '::1', '2017-09-21 10:08:22', 'admin', 'ReClassPath', '---', '0', '54616');
INSERT INTO `phome_enewsdolog` VALUES ('128', '::1', '2017-09-21 10:08:31', 'admin', 'ChangeEnewsData', '---', '0', '54672');
INSERT INTO `phome_enewsdolog` VALUES ('129', '::1', '2017-09-21 10:08:38', 'admin', 'DelFcListClass', '---', '0', '54676');
INSERT INTO `phome_enewsdolog` VALUES ('130', '::1', '2017-09-21 10:11:36', 'admin', 'ReAllNewsJs', '---', '0', '54992');
INSERT INTO `phome_enewsdolog` VALUES ('131', '::1', '2017-09-21 10:11:43', 'admin', 'ReDtPage', '---', '0', '54992');
INSERT INTO `phome_enewsdolog` VALUES ('132', '::1', '2017-09-21 10:12:27', 'admin', 'login', '---', '0', '55093');
INSERT INTO `phome_enewsdolog` VALUES ('133', '::1', '2017-09-21 10:14:44', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '55190');
INSERT INTO `phome_enewsdolog` VALUES ('134', '::1', '2017-09-21 10:15:50', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '55245');
INSERT INTO `phome_enewsdolog` VALUES ('135', '::1', '2017-09-21 10:16:00', 'admin', 'ReIndex', '---', '0', '55245');
INSERT INTO `phome_enewsdolog` VALUES ('136', '::1', '2017-09-21 10:19:55', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '55420');
INSERT INTO `phome_enewsdolog` VALUES ('137', '::1', '2017-09-21 10:20:01', 'admin', 'ReIndex', '---', '0', '55433');
INSERT INTO `phome_enewsdolog` VALUES ('138', '::1', '2017-09-21 10:23:45', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '55545');
INSERT INTO `phome_enewsdolog` VALUES ('139', '::1', '2017-09-21 10:25:07', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '55601');
INSERT INTO `phome_enewsdolog` VALUES ('140', '::1', '2017-09-21 10:31:14', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '55762');
INSERT INTO `phome_enewsdolog` VALUES ('141', '::1', '2017-09-21 10:41:39', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '56000');
INSERT INTO `phome_enewsdolog` VALUES ('142', '::1', '2017-09-21 10:43:25', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '56058');
INSERT INTO `phome_enewsdolog` VALUES ('143', '::1', '2017-09-21 10:44:12', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '56085');
INSERT INTO `phome_enewsdolog` VALUES ('144', '::1', '2017-09-21 10:46:05', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '56135');
INSERT INTO `phome_enewsdolog` VALUES ('145', '::1', '2017-09-21 10:47:41', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '56173');
INSERT INTO `phome_enewsdolog` VALUES ('146', '::1', '2017-09-21 10:49:01', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '56215');
INSERT INTO `phome_enewsdolog` VALUES ('147', '::1', '2017-09-21 10:50:52', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '56264');
INSERT INTO `phome_enewsdolog` VALUES ('148', '::1', '2017-09-21 10:51:00', 'admin', 'ReIndex', '---', '0', '56272');
INSERT INTO `phome_enewsdolog` VALUES ('149', '::1', '2017-09-21 10:55:26', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '56544');
INSERT INTO `phome_enewsdolog` VALUES ('150', '::1', '2017-09-21 10:55:32', 'admin', 'ReIndex', '---', '0', '56557');
INSERT INTO `phome_enewsdolog` VALUES ('151', '::1', '2017-09-21 10:57:27', 'admin', 'AddClass', 'classid=46<br>classname=首页管理', '0', '56652');
INSERT INTO `phome_enewsdolog` VALUES ('152', '::1', '2017-09-21 10:59:36', 'admin', 'EditClass', 'classid=46<br>classname=关于莱美', '0', '56704');
INSERT INTO `phome_enewsdolog` VALUES ('153', '::1', '2017-09-21 11:01:00', 'admin', 'AddClass', 'classid=47<br>classname=品牌介绍', '0', '56757');
INSERT INTO `phome_enewsdolog` VALUES ('154', '::1', '2017-09-21 11:02:19', 'admin', 'ReListHtml_all', '---', '0', '56803');
INSERT INTO `phome_enewsdolog` VALUES ('155', '::1', '2017-09-21 11:04:00', 'admin', 'login', '---', '0', '56898');
INSERT INTO `phome_enewsdolog` VALUES ('156', '::1', '2017-09-21 11:05:32', 'admin', 'ChangeClassIslast', 'classid=47<br>classname=品牌介绍', '0', '57021');
INSERT INTO `phome_enewsdolog` VALUES ('157', '::1', '2017-09-21 11:06:22', 'admin', 'AddClass', 'classid=48<br>classname=专家团队', '0', '57053');
INSERT INTO `phome_enewsdolog` VALUES ('158', '::1', '2017-09-21 11:07:13', 'admin', 'AddClass', 'classid=49<br>classname=医院环境', '0', '57074');
INSERT INTO `phome_enewsdolog` VALUES ('159', '::1', '2017-09-21 11:08:05', 'admin', 'AddClass', 'classid=50<br>classname=医院荣誉', '0', '57093');
INSERT INTO `phome_enewsdolog` VALUES ('160', '::1', '2017-09-21 11:08:35', 'admin', 'AddClass', 'classid=51<br>classname=尖端设备', '0', '57112');
INSERT INTO `phome_enewsdolog` VALUES ('161', '::1', '2017-09-21 11:09:06', 'admin', 'AddClass', 'classid=52<br>classname=媒体报道', '0', '57132');
INSERT INTO `phome_enewsdolog` VALUES ('162', '::1', '2017-09-21 11:09:44', 'admin', 'AddClass', 'classid=53<br>classname=来院路线', '0', '57152');
INSERT INTO `phome_enewsdolog` VALUES ('163', '::1', '2017-09-21 11:10:30', 'admin', 'ReClassPath', '---', '0', '57176');
INSERT INTO `phome_enewsdolog` VALUES ('164', '::1', '2017-09-21 11:10:55', 'admin', 'ReListHtml_all', '---', '0', '57200');
INSERT INTO `phome_enewsdolog` VALUES ('165', '::1', '2017-09-21 11:20:25', 'admin', 'AddClass', 'classid=54<br>classname=首页管理', '0', '57458');
INSERT INTO `phome_enewsdolog` VALUES ('166', '::1', '2017-09-21 11:23:07', 'admin', 'AddClass', 'classid=55<br>classname=banner导航', '0', '57554');
INSERT INTO `phome_enewsdolog` VALUES ('167', '::1', '2017-09-21 11:24:04', 'admin', 'AddClass', 'classid=56<br>classname=banner管理', '0', '57583');
INSERT INTO `phome_enewsdolog` VALUES ('168', '::1', '2017-09-21 12:35:36', 'admin', 'ReIndex', '---', '0', '59186');
INSERT INTO `phome_enewsdolog` VALUES ('169', '::1', '2017-09-21 12:46:51', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '59461');
INSERT INTO `phome_enewsdolog` VALUES ('170', '::1', '2017-09-21 12:46:58', 'admin', 'ReIndex', '---', '0', '59461');
INSERT INTO `phome_enewsdolog` VALUES ('171', '::1', '2017-09-21 12:47:13', 'admin', 'ReListHtml_all', '---', '0', '59461');
INSERT INTO `phome_enewsdolog` VALUES ('172', '::1', '2017-09-21 12:51:24', 'admin', 'TDelFile_all', '---', '0', '59713');
INSERT INTO `phome_enewsdolog` VALUES ('173', '::1', '2017-09-21 12:52:56', 'admin', 'TDelFile_all', '---', '0', '59752');
INSERT INTO `phome_enewsdolog` VALUES ('174', '::1', '2017-09-21 12:57:14', 'admin', 'TDelFile_all', '---', '0', '60005');
INSERT INTO `phome_enewsdolog` VALUES ('175', '::1', '2017-09-21 12:58:11', 'admin', 'AddNews', 'classid=56<br>id=4<br>title=ban1', '1000010000000004', '60052');
INSERT INTO `phome_enewsdolog` VALUES ('176', '::1', '2017-09-21 12:58:25', 'admin', 'ReIndex', '---', '0', '60062');
INSERT INTO `phome_enewsdolog` VALUES ('177', '::1', '2017-09-21 13:30:25', 'admin', 'EditNews', 'classid=56<br>id=4<br>title=九月份特邀专家团队', '1000010000000004', '60889');
INSERT INTO `phome_enewsdolog` VALUES ('178', '::1', '2017-09-21 13:34:51', 'admin', 'SetEnews', '---', '0', '61122');
INSERT INTO `phome_enewsdolog` VALUES ('179', '::1', '2017-09-21 13:37:56', 'admin', 'AddNews', 'classid=56<br>id=5<br>title=国际共享整形美容节-南昌莱美美容整形医院', '1000010000000005', '61275');
INSERT INTO `phome_enewsdolog` VALUES ('180', '::1', '2017-09-21 13:39:48', 'admin', 'TDelFile_all', '---', '0', '61407');
INSERT INTO `phome_enewsdolog` VALUES ('181', '::1', '2017-09-21 13:40:00', 'admin', 'AddNews', 'classid=56<br>id=6<br>title=嗨体祛颈纹', '1000010000000006', '61420');
INSERT INTO `phome_enewsdolog` VALUES ('182', '::1', '2017-09-21 13:41:14', 'admin', 'AddNews', 'classid=56<br>id=7<br>title=莱美美容医院分期付款', '1000010000000007', '61516');
INSERT INTO `phome_enewsdolog` VALUES ('183', '::1', '2017-09-21 13:43:25', 'admin', 'AddNews', 'classid=56<br>id=8<br>title=U弧立体美胸', '1000010000000008', '61596');
INSERT INTO `phome_enewsdolog` VALUES ('184', '::1', '2017-09-21 13:44:41', 'admin', 'AddNews', 'classid=56<br>id=9<br>title=玻尿酸', '1000010000000009', '61649');
INSERT INTO `phome_enewsdolog` VALUES ('185', '::1', '2017-09-21 13:45:51', 'admin', 'TDelFile_all', '---', '0', '61709');
INSERT INTO `phome_enewsdolog` VALUES ('186', '::1', '2017-09-21 13:45:59', 'admin', 'AddNews', 'classid=56<br>id=10<br>title=多维美雕隆鼻', '1000010000000010', '61722');
INSERT INTO `phome_enewsdolog` VALUES ('187', '::1', '2017-09-21 13:46:36', 'admin', 'ReListHtmlMore', '---', '0', '61747');
INSERT INTO `phome_enewsdolog` VALUES ('188', '::1', '2017-09-21 13:46:45', 'admin', 'ReIndex', '---', '0', '61747');
INSERT INTO `phome_enewsdolog` VALUES ('189', '::1', '2017-09-21 13:47:49', 'admin', 'EditInfoSimple', 'classid=56<br>id=4<br>title=九月份特邀专家团队', '1000010000000004', '61813');
INSERT INTO `phome_enewsdolog` VALUES ('190', '::1', '2017-09-21 13:48:06', 'admin', 'ReIndex', '---', '0', '61837');
INSERT INTO `phome_enewsdolog` VALUES ('191', '::1', '2017-09-21 13:49:46', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '61905');
INSERT INTO `phome_enewsdolog` VALUES ('192', '::1', '2017-09-21 13:49:53', 'admin', 'ReIndex', '---', '0', '61905');
INSERT INTO `phome_enewsdolog` VALUES ('193', '::1', '2017-09-21 13:51:11', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '61984');
INSERT INTO `phome_enewsdolog` VALUES ('194', '::1', '2017-09-21 13:51:31', 'admin', 'ReIndex', '---', '0', '62001');
INSERT INTO `phome_enewsdolog` VALUES ('195', '::1', '2017-09-21 13:52:36', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '62069');
INSERT INTO `phome_enewsdolog` VALUES ('196', '::1', '2017-09-21 13:52:47', 'admin', 'ReIndex', '---', '0', '62069');
INSERT INTO `phome_enewsdolog` VALUES ('197', '::1', '2017-09-21 13:55:07', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '62181');
INSERT INTO `phome_enewsdolog` VALUES ('198', '::1', '2017-09-21 13:55:15', 'admin', 'ReIndex', '---', '0', '62181');
INSERT INTO `phome_enewsdolog` VALUES ('199', '::1', '2017-09-21 13:58:03', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '62317');
INSERT INTO `phome_enewsdolog` VALUES ('200', '::1', '2017-09-21 13:59:21', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '62399');
INSERT INTO `phome_enewsdolog` VALUES ('201', '::1', '2017-09-21 13:59:28', 'admin', 'ReIndex', '---', '0', '62399');
INSERT INTO `phome_enewsdolog` VALUES ('202', '::1', '2017-09-21 14:09:37', 'admin', 'DelTable', 'tid=8<br>tbname=info', '0', '62786');
INSERT INTO `phome_enewsdolog` VALUES ('203', '::1', '2017-09-21 14:09:46', 'admin', 'DelTable', 'tid=7<br>tbname=article', '0', '62795');
INSERT INTO `phome_enewsdolog` VALUES ('204', '::1', '2017-09-21 14:14:12', 'admin', 'DelTable', 'tid=6<br>tbname=shop', '0', '63056');
INSERT INTO `phome_enewsdolog` VALUES ('205', '::1', '2017-09-21 14:14:19', 'admin', 'DelTable', 'tid=5<br>tbname=movie', '0', '63056');
INSERT INTO `phome_enewsdolog` VALUES ('206', '::1', '2017-09-21 14:14:26', 'admin', 'DelTable', 'tid=4<br>tbname=flash', '0', '63056');
INSERT INTO `phome_enewsdolog` VALUES ('207', '::1', '2017-09-21 14:14:32', 'admin', 'DelTable', 'tid=3<br>tbname=photo', '0', '63056');
INSERT INTO `phome_enewsdolog` VALUES ('208', '::1', '2017-09-21 14:14:39', 'admin', 'DelTable', 'tid=2<br>tbname=download', '0', '63056');
INSERT INTO `phome_enewsdolog` VALUES ('209', '::1', '2017-09-21 14:23:44', 'admin', 'AddF', 'fid=107<br>f=experttext', '0', '63321');
INSERT INTO `phome_enewsdolog` VALUES ('210', '::1', '2017-09-21 14:25:38', 'admin', 'AddF', 'fid=108<br>f=expertimg', '0', '63419');
INSERT INTO `phome_enewsdolog` VALUES ('211', '::1', '2017-09-21 14:27:02', 'admin', 'AddF', 'fid=109<br>f=expertjs', '0', '63470');
INSERT INTO `phome_enewsdolog` VALUES ('212', '::1', '2017-09-21 16:31:10', 'admin', 'DelListtemp', 'tempid=2<br>tempname=默认下载列表模板&gid=1', '0', '51216');
INSERT INTO `phome_enewsdolog` VALUES ('213', '::1', '2017-09-21 16:31:18', 'admin', 'DelListtemp', 'tempid=3<br>tempname=默认图片列表模板&gid=1', '0', '51216');
INSERT INTO `phome_enewsdolog` VALUES ('214', '::1', '2017-09-21 16:31:25', 'admin', 'DelListtemp', 'tempid=4<br>tempname=默认FLASH列表模板&gid=1', '0', '51216');
INSERT INTO `phome_enewsdolog` VALUES ('215', '::1', '2017-09-21 16:31:32', 'admin', 'DelListtemp', 'tempid=5<br>tempname=默认电影列表模板&gid=1', '0', '51231');
INSERT INTO `phome_enewsdolog` VALUES ('216', '::1', '2017-09-21 16:31:38', 'admin', 'DelListtemp', 'tempid=6<br>tempname=默认商城列表模板&gid=1', '0', '51231');
INSERT INTO `phome_enewsdolog` VALUES ('217', '::1', '2017-09-21 16:31:46', 'admin', 'DelListtemp', 'tempid=7<br>tempname=默认文章列表模板&gid=1', '0', '51231');
INSERT INTO `phome_enewsdolog` VALUES ('218', '::1', '2017-09-21 16:31:55', 'admin', 'DelListtemp', 'tempid=8<br>tempname=分类信息默认列表模板&gid=1', '0', '51268');
INSERT INTO `phome_enewsdolog` VALUES ('219', '::1', '2017-09-21 16:56:44', 'admin', 'AddListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '51994');
INSERT INTO `phome_enewsdolog` VALUES ('220', '::1', '2017-09-21 16:57:21', 'admin', 'EditClass', 'classid=1<br>classname=经典项目', '0', '52017');
INSERT INTO `phome_enewsdolog` VALUES ('221', '::1', '2017-09-21 16:57:31', 'admin', 'ReIndex', '---', '0', '52017');
INSERT INTO `phome_enewsdolog` VALUES ('222', '::1', '2017-09-21 16:57:47', 'admin', 'ReListHtml_all', '---', '0', '52017');
INSERT INTO `phome_enewsdolog` VALUES ('223', '::1', '2017-09-21 17:00:02', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '52191');
INSERT INTO `phome_enewsdolog` VALUES ('224', '::1', '2017-09-21 17:00:23', 'admin', 'ReListHtmlMore', '---', '0', '52206');
INSERT INTO `phome_enewsdolog` VALUES ('225', '::1', '2017-09-21 17:39:35', 'admin', 'login', '---', '0', '53453');
INSERT INTO `phome_enewsdolog` VALUES ('226', '::1', '2017-09-21 18:14:59', 'admin', 'login', '---', '0', '54661');
INSERT INTO `phome_enewsdolog` VALUES ('227', '::1', '2017-09-21 18:18:26', 'admin', 'AddUserpage', 'id=1&title=多维美雕隆鼻', '0', '54789');
INSERT INTO `phome_enewsdolog` VALUES ('228', '::1', '2017-09-21 18:19:52', 'admin', 'AddTempvar', 'varid=8<br>var=head&gid=1', '0', '54865');
INSERT INTO `phome_enewsdolog` VALUES ('229', '::1', '2017-09-21 18:21:31', 'admin', 'EditTempvar', 'varid=2<br>var=footer&gid=1', '0', '54928');
INSERT INTO `phome_enewsdolog` VALUES ('230', '::1', '2017-09-21 18:22:34', 'admin', 'ReListHtmlMore', '---', '0', '54961');
INSERT INTO `phome_enewsdolog` VALUES ('231', '::1', '2017-09-21 18:23:47', 'admin', 'EditUserpage', 'id=1&title=多维美雕隆鼻', '0', '55008');
INSERT INTO `phome_enewsdolog` VALUES ('232', '::1', '2017-09-21 18:26:58', 'admin', 'EditPublicTemp', 'gid=1', '0', '55101');
INSERT INTO `phome_enewsdolog` VALUES ('233', '::1', '2017-09-21 18:27:23', 'admin', 'ReListHtmlMore', '---', '0', '55136');
INSERT INTO `phome_enewsdolog` VALUES ('234', '::1', '2017-09-21 18:27:45', 'admin', 'ReZtListHtml_all', '---', '0', '55160');
INSERT INTO `phome_enewsdolog` VALUES ('235', '::1', '2017-09-21 18:28:46', 'admin', 'EditUserpage', 'id=1&title=多维美雕隆鼻', '0', '55213');
INSERT INTO `phome_enewsdolog` VALUES ('236', '::1', '2017-09-21 18:45:02', 'admin', 'login', '---', '0', '56582');
INSERT INTO `phome_enewsdolog` VALUES ('237', '::1', '2017-09-21 18:45:03', 'admin', 'login', '---', '0', '56602');
INSERT INTO `phome_enewsdolog` VALUES ('238', '::1', '2017-09-21 18:45:18', 'admin', 'EditUserpage', 'id=1&title=多维美雕隆鼻', '0', '56617');
INSERT INTO `phome_enewsdolog` VALUES ('239', '::1', '2017-09-21 18:46:15', 'admin', 'ReListHtml_all', '---', '0', '56739');
INSERT INTO `phome_enewsdolog` VALUES ('240', '::1', '2017-09-21 18:46:47', 'admin', 'ReIndex', '---', '0', '56808');
INSERT INTO `phome_enewsdolog` VALUES ('241', '::1', '2017-09-21 18:58:47', 'admin', 'EditPublicTemp', 'gid=1', '0', '57270');
INSERT INTO `phome_enewsdolog` VALUES ('242', '::1', '2017-09-21 18:58:50', 'admin', 'ReIndex', '---', '0', '57270');
INSERT INTO `phome_enewsdolog` VALUES ('243', '::1', '2017-09-21 19:03:15', 'admin', 'login', '---', '0', '57396');
INSERT INTO `phome_enewsdolog` VALUES ('244', '::1', '2017-09-21 19:04:13', 'admin', 'EditUserpage', 'id=1&title=多维美雕隆鼻', '0', '57481');
INSERT INTO `phome_enewsdolog` VALUES ('245', '::1', '2017-09-21 19:04:42', 'admin', 'ReListHtml_all', '---', '0', '57501');
INSERT INTO `phome_enewsdolog` VALUES ('246', '::1', '2017-09-21 19:06:31', 'admin', 'login', '---', '0', '57637');
INSERT INTO `phome_enewsdolog` VALUES ('247', '::1', '2017-09-21 19:10:37', 'admin', 'EditUserpage', 'id=1&title=多维美雕隆鼻', '0', '57842');
INSERT INTO `phome_enewsdolog` VALUES ('248', '::1', '2017-09-21 19:10:58', 'admin', 'ReListHtml_all', '---', '0', '57850');
INSERT INTO `phome_enewsdolog` VALUES ('249', '::1', '2017-09-21 19:28:57', 'admin', 'login', '---', '0', '59792');
INSERT INTO `phome_enewsdolog` VALUES ('250', '::1', '2017-09-21 19:29:44', 'admin', 'EditTempvar', 'varid=8<br>var=head&gid=1', '0', '59944');
INSERT INTO `phome_enewsdolog` VALUES ('251', '::1', '2017-09-21 19:30:04', 'admin', 'ReListHtml_all', '---', '0', '59944');
INSERT INTO `phome_enewsdolog` VALUES ('252', '::1', '2017-09-21 19:30:27', 'admin', 'ReIndex', '---', '0', '60077');
INSERT INTO `phome_enewsdolog` VALUES ('253', '::1', '2017-09-21 19:36:54', 'admin', 'login', '---', '0', '60697');
INSERT INTO `phome_enewsdolog` VALUES ('254', '::1', '2017-09-21 19:37:40', 'admin', 'AddTempvar', 'varid=9<br>var=expert&gid=1', '0', '61040');
INSERT INTO `phome_enewsdolog` VALUES ('255', '::1', '2017-09-21 19:38:05', 'admin', 'EditTempvar', 'varid=8<br>var=head&gid=1', '0', '61093');
INSERT INTO `phome_enewsdolog` VALUES ('256', '::1', '2017-09-21 19:38:23', 'admin', 'ReListHtml_all', '---', '0', '61101');
INSERT INTO `phome_enewsdolog` VALUES ('257', '::1', '2017-09-21 19:38:34', 'admin', 'ReIndex', '---', '0', '61175');
INSERT INTO `phome_enewsdolog` VALUES ('258', '::1', '2017-09-21 19:39:17', 'admin', 'login', '---', '0', '61287');
INSERT INTO `phome_enewsdolog` VALUES ('259', '::1', '2017-09-21 19:43:07', 'admin', 'login', '---', '0', '61824');
INSERT INTO `phome_enewsdolog` VALUES ('260', '::1', '2017-09-21 19:48:32', 'admin', 'EditTempvar', 'varid=8<br>var=head&gid=1', '0', '62451');
INSERT INTO `phome_enewsdolog` VALUES ('261', '::1', '2017-09-21 19:48:42', 'admin', 'ReIndex', '---', '0', '62684');
INSERT INTO `phome_enewsdolog` VALUES ('262', '::1', '2017-09-21 19:48:59', 'admin', 'ReListHtml_all', '---', '0', '62684');
INSERT INTO `phome_enewsdolog` VALUES ('263', '::1', '2017-09-21 19:52:35', 'admin', 'login', '---', '0', '63282');
INSERT INTO `phome_enewsdolog` VALUES ('264', '::1', '2017-09-21 19:53:12', 'admin', 'EditTempvar', 'varid=8<br>var=head&gid=1', '0', '63368');
INSERT INTO `phome_enewsdolog` VALUES ('265', '::1', '2017-09-21 19:58:32', 'admin', 'login', '---', '0', '63870');
INSERT INTO `phome_enewsdolog` VALUES ('266', '::1', '2017-09-22 08:32:15', 'admin', 'login', '---', '0', '64847');
INSERT INTO `phome_enewsdolog` VALUES ('267', '::1', '2017-09-22 09:15:14', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '49619');
INSERT INTO `phome_enewsdolog` VALUES ('268', '::1', '2017-09-22 09:16:25', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '49647');
INSERT INTO `phome_enewsdolog` VALUES ('269', '::1', '2017-09-22 09:16:51', 'admin', 'ReListHtml_all', '---', '0', '49681');
INSERT INTO `phome_enewsdolog` VALUES ('270', '::1', '2017-09-22 09:18:53', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '49785');
INSERT INTO `phome_enewsdolog` VALUES ('271', '::1', '2017-09-22 09:19:16', 'admin', 'ReListHtml_all', '---', '0', '49785');
INSERT INTO `phome_enewsdolog` VALUES ('272', '::1', '2017-09-22 09:20:56', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '49893');
INSERT INTO `phome_enewsdolog` VALUES ('273', '::1', '2017-09-22 09:21:20', 'admin', 'ReListHtml_all', '---', '0', '49893');
INSERT INTO `phome_enewsdolog` VALUES ('274', '::1', '2017-09-22 09:22:31', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '49996');
INSERT INTO `phome_enewsdolog` VALUES ('275', '::1', '2017-09-22 09:22:51', 'admin', 'ReListHtml_all', '---', '0', '49996');
INSERT INTO `phome_enewsdolog` VALUES ('276', '::1', '2017-09-22 09:28:54', 'admin', 'EditClass', 'classid=2<br>classname=眼部整形', '0', '50245');
INSERT INTO `phome_enewsdolog` VALUES ('277', '::1', '2017-09-22 09:29:30', 'admin', 'ReListHtml_all', '---', '0', '50266');
INSERT INTO `phome_enewsdolog` VALUES ('278', '::1', '2017-09-22 09:49:36', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '51137');
INSERT INTO `phome_enewsdolog` VALUES ('279', '::1', '2017-09-22 09:49:57', 'admin', 'ReListHtml_all', '---', '0', '51137');
INSERT INTO `phome_enewsdolog` VALUES ('280', '::1', '2017-09-22 09:52:40', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '51277');
INSERT INTO `phome_enewsdolog` VALUES ('281', '::1', '2017-09-22 09:53:02', 'admin', 'ReListHtml_all', '---', '0', '51277');
INSERT INTO `phome_enewsdolog` VALUES ('282', '::1', '2017-09-22 10:04:11', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '52560');
INSERT INTO `phome_enewsdolog` VALUES ('283', '::1', '2017-09-22 10:04:31', 'admin', 'ReListHtml_all', '---', '0', '52560');
INSERT INTO `phome_enewsdolog` VALUES ('284', '::1', '2017-09-22 10:05:41', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '52680');
INSERT INTO `phome_enewsdolog` VALUES ('285', '::1', '2017-09-22 10:06:01', 'admin', 'ReListHtml_all', '---', '0', '52680');
INSERT INTO `phome_enewsdolog` VALUES ('286', '::1', '2017-09-22 10:06:53', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '52754');
INSERT INTO `phome_enewsdolog` VALUES ('287', '::1', '2017-09-22 10:07:15', 'admin', 'ReListHtml_all', '---', '0', '52754');
INSERT INTO `phome_enewsdolog` VALUES ('288', '::1', '2017-09-22 10:09:04', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '52866');
INSERT INTO `phome_enewsdolog` VALUES ('289', '::1', '2017-09-22 10:09:25', 'admin', 'ReListHtml_all', '---', '0', '52866');
INSERT INTO `phome_enewsdolog` VALUES ('290', '::1', '2017-09-22 10:09:46', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '52926');
INSERT INTO `phome_enewsdolog` VALUES ('291', '::1', '2017-09-22 10:10:03', 'admin', 'ReListHtml_all', '---', '0', '52926');
INSERT INTO `phome_enewsdolog` VALUES ('292', '::1', '2017-09-22 10:10:27', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '52978');
INSERT INTO `phome_enewsdolog` VALUES ('293', '::1', '2017-09-22 10:10:48', 'admin', 'ReListHtml_all', '---', '0', '52978');
INSERT INTO `phome_enewsdolog` VALUES ('294', '::1', '2017-09-22 10:12:46', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '53072');
INSERT INTO `phome_enewsdolog` VALUES ('295', '::1', '2017-09-22 10:13:06', 'admin', 'ReListHtml_all', '---', '0', '53072');
INSERT INTO `phome_enewsdolog` VALUES ('296', '::1', '2017-09-22 10:13:40', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '53137');
INSERT INTO `phome_enewsdolog` VALUES ('297', '::1', '2017-09-22 10:14:00', 'admin', 'ReListHtml_all', '---', '0', '53137');
INSERT INTO `phome_enewsdolog` VALUES ('298', '::1', '2017-09-22 10:14:39', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '53203');
INSERT INTO `phome_enewsdolog` VALUES ('299', '::1', '2017-09-22 10:14:50', 'admin', 'ReListHtmlMore', '---', '0', '53209');
INSERT INTO `phome_enewsdolog` VALUES ('300', '::1', '2017-09-22 10:15:21', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '53248');
INSERT INTO `phome_enewsdolog` VALUES ('301', '::1', '2017-09-22 10:15:31', 'admin', 'ReListHtmlMore', '---', '0', '53259');
INSERT INTO `phome_enewsdolog` VALUES ('302', '::1', '2017-09-22 10:16:18', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '53308');
INSERT INTO `phome_enewsdolog` VALUES ('303', '::1', '2017-09-22 10:16:31', 'admin', 'ReListHtmlMore', '---', '0', '53308');
INSERT INTO `phome_enewsdolog` VALUES ('304', '::1', '2017-09-22 10:17:20', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '53349');
INSERT INTO `phome_enewsdolog` VALUES ('305', '::1', '2017-09-22 10:17:55', 'admin', 'ReListHtml_all', '---', '0', '53385');
INSERT INTO `phome_enewsdolog` VALUES ('306', '::1', '2017-09-22 10:18:31', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '53423');
INSERT INTO `phome_enewsdolog` VALUES ('307', '::1', '2017-09-22 10:18:49', 'admin', 'ReListHtml_all', '---', '0', '53436');
INSERT INTO `phome_enewsdolog` VALUES ('308', '::1', '2017-09-22 10:20:26', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '53517');
INSERT INTO `phome_enewsdolog` VALUES ('309', '::1', '2017-09-22 10:20:46', 'admin', 'ReListHtml_all', '---', '0', '53517');
INSERT INTO `phome_enewsdolog` VALUES ('310', '::1', '2017-09-22 10:21:03', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '53578');
INSERT INTO `phome_enewsdolog` VALUES ('311', '::1', '2017-09-22 10:22:28', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '53633');
INSERT INTO `phome_enewsdolog` VALUES ('312', '::1', '2017-09-22 10:22:50', 'admin', 'ReListHtml_all', '---', '0', '53633');
INSERT INTO `phome_enewsdolog` VALUES ('313', '::1', '2017-09-22 10:25:49', 'admin', 'SetEnews', '---', '0', '53953');
INSERT INTO `phome_enewsdolog` VALUES ('314', '::1', '2017-09-22 10:28:26', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '54052');
INSERT INTO `phome_enewsdolog` VALUES ('315', '::1', '2017-09-22 10:28:45', 'admin', 'ReClassPath', '---', '0', '54052');
INSERT INTO `phome_enewsdolog` VALUES ('316', '::1', '2017-09-22 10:30:29', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '54251');
INSERT INTO `phome_enewsdolog` VALUES ('317', '::1', '2017-09-22 10:30:52', 'admin', 'ReListHtml_all', '---', '0', '54251');
INSERT INTO `phome_enewsdolog` VALUES ('318', '::1', '2017-09-22 10:31:17', 'admin', 'ReClassPath', '---', '0', '54361');
INSERT INTO `phome_enewsdolog` VALUES ('319', '::1', '2017-09-22 10:31:46', 'admin', 'ReListHtml_all', '---', '0', '54399');
INSERT INTO `phome_enewsdolog` VALUES ('320', '::1', '2017-09-22 10:33:30', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '54541');
INSERT INTO `phome_enewsdolog` VALUES ('321', '::1', '2017-09-22 10:33:52', 'admin', 'ReClassPath', '---', '0', '54541');
INSERT INTO `phome_enewsdolog` VALUES ('322', '::1', '2017-09-22 10:34:24', 'admin', 'ReListHtml_all', '---', '0', '54604');
INSERT INTO `phome_enewsdolog` VALUES ('323', '::1', '2017-09-22 10:38:22', 'admin', 'AddNews', 'classid=1<br>id=11<br>title=多维美雕隆鼻', '1000010000000011', '54917');
INSERT INTO `phome_enewsdolog` VALUES ('324', '::1', '2017-09-22 10:38:34', 'admin', 'ReListHtmlMore', '---', '0', '54917');
INSERT INTO `phome_enewsdolog` VALUES ('325', '::1', '2017-09-22 10:39:01', 'admin', 'ReListHtml_all', '---', '0', '54965');
INSERT INTO `phome_enewsdolog` VALUES ('326', '::1', '2017-09-22 10:40:12', 'admin', 'DelNews', 'classid=1<br>id=2<br>title= 测试', '1000010000000002', '55062');
INSERT INTO `phome_enewsdolog` VALUES ('327', '::1', '2017-09-22 10:40:28', 'admin', 'DelNews_all', 'classid=1<br>classname=经典项目&ecms=0', '0', '55075');
INSERT INTO `phome_enewsdolog` VALUES ('328', '::1', '2017-09-22 10:40:55', 'admin', 'ReListHtml_all', '---', '0', '55075');
INSERT INTO `phome_enewsdolog` VALUES ('329', '::1', '2017-09-22 10:42:30', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '55181');
INSERT INTO `phome_enewsdolog` VALUES ('330', '::1', '2017-09-22 10:42:52', 'admin', 'ReListHtml_all', '---', '0', '55181');
INSERT INTO `phome_enewsdolog` VALUES ('331', '::1', '2017-09-22 10:45:38', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '55324');
INSERT INTO `phome_enewsdolog` VALUES ('332', '::1', '2017-09-22 10:45:58', 'admin', 'ReListHtml_all', '---', '0', '55333');
INSERT INTO `phome_enewsdolog` VALUES ('333', '::1', '2017-09-22 10:51:03', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '55554');
INSERT INTO `phome_enewsdolog` VALUES ('334', '::1', '2017-09-22 10:51:22', 'admin', 'ReListHtml_all', '---', '0', '55559');
INSERT INTO `phome_enewsdolog` VALUES ('335', '::1', '2017-09-22 10:53:01', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '55675');
INSERT INTO `phome_enewsdolog` VALUES ('336', '::1', '2017-09-22 10:53:22', 'admin', 'ReListHtml_all', '---', '0', '55675');
INSERT INTO `phome_enewsdolog` VALUES ('337', '::1', '2017-09-22 10:55:09', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '55770');
INSERT INTO `phome_enewsdolog` VALUES ('338', '::1', '2017-09-22 10:55:29', 'admin', 'ReListHtml_all', '---', '0', '55770');
INSERT INTO `phome_enewsdolog` VALUES ('339', '::1', '2017-09-22 10:56:47', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '55873');
INSERT INTO `phome_enewsdolog` VALUES ('340', '::1', '2017-09-22 10:57:16', 'admin', 'ReListHtml_all', '---', '0', '55897');
INSERT INTO `phome_enewsdolog` VALUES ('341', '::1', '2017-09-22 10:59:54', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '56005');
INSERT INTO `phome_enewsdolog` VALUES ('342', '::1', '2017-09-22 11:00:15', 'admin', 'ReListHtml_all', '---', '0', '56036');
INSERT INTO `phome_enewsdolog` VALUES ('343', '::1', '2017-09-22 11:00:44', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '56067');
INSERT INTO `phome_enewsdolog` VALUES ('344', '::1', '2017-09-22 11:01:00', 'admin', 'ReListHtml_all', '---', '0', '56067');
INSERT INTO `phome_enewsdolog` VALUES ('345', '::1', '2017-09-22 11:02:17', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '56134');
INSERT INTO `phome_enewsdolog` VALUES ('346', '::1', '2017-09-22 11:02:37', 'admin', 'ReListHtml_all', '---', '0', '56134');
INSERT INTO `phome_enewsdolog` VALUES ('347', '::1', '2017-09-22 11:02:51', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '56134');
INSERT INTO `phome_enewsdolog` VALUES ('348', '::1', '2017-09-22 11:03:19', 'admin', 'ReListHtml_all', '---', '0', '56203');
INSERT INTO `phome_enewsdolog` VALUES ('349', '::1', '2017-09-22 11:07:18', 'admin', 'AddNews', 'classid=1<br>id=12<br>title=吸脂减肥-360°', '1000010000000012', '56486');
INSERT INTO `phome_enewsdolog` VALUES ('350', '::1', '2017-09-22 11:08:44', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '56679');
INSERT INTO `phome_enewsdolog` VALUES ('351', '::1', '2017-09-22 11:09:07', 'admin', 'ReListHtml_all', '---', '0', '56679');
INSERT INTO `phome_enewsdolog` VALUES ('352', '::1', '2017-09-22 11:09:41', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '56826');
INSERT INTO `phome_enewsdolog` VALUES ('353', '::1', '2017-09-22 11:10:04', 'admin', 'ReListHtmlMore', '---', '0', '56868');
INSERT INTO `phome_enewsdolog` VALUES ('354', '::1', '2017-09-22 11:25:33', 'admin', 'login', '---', '0', '58239');
INSERT INTO `phome_enewsdolog` VALUES ('355', '::1', '2017-09-22 11:28:09', 'admin', 'AddClasstemp', 'tempid=3&tempname=栏目封面&gid=1', '0', '58367');
INSERT INTO `phome_enewsdolog` VALUES ('356', '::1', '2017-09-22 11:32:49', 'admin', 'login', '---', '0', '58462');
INSERT INTO `phome_enewsdolog` VALUES ('357', '::1', '2017-09-22 11:33:19', 'admin', 'EditClasstemp', 'tempid=3&tempname=栏目封面&gid=1', '0', '58506');
INSERT INTO `phome_enewsdolog` VALUES ('358', '::1', '2017-09-22 11:34:24', 'admin', 'EditClass', 'classid=2<br>classname=眼部整形', '0', '58546');
INSERT INTO `phome_enewsdolog` VALUES ('359', '::1', '2017-09-22 11:34:48', 'admin', 'ReListHtml_all', '---', '0', '58546');
INSERT INTO `phome_enewsdolog` VALUES ('360', '::1', '2017-09-22 12:12:26', 'admin', 'login', '---', '0', '60079');
INSERT INTO `phome_enewsdolog` VALUES ('361', '::1', '2017-09-22 12:13:10', 'admin', 'EditClasstemp', 'tempid=3&tempname=栏目封面&gid=1', '0', '60133');
INSERT INTO `phome_enewsdolog` VALUES ('362', '::1', '2017-09-22 12:13:30', 'admin', 'ReListHtml_all', '---', '0', '60133');
INSERT INTO `phome_enewsdolog` VALUES ('363', '::1', '2017-09-22 12:18:30', 'admin', 'EditClasstemp', 'tempid=3&tempname=栏目封面&gid=1', '0', '60409');
INSERT INTO `phome_enewsdolog` VALUES ('364', '::1', '2017-09-22 12:18:49', 'admin', 'ReListHtml_all', '---', '0', '60419');
INSERT INTO `phome_enewsdolog` VALUES ('365', '::1', '2017-09-22 12:29:15', 'admin', 'EditClasstemp', 'tempid=3&tempname=栏目封面&gid=1', '0', '60757');
INSERT INTO `phome_enewsdolog` VALUES ('366', '::1', '2017-09-22 12:29:35', 'admin', 'ReListHtml_all', '---', '0', '60776');
INSERT INTO `phome_enewsdolog` VALUES ('367', '::1', '2017-09-22 12:34:53', 'admin', 'EditClasstemp', 'tempid=3&tempname=栏目封面&gid=1', '0', '61068');
INSERT INTO `phome_enewsdolog` VALUES ('368', '::1', '2017-09-22 12:35:14', 'admin', 'ReListHtml_all', '---', '0', '61081');
INSERT INTO `phome_enewsdolog` VALUES ('369', '::1', '2017-09-22 12:36:11', 'admin', 'EditClasstemp', 'tempid=3&tempname=栏目封面&gid=1', '0', '61148');
INSERT INTO `phome_enewsdolog` VALUES ('370', '::1', '2017-09-22 12:36:31', 'admin', 'ReListHtml_all', '---', '0', '61148');
INSERT INTO `phome_enewsdolog` VALUES ('371', '::1', '2017-09-22 13:31:00', 'admin', 'EditClasstemp', 'tempid=3&tempname=栏目封面&gid=1', '0', '62484');
INSERT INTO `phome_enewsdolog` VALUES ('372', '::1', '2017-09-22 13:31:19', 'admin', 'ReListHtml_all', '---', '0', '62491');
INSERT INTO `phome_enewsdolog` VALUES ('373', '::1', '2017-09-22 13:44:52', 'admin', 'EditClasstemp', 'tempid=3&tempname=栏目封面&gid=1', '0', '63387');
INSERT INTO `phome_enewsdolog` VALUES ('374', '::1', '2017-09-22 13:45:11', 'admin', 'ReListHtml_all', '---', '0', '63396');
INSERT INTO `phome_enewsdolog` VALUES ('375', '::1', '2017-09-22 13:46:23', 'admin', 'EditClasstemp', 'tempid=3&tempname=栏目封面&gid=1', '0', '63501');
INSERT INTO `phome_enewsdolog` VALUES ('376', '::1', '2017-09-22 13:46:43', 'admin', 'ReListHtml_all', '---', '0', '63507');
INSERT INTO `phome_enewsdolog` VALUES ('377', '::1', '2017-09-22 13:49:03', 'admin', 'EditClasstemp', 'tempid=3&tempname=栏目封面&gid=1', '0', '63606');
INSERT INTO `phome_enewsdolog` VALUES ('378', '::1', '2017-09-22 13:49:25', 'admin', 'ReListHtml_all', '---', '0', '63612');
INSERT INTO `phome_enewsdolog` VALUES ('379', '::1', '2017-09-22 13:50:47', 'admin', 'EditClasstemp', 'tempid=3&tempname=栏目封面&gid=1', '0', '63691');
INSERT INTO `phome_enewsdolog` VALUES ('380', '::1', '2017-09-22 13:51:06', 'admin', 'ReListHtml_all', '---', '0', '63696');
INSERT INTO `phome_enewsdolog` VALUES ('381', '::1', '2017-09-22 13:51:51', 'admin', 'EditClasstemp', 'tempid=3&tempname=栏目封面&gid=1', '0', '63768');
INSERT INTO `phome_enewsdolog` VALUES ('382', '::1', '2017-09-22 13:52:11', 'admin', 'ReListHtml_all', '---', '0', '63768');
INSERT INTO `phome_enewsdolog` VALUES ('383', '::1', '2017-09-22 13:52:38', 'admin', 'EditClasstemp', 'tempid=3&tempname=栏目封面&gid=1', '0', '63836');
INSERT INTO `phome_enewsdolog` VALUES ('384', '::1', '2017-09-22 13:52:58', 'admin', 'ReListHtml_all', '---', '0', '63836');
INSERT INTO `phome_enewsdolog` VALUES ('385', '::1', '2017-09-22 13:56:37', 'admin', 'EditClasstemp', 'tempid=3&tempname=栏目封面&gid=1', '0', '64107');
INSERT INTO `phome_enewsdolog` VALUES ('386', '::1', '2017-09-22 13:57:43', 'admin', 'SetEnews', '---', '0', '64256');
INSERT INTO `phome_enewsdolog` VALUES ('387', '::1', '2017-09-22 13:58:30', 'admin', 'EditClass', 'classid=13<br>classname=眼部综合', '0', '64344');
INSERT INTO `phome_enewsdolog` VALUES ('388', '::1', '2017-09-22 13:59:06', 'admin', 'EditClass', 'classid=14<br>classname=眼部抗衰', '0', '64427');
INSERT INTO `phome_enewsdolog` VALUES ('389', '::1', '2017-09-22 13:59:35', 'admin', 'EditClass', 'classid=15<br>classname=眼部修复', '0', '64513');
INSERT INTO `phome_enewsdolog` VALUES ('390', '::1', '2017-09-22 14:00:08', 'admin', 'EditClass', 'classid=16<br>classname=眼眉综合', '0', '64582');
INSERT INTO `phome_enewsdolog` VALUES ('391', '::1', '2017-09-22 14:00:21', 'admin', 'ReListHtmlMore', '---', '0', '64582');
INSERT INTO `phome_enewsdolog` VALUES ('392', '::1', '2017-09-22 14:05:44', 'admin', 'ReListHtml_all', '---', '0', '65044');
INSERT INTO `phome_enewsdolog` VALUES ('393', '::1', '2017-09-22 14:06:55', 'admin', 'ReListHtml_all', '---', '0', '65174');
INSERT INTO `phome_enewsdolog` VALUES ('394', '::1', '2017-09-22 14:16:35', 'admin', 'ReSpAll', '---', '0', '50074');
INSERT INTO `phome_enewsdolog` VALUES ('395', '::1', '2017-09-22 14:16:46', 'admin', 'ChangeEnewsData', '---', '0', '50102');
INSERT INTO `phome_enewsdolog` VALUES ('396', '::1', '2017-09-22 14:17:53', 'admin', 'AddBq', 'bqid=32<br>bqname=当前位置标签', '0', '50226');
INSERT INTO `phome_enewsdolog` VALUES ('397', '::1', '2017-09-22 14:18:55', 'admin', 'AddTempvar', 'varid=10<br>var=nav&gid=1', '0', '50335');
INSERT INTO `phome_enewsdolog` VALUES ('398', '::1', '2017-09-22 14:20:08', 'admin', 'EditClasstemp', 'tempid=3&tempname=栏目封面&gid=1', '0', '50489');
INSERT INTO `phome_enewsdolog` VALUES ('399', '::1', '2017-09-22 14:20:30', 'admin', 'ReListHtml_all', '---', '0', '50489');
INSERT INTO `phome_enewsdolog` VALUES ('400', '::1', '2017-09-22 14:21:43', 'admin', 'ReSpAll', '---', '0', '50721');
INSERT INTO `phome_enewsdolog` VALUES ('401', '::1', '2017-09-22 14:22:05', 'admin', 'ReListHtml_all', '---', '0', '50721');
INSERT INTO `phome_enewsdolog` VALUES ('402', '::1', '2017-09-22 14:30:54', 'admin', 'EditClasstemp', 'tempid=3&tempname=栏目封面&gid=1', '0', '51144');
INSERT INTO `phome_enewsdolog` VALUES ('403', '::1', '2017-09-22 14:31:02', 'admin', 'ReSpAll', '---', '0', '51144');
INSERT INTO `phome_enewsdolog` VALUES ('404', '::1', '2017-09-22 14:31:21', 'admin', 'ReListHtml_all', '---', '0', '51159');
INSERT INTO `phome_enewsdolog` VALUES ('405', '::1', '2017-09-22 14:37:32', 'admin', 'EditClasstemp', 'tempid=3&tempname=栏目封面&gid=1', '0', '51398');
INSERT INTO `phome_enewsdolog` VALUES ('406', '::1', '2017-09-22 14:37:53', 'admin', 'ReListHtml_all', '---', '0', '51398');
INSERT INTO `phome_enewsdolog` VALUES ('407', '::1', '2017-09-22 14:38:41', 'admin', 'EditClasstemp', 'tempid=3&tempname=栏目封面&gid=1', '0', '51487');
INSERT INTO `phome_enewsdolog` VALUES ('408', '::1', '2017-09-22 14:39:02', 'admin', 'ReListHtml_all', '---', '0', '51487');
INSERT INTO `phome_enewsdolog` VALUES ('409', '::1', '2017-09-22 14:56:59', 'admin', 'EditClass', 'classid=13<br>classname=眼部综合', '0', '52371');
INSERT INTO `phome_enewsdolog` VALUES ('410', '::1', '2017-09-22 14:57:20', 'admin', 'ReListHtml_all', '---', '0', '52371');
INSERT INTO `phome_enewsdolog` VALUES ('411', '::1', '2017-09-22 15:03:18', 'admin', 'EditClasstemp', 'tempid=3&tempname=栏目封面&gid=1', '0', '52778');
INSERT INTO `phome_enewsdolog` VALUES ('412', '::1', '2017-09-22 15:03:36', 'admin', 'ReListHtml_all', '---', '0', '52782');
INSERT INTO `phome_enewsdolog` VALUES ('413', '::1', '2017-09-22 15:04:37', 'admin', 'ChangeClassIslast', 'classid=13<br>classname=眼部综合', '0', '52866');
INSERT INTO `phome_enewsdolog` VALUES ('414', '::1', '2017-09-22 15:06:42', 'admin', 'AddNews', 'classid=13<br>id=13<br>title=切眉修复', '1000010000000013', '52974');
INSERT INTO `phome_enewsdolog` VALUES ('415', '::1', '2017-09-22 15:07:56', 'admin', 'AddNews', 'classid=13<br>id=14<br>title=切眉', '1000010000000014', '53027');
INSERT INTO `phome_enewsdolog` VALUES ('416', '::1', '2017-09-22 15:09:14', 'admin', 'ReListHtmlMore', '---', '0', '53107');
INSERT INTO `phome_enewsdolog` VALUES ('417', '::1', '2017-09-22 15:09:55', 'admin', 'ReListHtml_all', '---', '0', '53146');
INSERT INTO `phome_enewsdolog` VALUES ('418', '::1', '2017-09-22 15:10:30', 'admin', 'EditClass', 'classid=13<br>classname=眼部综合', '0', '53213');
INSERT INTO `phome_enewsdolog` VALUES ('419', '::1', '2017-09-22 15:10:48', 'admin', 'ReListHtmlMore', '---', '0', '53223');
INSERT INTO `phome_enewsdolog` VALUES ('420', '::1', '2017-09-22 15:12:32', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '53289');
INSERT INTO `phome_enewsdolog` VALUES ('421', '::1', '2017-09-22 15:12:43', 'admin', 'ReListHtmlMore', '---', '0', '53306');
INSERT INTO `phome_enewsdolog` VALUES ('422', '::1', '2017-09-22 15:15:37', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '53410');
INSERT INTO `phome_enewsdolog` VALUES ('423', '::1', '2017-09-22 15:18:36', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '53559');
INSERT INTO `phome_enewsdolog` VALUES ('424', '::1', '2017-09-22 15:20:06', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '53627');
INSERT INTO `phome_enewsdolog` VALUES ('425', '::1', '2017-09-22 15:21:44', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '53691');
INSERT INTO `phome_enewsdolog` VALUES ('426', '::1', '2017-09-22 15:25:02', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '53897');
INSERT INTO `phome_enewsdolog` VALUES ('427', '::1', '2017-09-22 15:26:09', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '53939');
INSERT INTO `phome_enewsdolog` VALUES ('428', '::1', '2017-09-22 15:28:51', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '54182');
INSERT INTO `phome_enewsdolog` VALUES ('429', '::1', '2017-09-22 15:28:58', 'admin', 'ReListHtmlMore', '---', '0', '54182');
INSERT INTO `phome_enewsdolog` VALUES ('430', '::1', '2017-09-22 15:31:15', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '54386');
INSERT INTO `phome_enewsdolog` VALUES ('431', '::1', '2017-09-22 15:31:24', 'admin', 'ReListHtmlMore', '---', '0', '54386');
INSERT INTO `phome_enewsdolog` VALUES ('432', '::1', '2017-09-22 15:32:29', 'admin', 'ReListHtml_all', '---', '0', '54545');
INSERT INTO `phome_enewsdolog` VALUES ('433', '::1', '2017-09-22 15:37:43', 'admin', 'login', '---', '0', '55012');
INSERT INTO `phome_enewsdolog` VALUES ('434', '::1', '2017-09-22 15:38:24', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '55054');
INSERT INTO `phome_enewsdolog` VALUES ('435', '::1', '2017-09-22 15:38:37', 'admin', 'ReListHtmlMore', '---', '0', '55054');
INSERT INTO `phome_enewsdolog` VALUES ('436', '::1', '2017-09-22 15:41:15', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '55542');
INSERT INTO `phome_enewsdolog` VALUES ('437', '::1', '2017-09-22 15:41:26', 'admin', 'ReListHtmlMore', '---', '0', '55542');
INSERT INTO `phome_enewsdolog` VALUES ('438', '::1', '2017-09-22 15:41:54', 'admin', 'ReListHtml_all', '---', '0', '55636');
INSERT INTO `phome_enewsdolog` VALUES ('439', '::1', '2017-09-22 15:43:27', 'admin', 'EditClass', 'classid=13<br>classname=眼部综合', '0', '55887');
INSERT INTO `phome_enewsdolog` VALUES ('440', '::1', '2017-09-22 15:43:45', 'admin', 'EditNews', 'classid=13<br>id=14<br>title=切眉', '1000010000000014', '55887');
INSERT INTO `phome_enewsdolog` VALUES ('441', '::1', '2017-09-22 15:45:13', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '56126');
INSERT INTO `phome_enewsdolog` VALUES ('442', '::1', '2017-09-22 15:45:22', 'admin', 'ReListHtmlMore', '---', '0', '56126');
INSERT INTO `phome_enewsdolog` VALUES ('443', '::1', '2017-09-22 15:45:45', 'admin', 'ReListHtml_all', '---', '0', '56190');
INSERT INTO `phome_enewsdolog` VALUES ('444', '::1', '2017-09-22 15:47:45', 'admin', 'ChangeEnewsData', '---', '0', '56293');
INSERT INTO `phome_enewsdolog` VALUES ('445', '::1', '2017-09-22 15:48:10', 'admin', 'ReListHtml_all', '---', '0', '56311');
INSERT INTO `phome_enewsdolog` VALUES ('446', '::1', '2017-09-22 15:50:54', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '56410');
INSERT INTO `phome_enewsdolog` VALUES ('447', '::1', '2017-09-22 15:51:14', 'admin', 'ReListHtml_all', '---', '0', '56410');
INSERT INTO `phome_enewsdolog` VALUES ('448', '::1', '2017-09-22 16:02:04', 'admin', 'login', '---', '0', '56817');
INSERT INTO `phome_enewsdolog` VALUES ('449', '::1', '2017-09-22 16:02:43', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '56853');
INSERT INTO `phome_enewsdolog` VALUES ('450', '::1', '2017-09-22 16:03:03', 'admin', 'ReListHtml_all', '---', '0', '56853');
INSERT INTO `phome_enewsdolog` VALUES ('451', '::1', '2017-09-22 16:03:55', 'admin', 'ChangeEnewsData', '---', '0', '56933');
INSERT INTO `phome_enewsdolog` VALUES ('452', '::1', '2017-09-22 16:04:08', 'admin', 'ReClassPath', '---', '0', '56933');
INSERT INTO `phome_enewsdolog` VALUES ('453', '::1', '2017-09-22 16:04:31', 'admin', 'UpdateClassInfosAll', '---', '0', '56968');
INSERT INTO `phome_enewsdolog` VALUES ('454', '::1', '2017-09-22 16:05:05', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '57029');
INSERT INTO `phome_enewsdolog` VALUES ('455', '::1', '2017-09-22 16:05:24', 'admin', 'ReListHtmlMore', '---', '0', '57040');
INSERT INTO `phome_enewsdolog` VALUES ('456', '::1', '2017-09-22 16:05:48', 'admin', 'ReListHtmlMore', '---', '0', '57070');
INSERT INTO `phome_enewsdolog` VALUES ('457', '::1', '2017-09-22 16:06:18', 'admin', 'ReListHtml_all', '---', '0', '57141');
INSERT INTO `phome_enewsdolog` VALUES ('458', '::1', '2017-09-22 16:06:49', 'admin', 'EditListtemp', 'tempid=9<br>tempname=整形美容项目&gid=1', '0', '57167');
INSERT INTO `phome_enewsdolog` VALUES ('459', '::1', '2017-09-22 16:07:07', 'admin', 'ReListHtmlMore', '---', '0', '57178');
INSERT INTO `phome_enewsdolog` VALUES ('460', '::1', '2017-09-22 16:07:37', 'admin', 'ReListHtmlMore', '---', '0', '57213');
INSERT INTO `phome_enewsdolog` VALUES ('461', '::1', '2017-09-22 16:24:52', 'admin', 'login', '---', '0', '57846');
INSERT INTO `phome_enewsdolog` VALUES ('462', '::1', '2017-09-22 16:31:51', 'admin', 'TDelFile_all', '---', '0', '58149');
INSERT INTO `phome_enewsdolog` VALUES ('463', '::1', '2017-09-22 16:32:02', 'admin', 'TDelFile_all', '---', '0', '58160');
INSERT INTO `phome_enewsdolog` VALUES ('464', '::1', '2017-09-22 16:32:10', 'admin', 'EditClass', 'classid=2<br>classname=眼部整形', '0', '58160');
INSERT INTO `phome_enewsdolog` VALUES ('465', '::1', '2017-09-22 16:32:21', 'admin', 'ReListHtmlMore', '---', '0', '58160');
INSERT INTO `phome_enewsdolog` VALUES ('466', '::1', '2017-09-22 16:32:45', 'admin', 'ReListHtmlMore', '---', '0', '58160');
INSERT INTO `phome_enewsdolog` VALUES ('467', '::1', '2017-09-22 16:33:09', 'admin', 'EditClass', 'classid=2<br>classname=眼部整形', '0', '58283');
INSERT INTO `phome_enewsdolog` VALUES ('468', '::1', '2017-09-22 16:33:30', 'admin', 'ReListHtml_all', '---', '0', '58306');
INSERT INTO `phome_enewsdolog` VALUES ('469', '::1', '2017-09-22 16:39:47', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '59046');
INSERT INTO `phome_enewsdolog` VALUES ('470', '::1', '2017-09-22 16:40:06', 'admin', 'ReListHtmlMore', '---', '0', '59122');
INSERT INTO `phome_enewsdolog` VALUES ('471', '::1', '2017-09-22 16:42:33', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '59367');
INSERT INTO `phome_enewsdolog` VALUES ('472', '::1', '2017-09-22 16:42:50', 'admin', 'ReListHtmlMore', '---', '0', '59406');
INSERT INTO `phome_enewsdolog` VALUES ('473', '::1', '2017-09-22 16:47:20', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '60080');
INSERT INTO `phome_enewsdolog` VALUES ('474', '::1', '2017-09-22 16:47:38', 'admin', 'ReListHtmlMore', '---', '0', '60142');
INSERT INTO `phome_enewsdolog` VALUES ('475', '::1', '2017-09-22 16:48:07', 'admin', 'ReListHtml_all', '---', '0', '60197');
INSERT INTO `phome_enewsdolog` VALUES ('476', '::1', '2017-09-22 16:48:30', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '60258');
INSERT INTO `phome_enewsdolog` VALUES ('477', '::1', '2017-09-22 16:48:50', 'admin', 'ReListHtmlMore', '---', '0', '60323');
INSERT INTO `phome_enewsdolog` VALUES ('478', '::1', '2017-09-22 16:49:19', 'admin', 'ReListHtml_all', '---', '0', '60413');
INSERT INTO `phome_enewsdolog` VALUES ('479', '::1', '2017-09-22 16:49:45', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1', '0', '60487');
INSERT INTO `phome_enewsdolog` VALUES ('480', '::1', '2017-09-22 16:50:05', 'admin', 'ReListHtml_all', '---', '0', '60487');
INSERT INTO `phome_enewsdolog` VALUES ('481', '::1', '2017-09-22 21:10:10', 'admin', 'login', '---', '0', '55818');
INSERT INTO `phome_enewsdolog` VALUES ('482', '::1', '2017-09-22 21:13:53', 'admin', 'AddClass', 'classid=57<br>classname=莱美动态', '0', '56652');
INSERT INTO `phome_enewsdolog` VALUES ('483', '::1', '2017-09-22 21:15:06', 'admin', 'AddClass', 'classid=58<br>classname=媒体报道', '0', '56968');
INSERT INTO `phome_enewsdolog` VALUES ('484', '::1', '2017-09-22 21:16:11', 'admin', 'AddClass', 'classid=59<br>classname=友情链接', '0', '57196');
INSERT INTO `phome_enewsdolog` VALUES ('485', '::1', '2017-09-22 21:16:56', 'admin', 'AddClass', 'classid=60<br>classname=美丽案例', '0', '57458');
INSERT INTO `phome_enewsdolog` VALUES ('486', '::1', '2017-09-22 21:20:25', 'admin', 'AddClass', 'classid=61<br>classname=最新活动', '0', '58153');
INSERT INTO `phome_enewsdolog` VALUES ('487', '::1', '2017-09-22 21:21:04', 'admin', 'AddClass', 'classid=62<br>classname=医师组合', '0', '58352');

-- ----------------------------
-- Table structure for `phome_enewsdownerror`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsdownerror`;
CREATE TABLE `phome_enewsdownerror` (
  `errorid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `errortext` varchar(255) NOT NULL DEFAULT '',
  `errortime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `errorip` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`errorid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsdownerror
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsdownrecord`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsdownrecord`;
CREATE TABLE `phome_enewsdownrecord` (
  `id` int(11) NOT NULL DEFAULT '0',
  `pathid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `cardfen` int(11) NOT NULL DEFAULT '0',
  `truetime` int(11) NOT NULL DEFAULT '0',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `online` tinyint(1) NOT NULL DEFAULT '0',
  KEY `userid` (`userid`),
  KEY `truetime` (`truetime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsdownrecord
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsdownurlqz`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsdownurlqz`;
CREATE TABLE `phome_enewsdownurlqz` (
  `urlid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `urlname` varchar(30) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `downtype` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`urlid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsdownurlqz
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewserrorclass`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewserrorclass`;
CREATE TABLE `phome_enewserrorclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewserrorclass
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsf`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsf`;
CREATE TABLE `phome_enewsf` (
  `fid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `f` varchar(30) NOT NULL DEFAULT '',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `fform` varchar(20) NOT NULL DEFAULT '',
  `fhtml` mediumtext NOT NULL,
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `isadd` tinyint(1) NOT NULL DEFAULT '0',
  `isshow` tinyint(1) NOT NULL DEFAULT '0',
  `iscj` tinyint(1) NOT NULL DEFAULT '0',
  `cjhtml` mediumtext NOT NULL,
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `ftype` varchar(30) NOT NULL DEFAULT '',
  `flen` varchar(20) NOT NULL DEFAULT '',
  `dotemp` tinyint(1) NOT NULL DEFAULT '0',
  `tid` smallint(6) NOT NULL DEFAULT '0',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `savetxt` tinyint(1) NOT NULL DEFAULT '0',
  `fvalue` text NOT NULL,
  `iskey` tinyint(1) NOT NULL DEFAULT '0',
  `tobr` tinyint(1) NOT NULL DEFAULT '0',
  `dohtml` tinyint(1) NOT NULL DEFAULT '0',
  `qfhtml` mediumtext NOT NULL,
  `isonly` tinyint(1) NOT NULL DEFAULT '0',
  `linkfieldval` varchar(30) NOT NULL DEFAULT '',
  `samedata` tinyint(1) NOT NULL DEFAULT '0',
  `fformsize` varchar(12) NOT NULL DEFAULT '',
  `tbdataf` tinyint(1) NOT NULL DEFAULT '0',
  `ispage` tinyint(1) NOT NULL DEFAULT '0',
  `adddofun` varchar(255) NOT NULL DEFAULT '',
  `editdofun` varchar(255) NOT NULL DEFAULT '',
  `qadddofun` varchar(255) NOT NULL DEFAULT '',
  `qeditdofun` varchar(255) NOT NULL DEFAULT '',
  `linkfieldtb` varchar(60) NOT NULL DEFAULT '',
  `linkfieldshow` varchar(30) NOT NULL DEFAULT '',
  `editorys` tinyint(1) NOT NULL DEFAULT '0',
  `issmalltext` tinyint(1) NOT NULL DEFAULT '0',
  `fmvnum` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`),
  KEY `tid` (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsf
-- ----------------------------
INSERT INTO `phome_enewsf` VALUES ('1', 'title', '标题', 'text', '<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" bgcolor=\\\"#DBEAF5\\\">\r\n<tr> \r\n  <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\">\r\n	<?=$tts?\\\"<select name=\\\'ttid\\\'><option value=\\\'0\\\'>标题分类</option>$tts</select>\\\":\\\"\\\"?>\r\n	<input type=text name=title value=\\\"<?=ehtmlspecialchars(stripSlashes($r[title]))?>\\\" size=\\\"60\\\"> \r\n	<input type=\\\"button\\\" name=\\\"button\\\" value=\\\"图文\\\" onclick=\\\"document.add.title.value=document.add.title.value+\\\'(图文)\\\';\\\"> \r\n  </td>\r\n</tr>\r\n<tr> \r\n  <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\">属性: \r\n	<input name=\\\"titlefont[b]\\\" type=\\\"checkbox\\\" value=\\\"b\\\"<?=$titlefontb?>>粗体\r\n	<input name=\\\"titlefont[i]\\\" type=\\\"checkbox\\\" value=\\\"i\\\"<?=$titlefonti?>>斜体\r\n	<input name=\\\"titlefont[s]\\\" type=\\\"checkbox\\\" value=\\\"s\\\"<?=$titlefonts?>>删除线\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;颜色: <input name=\\\"titlecolor\\\" type=\\\"text\\\" value=\\\"<?=stripSlashes($r[titlecolor])?>\\\" size=\\\"10\\\"><a onclick=\\\"foreColor();\\\"><img src=\\\"../data/images/color.gif\\\" width=\\\"21\\\" height=\\\"21\\\" align=\\\"absbottom\\\"></a>\r\n  </td>\r\n</tr>\r\n</table>', '标题', '0', '1', '1', '  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--title--]\" size=\"20\">)</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n        <tr> \r\n          <td><textarea name=\"add[zz_title]\" cols=\"60\" rows=\"10\" id=\"textarea\"><?=ehtmlspecialchars(stripSlashes($r[zz_title]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\"add[z_title]\" type=\"text\" id=\"add[z_title]\" value=\"<?=stripSlashes($r[z_title])?>\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>', '0', 'CHAR', '100', '1', '1', 'news', '0', '', '0', '0', '0', '<input name=\\\"title\\\" type=\\\"text\\\" size=\\\"42\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'title\\\',stripSlashes($r[title]))?>\\\">', '0', '', '0', '60', '0', '0', '', '', '', '', '', '', '0', '0', '');
INSERT INTO `phome_enewsf` VALUES ('2', 'special.field', '特殊属性', '', '<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" bgcolor=\\\"#DBEAF5\\\">\r\n  <tr>\r\n    <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\">信息属性: \r\n      <input name=\\\"checked\\\" type=\\\"checkbox\\\" value=\\\"1\\\"<?=$r[checked]?\\\' checked\\\':\\\'\\\'?>>\r\n      审核 &nbsp;&nbsp; 推荐 \r\n      <select name=\\\"isgood\\\" id=\\\"isgood\\\">\r\n        <option value=\\\"0\\\">不推荐</option>\r\n	<?=$ftnr[\\\'igname\\\']?>\r\n      </select>\r\n      &nbsp;&nbsp; 头条 \r\n      <select name=\\\"firsttitle\\\" id=\\\"firsttitle\\\">\r\n        <option value=\\\"0\\\">非头条</option>\r\n	<?=$ftnr[\\\'ftname\\\']?>\r\n      </select></td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\">关键字&nbsp;&nbsp;&nbsp;: \r\n      <input name=\\\"keyboard\\\" type=\\\"text\\\" size=\\\"52\\\" value=\\\"<?=stripSlashes($r[keyboard])?>\\\">\r\n      <font color=\\\"#666666\\\">(多个请用&quot;,&quot;隔开)</font></td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\">外部链接: \r\n      <input name=\\\"titleurl\\\" type=\\\"text\\\" value=\\\"<?=stripSlashes($r[titleurl])?>\\\" size=\\\"52\\\">\r\n      <font color=\\\"#666666\\\">(填写后信息连接地址将为此链接)</font></td>\r\n  </tr>\r\n</table>', '特殊属性', '0', '1', '0', '', '1', '', '', '0', '1', 'news', '0', '', '0', '0', '0', '<input name=\\\"keyboard\\\" type=\\\"text\\\" size=42 value=\\\"<?=stripSlashes($r[keyboard])?>\\\">\r\n<font color=\\\"#666666\\\">(多个请用&quot;,&quot;隔开)</font>', '0', '', '0', '', '0', '0', '', '', '', '', '', '', '0', '0', '');
INSERT INTO `phome_enewsf` VALUES ('3', 'titlepic', '标题图片', 'img', '<input name=\\\"titlepic\\\" type=\\\"text\\\" id=\\\"titlepic\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[titlepic]))?>\\\" size=\\\"45\\\">\r\n<a onclick=\\\"window.open(\\\'ecmseditor/FileMain.php?type=1&classid=<?=$classid?>&infoid=<?=$id?>&filepass=<?=$filepass?>&sinfo=1&doing=1&field=titlepic<?=$ecms_hashur[ehref]?>\\\',\\\'\\\',\\\'width=700,height=550,scrollbars=yes\\\');\\\" title=\\\"选择已上传的图片\\\"><img src=\\\"../data/images/changeimg.gif\\\" border=\\\"0\\\" align=\\\"absbottom\\\"></a>', '标题图片', '0', '1', '1', '  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      ( \r\n      <input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--titlepic--]\\\" size=\\\"20\\\">\r\n      )</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n    <tr>\r\n      <td>附件前缀 \r\n        <input name=\\\"add[qz_titlepic]\\\" type=\\\"text\\\" id=\\\"add[qz_titlepic]\\\" value=\\\"<?=stripSlashes($r[qz_titlepic])?>\\\"> \r\n        <input name=\\\"add[save_titlepic]\\\" type=\\\"checkbox\\\" id=\\\"add[save_titlepic]\\\" value=\\\" checked\\\"<?=$r[save_titlepic]?>>\r\n        远程保存 </td>\r\n    </tr>\r\n    <tr> \r\n      <td><textarea name=\\\"add[zz_titlepic]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"add[zz_titlepic]\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_titlepic]))?></textarea></td>\r\n    </tr>\r\n    <tr> \r\n      <td><input name=\\\"add[z_titlepic]\\\" type=\\\"text\\\" id=\\\"titlepic5\\\" value=\\\"<?=stripSlashes($r[z_titlepic])?>\\\">\r\n        (如填写这里，这就是字段的值)</td>\r\n    </tr>\r\n  </table></td>\r\n  </tr>\r\n', '2', 'CHAR', '120', '1', '1', 'news', '0', '', '0', '0', '0', '<input type=\\\"file\\\" name=\\\"titlepicfile\\\" size=\\\"45\\\">', '0', '', '0', '60', '0', '0', '', '', '', '', '', '', '0', '0', '');
INSERT INTO `phome_enewsf` VALUES ('4', 'newstime', '发布时间', 'text', '<input name=\\\"newstime\\\" type=\\\"text\\\" value=\\\"<?=$r[newstime]?>\\\"><input type=button name=button value=\\\"设为当前时间\\\" onclick=\\\"document.add.newstime.value=\\\'<?=$todaytime?>\\\'\\\">', '发布时间', '0', '1', '1', '  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--newstime--]\" size=\"20\">)</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n        <tr> \r\n          <td><textarea name=\"add[zz_newstime]\" cols=\"60\" rows=\"10\" id=\"textarea\"><?=ehtmlspecialchars(stripSlashes($r[zz_newstime]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\"add[z_newstime]\" type=\"text\" id=\"add[z_newstime]\" value=\"<?=stripSlashes($r[z_newstime])?>\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>', '1', 'INT', '11', '1', '1', 'news', '0', '', '1', '0', '0', '', '0', '', '0', '', '0', '0', '', '', '', '', '', '', '0', '0', '');
INSERT INTO `phome_enewsf` VALUES ('5', 'ftitle', '副标题', 'text', '<input name=\\\"ftitle\\\" type=\\\"text\\\" size=60 id=\\\"ftitle\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[ftitle]))?>\\\">\r\n', '副标题', '1', '1', '1', '\r\n  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--ftitle--]\" size=\"20\">)</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n        <tr> \r\n          <td><textarea name=\"add[zz_ftitle]\" cols=\"60\" rows=\"10\" id=\"textarea\"><?=ehtmlspecialchars(stripSlashes($r[zz_ftitle]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\"add[z_ftitle]\" type=\"text\" id=\"add[z_ftitle]\" value=\"<?=stripSlashes($r[z_ftitle])?>\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', '0', 'CHAR', '120', '1', '1', 'news', '0', '', '0', '0', '1', '<input name=\\\"ftitle\\\" type=\\\"text\\\" size=42 id=\\\"ftitle\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'ftitle\\\',stripSlashes($r[ftitle]))?>\\\">\r\n', '0', '', '0', '', '0', '0', '', '', '', '', '', '', '0', '0', '');
INSERT INTO `phome_enewsf` VALUES ('6', 'smalltext', '内容简介', 'textarea', '<textarea name=\\\"smalltext\\\" cols=\\\"80\\\" rows=\\\"10\\\" id=\\\"smalltext\\\"><?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[smalltext]))?></textarea>\r\n', '内容简介', '1', '1', '1', '\r\n  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--smalltext--]\" size=\"20\">)</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n        <tr> \r\n          <td><textarea name=\"add[zz_smalltext]\" cols=\"60\" rows=\"10\" id=\"textarea\"><?=ehtmlspecialchars(stripSlashes($r[zz_smalltext]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\"add[z_smalltext]\" type=\"text\" id=\"add[z_smalltext]\" value=\"<?=stripSlashes($r[z_smalltext])?>\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', '2', 'CHAR', '255', '1', '1', 'news', '0', '', '0', '1', '1', '<textarea name=\\\"smalltext\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"smalltext\\\"><?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'smalltext\\\',stripSlashes($r[smalltext]))?></textarea>\r\n', '0', '', '0', '', '0', '0', '', '', '', '', '', '', '0', '1', '');
INSERT INTO `phome_enewsf` VALUES ('7', 'writer', '作者', 'text', '<?php\r\n$writer_sql=$empire->query(\\\"select writer from {$dbtbpre}enewswriter\\\");\r\nwhile($w_r=$empire->fetch($writer_sql))\r\n{\r\n	$w_class.=\\\"<option value=\\\'\\\".$w_r[writer].\\\"\\\'>\\\".$w_r[writer].\\\"</option>\\\";\r\n}\r\n?>\r\n<input type=text name=writer value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[writer]))?>\\\" size=\\\"\\\"> \r\n        <select name=\\\"w_id\\\" id=\\\"select7\\\" onchange=\\\"document.add.writer.value=document.add.w_id.value\\\">\r\n          <option>选择作者</option>\r\n		  <?=$w_class?>\r\n        </select>\r\n<input type=\\\"button\\\" name=\\\"wbutton\\\" value=\\\"增加作者\\\" onclick=\\\"window.open(\\\'NewsSys/writer.php?<?=$ecms_hashur[ehref]?>&addwritername=\\\'+document.add.writer.value);\\\">\r\n', '作者', '1', '1', '1', '\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--writer--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_writer]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_writer]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_writer]\\\" type=\\\"text\\\" id=\\\"add[z_writer]\\\" value=\\\"<?=stripSlashes($r[z_writer])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', '2', 'CHAR', '30', '1', '1', 'news', '0', '', '0', '0', '1', '<input name=\\\"writer\\\" type=\\\"text\\\" id=\\\"writer\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'writer\\\',stripSlashes($r[writer]))?>\\\" size=\\\"\\\">\r\n', '0', '', '0', '', '1', '0', '', '', '', '', '', '', '0', '0', '');
INSERT INTO `phome_enewsf` VALUES ('8', 'befrom', '信息来源', 'text', '<?php\r\n$befrom_sql=$empire->query(\\\"select sitename from {$dbtbpre}enewsbefrom\\\");\r\nwhile($b_r=$empire->fetch($befrom_sql))\r\n{\r\n	$b_class.=\\\"<option value=\\\'\\\".$b_r[sitename].\\\"\\\'>\\\".$b_r[sitename].\\\"</option>\\\";\r\n}\r\n?>\r\n<input type=\\\"text\\\" name=\\\"befrom\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[befrom]))?>\\\" size=\\\"\\\"> \r\n        <select name=\\\"befrom_id\\\" id=\\\"befromid\\\" onchange=\\\"document.add.befrom.value=document.add.befrom_id.value\\\">\r\n          <option>选择信息来源</option>\r\n          <?=$b_class?>\r\n        </select>\r\n<input type=\\\"button\\\" name=\\\"wbutton\\\" value=\\\"增加来源\\\" onclick=\\\"window.open(\\\'NewsSys/BeFrom.php?<?=$ecms_hashur[ehref]?>&addsitename=\\\'+document.add.befrom.value);\\\">\r\n', '信息来源', '1', '1', '1', '\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--befrom--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_befrom]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_befrom]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_befrom]\\\" type=\\\"text\\\" id=\\\"add[z_befrom]\\\" value=\\\"<?=stripSlashes($r[z_befrom])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', '2', 'CHAR', '60', '1', '1', 'news', '0', '', '0', '0', '1', '<input name=\\\"befrom\\\" type=\\\"text\\\" id=\\\"befrom\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'befrom\\\',stripSlashes($r[befrom]))?>\\\" size=\\\"\\\">\r\n', '0', '', '0', '', '1', '0', '', '', '', '', '', '', '0', '0', '');
INSERT INTO `phome_enewsf` VALUES ('9', 'newstext', '新闻正文', 'editor', '<?=ECMS_ShowEditorVar(\\\"newstext\\\",$ecmsfirstpost==1?\\\"\\\":stripSlashes($r[newstext]),\\\"Default\\\",\\\"\\\",\\\"300\\\",\\\"100%\\\")?>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\" bgcolor=\\\"#DBEAF5\\\">\r\n          <tr> \r\n            <td bgcolor=\\\"#FFFFFF\\\"> <input name=\\\"dokey\\\" type=\\\"checkbox\\\" value=\\\"1\\\"<?=$r[dokey]==1?\\\' checked\\\':\\\'\\\'?>>\r\n              关键字替换&nbsp;&nbsp; <input name=\\\"copyimg\\\" type=\\\"checkbox\\\" id=\\\"copyimg\\\" value=\\\"1\\\">\r\n      远程保存图片(\r\n      <input name=\\\"mark\\\" type=\\\"checkbox\\\" id=\\\"mark\\\" value=\\\"1\\\">\r\n      <a href=\\\"SetEnews.php<?=$ecms_hashur[whehref]?>\\\" target=\\\"_blank\\\">加水印</a>)&nbsp;&nbsp; \r\n      <input name=\\\"copyflash\\\" type=\\\"checkbox\\\" id=\\\"copyflash\\\" value=\\\"1\\\">\r\n      远程保存FLASH(地址前缀： \r\n      <input name=\\\"qz_url\\\" type=\\\"text\\\" id=\\\"qz_url\\\" size=\\\"\\\">\r\n              )</td>\r\n          </tr>\r\n          <tr>\r\n            \r\n    <td bgcolor=\\\"#FFFFFF\\\"><input name=\\\"repimgnexturl\\\" type=\\\"checkbox\\\" id=\\\"repimgnexturl\\\" value=\\\"1\\\"> 图片链接转为下一页&nbsp;&nbsp; <input name=\\\"autopage\\\" type=\\\"checkbox\\\" id=\\\"autopage\\\" value=\\\"1\\\">自动分页\r\n      ,每 \r\n      <input name=\\\"autosize\\\" type=\\\"text\\\" id=\\\"autosize\\\" value=\\\"5000\\\" size=\\\"5\\\">\r\n      个字节为一页&nbsp;&nbsp; 取第 \r\n      <input name=\\\"getfirsttitlepic\\\" type=\\\"text\\\" id=\\\"getfirsttitlepic\\\" value=\\\"\\\" size=\\\"1\\\">\r\n      张上传图为标题图片( \r\n      <input name=\\\"getfirsttitlespic\\\" type=\\\"checkbox\\\" id=\\\"getfirsttitlespic\\\" value=\\\"1\\\">\r\n      缩略图: 宽 \r\n      <input name=\\\"getfirsttitlespicw\\\" type=\\\"text\\\" id=\\\"getfirsttitlespicw\\\" size=\\\"3\\\" value=\\\"<?=$public_r[spicwidth]?>\\\">\r\n      *高\r\n      <input name=\\\"getfirsttitlespich\\\" type=\\\"text\\\" id=\\\"getfirsttitlespich\\\" size=\\\"3\\\" value=\\\"<?=$public_r[spicheight]?>\\\">\r\n      )</td>\r\n          </tr>\r\n        </table>\r\n', '新闻正文', '1', '1', '1', '\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--newstext--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_newstext]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_newstext]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_newstext]\\\" type=\\\"text\\\" id=\\\"add[z_newstext]\\\" value=\\\"<?=stripSlashes($r[z_newstext])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', '2', 'MEDIUMTEXT', '', '1', '1', 'news', '0', '', '0', '1', '1', '<?=ECMS_ShowEditorVar(\\\"newstext\\\",$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'newstext\\\',stripSlashes($r[newstext])),\\\"Default\\\",\\\"\\\",\\\"300\\\",\\\"100%\\\")?>\r\n', '0', '', '0', '', '1', '1', '', '', '', '', '', '', '0', '0', '');
INSERT INTO `phome_enewsf` VALUES ('10', 'diggtop', '顶', 'text', '\r\n<input name=\"diggtop\" type=\"text\" id=\"diggtop\" value=\"<?=$ecmsfirstpost==1?\"\":ehtmlspecialchars(stripSlashes($r[diggtop]))?>\" size=\"\">\r\n', '', '1', '1', '1', '\r\n  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--diggtop--]\" size=\"20\">)</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n        <tr> \r\n          <td><textarea name=\"add[zz_diggtop]\" cols=\"60\" rows=\"10\" id=\"textarea\"><?=ehtmlspecialchars(stripSlashes($r[zz_diggtop]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\"add[z_diggtop]\" type=\"text\" id=\"add[z_diggtop]\" value=\"<?=stripSlashes($r[z_diggtop])?>\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', '3', 'INT', '', '1', '1', 'news', '0', '', '0', '0', '1', '\r\n<input name=\"diggtop\" type=\"text\" id=\"diggtop\" value=\"<?=$ecmsfirstpost==1?\"\":DoReqValue($mid,\'diggtop\',stripSlashes($r[diggtop]))?>\" size=\"\">\r\n', '0', '', '0', '', '0', '0', '', '', '', '', '', '', '0', '0', '');
INSERT INTO `phome_enewsf` VALUES ('107', 'experttext', '附简介', 'textarea', '\r\n<textarea name=\\\"experttext\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"experttext\\\"><?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[experttext]))?></textarea>\r\n', '副简介', '1', '1', '1', '\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--experttext--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_experttext]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_experttext]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_experttext]\\\" type=\\\"text\\\" id=\\\"add[z_experttext]\\\" value=\\\"<?=stripSlashes($r[z_experttext])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', '2', 'VARCHAR', '', '1', '1', 'news', '0', '', '0', '1', '1', '\r\n<textarea name=\\\"experttext\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"experttext\\\"><?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'experttext\\\',stripSlashes($r[experttext]))?></textarea>\r\n', '0', '', '0', '', '0', '0', '', '', '', '', '', '', '0', '1', '');
INSERT INTO `phome_enewsf` VALUES ('108', 'expertimg', '附图一', 'img', '\r\n<input name=\\\"expertimg\\\" type=\\\"text\\\" id=\\\"expertimg\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[expertimg]))?>\\\" size=\\\"60\\\">\r\n<a onclick=\\\"window.open(\\\'ecmseditor/FileMain.php?type=1&classid=<?=$classid?>&infoid=<?=$id?>&filepass=<?=$filepass?>&sinfo=1&doing=1&field=expertimg<?=$ecms_hashur[ehref]?>\\\',\\\'\\\',\\\'width=700,height=550,scrollbars=yes\\\');\\\" title=\\\"选择已上传的图片\\\"><img src=\\\"../data/images/changeimg.gif\\\" border=\\\"0\\\" align=\\\"absbottom\\\"></a> \r\n', '', '1', '1', '1', '\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      ( \r\n      <input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--expertimg--]\\\" size=\\\"20\\\">\r\n      )</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n    <tr>\r\n      <td>附件前缀 \r\n        <input name=\\\"add[qz_expertimg]\\\" type=\\\"text\\\" id=\\\"add[qz_expertimg]\\\" value=\\\"<?=stripSlashes($r[qz_expertimg])?>\\\"> \r\n        <input name=\\\"add[save_expertimg]\\\" type=\\\"checkbox\\\" id=\\\"add[save_expertimg]\\\" value=\\\" checked\\\"<?=$r[save_expertimg]?>>\r\n        远程保存 </td>\r\n    </tr>\r\n    <tr> \r\n      <td><textarea name=\\\"add[zz_expertimg]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"add[zz_expertimg]\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_expertimg]))?></textarea></td>\r\n    </tr>\r\n    <tr> \r\n      <td><input name=\\\"add[z_expertimg]\\\" type=\\\"text\\\" id=\\\"expertimg5\\\" value=\\\"<?=stripSlashes($r[z_expertimg])?>\\\">\r\n        (如填写这里，这就是字段的值)</td>\r\n    </tr>\r\n  </table></td>\r\n  </tr>\r\n', '2', 'VARCHAR', '120', '1', '1', 'news', '0', '', '0', '0', '1', '\r\n<input type=\\\"file\\\" name=\\\"expertimgfile\\\" size=\\\"60\\\">\r\n', '0', '', '0', '60', '0', '0', '', '', '', '', '', '', '0', '0', '');
INSERT INTO `phome_enewsf` VALUES ('109', 'expertjs', '附图二', 'img', '\r\n<input name=\\\"expertjs\\\" type=\\\"text\\\" id=\\\"expertjs\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[expertjs]))?>\\\" size=\\\"45\\\">\r\n<a onclick=\\\"window.open(\\\'ecmseditor/FileMain.php?type=1&classid=<?=$classid?>&infoid=<?=$id?>&filepass=<?=$filepass?>&sinfo=1&doing=1&field=expertjs<?=$ecms_hashur[ehref]?>\\\',\\\'\\\',\\\'width=700,height=550,scrollbars=yes\\\');\\\" title=\\\"选择已上传的图片\\\"><img src=\\\"../data/images/changeimg.gif\\\" border=\\\"0\\\" align=\\\"absbottom\\\"></a> \r\n', '附图二', '1', '1', '1', '\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      ( \r\n      <input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--expertjs--]\\\" size=\\\"20\\\">\r\n      )</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n    <tr>\r\n      <td>附件前缀 \r\n        <input name=\\\"add[qz_expertjs]\\\" type=\\\"text\\\" id=\\\"add[qz_expertjs]\\\" value=\\\"<?=stripSlashes($r[qz_expertjs])?>\\\"> \r\n        <input name=\\\"add[save_expertjs]\\\" type=\\\"checkbox\\\" id=\\\"add[save_expertjs]\\\" value=\\\" checked\\\"<?=$r[save_expertjs]?>>\r\n        远程保存 </td>\r\n    </tr>\r\n    <tr> \r\n      <td><textarea name=\\\"add[zz_expertjs]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"add[zz_expertjs]\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_expertjs]))?></textarea></td>\r\n    </tr>\r\n    <tr> \r\n      <td><input name=\\\"add[z_expertjs]\\\" type=\\\"text\\\" id=\\\"expertjs5\\\" value=\\\"<?=stripSlashes($r[z_expertjs])?>\\\">\r\n        (如填写这里，这就是字段的值)</td>\r\n    </tr>\r\n  </table></td>\r\n  </tr>\r\n', '2', 'VARCHAR', '120', '1', '1', 'news', '0', '', '0', '0', '1', '\r\n<input type=\\\"file\\\" name=\\\"expertjsfile\\\" size=\\\"45\\\">\r\n', '0', '', '0', '', '0', '0', '', '', '', '', '', '', '0', '0', '');

-- ----------------------------
-- Table structure for `phome_enewsfava`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsfava`;
CREATE TABLE `phome_enewsfava` (
  `favaid` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL DEFAULT '0',
  `favatime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `cid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`favaid`),
  KEY `userid` (`userid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsfava
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsfavaclass`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsfavaclass`;
CREATE TABLE `phome_enewsfavaclass` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(30) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsfavaclass
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsfeedback`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsfeedback`;
CREATE TABLE `phome_enewsfeedback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `saytext` text NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `mycall` varchar(30) NOT NULL DEFAULT '',
  `homepage` varchar(160) NOT NULL DEFAULT '',
  `company` varchar(80) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `saytime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `job` varchar(36) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `filepath` varchar(20) NOT NULL DEFAULT '',
  `filename` text NOT NULL,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `haveread` tinyint(1) NOT NULL DEFAULT '0',
  `eipport` varchar(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `bid` (`bid`),
  KEY `haveread` (`haveread`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsfeedback
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsfeedbackclass`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsfeedbackclass`;
CREATE TABLE `phome_enewsfeedbackclass` (
  `bid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `bname` varchar(60) NOT NULL DEFAULT '',
  `btemp` mediumtext NOT NULL,
  `bzs` varchar(255) NOT NULL DEFAULT '',
  `enter` text NOT NULL,
  `mustenter` text NOT NULL,
  `filef` varchar(255) NOT NULL DEFAULT '',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `checkboxf` text NOT NULL,
  `usernames` text NOT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsfeedbackclass
-- ----------------------------
INSERT INTO `phome_enewsfeedbackclass` VALUES ('1', '默认反馈分类', '[!--cp.header--]\r\n<table width=100% align=center cellpadding=3 cellspacing=1 class=\\\"tableborder\\\">\r\n  <form name=\\\'feedback\\\' method=\\\'post\\\' enctype=\\\'multipart/form-data\\\' action=\\\'../../enews/index.php\\\'>\r\n    <input name=\\\'enews\\\' type=\\\'hidden\\\' value=\\\'AddFeedback\\\'>\r\n    <tr>\r\n      <td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'><div align=\\\"right\\\">您的姓名:</div></td>\r\n      <td bgcolor=\\\'ffffff\\\'><input name=\\\'name\\\' type=\\\'text\\\' size=\\\'42\\\'>\r\n        (*)</td>\r\n    </tr>\r\n    <tr>\r\n      <td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'><div align=\\\"right\\\">职务:</div></td>\r\n      <td bgcolor=\\\'ffffff\\\'><input name=\\\'job\\\' type=\\\'text\\\' size=\\\'42\\\'></td>\r\n    </tr>\r\n    <tr>\r\n      <td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'><div align=\\\"right\\\">公司名称:</div></td>\r\n      <td bgcolor=\\\'ffffff\\\'><input name=\\\'company\\\' type=\\\'text\\\' size=\\\'42\\\'></td>\r\n    </tr>\r\n    <tr>\r\n      <td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'><div align=\\\"right\\\">联系邮箱:</div></td>\r\n      <td bgcolor=\\\'ffffff\\\'><input name=\\\'email\\\' type=\\\'text\\\' size=\\\'42\\\'></td>\r\n    </tr>\r\n    <tr>\r\n      <td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'><div align=\\\"right\\\">联系电话:</div></td>\r\n      <td bgcolor=\\\'ffffff\\\'><input name=\\\'mycall\\\' type=\\\'text\\\' size=\\\'42\\\'>\r\n        (*)</td>\r\n    </tr>\r\n    <tr>\r\n      <td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'><div align=\\\"right\\\">网站:</div></td>\r\n      <td bgcolor=\\\'ffffff\\\'><input name=\\\'homepage\\\' type=\\\'text\\\' size=\\\'42\\\'></td>\r\n    </tr>\r\n    <tr>\r\n      <td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'><div align=\\\"right\\\">联系地址:</div></td>\r\n      <td bgcolor=\\\'ffffff\\\'><input name=\\\'address\\\' type=\\\'text\\\' size=\\\"42\\\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'><div align=\\\"right\\\">信息标题:</div></td>\r\n      <td bgcolor=\\\'ffffff\\\'><input name=\\\'title\\\' type=\\\'text\\\' size=\\\"42\\\"> (*)</td>\r\n    </tr>\r\n    <tr> \r\n      <td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'><div align=\\\"right\\\">信息内容(*):</div></td>\r\n      <td bgcolor=\\\'ffffff\\\'><textarea name=\\\'saytext\\\' cols=\\\'60\\\' rows=\\\'12\\\'></textarea> \r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td bgcolor=\\\'ffffff\\\'></td>\r\n      <td bgcolor=\\\'ffffff\\\'><input type=\\\'submit\\\' name=\\\'submit\\\' value=\\\'提交\\\'></td>\r\n    </tr>\r\n  </form>\r\n</table>\r\n[!--cp.footer--]', '', '您的姓名<!--field--->name<!--record-->职务<!--field--->job<!--record-->公司名称<!--field--->company<!--record-->联系邮箱<!--field--->email<!--record-->联系电话<!--field--->mycall<!--record-->网站<!--field--->homepage<!--record-->联系地址<!--field--->address<!--record-->信息标题<!--field--->title<!--record-->信息内容<!--field--->saytext<!--record-->', ',name,mycall,title,saytext,', ',', '0', '', '');

-- ----------------------------
-- Table structure for `phome_enewsfeedbackf`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsfeedbackf`;
CREATE TABLE `phome_enewsfeedbackf` (
  `fid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `f` varchar(30) NOT NULL DEFAULT '',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `fform` varchar(20) NOT NULL DEFAULT '',
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `ftype` varchar(30) NOT NULL DEFAULT '',
  `flen` varchar(20) NOT NULL DEFAULT '',
  `fformsize` varchar(12) NOT NULL DEFAULT '',
  `fvalue` text NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsfeedbackf
-- ----------------------------
INSERT INTO `phome_enewsfeedbackf` VALUES ('1', 'title', '标题', 'text', '', '7', 'VARCHAR', '120', '', '');
INSERT INTO `phome_enewsfeedbackf` VALUES ('2', 'saytext', '内容', 'textarea', '', '8', 'TEXT', '', '', '');
INSERT INTO `phome_enewsfeedbackf` VALUES ('3', 'name', '姓名', 'text', '', '0', 'VARCHAR', '30', '', '');
INSERT INTO `phome_enewsfeedbackf` VALUES ('4', 'email', '邮箱', 'text', '', '3', 'VARCHAR', '80', '', '');
INSERT INTO `phome_enewsfeedbackf` VALUES ('5', 'mycall', '电话', 'text', '', '4', 'VARCHAR', '30', '', '');
INSERT INTO `phome_enewsfeedbackf` VALUES ('6', 'homepage', '网站', 'text', '', '5', 'VARCHAR', '160', '', '');
INSERT INTO `phome_enewsfeedbackf` VALUES ('7', 'company', '公司名称', 'text', '', '2', 'VARCHAR', '80', '', '');
INSERT INTO `phome_enewsfeedbackf` VALUES ('8', 'address', '联系地址', 'text', '', '6', 'VARCHAR', '255', '', '');
INSERT INTO `phome_enewsfeedbackf` VALUES ('9', 'job', '职务', 'text', '', '1', 'VARCHAR', '36', '', '');

-- ----------------------------
-- Table structure for `phome_enewsfile_1`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsfile_1`;
CREATE TABLE `phome_enewsfile_1` (
  `fileid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pubid` bigint(16) unsigned NOT NULL DEFAULT '0',
  `filename` char(60) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `path` char(20) NOT NULL DEFAULT '',
  `adduser` char(30) NOT NULL DEFAULT '',
  `filetime` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `no` char(60) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `onclick` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `cjid` int(10) unsigned NOT NULL DEFAULT '0',
  `fpath` tinyint(1) NOT NULL DEFAULT '0',
  `modtype` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fileid`),
  KEY `id` (`id`),
  KEY `type` (`type`),
  KEY `classid` (`classid`),
  KEY `pubid` (`pubid`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsfile_1
-- ----------------------------
INSERT INTO `phome_enewsfile_1` VALUES ('4', '0', '2c067792b6531527cad3fef40efafd48.jpg', '209985', '2017-09-21', 'admin', '1505969548', '56', 'ban1.jpg', '1', '0', '1505969283', '1505969283', '0', '0');
INSERT INTO `phome_enewsfile_1` VALUES ('6', '1000010000000004', 'c8d9ad84d152d7ea7b58f0a5fe4c5d6c.jpg', '209985', '2017-09-21', 'admin', '1505969844', '56', '46ac99504e94fd9b34afb02bcd2ef298.jpg', '1', '0', '4', '0', '0', '0');
INSERT INTO `phome_enewsfile_1` VALUES ('7', '1000010000000005', '2ebb22c9010e6eb2bd4d292f866d1ef7.jpg', '221767', '2017-09-21', 'admin', '1505972249', '56', '58e69095b206ffae10f75fa36ddfb7db.jpg', '1', '0', '5', '0', '0', '0');
INSERT INTO `phome_enewsfile_1` VALUES ('10', '1000010000000007', '9eb99c71353ed8f8cafa22d6f1e7e1e0.jpg', '105017', '2017-09-21', 'admin', '1505972466', '56', '89cfa1ea48e6e6ad6344b81d2365325d.jpg', '1', '0', '7', '0', '0', '0');
INSERT INTO `phome_enewsfile_1` VALUES ('9', '1000010000000006', 'e4be60ddc69a564a0a44e2115f012704.jpg', '180024', '2017-09-21', 'admin', '1505972377', '56', '87fb25eb42a30c35a25e9a7051ac5ae8.jpg', '1', '0', '6', '0', '0', '0');
INSERT INTO `phome_enewsfile_1` VALUES ('11', '1000010000000007', '991ee2adcbbd7e5ee316df27268ce067.jpg', '105017', '2017-09-21', 'admin', '1505972467', '56', '89cfa1ea48e6e6ad6344b81d2365325d.jpg', '1', '0', '7', '0', '0', '0');
INSERT INTO `phome_enewsfile_1` VALUES ('12', '1000010000000008', '5b646a339f4032b3a486aae293d77cd8.jpg', '93596', '2017-09-21', 'admin', '1505972591', '56', 'b29d4b91b7b478c43029030eaafda7f3.jpg', '1', '0', '8', '0', '0', '0');
INSERT INTO `phome_enewsfile_1` VALUES ('13', '1000010000000009', '18726d2fb58f40b8502120c970b7d94f.jpg', '95555', '2017-09-21', 'admin', '1505972643', '56', '2b069279de89db4d8e7407686eac4f3c.jpg', '1', '0', '9', '0', '0', '0');
INSERT INTO `phome_enewsfile_1` VALUES ('16', '1000010000000011', 'e5ce1e4dac427108b97058a39a2a1eb2.jpg', '4430', '2017-09-22', 'admin', '1506047838', '1', '77ca2a6cff8167aabde3e22c61caf85d.jpg', '1', '0', '11', '0', '0', '0');
INSERT INTO `phome_enewsfile_1` VALUES ('15', '1000010000000010', 'f59abfdf265078b144390eeb9391c845.jpg', '94935', '2017-09-21', 'admin', '1505972742', '56', '487ccecb63b7d37c8d9d415a18c6a6cc.jpg', '1', '0', '10', '0', '0', '0');
INSERT INTO `phome_enewsfile_1` VALUES ('17', '1000010000000012', '295dfa2e3e098635c8f84adbcda2b04e.jpg', '5712', '2017-09-22', 'admin', '1506049630', '1', '6f479be827df10011455fee69fef47e0.png', '1', '0', '12', '0', '0', '0');
INSERT INTO `phome_enewsfile_1` VALUES ('18', '1000010000000013', '8907cdf2575023bd4cd61057111df011.png', '186837', '2017-09-22', 'admin', '1506063961', '13', '3d7aa402948aa197f838386de1870bc5.png', '1', '0', '13', '0', '0', '0');
INSERT INTO `phome_enewsfile_1` VALUES ('19', '1000010000000014', '3d057b3349b1052c391598a1ef5ce6ea.jpg', '5377', '2017-09-22', 'admin', '1506064059', '13', '6fb15ee9a34a25e4ac007a9b00a9be22.jpg', '1', '0', '14', '0', '0', '0');
INSERT INTO `phome_enewsfile_1` VALUES ('20', '0', '0a74dcaed25c3790bd6bba8e168195e6.png', '169817', '2017-09-22', 'admin', '1506064135', '13', 'fdf57b5b8ad52ec6d8cf94736dd826f3.png', '1', '0', '1506064079', '1506064079', '0', '0');
INSERT INTO `phome_enewsfile_1` VALUES ('21', '0', '0f967517af192d30f80a3400ab217ce1.png', '169817', '2017-09-22', 'admin', '1506064136', '13', 'fdf57b5b8ad52ec6d8cf94736dd826f3.png', '1', '0', '1506064079', '1506064079', '0', '0');

-- ----------------------------
-- Table structure for `phome_enewsfile_member`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsfile_member`;
CREATE TABLE `phome_enewsfile_member` (
  `fileid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pubid` tinyint(1) NOT NULL DEFAULT '0',
  `filename` char(60) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `path` char(20) NOT NULL DEFAULT '',
  `adduser` char(30) NOT NULL DEFAULT '',
  `filetime` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` tinyint(1) NOT NULL DEFAULT '0',
  `no` char(60) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `onclick` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `cjid` int(10) unsigned NOT NULL DEFAULT '0',
  `fpath` tinyint(1) NOT NULL DEFAULT '0',
  `modtype` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fileid`),
  KEY `id` (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsfile_member
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsfile_other`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsfile_other`;
CREATE TABLE `phome_enewsfile_other` (
  `fileid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pubid` tinyint(1) NOT NULL DEFAULT '0',
  `filename` char(60) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `path` char(20) NOT NULL DEFAULT '',
  `adduser` char(30) NOT NULL DEFAULT '',
  `filetime` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` tinyint(1) NOT NULL DEFAULT '0',
  `no` char(60) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `onclick` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `cjid` int(10) unsigned NOT NULL DEFAULT '0',
  `fpath` tinyint(1) NOT NULL DEFAULT '0',
  `modtype` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fileid`),
  KEY `id` (`id`),
  KEY `type` (`type`),
  KEY `modtype` (`modtype`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsfile_other
-- ----------------------------
INSERT INTO `phome_enewsfile_other` VALUES ('1', '0', '74fe2f10cc0b84204b3128b69f6438a2.png', '192623', '2017-09-22', 'admin', '1506059904', '0', 'ec7800d635cfc3c20c0389b0653b307d.png', '1', '0', '13', '0', '0', '1');
INSERT INTO `phome_enewsfile_other` VALUES ('2', '0', '4beb61cc7d63e4519c18a9c7cfc43a14.png', '192623', '2017-09-22', 'admin', '1506059906', '0', 'ec7800d635cfc3c20c0389b0653b307d.png', '1', '0', '13', '0', '0', '1');
INSERT INTO `phome_enewsfile_other` VALUES ('3', '0', 'd81d9d8c45d57c0eb089dbfd628905a6.png', '186837', '2017-09-22', 'admin', '1506059940', '0', '3d7aa402948aa197f838386de1870bc5.png', '1', '0', '14', '0', '0', '1');
INSERT INTO `phome_enewsfile_other` VALUES ('4', '0', '3499975cf418e4aacd5accc7c58538f1.png', '169817', '2017-09-22', 'admin', '1506059969', '0', 'fdf57b5b8ad52ec6d8cf94736dd826f3.png', '1', '0', '15', '0', '0', '1');
INSERT INTO `phome_enewsfile_other` VALUES ('5', '0', '2efd9f6c642f4a5e8c1947a806ccb1a2.png', '170416', '2017-09-22', 'admin', '1506060003', '0', 'de84afede01699ee951efecbd43b5b39.png', '1', '0', '16', '0', '0', '1');
INSERT INTO `phome_enewsfile_other` VALUES ('6', '0', 'a1989f5056066e883dd759c9c1e78b6a.png', '170416', '2017-09-22', 'admin', '1506060005', '0', 'de84afede01699ee951efecbd43b5b39.png', '1', '0', '16', '0', '0', '1');
INSERT INTO `phome_enewsfile_other` VALUES ('7', '0', '1964ff3f5192326a3de045e940a33093.png', '170416', '2017-09-22', 'admin', '1506060005', '0', 'de84afede01699ee951efecbd43b5b39.png', '1', '0', '16', '0', '0', '1');
INSERT INTO `phome_enewsfile_other` VALUES ('10', '0', '5d88c66a1052ccd8d31f4e15187b9d8a.png', '170416', '2017-09-22', 'admin', '1506069105', '0', 'de84afede01699ee951efecbd43b5b39.png', '1', '0', '2', '0', '0', '1');

-- ----------------------------
-- Table structure for `phome_enewsfile_public`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsfile_public`;
CREATE TABLE `phome_enewsfile_public` (
  `fileid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pubid` tinyint(1) NOT NULL DEFAULT '0',
  `filename` char(60) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `path` char(20) NOT NULL DEFAULT '',
  `adduser` char(30) NOT NULL DEFAULT '',
  `filetime` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` tinyint(1) NOT NULL DEFAULT '0',
  `no` char(60) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `onclick` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `cjid` int(10) unsigned NOT NULL DEFAULT '0',
  `fpath` tinyint(1) NOT NULL DEFAULT '0',
  `modtype` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fileid`),
  KEY `id` (`id`),
  KEY `type` (`type`),
  KEY `modtype` (`modtype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsfile_public
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsgbook`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsgbook`;
CREATE TABLE `phome_enewsgbook` (
  `lyid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `mycall` varchar(30) NOT NULL DEFAULT '',
  `lytime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lytext` text NOT NULL,
  `retext` text NOT NULL,
  `bid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `eipport` varchar(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`lyid`),
  KEY `bid` (`bid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsgbook
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsgbookclass`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsgbookclass`;
CREATE TABLE `phome_enewsgbookclass` (
  `bid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `bname` varchar(60) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsgbookclass
-- ----------------------------
INSERT INTO `phome_enewsgbookclass` VALUES ('1', '默认留言分类', '0', '0');

-- ----------------------------
-- Table structure for `phome_enewsgfenip`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsgfenip`;
CREATE TABLE `phome_enewsgfenip` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `addtime` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsgfenip
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsgroup`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsgroup`;
CREATE TABLE `phome_enewsgroup` (
  `groupid` smallint(6) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(50) NOT NULL DEFAULT '',
  `dopublic` tinyint(1) NOT NULL DEFAULT '0',
  `doclass` tinyint(1) NOT NULL DEFAULT '0',
  `dotemplate` tinyint(1) NOT NULL DEFAULT '0',
  `dopicnews` tinyint(1) NOT NULL DEFAULT '0',
  `dofile` tinyint(1) NOT NULL DEFAULT '0',
  `douser` tinyint(1) NOT NULL DEFAULT '0',
  `dolog` tinyint(1) NOT NULL DEFAULT '0',
  `domember` tinyint(1) NOT NULL DEFAULT '0',
  `dobefrom` tinyint(1) NOT NULL DEFAULT '0',
  `doword` tinyint(1) NOT NULL DEFAULT '0',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `doad` tinyint(1) NOT NULL DEFAULT '0',
  `dovote` tinyint(1) NOT NULL DEFAULT '0',
  `dogroup` tinyint(1) NOT NULL DEFAULT '0',
  `doall` tinyint(1) NOT NULL DEFAULT '0',
  `docj` tinyint(1) NOT NULL DEFAULT '0',
  `dobq` tinyint(1) NOT NULL DEFAULT '0',
  `domovenews` tinyint(1) NOT NULL DEFAULT '0',
  `dopostdata` tinyint(1) NOT NULL DEFAULT '0',
  `dochangedata` tinyint(1) NOT NULL DEFAULT '0',
  `dopl` tinyint(1) NOT NULL DEFAULT '0',
  `dof` tinyint(1) NOT NULL DEFAULT '0',
  `dom` tinyint(1) NOT NULL DEFAULT '0',
  `dodo` tinyint(1) NOT NULL DEFAULT '0',
  `dodbdata` tinyint(1) NOT NULL DEFAULT '0',
  `dorepnewstext` tinyint(1) NOT NULL DEFAULT '0',
  `dotempvar` tinyint(1) NOT NULL DEFAULT '0',
  `dostats` tinyint(1) NOT NULL DEFAULT '0',
  `dowriter` tinyint(1) NOT NULL DEFAULT '0',
  `dototaldata` tinyint(1) NOT NULL DEFAULT '0',
  `dosearchkey` tinyint(1) NOT NULL DEFAULT '0',
  `dozt` tinyint(1) NOT NULL DEFAULT '0',
  `docard` tinyint(1) NOT NULL DEFAULT '0',
  `dolink` tinyint(1) NOT NULL DEFAULT '0',
  `doselfinfo` tinyint(1) NOT NULL DEFAULT '0',
  `doexecsql` tinyint(1) NOT NULL DEFAULT '0',
  `dotable` tinyint(1) NOT NULL DEFAULT '0',
  `dodownurl` tinyint(1) NOT NULL DEFAULT '0',
  `dodeldownrecord` tinyint(1) NOT NULL DEFAULT '0',
  `doshoppayfs` tinyint(1) NOT NULL DEFAULT '0',
  `doshopps` tinyint(1) NOT NULL DEFAULT '0',
  `doshopdd` tinyint(1) NOT NULL DEFAULT '0',
  `dogbook` tinyint(1) NOT NULL DEFAULT '0',
  `dofeedback` tinyint(1) NOT NULL DEFAULT '0',
  `douserpage` tinyint(1) NOT NULL DEFAULT '0',
  `donotcj` tinyint(1) NOT NULL DEFAULT '0',
  `dodownerror` tinyint(1) NOT NULL DEFAULT '0',
  `dodelinfodata` tinyint(1) NOT NULL DEFAULT '0',
  `doaddinfo` tinyint(1) NOT NULL DEFAULT '0',
  `doeditinfo` tinyint(1) NOT NULL DEFAULT '0',
  `dodelinfo` tinyint(1) NOT NULL DEFAULT '0',
  `doadminstyle` tinyint(1) NOT NULL DEFAULT '0',
  `dorepdownpath` tinyint(1) NOT NULL DEFAULT '0',
  `douserjs` tinyint(1) NOT NULL DEFAULT '0',
  `douserlist` tinyint(1) NOT NULL DEFAULT '0',
  `domsg` tinyint(1) NOT NULL DEFAULT '0',
  `dosendemail` tinyint(1) NOT NULL DEFAULT '0',
  `dosetmclass` tinyint(1) NOT NULL DEFAULT '0',
  `doinfodoc` tinyint(1) NOT NULL DEFAULT '0',
  `dotempgroup` tinyint(1) NOT NULL DEFAULT '0',
  `dofeedbackf` tinyint(1) NOT NULL DEFAULT '0',
  `dotask` tinyint(1) NOT NULL DEFAULT '0',
  `domemberf` tinyint(1) NOT NULL DEFAULT '0',
  `dospacestyle` tinyint(1) NOT NULL DEFAULT '0',
  `dospacedata` tinyint(1) NOT NULL DEFAULT '0',
  `dovotemod` tinyint(1) NOT NULL DEFAULT '0',
  `doplayer` tinyint(1) NOT NULL DEFAULT '0',
  `dowap` tinyint(1) NOT NULL DEFAULT '0',
  `dopay` tinyint(1) NOT NULL DEFAULT '0',
  `dobuygroup` tinyint(1) NOT NULL DEFAULT '0',
  `dosearchall` tinyint(1) NOT NULL DEFAULT '0',
  `doinfotype` tinyint(1) NOT NULL DEFAULT '0',
  `doplf` tinyint(1) NOT NULL DEFAULT '0',
  `dopltable` tinyint(1) NOT NULL DEFAULT '0',
  `dochadminstyle` tinyint(1) NOT NULL DEFAULT '0',
  `dotags` tinyint(1) NOT NULL DEFAULT '0',
  `dosp` tinyint(1) NOT NULL DEFAULT '0',
  `doyh` tinyint(1) NOT NULL DEFAULT '0',
  `dofirewall` tinyint(1) NOT NULL DEFAULT '0',
  `dosetsafe` tinyint(1) NOT NULL DEFAULT '0',
  `douserclass` tinyint(1) NOT NULL DEFAULT '0',
  `doworkflow` tinyint(1) NOT NULL DEFAULT '0',
  `domenu` tinyint(1) NOT NULL DEFAULT '0',
  `dopubvar` tinyint(1) NOT NULL DEFAULT '0',
  `doclassf` tinyint(1) NOT NULL DEFAULT '0',
  `doztf` tinyint(1) NOT NULL DEFAULT '0',
  `dofiletable` tinyint(1) NOT NULL DEFAULT '0',
  `docheckinfo` tinyint(1) NOT NULL DEFAULT '0',
  `dogoodinfo` tinyint(1) NOT NULL DEFAULT '0',
  `dodocinfo` tinyint(1) NOT NULL DEFAULT '0',
  `domoveinfo` tinyint(1) NOT NULL DEFAULT '0',
  `dodttemp` tinyint(1) NOT NULL DEFAULT '0',
  `doloadcj` tinyint(1) NOT NULL DEFAULT '0',
  `domustcheck` tinyint(1) NOT NULL DEFAULT '0',
  `docheckedit` tinyint(1) NOT NULL DEFAULT '0',
  `domemberconnect` tinyint(1) NOT NULL DEFAULT '0',
  `doprecode` tinyint(1) NOT NULL DEFAULT '0',
  `domoreport` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`groupid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsgroup
-- ----------------------------
INSERT INTO `phome_enewsgroup` VALUES ('1', '超级管理员', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '1', '1', '1');

-- ----------------------------
-- Table structure for `phome_enewshmsg`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewshmsg`;
CREATE TABLE `phome_enewshmsg` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL DEFAULT '',
  `msgtext` text NOT NULL,
  `haveread` tinyint(1) NOT NULL DEFAULT '0',
  `msgtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `to_username` varchar(30) NOT NULL DEFAULT '',
  `from_userid` int(10) unsigned NOT NULL DEFAULT '0',
  `from_username` varchar(30) NOT NULL DEFAULT '',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0',
  `issys` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mid`),
  KEY `to_username` (`to_username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewshmsg
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewshnotice`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewshnotice`;
CREATE TABLE `phome_enewshnotice` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL DEFAULT '',
  `msgtext` text NOT NULL,
  `haveread` tinyint(1) NOT NULL DEFAULT '0',
  `msgtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `to_username` varchar(30) NOT NULL DEFAULT '',
  `from_userid` int(10) unsigned NOT NULL DEFAULT '0',
  `from_username` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`mid`),
  KEY `to_username` (`to_username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewshnotice
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewshy`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewshy`;
CREATE TABLE `phome_enewshy` (
  `fid` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `cid` int(11) NOT NULL DEFAULT '0',
  `fsay` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`),
  KEY `userid` (`userid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewshy
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewshyclass`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewshyclass`;
CREATE TABLE `phome_enewshyclass` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(30) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewshyclass
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsindexpage`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsindexpage`;
CREATE TABLE `phome_enewsindexpage` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(30) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  PRIMARY KEY (`tempid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsindexpage
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsinfoclass`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsinfoclass`;
CREATE TABLE `phome_enewsinfoclass` (
  `classid` int(11) NOT NULL AUTO_INCREMENT,
  `bclassid` int(11) NOT NULL DEFAULT '0',
  `classname` varchar(100) NOT NULL DEFAULT '',
  `infourl` mediumtext NOT NULL,
  `newsclassid` smallint(6) NOT NULL DEFAULT '0',
  `startday` date NOT NULL DEFAULT '0000-00-00',
  `endday` date NOT NULL DEFAULT '0000-00-00',
  `bz` text NOT NULL,
  `num` smallint(6) NOT NULL DEFAULT '0',
  `copyimg` tinyint(1) NOT NULL DEFAULT '0',
  `renum` smallint(6) NOT NULL DEFAULT '0',
  `keyboard` text NOT NULL,
  `oldword` text NOT NULL,
  `newword` text NOT NULL,
  `titlelen` smallint(6) NOT NULL DEFAULT '0',
  `retitlewriter` tinyint(1) NOT NULL DEFAULT '0',
  `smalltextlen` smallint(6) NOT NULL DEFAULT '0',
  `zz_smallurl` text NOT NULL,
  `zz_newsurl` text NOT NULL,
  `httpurl` varchar(255) NOT NULL DEFAULT '',
  `repad` text NOT NULL,
  `imgurl` varchar(255) NOT NULL DEFAULT '',
  `relistnum` smallint(6) NOT NULL DEFAULT '0',
  `zz_titlepicl` text NOT NULL,
  `z_titlepicl` varchar(255) NOT NULL DEFAULT '',
  `qz_titlepicl` varchar(255) NOT NULL DEFAULT '',
  `save_titlepicl` varchar(10) NOT NULL DEFAULT '',
  `keynum` tinyint(4) NOT NULL DEFAULT '0',
  `insertnum` smallint(6) NOT NULL DEFAULT '0',
  `copyflash` tinyint(1) NOT NULL DEFAULT '0',
  `tid` smallint(6) NOT NULL DEFAULT '0',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `pagetype` tinyint(1) NOT NULL DEFAULT '0',
  `smallpagezz` text NOT NULL,
  `pagezz` text NOT NULL,
  `smallpageallzz` text NOT NULL,
  `pageallzz` text NOT NULL,
  `mark` tinyint(1) NOT NULL DEFAULT '0',
  `enpagecode` tinyint(1) NOT NULL DEFAULT '0',
  `recjtheurl` tinyint(1) NOT NULL DEFAULT '0',
  `hiddenload` tinyint(1) NOT NULL DEFAULT '0',
  `justloadin` tinyint(1) NOT NULL DEFAULT '0',
  `justloadcheck` tinyint(1) NOT NULL DEFAULT '0',
  `delloadinfo` tinyint(1) NOT NULL DEFAULT '0',
  `pagerepad` mediumtext NOT NULL,
  `newsztid` text NOT NULL,
  `getfirstpic` tinyint(4) NOT NULL DEFAULT '0',
  `oldpagerep` text NOT NULL,
  `newpagerep` text NOT NULL,
  `keeptime` smallint(6) NOT NULL DEFAULT '0',
  `lasttime` int(11) NOT NULL DEFAULT '0',
  `newstextisnull` tinyint(1) NOT NULL DEFAULT '0',
  `getfirstspic` tinyint(1) NOT NULL DEFAULT '0',
  `getfirstspicw` smallint(6) NOT NULL DEFAULT '0',
  `getfirstspich` smallint(6) NOT NULL DEFAULT '0',
  `doaddtextpage` tinyint(1) NOT NULL DEFAULT '0',
  `infourlispage` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`classid`),
  KEY `newsclassid` (`newsclassid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsinfoclass
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsinfotype`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsinfotype`;
CREATE TABLE `phome_enewsinfotype` (
  `typeid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tname` varchar(30) NOT NULL DEFAULT '',
  `mid` smallint(6) NOT NULL DEFAULT '0',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `yhid` smallint(6) NOT NULL DEFAULT '0',
  `tnum` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `listtempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tpath` varchar(100) NOT NULL DEFAULT '',
  `ttype` varchar(10) NOT NULL DEFAULT '',
  `maxnum` int(10) unsigned NOT NULL DEFAULT '0',
  `reorder` varchar(50) NOT NULL DEFAULT '',
  `tid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `timg` varchar(200) NOT NULL DEFAULT '',
  `intro` varchar(255) NOT NULL DEFAULT '',
  `pagekey` varchar(255) NOT NULL DEFAULT '',
  `newline` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hotline` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `goodline` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hotplline` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `firstline` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `jstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `nrejs` tinyint(1) NOT NULL DEFAULT '0',
  `listdt` tinyint(1) NOT NULL DEFAULT '0',
  `repagenum` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`typeid`),
  KEY `mid` (`mid`),
  KEY `myorder` (`myorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsinfotype
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsinfovote`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsinfovote`;
CREATE TABLE `phome_enewsinfovote` (
  `pubid` bigint(16) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `votenum` int(10) unsigned NOT NULL DEFAULT '0',
  `voteip` mediumtext NOT NULL,
  `votetext` text NOT NULL,
  `voteclass` tinyint(1) NOT NULL DEFAULT '0',
  `doip` tinyint(1) NOT NULL DEFAULT '0',
  `dotime` date NOT NULL DEFAULT '0000-00-00',
  `tempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `width` int(10) unsigned NOT NULL DEFAULT '0',
  `height` int(10) unsigned NOT NULL DEFAULT '0',
  `diyotherlink` tinyint(1) NOT NULL DEFAULT '0',
  `infouptime` int(10) unsigned NOT NULL DEFAULT '0',
  `infodowntime` int(10) unsigned NOT NULL DEFAULT '0',
  `copyids` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`pubid`),
  KEY `id` (`id`,`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsinfovote
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsjstemp`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsjstemp`;
CREATE TABLE `phome_enewsjstemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(30) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `showdate` varchar(20) NOT NULL DEFAULT '',
  `modid` smallint(6) NOT NULL DEFAULT '0',
  `subnews` smallint(6) NOT NULL DEFAULT '0',
  `subtitle` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsjstemp
-- ----------------------------
INSERT INTO `phome_enewsjstemp` VALUES ('1', '默认js模板', '[!--empirenews.listtemp--]<li><a href=\\\"[!--titleurl--]\\\" title=\\\"[!--oldtitle--]\\\">[!--title--]</a></li>[!--empirenews.listtemp--]', '0', '1', 'm-d', '1', '0', '32');

-- ----------------------------
-- Table structure for `phome_enewsjstempclass`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsjstempclass`;
CREATE TABLE `phome_enewsjstempclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsjstempclass
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewskey`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewskey`;
CREATE TABLE `phome_enewskey` (
  `keyid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `keyname` char(50) NOT NULL DEFAULT '',
  `keyurl` char(200) NOT NULL DEFAULT '',
  `cid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`keyid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewskey
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewskeyclass`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewskeyclass`;
CREATE TABLE `phome_enewskeyclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewskeyclass
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewslink`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewslink`;
CREATE TABLE `phome_enewslink` (
  `lid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `lname` varchar(100) NOT NULL DEFAULT '',
  `lpic` varchar(255) NOT NULL DEFAULT '',
  `lurl` varchar(255) NOT NULL DEFAULT '',
  `ltime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `onclick` int(11) NOT NULL DEFAULT '0',
  `width` varchar(10) NOT NULL DEFAULT '',
  `height` varchar(10) NOT NULL DEFAULT '',
  `target` varchar(10) NOT NULL DEFAULT '',
  `myorder` tinyint(4) NOT NULL DEFAULT '0',
  `email` varchar(60) NOT NULL DEFAULT '',
  `lsay` text NOT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `ltype` smallint(6) NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewslink
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewslinkclass`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewslinkclass`;
CREATE TABLE `phome_enewslinkclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewslinkclass
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewslinktmp`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewslinktmp`;
CREATE TABLE `phome_enewslinktmp` (
  `newsurl` varchar(255) NOT NULL DEFAULT '',
  `checkrnd` varchar(50) NOT NULL DEFAULT '',
  `linkid` bigint(20) NOT NULL AUTO_INCREMENT,
  `titlepic` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`linkid`),
  KEY `checkrnd` (`checkrnd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewslinktmp
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewslisttemp`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewslisttemp`;
CREATE TABLE `phome_enewslisttemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `subnews` smallint(6) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `listvar` text NOT NULL,
  `rownum` smallint(6) NOT NULL DEFAULT '0',
  `modid` smallint(6) NOT NULL DEFAULT '0',
  `showdate` varchar(50) NOT NULL DEFAULT '',
  `subtitle` smallint(6) NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `docode` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewslisttemp
-- ----------------------------
INSERT INTO `phome_enewslisttemp` VALUES ('1', '默认新闻列表模板', '<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n</head>\r\n<body class=\\\"listpage\\\">\r\n[!--temp.header--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n<tr valign=\\\"top\\\">\r\n<td class=\\\"news_list\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td>[!--empirenews.listtemp--]<ul>\r\n<!--list.var1-->\r\n<!--list.var2-->\r\n<!--list.var3-->\r\n<!--list.var4-->\r\n<!--list.var5--></ul>\r\n[!--empirenews.listtemp--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\r\n<tr>\r\n                <td height=\\\"38\\\"><div class=\\\"epages\\\">[!--show.listpage--]</div></td>\r\n</tr>\r\n</table>\r\n</td>\r\n</tr>\r\n</table></td>\r\n<td class=\\\"sider\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title\\\">\r\n<tr>\r\n<td><strong>推荐资讯</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"8\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td>[phomenewspic]\\\'selfinfo\\\',2,4,128,90,1,20,2[/phomenewspic]\r\n</td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n<tr>\r\n<td><strong>最后更新</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><ul>\r\n[ecmsinfo]\\\'selfinfo\\\',10,44,0,0,2,0[/ecmsinfo] \r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n<tr>\r\n<td><strong>热门点击</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><ol class=\\\"rank\\\">\r\n[ecmsinfo]\\\'selfinfo\\\',10,40,0,1,10,0[/ecmsinfo] \r\n</ol></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', '0', '0', '<li><a href=\\\"[!--titleurl--]\\\" title=\\\"[!--oldtitle--]\\\">[!--title--]</a> <span>[!--newstime--]</span></li>', '5', '1', 'Y-m-d', '0', '0', '0');
INSERT INTO `phome_enewslisttemp` VALUES ('9', '整形美容项目', '<!doctype html>\r\n<html>\r\n<head>\r\n<link rel=\\\"shortout icon\\\" href=\\\"http://www.nclaimei.com/skin/laimei2017/images/favicon.ico\\\" />\r\n<meta name=\\\"renderer\\\" content=\\\"webkit\\\"/>\r\n<meta http-equiv=\\\"X-UA-Comabsolutetible\\\" content=\\\"IE=Edge,chrome=1\\\" />\r\n<meta name=\\\"format-detection\\\" content=\\\"telephone=on\\\"/>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>[!--pagetitle--]_南昌莱美美容医院</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedesc--]\\\">\r\n<link href=\\\"/skin/css/zxmrxm.css\\\" rel=\\\"stylesheet\\\"/>\r\n<link href=\\\"/skin/css/reset.css\\\" rel=\\\"stylesheet\\\"/>\r\n<script src=\\\"/skin//js/jquery-1.9.1.min.js\\\"></script>\r\n<script src=\\\"/skin/js/jquery.superslide.2.1.1.source.js\\\"></script>\r\n<script src=\\\"/skin/js/expert.js\\\"></script>\r\n<script src=\\\"/skin/js/indexapp.js\\\"></script>\r\n</head>\r\n<body>\r\n[!--temp.header--]\r\n<!--content pinpaiContent-->\r\n<div class=\\\"pinpaiContent pubW center relative clearfix\\\">\r\n    <div class=\\\"contentRight fr  relative\\\" id=\\\"contentRight\\\">\r\n        <?php\r\n            $cid = $GLOBALS[\\\'navclassid\\\']; \r\n            $classid =$GLOBALS[\\\'navclassid\\\']; \r\n            if( $class_r[$cid][\\\'bclassid\\\'] == 0){\r\n                $fid = $cid;\r\n            }else{\r\n                $fid = $class_r[$cid][\\\'bclassid\\\'];\r\n            }\r\n        ?>\r\n             [e:loop={\\\"select classid,classname,bclassid from [!db.pre!]enewsclass where classid=\\\'$fid\\\'\\\",0,24,0}]\r\n            <?php if( $cid == 1 || $cid == 2 || $cid == 11 ){ ?>\r\n                <div class=\\\"seoNavs absolute fonts\\\"><a href=\\\"<?=$bqr[\\\'classurl\\\']?>\\\"></a><?=$bqr[\\\'classname\\\']?></div>\r\n            <?php } else {   $sql = $empire -> query( \\\"select classname,classpath from {$dbtbpre}enewsclass where   classid ={$cid}\\\" );while( $row = $empire->fetch($sql) ){?>\r\n                <div class=\\\"seoNavs absolute fonts\\\"><a href=\\\"<?=$bqsr[\\\'classurl\\\']?>\\\"><?=$bqr[\\\'classname\\\']?></a> | <?=$row[\\\'classname\\\']?></div>\r\n            <?php }} ?>    \r\n        [/e:loop]\r\n       <div class=\\\"pinpaiWrapper\\\">\r\n        <div class=\\\"content1 clearfix fonts\\\">\r\n      <ul>\r\n    [!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]\r\n      </ul>\r\n      </div>\r\n        <div class=\\\"listpage\\\">[!--show.listpage--]</div>\r\n      <div class=\\\"content4 clearfix fonts\\\">\r\n        <ul>\r\n                    <li><a class=\\\"qiujing\\\" href=\\\"javascript:void(0)\\\" onClick=\\\"openZoosUrl();return false;\\\"\r\n                           target=\\\"_blank\\\"></a>\r\n                        <p>专业提供在线免费咨询服务，快速为您解答整形美容疑问。</p></li>\r\n                    <li><a class=\\\"chengxin\\\" href=\\\"javascript:void(0)\\\" onClick=\\\"openZoosUrl();return false;\\\"\r\n                           target=\\\"_blank\\\"></a>\r\n                        <p>医生免费预约通道，到院无需排队即可享受美丽专属优惠。</p></li>\r\n                    <li><a class=\\\"reqing\\\" href=\\\"http://www.nclaimei.com/gylm/lylx\\\"></a>\r\n                        <p>无论您在本市还是外地，一份详细的交通指南让您轻松到达。</p></li>\r\n                </ul>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>\r\n<!--content pinpaiContent结束-->\r\n[!--temp.footer--]\r\n</body>\r\n</html>', '0', '0', '<li><a href=\\\"[!--titleurl--]\\\" class=\\\"img\\\"  target=\\\"_blank\\\"><img src=\\\"[!--titlepic--]\\\" width=\\\"349\\\" height=\\\"241\\\" alt=\\\"[!--oldtitle--]\\\"></a><a href=\\\"[!--titleurl--]\\\" title=\\\"[!--oldtitle--]\\\" target=\\\"_blank\\\">[!--title--]</a><a href=\\\"[!--titleurl--]\\\" class=\\\"span\\\" target=\\\"_blank\\\"><span>[!--ftitle--]</span></a><div class=\\\"on\\\"><p>[!--smalltext--]</p></div></li>', '1', '1', 'Y-m-d H:i:s', '0', '0', '0');

-- ----------------------------
-- Table structure for `phome_enewslisttempclass`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewslisttempclass`;
CREATE TABLE `phome_enewslisttempclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewslisttempclass
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewslog`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewslog`;
CREATE TABLE `phome_enewslog` (
  `loginid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `logintime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `loginip` varchar(20) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(30) NOT NULL DEFAULT '',
  `loginauth` tinyint(1) NOT NULL DEFAULT '0',
  `ipport` varchar(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`loginid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewslog
-- ----------------------------
INSERT INTO `phome_enewslog` VALUES ('1', 'admin', '2017-09-20 08:40:42', '::1', '1', '', '0', '58141');
INSERT INTO `phome_enewslog` VALUES ('2', 'admin', '2017-09-20 08:40:42', '::1', '1', '', '0', '58157');
INSERT INTO `phome_enewslog` VALUES ('3', 'admin', '2017-09-20 08:40:43', '::1', '1', '', '0', '58160');
INSERT INTO `phome_enewslog` VALUES ('4', 'admin', '2017-09-20 11:00:02', '::1', '1', '', '0', '56397');
INSERT INTO `phome_enewslog` VALUES ('5', 'admin', '2017-09-20 11:11:00', '::1', '1', '', '0', '57644');
INSERT INTO `phome_enewslog` VALUES ('6', 'admin', '2017-09-20 11:24:13', '::1', '1', '', '0', '59638');
INSERT INTO `phome_enewslog` VALUES ('7', 'admin', '2017-09-20 12:26:26', '::1', '1', '', '0', '50004');
INSERT INTO `phome_enewslog` VALUES ('8', 'admin', '2017-09-20 12:30:10', '::1', '1', '', '0', '50653');
INSERT INTO `phome_enewslog` VALUES ('9', 'admin', '2017-09-20 14:53:46', '::1', '1', '', '0', '63249');
INSERT INTO `phome_enewslog` VALUES ('10', 'admin', '2017-09-20 16:24:03', '::1', '1', '', '0', '50645');
INSERT INTO `phome_enewslog` VALUES ('11', 'admin', '2017-09-20 18:03:22', '::1', '1', '', '0', '59168');
INSERT INTO `phome_enewslog` VALUES ('12', 'admin', '2017-09-20 20:00:36', '::1', '1', '', '0', '49796');
INSERT INTO `phome_enewslog` VALUES ('13', 'admin', '2017-09-21 08:27:51', '::1', '1', '', '0', '50748');
INSERT INTO `phome_enewslog` VALUES ('14', 'admin', '2017-09-21 10:12:27', '::1', '1', '', '0', '55093');
INSERT INTO `phome_enewslog` VALUES ('15', 'admin', '2017-09-21 11:04:00', '::1', '1', '', '0', '56898');
INSERT INTO `phome_enewslog` VALUES ('16', 'admin', '2017-09-21 17:39:35', '::1', '1', '', '0', '53453');
INSERT INTO `phome_enewslog` VALUES ('17', 'admin', '2017-09-21 18:14:59', '::1', '1', '', '0', '54661');
INSERT INTO `phome_enewslog` VALUES ('18', 'admin', '2017-09-21 18:45:02', '::1', '1', '', '0', '56582');
INSERT INTO `phome_enewslog` VALUES ('19', 'admin', '2017-09-21 18:45:03', '::1', '1', '', '0', '56602');
INSERT INTO `phome_enewslog` VALUES ('20', 'admin', '2017-09-21 19:03:15', '::1', '1', '', '0', '57396');
INSERT INTO `phome_enewslog` VALUES ('21', 'admin', '2017-09-21 19:06:31', '::1', '1', '', '0', '57637');
INSERT INTO `phome_enewslog` VALUES ('22', 'admin', '2017-09-21 19:28:57', '::1', '1', '', '0', '59792');
INSERT INTO `phome_enewslog` VALUES ('23', 'admin', '2017-09-21 19:36:54', '::1', '1', '', '0', '60697');
INSERT INTO `phome_enewslog` VALUES ('24', 'admin', '2017-09-21 19:39:17', '::1', '1', '', '0', '61287');
INSERT INTO `phome_enewslog` VALUES ('25', 'admin', '2017-09-21 19:43:07', '::1', '1', '', '0', '61824');
INSERT INTO `phome_enewslog` VALUES ('26', 'admin', '2017-09-21 19:52:35', '::1', '1', '', '0', '63282');
INSERT INTO `phome_enewslog` VALUES ('27', 'admin', '2017-09-21 19:58:32', '::1', '1', '', '0', '63870');
INSERT INTO `phome_enewslog` VALUES ('28', 'admin', '2017-09-22 08:32:15', '::1', '1', '', '0', '64847');
INSERT INTO `phome_enewslog` VALUES ('29', 'admin', '2017-09-22 11:25:33', '::1', '1', '', '0', '58239');
INSERT INTO `phome_enewslog` VALUES ('30', 'admin', '2017-09-22 11:32:49', '::1', '1', '', '0', '58462');
INSERT INTO `phome_enewslog` VALUES ('31', 'admin', '2017-09-22 12:12:26', '::1', '1', '', '0', '60079');
INSERT INTO `phome_enewslog` VALUES ('32', 'admin', '2017-09-22 15:37:43', '::1', '1', '', '0', '55012');
INSERT INTO `phome_enewslog` VALUES ('33', 'admin', '2017-09-22 16:02:04', '::1', '1', '', '0', '56817');
INSERT INTO `phome_enewslog` VALUES ('34', 'admin', '2017-09-22 16:24:52', '::1', '1', '', '0', '57846');
INSERT INTO `phome_enewslog` VALUES ('35', 'admin', '2017-09-22 21:10:10', '::1', '1', '', '0', '55818');

-- ----------------------------
-- Table structure for `phome_enewsloginfail`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsloginfail`;
CREATE TABLE `phome_enewsloginfail` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `num` tinyint(4) NOT NULL DEFAULT '0',
  `lasttime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsloginfail
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsmember`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsmember`;
CREATE TABLE `phome_enewsmember` (
  `userid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(20) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `rnd` char(20) NOT NULL DEFAULT '',
  `email` char(50) NOT NULL DEFAULT '',
  `registertime` int(10) unsigned NOT NULL DEFAULT '0',
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userfen` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `userdate` int(10) unsigned NOT NULL DEFAULT '0',
  `money` float(11,2) NOT NULL DEFAULT '0.00',
  `zgroupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `havemsg` tinyint(1) NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `salt` char(8) NOT NULL DEFAULT '',
  `userkey` char(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`),
  KEY `groupid` (`groupid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsmember
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsmemberadd`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsmemberadd`;
CREATE TABLE `phome_enewsmemberadd` (
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `truename` varchar(20) NOT NULL DEFAULT '',
  `oicq` varchar(25) NOT NULL DEFAULT '',
  `msn` varchar(120) NOT NULL DEFAULT '',
  `mycall` varchar(30) NOT NULL DEFAULT '',
  `phone` varchar(30) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zip` varchar(8) NOT NULL DEFAULT '',
  `spacestyleid` smallint(6) NOT NULL DEFAULT '0',
  `homepage` varchar(200) NOT NULL DEFAULT '',
  `saytext` text NOT NULL,
  `company` varchar(255) NOT NULL DEFAULT '',
  `fax` varchar(30) NOT NULL DEFAULT '',
  `userpic` varchar(200) NOT NULL DEFAULT '',
  `spacename` varchar(255) NOT NULL DEFAULT '',
  `spacegg` text NOT NULL,
  `viewstats` int(11) NOT NULL DEFAULT '0',
  `regip` varchar(20) NOT NULL DEFAULT '',
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(20) NOT NULL DEFAULT '',
  `loginnum` int(10) unsigned NOT NULL DEFAULT '0',
  `regipport` varchar(6) NOT NULL DEFAULT '',
  `lastipport` varchar(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsmemberadd
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsmemberf`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsmemberf`;
CREATE TABLE `phome_enewsmemberf` (
  `fid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `f` varchar(30) NOT NULL DEFAULT '',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `fform` varchar(20) NOT NULL DEFAULT '',
  `fhtml` mediumtext NOT NULL,
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `ftype` varchar(30) NOT NULL DEFAULT '',
  `flen` varchar(20) NOT NULL DEFAULT '',
  `fvalue` text NOT NULL,
  `fformsize` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsmemberf
-- ----------------------------
INSERT INTO `phome_enewsmemberf` VALUES ('1', 'truename', '真实姓名', 'text', '\r\n<input name=\"truename\" type=\"text\" id=\"truename\" value=\"<?=$ecmsfirstpost==1?\"\":htmlspecialchars(stripSlashes($addr[truename]))?>\">\r\n', '', '1', 'VARCHAR', '20', '', '');
INSERT INTO `phome_enewsmemberf` VALUES ('2', 'oicq', 'QQ号码', 'text', '<input name=\\\"oicq\\\" type=\\\"text\\\" id=\\\"oicq\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":htmlspecialchars(stripSlashes($addr[oicq]))?>\\\">\r\n', '', '5', 'VARCHAR', '25', '', '');
INSERT INTO `phome_enewsmemberf` VALUES ('3', 'msn', 'MSN', 'text', '<input name=\\\"msn\\\" type=\\\"text\\\" id=\\\"msn\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":htmlspecialchars(stripSlashes($addr[msn]))?>\\\">\r\n', '', '6', 'VARCHAR', '120', '', '');
INSERT INTO `phome_enewsmemberf` VALUES ('4', 'mycall', '联系电话', 'text', '<input name=\\\"mycall\\\" type=\\\"text\\\" id=\\\"mycall\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":htmlspecialchars(stripSlashes($addr[mycall]))?>\\\">\r\n', '', '2', 'VARCHAR', '30', '', '');
INSERT INTO `phome_enewsmemberf` VALUES ('5', 'phone', '手机', 'text', '<input name=\\\"phone\\\" type=\\\"text\\\" id=\\\"phone\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":htmlspecialchars(stripSlashes($addr[phone]))?>\\\">\r\n', '', '4', 'VARCHAR', '30', '', '');
INSERT INTO `phome_enewsmemberf` VALUES ('6', 'address', '联系地址', 'text', '<input name=\\\"address\\\" type=\\\"text\\\" id=\\\"address\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":htmlspecialchars(stripSlashes($addr[address]))?>\\\" size=\\\"50\\\">\r\n', '', '9', 'VARCHAR', '255', '', '');
INSERT INTO `phome_enewsmemberf` VALUES ('7', 'zip', '邮编', 'text', '<input name=\\\"zip\\\" type=\\\"text\\\" id=\\\"zip\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":htmlspecialchars(stripSlashes($addr[zip]))?>\\\" size=\\\"8\\\">\r\n', '', '10', 'VARCHAR', '8', '', '');
INSERT INTO `phome_enewsmemberf` VALUES ('9', 'homepage', '网址', 'text', '\r\n<input name=\"homepage\" type=\"text\" id=\"homepage\" value=\"<?=$ecmsfirstpost==1?\"\":htmlspecialchars(stripSlashes($addr[homepage]))?>\">\r\n', '', '7', 'VARCHAR', '200', '', '');
INSERT INTO `phome_enewsmemberf` VALUES ('10', 'saytext', '简介', 'textarea', '<textarea name=\\\"saytext\\\" cols=\\\"65\\\" rows=\\\"10\\\" id=\\\"saytext\\\"><?=$ecmsfirstpost==1?\\\"\\\":stripSlashes($addr[saytext])?></textarea>\r\n', '', '11', 'TEXT', '', '', '');
INSERT INTO `phome_enewsmemberf` VALUES ('11', 'company', '公司名称', 'text', '<input name=\\\"company\\\" type=\\\"text\\\" id=\\\"company\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":htmlspecialchars(stripSlashes($addr[company]))?>\\\" size=\\\"38\\\">\r\n', '', '0', 'VARCHAR', '255', '', '');
INSERT INTO `phome_enewsmemberf` VALUES ('12', 'fax', '传真', 'text', '\r\n<input name=\"fax\" type=\"text\" id=\"fax\" value=\"<?=$ecmsfirstpost==1?\"\":htmlspecialchars(stripSlashes($addr[fax]))?>\">\r\n', '', '3', 'VARCHAR', '30', '', '');
INSERT INTO `phome_enewsmemberf` VALUES ('13', 'userpic', '会员头像', 'img', '<input type=\\\"file\\\" name=\\\"userpicfile\\\">&nbsp;&nbsp;\r\n<?=empty($addr[userpic])?\\\"\\\":\\\"<img src=\\\'\\\".htmlspecialchars(stripSlashes($addr[userpic])).\\\"\\\' border=0>\\\"?>', '', '8', 'VARCHAR', '200', '', '');

-- ----------------------------
-- Table structure for `phome_enewsmemberfeedback`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsmemberfeedback`;
CREATE TABLE `phome_enewsmemberfeedback` (
  `fid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(12) NOT NULL DEFAULT '',
  `company` varchar(80) NOT NULL DEFAULT '',
  `phone` varchar(30) NOT NULL DEFAULT '',
  `fax` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zip` varchar(8) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `ftext` text NOT NULL,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uname` varchar(20) NOT NULL DEFAULT '',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `eipport` varchar(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsmemberfeedback
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsmemberform`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsmemberform`;
CREATE TABLE `phome_enewsmemberform` (
  `fid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `fname` varchar(60) NOT NULL DEFAULT '',
  `ftemp` mediumtext NOT NULL,
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `enter` text NOT NULL,
  `mustenter` text NOT NULL,
  `filef` varchar(255) NOT NULL DEFAULT '',
  `imgf` varchar(255) NOT NULL DEFAULT '0',
  `tobrf` text NOT NULL,
  `viewenter` text NOT NULL,
  `searchvar` varchar(255) NOT NULL DEFAULT '',
  `canaddf` text NOT NULL,
  `caneditf` text NOT NULL,
  `checkboxf` text NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsmemberform
-- ----------------------------
INSERT INTO `phome_enewsmemberform` VALUES ('1', '个人注册表单', '<table width=\\\'100%\\\' align=\\\'center\\\' cellpadding=3 cellspacing=1 bgcolor=\\\'#DBEAF5\\\'>\r\n<tr><td width=\\\'25%\\\' height=25 bgcolor=\\\'ffffff\\\'>真实姓名</td><td bgcolor=\\\'ffffff\\\'>[!--truename--]</td></tr>\r\n<tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>QQ号码</td><td bgcolor=\\\'ffffff\\\'>[!--oicq--]</td></tr>\r\n<tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>MSN</td><td bgcolor=\\\'ffffff\\\'>[!--msn--]</td></tr>\r\n<tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>联系电话</td><td bgcolor=\\\'ffffff\\\'>[!--mycall--]</td></tr>\r\n<tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>手机</td><td bgcolor=\\\'ffffff\\\'>[!--phone--]</td></tr>\r\n<tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>网站地址</td><td bgcolor=\\\'ffffff\\\'>[!--homepage--]</td></tr>\r\n<tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>会员头像</td><td bgcolor=\\\'ffffff\\\'>[!--userpic--]</td></tr>\r\n<tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>联系地址</td><td bgcolor=\\\'ffffff\\\'>[!--address--]&nbsp;邮编: [!--zip--]</td></tr>\r\n<tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>个人介绍</td><td bgcolor=\\\'ffffff\\\'>[!--saytext--]</td></tr>\r\n</table>', '', '真实姓名<!--field--->truename<!--record-->联系电话<!--field--->mycall<!--record-->手机<!--field--->phone<!--record-->QQ号码<!--field--->oicq<!--record-->MSN<!--field--->msn<!--record-->网站地址<!--field--->homepage<!--record-->会员头像<!--field--->userpic<!--record-->联系地址<!--field--->address<!--record-->邮编<!--field--->zip<!--record-->简介<!--field--->saytext<!--record-->', '', ',', ',userpic,', ',saytext,', '真实姓名<!--field--->truename<!--record-->联系电话<!--field--->mycall<!--record-->手机<!--field--->phone<!--record-->QQ号码<!--field--->oicq<!--record-->MSN<!--field--->msn<!--record-->网站地址<!--field--->homepage<!--record-->会员头像<!--field--->userpic<!--record-->联系地址<!--field--->address<!--record-->邮编<!--field--->zip<!--record-->简介<!--field--->saytext<!--record-->', '', ',truename,mycall,phone,oicq,msn,homepage,userpic,address,zip,saytext,', ',truename,mycall,phone,oicq,msn,homepage,userpic,address,zip,saytext,', ',');
INSERT INTO `phome_enewsmemberform` VALUES ('2', '企员注册表单', '<table width=\\\'100%\\\' align=\\\'center\\\' cellpadding=3 cellspacing=1 bgcolor=\\\'#DBEAF5\\\'><tr><td width=\\\'25%\\\' height=25 bgcolor=\\\'ffffff\\\'>公司名称</td><td bgcolor=\\\'ffffff\\\'>[!--company--](*)</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>联系人</td><td bgcolor=\\\'ffffff\\\'>[!--truename--](*)</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>联系电话</td><td bgcolor=\\\'ffffff\\\'>[!--mycall--](*)</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>传真</td><td bgcolor=\\\'ffffff\\\'>[!--fax--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>手机</td><td bgcolor=\\\'ffffff\\\'>[!--phone--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>QQ号码</td><td bgcolor=\\\'ffffff\\\'>[!--oicq--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>MSN</td><td bgcolor=\\\'ffffff\\\'>[!--msn--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>网址</td><td bgcolor=\\\'ffffff\\\'>[!--homepage--]</td></tr>\r\n<tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>会员头像</td><td bgcolor=\\\'ffffff\\\'>[!--userpic--]</td></tr>\r\n<tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>联系地址</td><td bgcolor=\\\'ffffff\\\'>[!--address--]&nbsp;邮编: [!--zip--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>公司介绍</td><td bgcolor=\\\'ffffff\\\'>[!--saytext--]</td></tr></table>', '', '公司名称<!--field--->company<!--record-->联系人<!--field--->truename<!--record-->联系电话<!--field--->mycall<!--record-->传真<!--field--->fax<!--record-->手机<!--field--->phone<!--record-->QQ号码<!--field--->oicq<!--record-->MSN<!--field--->msn<!--record-->网址<!--field--->homepage<!--record-->会员头像<!--field--->userpic<!--record-->联系地址<!--field--->address<!--record-->邮编<!--field--->zip<!--record-->公司介绍<!--field--->saytext<!--record-->', ',company,truename,mycall,', ',', ',userpic,', ',saytext,', '公司名称<!--field--->company<!--record-->联系人<!--field--->truename<!--record-->联系电话<!--field--->mycall<!--record-->传真<!--field--->fax<!--record-->手机<!--field--->phone<!--record-->QQ号码<!--field--->oicq<!--record-->MSN<!--field--->msn<!--record-->网址<!--field--->homepage<!--record-->会员头像<!--field--->userpic<!--record-->联系地址<!--field--->address<!--record-->邮编<!--field--->zip<!--record-->公司介绍<!--field--->saytext<!--record-->', ',company,', ',company,truename,mycall,fax,phone,oicq,msn,homepage,userpic,address,zip,saytext,', ',company,truename,mycall,fax,phone,oicq,msn,homepage,userpic,address,zip,saytext,', ',');

-- ----------------------------
-- Table structure for `phome_enewsmembergbook`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsmembergbook`;
CREATE TABLE `phome_enewsmembergbook` (
  `gid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `isprivate` tinyint(1) NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uname` varchar(20) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `gbtext` text NOT NULL,
  `retext` text NOT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `eipport` varchar(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`gid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsmembergbook
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsmembergroup`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsmembergroup`;
CREATE TABLE `phome_enewsmembergroup` (
  `groupid` smallint(6) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(60) NOT NULL DEFAULT '',
  `level` smallint(6) NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `favanum` smallint(6) NOT NULL DEFAULT '0',
  `daydown` int(11) NOT NULL DEFAULT '0',
  `msglen` int(11) NOT NULL DEFAULT '0',
  `msgnum` int(11) NOT NULL DEFAULT '0',
  `canreg` tinyint(1) NOT NULL DEFAULT '0',
  `formid` smallint(6) NOT NULL DEFAULT '0',
  `regchecked` tinyint(1) NOT NULL DEFAULT '0',
  `spacestyleid` smallint(6) NOT NULL DEFAULT '0',
  `dayaddinfo` smallint(6) NOT NULL DEFAULT '0',
  `infochecked` tinyint(1) NOT NULL DEFAULT '0',
  `plchecked` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`groupid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsmembergroup
-- ----------------------------
INSERT INTO `phome_enewsmembergroup` VALUES ('1', '普通会员', '1', '0', '120', '0', '255', '50', '1', '1', '0', '1', '0', '0', '0');
INSERT INTO `phome_enewsmembergroup` VALUES ('2', 'VIP会员', '2', '0', '200', '0', '255', '120', '0', '1', '0', '1', '0', '0', '0');
INSERT INTO `phome_enewsmembergroup` VALUES ('3', '企业会员', '1', '0', '120', '0', '255', '50', '1', '2', '0', '2', '0', '0', '0');
INSERT INTO `phome_enewsmembergroup` VALUES ('4', '企业VIP会员', '2', '0', '200', '0', '255', '120', '0', '2', '0', '2', '0', '0', '0');

-- ----------------------------
-- Table structure for `phome_enewsmemberpub`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsmemberpub`;
CREATE TABLE `phome_enewsmemberpub` (
  `userid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `todayinfodate` char(10) NOT NULL DEFAULT '',
  `todayaddinfo` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `todaydate` char(10) NOT NULL DEFAULT '',
  `todaydown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authstr` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsmemberpub
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsmember_connect`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsmember_connect`;
CREATE TABLE `phome_enewsmember_connect` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `apptype` char(20) NOT NULL DEFAULT '',
  `bindkey` char(32) NOT NULL DEFAULT '',
  `bindtime` int(10) unsigned NOT NULL DEFAULT '0',
  `loginnum` int(10) unsigned NOT NULL DEFAULT '0',
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `bindkey` (`bindkey`),
  KEY `apptype` (`apptype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsmember_connect
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsmember_connect_app`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsmember_connect_app`;
CREATE TABLE `phome_enewsmember_connect_app` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `apptype` char(20) NOT NULL DEFAULT '',
  `appname` char(30) NOT NULL DEFAULT '',
  `appid` char(60) NOT NULL DEFAULT '',
  `appkey` char(120) NOT NULL DEFAULT '',
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `qappname` char(30) NOT NULL DEFAULT '',
  `appsay` char(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `apptype` (`apptype`),
  KEY `isclose` (`isclose`),
  KEY `myorder` (`myorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsmember_connect_app
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsmenu`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsmenu`;
CREATE TABLE `phome_enewsmenu` (
  `menuid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menuname` varchar(60) NOT NULL DEFAULT '',
  `menuurl` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addhash` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`menuid`),
  KEY `myorder` (`myorder`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsmenu
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsmenuclass`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsmenuclass`;
CREATE TABLE `phome_enewsmenuclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(60) NOT NULL DEFAULT '',
  `issys` tinyint(1) NOT NULL DEFAULT '0',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `classtype` tinyint(1) NOT NULL DEFAULT '0',
  `groupids` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`),
  KEY `myorder` (`myorder`),
  KEY `classtype` (`classtype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsmenuclass
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsmod`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsmod`;
CREATE TABLE `phome_enewsmod` (
  `mid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `mname` varchar(100) NOT NULL DEFAULT '',
  `mtemp` mediumtext NOT NULL,
  `mzs` varchar(255) NOT NULL DEFAULT '',
  `cj` mediumtext NOT NULL,
  `enter` mediumtext NOT NULL,
  `tempvar` mediumtext NOT NULL,
  `sonclass` text NOT NULL,
  `searchvar` varchar(255) NOT NULL DEFAULT '',
  `tid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `qenter` mediumtext NOT NULL,
  `mustqenterf` text NOT NULL,
  `qmtemp` mediumtext NOT NULL,
  `listandf` text NOT NULL,
  `setandf` tinyint(1) NOT NULL DEFAULT '0',
  `listtempvar` mediumtext NOT NULL,
  `qmname` varchar(30) NOT NULL DEFAULT '',
  `canaddf` text NOT NULL,
  `caneditf` text NOT NULL,
  `definfovoteid` smallint(6) NOT NULL DEFAULT '0',
  `showmod` tinyint(1) NOT NULL DEFAULT '0',
  `usemod` tinyint(1) NOT NULL DEFAULT '0',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `orderf` text NOT NULL,
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `listfile` varchar(30) NOT NULL DEFAULT '',
  `printtempid` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mid`),
  KEY `tid` (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsmod
-- ----------------------------
INSERT INTO `phome_enewsmod` VALUES ('1', '新闻系统模型', '<table width=\\\'100%\\\' align=center cellpadding=3 cellspacing=1 class=\\\"tableborder\\\"><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>标题(*)</td><td bgcolor=\\\'ffffff\\\'>[!--title--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>副标题</td><td bgcolor=\\\'ffffff\\\'>[!--ftitle--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>特殊属性</td><td bgcolor=\\\'ffffff\\\'>[!--special.field--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>发布时间</td><td bgcolor=\\\'ffffff\\\'>[!--newstime--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>标题图片</td><td bgcolor=\\\'ffffff\\\'>[!--titlepic--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>内容简介</td><td bgcolor=\\\'ffffff\\\'>[!--smalltext--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>作者</td><td bgcolor=\\\'ffffff\\\'>[!--writer--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>信息来源</td><td bgcolor=\\\'ffffff\\\'>[!--befrom--]</td></tr><tr><td height=25 colspan=2 bgcolor=\\\'ffffff\\\'><div align=left>新闻正文(*)</div></td></tr></table><div style=\\\"background-color:#D0D0D0\\\">[!--newstext--]</div>', '新闻系统模型', '标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->发布时间<!--field--->newstime<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->作者<!--field--->writer<!--record-->信息来源<!--field--->befrom<!--record-->新闻正文<!--field--->newstext<!--record-->', '标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->特殊属性<!--field--->special.field<!--record-->发布时间<!--field--->newstime<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->作者<!--field--->writer<!--record-->信息来源<!--field--->befrom<!--record-->新闻正文<!--field--->newstext<!--record-->', '标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->发布时间<!--field--->newstime<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->作者<!--field--->writer<!--record-->信息来源<!--field--->befrom<!--record-->新闻正文<!--field--->newstext<!--record-->顶<!--field--->diggtop<!--record-->', '|1|9|11|23|13|22|21|20|24|25|26|27|28|29|30|31|32|33|34|35|36|37|38|39|40|41|42|43|44|45|47|48|49|50|51|52|53|55|56|57|58|60|61|62|', ',title,smalltext,', '1', 'news', '标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->特殊属性<!--field--->special.field<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->作者<!--field--->writer<!--record-->信息来源<!--field--->befrom<!--record-->新闻正文<!--field--->newstext<!--record-->', ',title,newstext,', '<table width=100% align=center cellpadding=3 cellspacing=1 class=\\\"tableborder\\\"><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>标题(*)</td><td bgcolor=\\\'ffffff\\\'>[!--title--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>副标题</td><td bgcolor=\\\'ffffff\\\'>[!--ftitle--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>关键字</td><td bgcolor=\\\'ffffff\\\'>[!--special.field--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>标题图片</td><td bgcolor=\\\'ffffff\\\'>[!--titlepic--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>内容简介</td><td bgcolor=\\\'ffffff\\\'>[!--smalltext--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>作者</td><td bgcolor=\\\'ffffff\\\'>[!--writer--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>信息来源</td><td bgcolor=\\\'ffffff\\\'>[!--befrom--]</td></tr><tr><td height=25 colspan=2 bgcolor=\\\'ffffff\\\'><div align=left>新闻正文(*)</div></td></tr></table><div style=\\\"background-color:#D0D0D0\\\">[!--newstext--]</div>', '', '0', '标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->发布时间<!--field--->newstime<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->顶<!--field--->diggtop<!--record-->', '新闻', ',title,ftitle,newstime,titlepic,smalltext,writer,befrom,newstext,', ',title,ftitle,newstime,titlepic,smalltext,writer,befrom,newstext,', '0', '0', '0', '0', '', '1', '', '0');

-- ----------------------------
-- Table structure for `phome_enewsmoreport`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsmoreport`;
CREATE TABLE `phome_enewsmoreport` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` char(60) NOT NULL DEFAULT '',
  `purl` char(255) NOT NULL DEFAULT '',
  `ppath` char(255) NOT NULL DEFAULT '',
  `postpass` char(120) NOT NULL DEFAULT '',
  `postfile` char(255) NOT NULL DEFAULT '',
  `tempgid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mustdt` tinyint(1) NOT NULL DEFAULT '0',
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `closeadd` tinyint(1) NOT NULL DEFAULT '0',
  `headersign` char(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`),
  KEY `isclose` (`isclose`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsmoreport
-- ----------------------------
INSERT INTO `phome_enewsmoreport` VALUES ('1', '主访问端', '', '', '', '', '0', '0', '0', '0', '');

-- ----------------------------
-- Table structure for `phome_enewsnewstemp`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsnewstemp`;
CREATE TABLE `phome_enewsnewstemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `temptext` mediumtext NOT NULL,
  `showdate` varchar(50) NOT NULL DEFAULT '',
  `modid` smallint(6) NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsnewstemp
-- ----------------------------
INSERT INTO `phome_enewsnewstemp` VALUES ('1', '默认新闻内容模板', '0', '<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]e/data/js/ajax.js\\\"></script>\r\n</head>\r\n<body class=\\\"showpage news\\\">\r\n[!--temp.header--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n<tr valign=\\\"top\\\">\r\n<td class=\\\"main\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" class=\\\"title_info\\\">\r\n<tr>\r\n<td><h1>[!--title--]</h1></td>\r\n</tr>\r\n<tr>\r\n<td class=\\\"info_text\\\">时间：[!--newstime--]&nbsp;&nbsp;来源：[!--befrom--]&nbsp;&nbsp;作者：[!--writer--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\r\n<tr>\r\n<td id=\\\"text\\\">[!--newstext--]\r\n<p align=\\\"center\\\" class=\\\"pageLink\\\">[!--page.url--]</p></td>\r\n</tr>\r\n</table>\r\n<table border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"0\\\" cellspacing=\\\"8\\\">\r\n<tr>\r\n<td><table border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" class=\\\"digg\\\">\r\n<tr>\r\n<td class=\\\"diggnum\\\" id=\\\"diggnum\\\"><strong><script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]e/public/ViewClick/?classid=[!--classid--]&id=[!--id--]&down=5\\\"></script></strong></td>\r\n</tr>\r\n<tr>\r\n<td class=\\\"diggit\\\"><a href=\\\"JavaScript:makeRequest(\\\'[!--news.url--]e/public/digg/?classid=[!--classid--]&id=[!--id--]&dotop=1&doajax=1&ajaxarea=diggnum\\\',\\\'EchoReturnedText\\\',\\\'GET\\\',\\\'\\\');\\\">来顶一下</a></td>\r\n</tr>\r\n</table></td>\r\n<td><table border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" class=\\\"digg\\\">\r\n<tr>\r\n<td valign=\\\"middle\\\" class=\\\"diggnum\\\"><strong><a href=\\\"[!--news.url--]\\\"><img src=\\\"[!--news.url--]skin/default/images/back.gif\\\" alt=\\\"返回首页\\\" width=\\\"12\\\" height=\\\"13\\\" border=\\\"0\\\" align=\\\"absmiddle\\\" /></a></strong></td>\r\n</tr>\r\n<tr>\r\n<td class=\\\"diggit\\\"><a href=\\\"[!--news.url--]\\\">返回首页</a></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n          </td>\r\n</tr>\r\n</table>\r\n[!--temp.pl--]\r\n</td>\r\n<td class=\\\"sider\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title\\\">\r\n<tr>\r\n<td><strong>推荐资讯</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"8\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td>[phomenewspic]\\\'news\\\',2,4,128,90,1,20,20[/phomenewspic]\r\n</td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n<tr>\r\n<td><strong>相关文章</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><ul>\r\n[!--other.link--]\r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n<tr>\r\n<td><strong>栏目更新</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><ul>\r\n              <script src=\'[!--news.url--]d/js/class/class[!--self.classid--]_newnews.js\'></script></ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n<tr>\r\n<td><strong>栏目热门</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><ul>\r\n              <script src=\'[!--news.url--]d/js/class/class[!--self.classid--]_hotnews.js\'></script></ul></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n[!--page.stats--]\r\n</body>\r\n</html>', 'Y-m-d H:i:s', '1', '0');
INSERT INTO `phome_enewsnewstemp` VALUES ('2', '默认下载内容模板', '0', '<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\\"Keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n</head>\r\n<body class=\\\"showpage\\\">\r\n[!--temp.header--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n	<tr valign=\\\"top\\\">\r\n		<td class=\\\"main\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n				<tr>\r\n					<td>您当前的位置：[!--newsnav--]</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n				<tr>\r\n					<td><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"3\\\" cellspacing=\\\"2\\\" bgcolor=\\\"#FFFFFF\\\">\r\n							<tbody>\r\n								<tr>\r\n									<td width=\\\"78\\\" align=\\\"center\\\" nowrap=\\\"nowrap\\\" bgcolor=\\\"#E1EFFB\\\"><b>软件名称：</b></td>\r\n									<td colspan=\\\"2\\\" bgcolor=\\\"#E1EFFB\\\"><b>[!--title--]</b></td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\\"center\\\"><strong>文件类型：</strong></td>\r\n									<td width=\\\"296\\\">[!--filetype--]</td>\r\n									<td width=\\\"180\\\" rowspan=\\\"9\\\" align=\\\"center\\\"><a href=\\\"[!--titlepic--]\\\" target=\\\"_blank\\\"><img src=\\\"[!--titlepic--]\\\" border=\\\"0\\\" width=\\\"128\\\" /></a></td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\\"center\\\" bgcolor=\\\"#F4F9FD\\\"><strong>界面语言：</strong></td>\r\n									<td bgcolor=\\\"#F4F9FD\\\">[!--language--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\\"center\\\"><strong>软件类型：</strong></td>\r\n									<td>[!--softtype--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\\"center\\\" bgcolor=\\\"#F4F9FD\\\"><strong>运行环境：</strong></td>\r\n									<td bgcolor=\\\"#F4F9FD\\\">[!--softfj--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\\"center\\\"><strong>授权方式：</strong></td>\r\n									<td>[!--softsq--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\\"center\\\" bgcolor=\\\"#F4F9FD\\\"><strong>软件大小：</strong></td>\r\n									<td bgcolor=\\\"#F4F9FD\\\">[!--filesize--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\\"center\\\"><strong>软件等级：</strong></td>\r\n									<td><img src=\\\"[!--news.url--]e/data/images/[!--star--]star.gif\\\" border=\\\"0\\\" /></td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\\"center\\\" bgcolor=\\\"#F4F9FD\\\"><strong>软件登陆：</strong></td>\r\n									<td bgcolor=\\\"#F4F9FD\\\">[!--username--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\\"center\\\"><strong>作 者 ：</strong></td>\r\n									<td>[!--softwriter--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\\"center\\\" bgcolor=\\\"#F4F9FD\\\"><strong>官方网址：</strong></td>\r\n									<td colspan=\\\"2\\\" bgcolor=\\\"#F4F9FD\\\"><a href=\\\'[!--homepage--]\\\' target=\\\"_blank\\\">官方站</a></td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\\"center\\\"><strong>程序演示：</strong></td>\r\n									<td colspan=\\\"2\\\"><a href=\\\'[!--demo--]\\\' target=\\\"_blank\\\">演示</a></td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\\"center\\\" bgcolor=\\\"#F4F9FD\\\"><strong>整理时间：</strong></td>\r\n									<td colspan=\\\"2\\\" bgcolor=\\\"#F4F9FD\\\">[!--newstime--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\\"center\\\"><strong>软件简介：</strong></td>\r\n									<td \r\n            colspan=\\\"2\\\"> [!--softsay--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td width=\\\"78\\\" align=\\\"center\\\" nowrap=\\\"nowrap\\\" bgcolor=\\\"#F4F9FD\\\"><b><font color=\\\"#008E00\\\">下载地址：</font></b></td>\r\n									<td colspan=\\\"2\\\" bgcolor=\\\"#F4F9FD\\\"> [!--downpath--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\\"center\\\" nowrap=\\\"nowrap\\\"><strong>下载帮助：</strong></td>\r\n									<td colspan=\\\"2\\\"><img src=\\\"[!--news.url--]e/data/images/gonggao.gif\\\" border=\\\"0\\\" /><a href=\\\"[!--news.url--]e/pl/?classid=[!--classid--]&amp;id=[!--id--]\\\">发表评论</a> <img src=\\\"[!--news.url--]e/data/images/gonggao.gif\\\" border=\\\"0\\\" /><a href=\\\"[!--news.url--]e/member/fava/add/?classid=[!--classid--]&amp;id=[!--id--]\\\">加入收藏夹</a> <img src=\\\"[!--news.url--]e/data/images/gonggao.gif\\\" border=\\\"0\\\" /><a href=\\\"[!--news.url--]e/public/report/?classid=[!--classid--]&amp;id=[!--id--]\\\" target=\\\"_blank\\\">错误报告</a></td>\r\n								</tr>\r\n								<tr>\r\n									<td width=\\\"78\\\" align=\\\"center\\\" valign=\\\"top\\\" nowrap=\\\"nowrap\\\" bgcolor=\\\"#F4F9FD\\\"><b><font color=\\\"#008E0\\\">相关软件：</font></b></td>\r\n									<td colspan=\\\"2\\\" bgcolor=\\\"#F4F9FD\\\">[!--other.link--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\\"center\\\" valign=\\\"center\\\" nowrap=\\\"nowrap\\\"><strong>下载说明：</strong></td>\r\n									<td colspan=\\\"2\\\">⊙推荐使用网际快车下载本站软件，使用 WinRAR v3.10 以上版本解压本站软件。<br />\r\n										⊙如果这个软件总是不能下载的请点击报告错误,谢谢合作!!<br />\r\n										⊙下载本站资源，如果服务器暂不能下载请过一段时间重试！<br />\r\n										⊙如果遇到什么问题，请到<a href=\\\"http://www.phome.net\\\" target=\\\"_blank\\\">本站论坛</a>去咨寻，我们将在那里提供更多\r\n										、更好的资源！<br />\r\n										⊙本站提供的一些商业软件是供学习研究之用，如用于商业用途，请购买正版。 </td>\r\n								</tr>\r\n							</tbody>\r\n						</table>\r\n						</td>\r\n				</tr>\r\n			</table>\r\n			[!--temp.pl--]</td>\r\n		<td class=\\\"sider\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title\\\">\r\n				<tr>\r\n					<td><strong>推荐下载</strong></td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n				<tr>\r\n					<td><ul>\r\n              <script src=\'[!--news.url--]d/js/class/class[!--self.classid--]_goodnews.js\'></script></ul></td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n				<tr>\r\n					<td><strong>最后更新</strong></td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n				<tr>\r\n					<td><ul>\r\n              <script src=\'[!--news.url--]d/js/class/class[!--self.classid--]_newnews.js\'></script></ul></td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n				<tr>\r\n					<td><strong>热门点击</strong></td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n				<tr>\r\n					<td><ul>\r\n              <script src=\'[!--news.url--]d/js/class/class[!--self.classid--]_hotnews.js\'></script></ul></td>\r\n				</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--] [!--page.stats--]\r\n</body>\r\n</html>', 'Y-m-d', '2', '0');
INSERT INTO `phome_enewsnewstemp` VALUES ('3', '默认图片内容模板(单图片)', '0', '<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\\"Keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n</head>\r\n<body class=\\\"showpage\\\">\r\n[!--temp.header--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n	<tr valign=\\\"top\\\">\r\n		<td class=\\\"main\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n				<tr>\r\n					<td>您当前的位置：[!--newsnav--]</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n				<tr>\r\n					<td>\r\n						<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"4\\\" cellspacing=\\\"1\\\" bgcolor=\\\"#FFFFFF\\\">\r\n							<tr>\r\n								<td bgcolor=\\\"#E1EFFB\\\">&nbsp;&nbsp;<strong>[!--title--]</strong></td>\r\n							</tr>\r\n							<tr>\r\n								<td><table width=\\\"0\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\r\n										<tr>\r\n											<td width=\\\"25\\\"><img src=\\\"[!--news.url--]e/data/images/mod/center_1.gif\\\" width=\\\"25\\\" height=\\\"24\\\" /></td>\r\n											<td background=\\\"[!--news.url--]e/data/images/mod/box_1.gif\\\">&nbsp;</td>\r\n											<td width=\\\"25\\\"><img src=\\\"[!--news.url--]e/data/images/mod/center_2.gif\\\" width=\\\"25\\\" height=\\\"24\\\" /></td>\r\n										</tr>\r\n										<tr>\r\n											<td background=\\\"[!--news.url--]e/data/images/mod/box_4.gif\\\">&nbsp;</td>\r\n											<td bgcolor=\\\"#F3F3F3\\\"><a href=\\\"[!--news.url--]e/ViewImg/index.html?url=[!--picurl--]\\\" target=\\\"_blank\\\"><img border=\\\"0\\\" src=\\\"[!--picurl--]\\\" class=\\\"photoresize\\\" /></a></td>\r\n											<td background=\\\"[!--news.url--]e/data/images/mod/box_2.gif\\\">&nbsp;</td>\r\n										</tr>\r\n										<tr>\r\n											<td><img src=\\\"[!--news.url--]e/data/images/mod/center_3.gif\\\" width=\\\"25\\\" height=\\\"24\\\" /></td>\r\n											<td background=\\\"[!--news.url--]e/data/images/mod/box_3.gif\\\">&nbsp;</td>\r\n											<td><img src=\\\"[!--news.url--]e/data/images/mod/center_4.gif\\\" width=\\\"25\\\" height=\\\"24\\\" /></td>\r\n										</tr>\r\n								</table></td>\r\n							</tr>\r\n							<tr>\r\n								<td><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"4\\\" cellspacing=\\\"1\\\">\r\n										<tr>\r\n											<td colspan=\\\"2\\\" bgcolor=\\\"#F4F9FD\\\">&nbsp;&nbsp;<strong>图片资料</strong></td>\r\n										</tr>\r\n										<tr>\r\n											<td width=\\\"80\\\">图片名称：</td>\r\n											<td width=\\\"462\\\"> [!--title--]</td>\r\n										</tr>\r\n										<tr>\r\n											<td bgcolor=\\\"#F8F8F8\\\">人气：</td>\r\n											<td bgcolor=\\\"#F8F8F8\\\"> [!--onclick--]</td>\r\n										</tr>\r\n										<tr>\r\n											<td>图片尺寸：</td>\r\n											<td> [!--picsize--]</td>\r\n										</tr>\r\n										<tr>\r\n											<td bgcolor=\\\"#F8F8F8\\\">图片大小：</td>\r\n											<td bgcolor=\\\"#F8F8F8\\\"> [!--filesize--]</td>\r\n										</tr>\r\n										<tr>\r\n											<td>编辑：</td>\r\n											<td> [!--username--]</td>\r\n										</tr>\r\n										<tr>\r\n											<td bgcolor=\\\"#F8F8F8\\\">创建日期：</td>\r\n											<td bgcolor=\\\"#F8F8F8\\\"> [!--newstime--]</td>\r\n										</tr>\r\n										<tr>\r\n											<td valign=\\\"top\\\">简介：</td>\r\n											<td valign=\\\"top\\\">[!--picsay--]</td>\r\n										</tr>\r\n								</table></td>\r\n							</tr>\r\n												</table>						</td>\r\n				</tr>\r\n			</table>\r\n			[!--temp.pl--]</td>\r\n		<td class=\\\"sider\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title\\\">\r\n				<tr>\r\n					<td><strong>图片推荐</strong></td>\r\n				</tr>\r\n			</table>\r\n				<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"8\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n					<tr>\r\n						<td>[phomenewspic]\\\'selfinfo\\\',2,4,128,90,1,20,2[/phomenewspic] </td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n					<tr>\r\n						<td><strong>最后更新</strong></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n					<tr>\r\n						<td><ul>\r\n              <script src=\'[!--news.url--]d/js/class/class[!--self.classid--]_newnews.js\'></script> </ul></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n					<tr>\r\n						<td><strong>热门点击</strong></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n					<tr>\r\n						<td><ul>\r\n              <script src=\'[!--news.url--]d/js/class/class[!--self.classid--]_hotnews.js\'></script></ul></td>\r\n					</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--] [!--page.stats--]\r\n</body>\r\n</html>', 'Y-m-d H:i:s', '3', '0');
INSERT INTO `phome_enewsnewstemp` VALUES ('4', '默认图片内容模板(图片集)', '0', '<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\\"Keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n</head>\r\n<body class=\\\"showpage\\\">\r\n[!--temp.header--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n	<tr valign=\\\"top\\\">\r\n		<td class=\\\"main\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n				<tr>\r\n					<td>您当前的位置：[!--newsnav--]</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n				<tr>\r\n					<td><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"4\\\" cellspacing=\\\"1\\\" bgcolor=\\\"#FFFFFF\\\">\r\n						<tr>\r\n							<td align=\\\"center\\\" bgcolor=\\\"#E1EFFB\\\"><strong>[!--title--]</strong></td>\r\n						</tr>\r\n						<tr>\r\n							<td align=\\\"center\\\">[eshowphoto]11,0,0[/eshowphoto]</td>\r\n						</tr>\r\n						<tr>\r\n							<td>&nbsp;</td>\r\n						</tr>\r\n					</table></td>\r\n				</tr>\r\n			</table>\r\n			[!--temp.pl--]</td>\r\n		<td class=\\\"sider\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title\\\">\r\n				<tr>\r\n					<td><strong>图片推荐</strong></td>\r\n				</tr>\r\n			</table>\r\n				<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"8\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n					<tr>\r\n						<td>[phomenewspic]\\\'selfinfo\\\',2,4,128,90,1,20,2[/phomenewspic] </td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n					<tr>\r\n						<td><strong>最后更新</strong></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n					<tr>\r\n						<td><ul>\r\n              <script src=\'[!--news.url--]d/js/class/class[!--self.classid--]_newnews.js\'></script> </ul></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n					<tr>\r\n						<td><strong>热门点击</strong></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n					<tr>\r\n						<td><ul>\r\n              <script src=\'[!--news.url--]d/js/class/class[!--self.classid--]_hotnews.js\'></script></ul></td>\r\n					</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--] [!--page.stats--]\r\n</body>\r\n</html>', 'Y-m-d H:i:s', '3', '0');
INSERT INTO `phome_enewsnewstemp` VALUES ('5', '默认FLASH内容模板', '0', '<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\\"Keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n</head>\r\n<body class=\\\"showpage news\\\">\r\n[!--temp.header--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n	<tr valign=\\\"top\\\">\r\n		<td class=\\\"main\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n				<tr>\r\n					<td>您当前的位置：[!--newsnav--]</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n				<tr>\r\n					<td><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" class=\\\"title_info\\\">\r\n							<tr>\r\n								<td><h1>[!--title--]</h1></td>\r\n							</tr>\r\n							<tr>\r\n								<td class=\\\"info_text\\\">时间：[!--newstime--]&nbsp;&nbsp;作者：[!--flashwriter--]&nbsp;&nbsp;大小：[!--filesize--]</td>\r\n							</tr>\r\n						</table>\r\n						<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\r\n							<tr>\r\n								<td id=\\\"text\\\"><p align=\\\"center\\\">\r\n										<object classid=\\\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\\\" codebase=\\\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0\\\" name=\\\"top10movie\\\" width=\\\"[!--width--]\\\" height=\\\"[!--height--]\\\" id=\\\"top10movie\\\">\r\n											<param name=\\\"movie\\\" value=\\\"[!--flashurl--]\\\" />\r\n											<param name=\\\"quality\\\" value=\\\"high\\\" />\r\n											<param name=\\\"menu\\\" value=\\\"false\\\" />\r\n											<embed src=\\\"[!--flashurl--]\\\" width=\\\"[!--width--]\\\" height=\\\"[!--height--]\\\" quality=\\\"high\\\" pluginspage=\\\"http://www.macromedia.com/go/getflashplayer\\\" type=\\\"application/x-shockwave-flash\\\" id=\\\"top10movie\\\" name=\\\"top10movie\\\" menu=\\\"false\\\"></embed>\r\n										</object>\r\n									</p>\r\n									<p><strong>作品简介：</strong>[!--flashsay--]</p></td>\r\n							</tr>\r\n						</table></td>\r\n				</tr>\r\n			</table>\r\n			[!--temp.pl--]</td>\r\n		<td class=\\\"sider\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title\\\">\r\n				<tr>\r\n					<td><strong>推荐下载</strong></td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"8\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n				<tr>\r\n					<td>[phomenewspic]\\\'selfinfo\\\',2,4,128,90,1,20,2[/phomenewspic] </td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n				<tr>\r\n					<td><strong>最后更新</strong></td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n				<tr>\r\n					<td><ul>\r\n              <script src=\'[!--news.url--]d/js/class/class[!--self.classid--]_newnews.js\'></script></ul></td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n				<tr>\r\n					<td><strong>热门点击</strong></td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n				<tr>\r\n					<td><ul>\r\n              <script src=\'[!--news.url--]d/js/class/class[!--self.classid--]_hotnews.js\'></script></ul></td>\r\n				</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--] [!--page.stats--]\r\n</body>\r\n</html>', 'Y-m-d H:i:s', '4', '0');
INSERT INTO `phome_enewsnewstemp` VALUES ('6', '默认电影内容模板', '0', '<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\\"Keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n</head>\r\n<body class=\\\"showpage\\\">\r\n[!--temp.header--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n	<tr valign=\\\"top\\\">\r\n		<td class=\\\"main\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n				<tr>\r\n					<td>您当前的位置：[!--newsnav--]</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n				<tr>\r\n					<td><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"3\\\" cellspacing=\\\"2\\\">\r\n						<tr>\r\n							<td width=\\\"16%\\\"><div align=\\\"center\\\">[影片名称]</div></td>\r\n							<td width=\\\"45%\\\"><strong>[!--title--]</strong></td>\r\n							<td width=\\\"39%\\\" rowspan=\\\"10\\\" align=\\\"center\\\" valign=\\\"top\\\" bgcolor=\\\"#F4F9FD\\\" class=\\\"photo\\\"><a href=\\\"[!--titlepic--]\\\" title=\\\"查看原图\\\" target=\\\"_blank\\\"><img src=\\\"[!--titlepic--]\\\" width=\\\"205\\\" height=\\\"278\\\" border=\\\"0\\\" align=\\\"top\\\" /></a></td>\r\n						</tr>\r\n						<tr>\r\n							<td bgcolor=\\\"#F4F9FD\\\"><div align=\\\"center\\\">[领衔主演]</div></td>\r\n							<td bgcolor=\\\"#F4F9FD\\\">[!--player--]</td>\r\n						</tr>\r\n						<tr>\r\n							<td><div align=\\\"center\\\">[影片类型]</div></td>\r\n							<td>[!--movietype--]</td>\r\n						</tr>\r\n						<tr>\r\n							<td bgcolor=\\\"#F4F9FD\\\"><div align=\\\"center\\\">[带宽要求]</div></td>\r\n							<td bgcolor=\\\"#F4F9FD\\\">[!--playdk--]</td>\r\n						</tr>\r\n						<tr>\r\n							<td><div align=\\\"center\\\">\r\n									<p>[影片长度]</p>\r\n							</div></td>\r\n							<td>[!--playtime--]</td>\r\n						</tr>\r\n						<tr>\r\n							<td bgcolor=\\\"#F4F9FD\\\"><div align=\\\"center\\\">[文件大小]</div></td>\r\n							<td bgcolor=\\\"#F4F9FD\\\">[!--filesize--]</td>\r\n						</tr>\r\n						<tr>\r\n							<td><div align=\\\"center\\\">[推荐级别]</div></td>\r\n							<td><img src=\\\"[!--news.url--]e/data/images/[!--star--]star.gif\\\" border=\\\"0\\\" /></td>\r\n						</tr>\r\n						<tr>\r\n							<td bgcolor=\\\"#F4F9FD\\\"><div align=\\\"center\\\">[上传时间]</div></td>\r\n							<td bgcolor=\\\"#F4F9FD\\\">[!--movietime--]</td>\r\n						</tr>\r\n						<tr>\r\n							<td><div align=\\\"center\\\">[下载次数]</div></td>\r\n							<td><script src=\\\"[!--news.url--]e/public/ViewClick/?classid=[!--classid--]&amp;id=[!--id--]&amp;down=1\\\"></script></td>\r\n						</tr>\r\n						<tr>\r\n							<td bgcolor=\\\"#F4F9FD\\\"><div align=\\\"center\\\">[文件格式]</div></td>\r\n							<td bgcolor=\\\"#F4F9FD\\\">[!--filetype--]</td>\r\n						</tr>\r\n						<tr>\r\n							<td><div align=\\\"center\\\">[在线观看]</div></td>\r\n							<td colspan=\\\"2\\\">[!--onlinepath--]</td>\r\n						</tr>\r\n						<tr>\r\n							<td bgcolor=\\\"#F4F9FD\\\"><div align=\\\"center\\\">[下载影片]</div></td>\r\n							<td colspan=\\\"2\\\" bgcolor=\\\"#F4F9FD\\\">[!--downpath--]</td>\r\n						</tr>\r\n						<tr>\r\n							<td><div align=\\\"center\\\">[下载帮助]</div></td>\r\n							<td colspan=\\\"2\\\"><img src=\\\"[!--news.url--]e/data/images/gonggao.gif\\\" border=\\\"0\\\" /><a href=\\\"[!--news.url--]e/pl/?classid=[!--classid--]&amp;id=[!--id--]\\\">发表评论</a> <img src=\\\"[!--news.url--]e/data/images/gonggao.gif\\\" border=\\\"0\\\" /><a href=\\\"[!--news.url--]e/member/fava/add/?classid=[!--classid--]&amp;id=[!--id--]\\\">加入收藏夹</a> <img src=\\\"[!--news.url--]e/data/images/gonggao.gif\\\" border=\\\"0\\\" /><a href=\\\"[!--news.url--]e/public/report/?classid=[!--classid--]&amp;id=[!--id--]\\\" target=\\\"_blank\\\">错误报告</a></td>\r\n						</tr>\r\n						<tr>\r\n							<td bgcolor=\\\"#F4F9FD\\\"><div align=\\\"center\\\">[影片介绍]</div></td>\r\n							<td colspan=\\\"2\\\" bgcolor=\\\"#F4F9FD\\\">&nbsp;</td>\r\n						</tr>\r\n						<tr>\r\n							<td colspan=\\\"3\\\" valign=\\\"top\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"4\\\" style=\\\"table-layout:  fixed;  word-wrap:  break-word\\\">\r\n									<tr>\r\n										<td>[!--moviesay--]</td>\r\n									</tr>\r\n							</table></td>\r\n						</tr>\r\n					</table></td>\r\n				</tr>\r\n			</table>\r\n			[!--temp.pl--]</td>\r\n		<td class=\\\"sider\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title\\\">\r\n				<tr>\r\n					<td><strong>影视推荐</strong></td>\r\n				</tr>\r\n			</table>\r\n				<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"8\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n					<tr>\r\n						<td>[phomenewspic]\\\'selfinfo\\\',2,4,128,90,1,20,2[/phomenewspic] </td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n					<tr>\r\n						<td><strong>最后更新</strong></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n					<tr>\r\n						<td><ul>\r\n              <script src=\'[!--news.url--]d/js/class/class[!--self.classid--]_newnews.js\'></script></ul></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n					<tr>\r\n						<td><strong>热门点击</strong></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n					<tr>\r\n						<td><ul>\r\n              <script src=\'[!--news.url--]d/js/class/class[!--self.classid--]_hotnews.js\'></script></ul></td>\r\n					</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--] [!--page.stats--]\r\n</body>\r\n</html>', 'Y-m-d', '5', '0');
INSERT INTO `phome_enewsnewstemp` VALUES ('7', '默认商城内容模板', '0', '<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\\"Keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n</head>\r\n<body class=\\\"showpage\\\">\r\n[!--temp.header--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n	<tr valign=\\\"top\\\">\r\n		<td class=\\\"main\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n				<tr>\r\n					<td>您当前的位置：[!--newsnav--]</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n				<tr>\r\n					<td><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"3\\\" cellspacing=\\\"2\\\">\r\n						<tr>\r\n							<td colspan=\\\"2\\\" bgcolor=\\\"#F4F9FD\\\">&nbsp;&nbsp;<strong>商品基本信息</strong></td>\r\n						</tr>\r\n						<tr>\r\n							<td width=\\\"30%\\\" align=\\\"center\\\" class=\\\"titlepic\\\"><a href=\\\"[!--productpic--]\\\" title=\\\"预览大图\\\" target=\\\"_blank\\\"><img height=\\\"128\\\" src=\\\"[!--titlepic--]\\\" width=\\\"128\\\" border=\\\"0\\\" /></a></td>\r\n							<td><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"3\\\" cellspacing=\\\"2\\\">\r\n								<tr>\r\n									<td style=\\\"font-size: 14px;\\\"><strong>商品名称：[!--title--]</strong></td>\r\n								</tr>\r\n								<tr>\r\n									<td>市场价：<span class=\\\"tprice\\\">￥[!--tprice--]</span>&nbsp;优惠价：<span class=\\\"price\\\">￥[!--price--]</span>&nbsp; \r\n										点数: [!--buyfen--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td>商品编号:[!--productno--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td>商品品牌:[!--pbrand--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td>计量单位:[!--unit--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td>商品重量:[!--weight--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td>[<a href=\\\"#ecms\\\" onclick=\\\"window.open(\\\'[!--news.url--]e/ShopSys/doaction.php?enews=AddBuycar&amp;classid=[!--classid--]&amp;id=[!--id--]\\\',\\\'\\\',\\\'width=680,height=500,scrollbars=yes,resizable=yes\\\');\\\">加入购物车</a>]&nbsp;&nbsp;&nbsp;&nbsp;[<a href=\\\"[!--news.url--]e/member/fava/add/?classid=[!--classid--]&amp;id=[!--id--]\\\" target=\\\"_blank\\\">放入收藏夹</a>]&nbsp;&nbsp;&nbsp;&nbsp;[<a href=\\\"[!--news.url--]e/pl/?classid=[!--classid--]&amp;id=[!--id--]\\\" target=\\\"_blank\\\">查看评论</a>]</td>\r\n								</tr>\r\n							</table></td>\r\n						</tr>\r\n						<tr>\r\n							<td colspan=\\\"2\\\" bgcolor=\\\"#F4F9FD\\\">&nbsp;&nbsp;<strong>商品介绍</strong></td>\r\n						</tr>\r\n						<tr>\r\n							<td colspan=\\\"2\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"8\\\">\r\n									<tr>\r\n										<td id=\\\"text\\\">[!--newstext--]</td>\r\n									</tr>\r\n							</table></td>\r\n						</tr>\r\n					</table></td>\r\n				</tr>\r\n			</table>\r\n			[!--temp.pl--]</td>\r\n		<td class=\\\"sider\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title\\\">\r\n				<tr>\r\n					<td><strong>商品推荐</strong></td>\r\n				</tr>\r\n			</table>\r\n				<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"8\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n					<tr>\r\n						<td>[phomenewspic]\\\'selfinfo\\\',2,4,128,90,1,20,2[/phomenewspic] </td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n					<tr>\r\n						<td><strong>最后更新</strong></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n					<tr>\r\n						<td><ul>\r\n              <script src=\'[!--news.url--]d/js/class/class[!--self.classid--]_newnews.js\'></script></ul></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n					<tr>\r\n						<td><strong>热门点击</strong></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n					<tr>\r\n						<td><ul>\r\n              <script src=\'[!--news.url--]d/js/class/class[!--self.classid--]_hotnews.js\'></script></ul></td>\r\n					</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--] [!--page.stats--]\r\n</body>\r\n</html>', 'Y-m-d', '6', '0');
INSERT INTO `phome_enewsnewstemp` VALUES ('8', '默认文章内容模板', '0', '<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]e/data/js/ajax.js\\\"></script>\r\n</head>\r\n<body class=\\\"showpage news\\\">\r\n[!--temp.header--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n<tr valign=\\\"top\\\">\r\n<td class=\\\"main\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" class=\\\"title_info\\\">\r\n<tr>\r\n<td><h1>[!--title--]</h1></td>\r\n</tr>\r\n<tr>\r\n<td class=\\\"info_text\\\">时间：[!--newstime--]&nbsp;&nbsp;来源：[!--befrom--]&nbsp;&nbsp;作者：[!--writer--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\r\n<tr>\r\n<td id=\\\"text\\\">[!--newstext--]\r\n<p align=\\\"center\\\" class=\\\"pageLink\\\">[!--page.url--]</p></td>\r\n</tr>\r\n</table>\r\n<table border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"0\\\" cellspacing=\\\"8\\\">\r\n<tr>\r\n<td><table border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" class=\\\"digg\\\">\r\n<tr>\r\n<td class=\\\"diggnum\\\" id=\\\"diggnum\\\"><strong><script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]e/public/ViewClick/?classid=[!--classid--]&id=[!--id--]&down=5\\\"></script></strong></td>\r\n</tr>\r\n<tr>\r\n<td class=\\\"diggit\\\"><a href=\\\"JavaScript:makeRequest(\\\'[!--news.url--]e/public/digg/?classid=[!--classid--]&id=[!--id--]&dotop=1&doajax=1&ajaxarea=diggnum\\\',\\\'EchoReturnedText\\\',\\\'GET\\\',\\\'\\\');\\\">来顶一下</a></td>\r\n</tr>\r\n</table></td>\r\n<td><table border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" class=\\\"digg\\\">\r\n<tr>\r\n<td valign=\\\"middle\\\" class=\\\"diggnum\\\"><strong><a href=\\\"[!--news.url--]\\\"><img src=\\\"[!--news.url--]skin/default/images/back.gif\\\" alt=\\\"返回首页\\\" width=\\\"12\\\" height=\\\"13\\\" border=\\\"0\\\" align=\\\"absmiddle\\\" /></a></strong></td>\r\n</tr>\r\n<tr>\r\n<td class=\\\"diggit\\\"><a href=\\\"[!--news.url--]\\\">返回首页</a></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n</td>\r\n</tr>\r\n</table>\r\n[!--temp.pl--]\r\n</td>\r\n<td class=\\\"sider\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title\\\">\r\n<tr>\r\n<td><strong>推荐资讯</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"8\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n          <td>[phomenewspic]\\\'article\\\',2,4,128,90,1,20,20[/phomenewspic] </td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n<tr>\r\n<td><strong>相关文章</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><ul>\r\n[!--other.link--]\r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n<tr>\r\n<td><strong>栏目更新</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><ul>\r\n              <script src=\'[!--news.url--]d/js/class/class[!--self.classid--]_newnews.js\'></script></ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n<tr>\r\n<td><strong>栏目热门</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><ul>\r\n              <script src=\'[!--news.url--]d/js/class/class[!--self.classid--]_hotnews.js\'></script></ul></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n[!--page.stats--]\r\n</body>\r\n</html>', 'Y-m-d H:i:s', '7', '0');
INSERT INTO `phome_enewsnewstemp` VALUES ('9', '默认分类信息内容模板', '0', '<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\\"Keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n</head>\r\n<body class=\\\"showpage info\\\">\r\n[!--temp.header--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n	<tr valign=\\\"top\\\">\r\n		<td class=\\\"main\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n				<tr>\r\n					<td>您当前的位置：[!--newsnav--]</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n				<tr>\r\n					<td><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" class=\\\"title_info\\\">\r\n							<tr>\r\n								<td colspan=\\\"2\\\"><h1>[!--title--]</h1></td>\r\n							</tr>\r\n							<tr>\r\n								<td class=\\\"info_text\\\">所在地区：<a href=\\\"[!--news.url--]e/action/ListInfo.php?classid=[!--classid--]&amp;ph=1&amp;myarea=[!--myarea--]\\\">[!--myarea--]</a>&nbsp;&nbsp;</td>\r\n								<td align=\\\"right\\\" class=\\\"info_text\\\">时间：[!--newstime--]&nbsp;&nbsp;【<a \r\nhref=\\\"[!--news.url--]e/member/fava/add/?classid=[!--classid--]&amp;id=[!--id--]\\\">加入收藏夹</a>】【<a href=\\\"[!--news.url--]e/public/report/?classid=[!--classid--]&amp;id=[!--id--]\\\" target=\\\"_blank\\\">举报</a>】【<a href=\\\"javascript:window.close()\\\">关闭</a>】</td>\r\n							</tr>\r\n						</table>\r\n						<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\r\n							<tr>\r\n								<td id=\\\"text\\\"><p><a href=\\\"[!--titlepic--]\\\" title=\\\"点击查看原图\\\" target=\\\"_blank\\\"><img src=\\\"[!--titlepic--]\\\" hspace=\\\"6\\\" border=\\\"0\\\" align=\\\"left\\\" /></a>[!--smalltext--]</p></td>\r\n							</tr>\r\n						</table>\r\n						<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"4\\\" cellspacing=\\\"0\\\" bgcolor=\\\"#FFFFFF\\\">\r\n							<tr>\r\n								<td bgcolor=\\\"#F4F9FD\\\">&nbsp;&nbsp;<strong>联系方式</strong></td>\r\n							</tr>\r\n						</table>\r\n						<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\" bgcolor=\\\"#F4F9FD\\\">\r\n							<tr>\r\n								<td width=\\\"13%\\\" bgcolor=\\\"#FFFFFF\\\"><div align=\\\"right\\\">发 布 者：</div></td>\r\n								\r\n                <td width=\\\"88%\\\" bgcolor=\\\"#FFFFFF\\\">[!--linkusername--]&nbsp;(<a href=\\\"[!--news.url--]e/member/msg/AddMsg/?enews=AddMsg&amp;re=1&amp;username=[!--username--]\\\" target=\\\"_blank\\\">发送站内信息</a>)</td>\r\n							</tr>\r\n							<tr>\r\n								<td bgcolor=\\\"#FFFFFF\\\"><div align=\\\"right\\\">联系邮箱：</div></td>\r\n								<td bgcolor=\\\"#FFFFFF\\\"><a href=\\\"mailto:[!--email--]\\\">[!--email--]</a></td>\r\n							</tr>\r\n							<tr>\r\n								<td bgcolor=\\\"#FFFFFF\\\"><div align=\\\"right\\\">联系方式：</div></td>\r\n								<td bgcolor=\\\"#FFFFFF\\\">[!--mycontact--]</td>\r\n							</tr>\r\n							<tr>\r\n								<td bgcolor=\\\"#FFFFFF\\\"><div align=\\\"right\\\">联系地址：</div></td>\r\n								<td bgcolor=\\\"#FFFFFF\\\">[!--address--]</td>\r\n							</tr>\r\n						</table>\r\n						<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"4\\\" cellspacing=\\\"1\\\" bgcolor=\\\"#FFFFFF\\\">\r\n							<tr>\r\n								<td>&nbsp;</td>\r\n							</tr>\r\n							<tr>\r\n								<td bgcolor=\\\"#F8F8F8\\\">&nbsp;&nbsp;<strong>推荐给朋友</strong></td>\r\n							</tr>\r\n							<tr>\r\n								<td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\r\n										<tr>\r\n											<td width=\\\"2%\\\">&nbsp;</td>\r\n											<td><script>\r\nfunction sendtof(url)\r\n{\r\nwindow.clipboardData.setData(\\\'Text\\\',url);\r\nalert(\\\'复制地址成功，粘贴给你好友一起分享。\\\');\r\n}\r\n  			</script>\r\n												<input name=\\\"textfield\\\" type=\\\"text\\\" value=\\\"http://域名[!--titleurl--]\\\" size=\\\"60\\\" onclick=\\\"sendtof(this.value);\\\" /></td>\r\n										</tr>\r\n									</table></td>\r\n							</tr>\r\n						</table>\r\n						\r\n          </td>\r\n				</tr>\r\n			</table>\r\n			[!--temp.pl--]</td>\r\n		<td class=\\\"sider\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title\\\">\r\n				<tr>\r\n					<td><strong>地区导航</strong></td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n				<tr>\r\n					<td>[!--temp.infoarea--]</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n				<tr>\r\n					<td><strong>分类导航</strong></td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n				<tr>\r\n					<td>[!--temp.infoclassnav--]</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n				<tr>\r\n					<td><strong>推荐信息</strong></td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n				<tr>\r\n					<td><ul>\r\n							<script src=\'[!--news.url--]d/js/class/class[!--self.classid--]_goodnews.js\'></script>\r\n						</ul></td>\r\n				</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--] [!--page.stats--]\r\n</body>\r\n</html>', 'Y年m月d日 H:i:s', '8', '0');

-- ----------------------------
-- Table structure for `phome_enewsnewstempclass`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsnewstempclass`;
CREATE TABLE `phome_enewsnewstempclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsnewstempclass
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsnotcj`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsnotcj`;
CREATE TABLE `phome_enewsnotcj` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `word` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsnotcj
-- ----------------------------
INSERT INTO `phome_enewsnotcj` VALUES ('1', '<input type=hidden value=\'欢迎使用帝国网站管理系统：www.phome.net\'>');
INSERT INTO `phome_enewsnotcj` VALUES ('2', '<phome 帝国网站管理系统,phome.net>');
INSERT INTO `phome_enewsnotcj` VALUES ('3', '<!--帝国CMS,phome.net-->');
INSERT INTO `phome_enewsnotcj` VALUES ('4', '<table style=display:none><tr><td>\r\nEmpire CMS,phome.net\r\n</td></tr></table>');
INSERT INTO `phome_enewsnotcj` VALUES ('5', '<div style=display:none>\r\n拥有帝国一切，皆有可能。欢迎访问phome.net\r\n</div>');

-- ----------------------------
-- Table structure for `phome_enewsnotice`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsnotice`;
CREATE TABLE `phome_enewsnotice` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL DEFAULT '',
  `msgtext` text NOT NULL,
  `haveread` tinyint(1) NOT NULL DEFAULT '0',
  `msgtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `to_username` varchar(30) NOT NULL DEFAULT '',
  `from_userid` int(10) unsigned NOT NULL DEFAULT '0',
  `from_username` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`mid`),
  KEY `to_username` (`to_username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsnotice
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewspage`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewspage`;
CREATE TABLE `phome_enewspage` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL DEFAULT '',
  `pagetext` mediumtext NOT NULL,
  `path` varchar(255) NOT NULL DEFAULT '',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pagetitle` varchar(120) NOT NULL DEFAULT '',
  `pagekeywords` varchar(255) NOT NULL DEFAULT '',
  `pagedescription` varchar(255) NOT NULL DEFAULT '',
  `tempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewspage
-- ----------------------------
INSERT INTO `phome_enewspage` VALUES ('1', '多维美雕隆鼻', '<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>多维美雕隆鼻-南昌莱美美容整形医院</title>\r\n<meta name=\\\"keywords\\\" content=\\\"南昌莱美整形专家团队,南昌莱美美容医院专家,莱美国际医师部\\\" />\r\n<meta name=\\\"description\\\" content=\\\"南昌整形美容医院,南昌莱美美容医院汇集国内外一流整形专家团队,全力打造最美的你.\\\" />\r\n<link href=\\\"/skin/css/reset.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script src=\\\"/skin/js/jquery-1.9.1.min.js\\\"></script>\r\n<script src=\\\"/skin/js/jquery.superslide.2.1.1.source.js\\\"></script>\r\n<script src=\\\"/skin/js/indexapp.js\\\"></script>\r\n<script type=\\\"text/javascript\\\" src=\\\"/skin/js/roll.js\\\"></script>\r\n<link href=\\\"/skin/css/bizi.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<body>\r\n<!-- header start -->\r\n[!--temp.head--]\r\n<!-- content start-->\r\n<div class=\\\"dw_banner\\\"><a href=\\\"javascript:void(0)\\\" onclick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\"></a></div>\r\n<div class=\\\"dw_abouts\\\"><img src=\\\"/skin/picture/meb_04.jpg\\\" /></div>\r\n<div class=\\\"dw_about\\\">\r\n  <img src=\\\"/skin/picture/meb_08.jpg\\\" />\r\n    <img src=\\\"/skin/picture/meb_09.jpg\\\" />\r\n    <img src=\\\"/skin/picture/meb_10.jpg\\\" />\r\n    <img src=\\\"/skin/picture/meb_11.jpg\\\" />\r\n</div>\r\n<a href=\\\"javascript:void(0)\\\" onclick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\">\r\n<div class=\\\"dw_abouts\\\"><img src=\\\"/skin/picture/meb_15.jpg\\\" /></div></a>\r\n<div class=\\\"dw_abouts\\\"><img src=\\\"/skin/picture/meb_19.jpg\\\" /></div>\r\n<div class=\\\"dw_abouts\\\"><img src=\\\"/skin/picture/meb_22.jpg\\\" width=\\\"100%\\\" /></div>\r\n<div class=\\\"dw_abouts\\\"><img src=\\\"/skin/picture/meb_25.jpg\\\" /></div>\r\n<div class=\\\"dw_yous\\\">\r\n  <div class=\\\"dw_yuw\\\">\r\n      <img src=\\\"/skin/picture/meb_02.jpg\\\" />\r\n        <img src=\\\"/skin/picture/meb_03.jpg\\\" />\r\n        <img src=\\\"/skin/picture/meb_05.jpg\\\" />\r\n        <img src=\\\"/skin/picture/meb_07.jpg\\\" />\r\n    </div>\r\n    <div class=\\\"dw_drel\\\">手术示意图</div>\r\n    <div class=\\\"dw_syt\\\">\r\n      <img src=\\\"/skin/picture/meb_29.jpg\\\" />\r\n        <img src=\\\"/skin/picture/meb_30.jpg\\\" />\r\n        <img src=\\\"/skin/picture/meb_32.jpg\\\" />\r\n        <img src=\\\"/skin/picture/meb_34.jpg\\\" />\r\n        <img src=\\\"/skin/picture/meb_33.jpg\\\" />\r\n    </div>\r\n</div>\r\n<div class=\\\"dw_abouts\\\"><img src=\\\"/skin/picture/meb_31.jpg\\\" /></div>\r\n<div style=\\\" margin-left:auto; margin-right:auto; clear:both; width:1000px;\\\">\r\n  <table width=\\\"1000\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"10\\\" cellspacing=\\\"1\\\" bgcolor=\\\"#ddd\\\">\r\n  <tr style=\\\"  font-size:24px; color:#9c3232; text-align:center; line-height:30px;\\\">\r\n    <td bgcolor=\\\"#FFFFFF\\\" style=\\\" font-size:24px; font-weight:bold;\\\">多维美雕隆鼻</td>\r\n    <td bgcolor=\\\"#FFFFFF\\\" style=\\\" width:150px; font-size:24px; font-weight:bold;\\\">VS</td>\r\n    <td bgcolor=\\\"#FFFFFF\\\" style=\\\" font-size:24px; font-weight:bold;\\\">传统隆鼻</td>\r\n  </tr>\r\n  <tr style=\\\" font-size:24px; line-height:30px;\\\">\r\n    <td bgcolor=\\\"#FFFFFF\\\" style=\\\" text-indent:30px;\\\">根据医学美容解剖学、艺术学、个人气质、从每个角度为求美者设计出**的鼻型，全面提升个人的气质。</td>\r\n    <td bgcolor=\\\"#FFFFFF\\\" style=\\\" text-align:center;font-size:24px;font-weight:bold; color:#9c3232;\\\">设计方案</td>\r\n    <td bgcolor=\\\"#FFFFFF\\\" style=\\\" text-indent:30px;\\\">以正面鼻背作为出发点，迁就假体，从不考虑侧面和抬头位的形态。</td>\r\n  </tr>\r\n  <tr style=\\\" font-size:24px; line-height:30px;\\\">\r\n    <td bgcolor=\\\"#FFFFFF\\\" style=\\\" text-indent:30px;\\\">依据黄金分割美学理念，将假体或自体组织分段进行手术，保证正面、侧面以及鼻孔的完美形态。</td>\r\n    <td bgcolor=\\\"#FFFFFF\\\" style=\\\" text-align:center; font-size:24px;font-weight:bold;color:#9c3232;\\\">手术方式</td>\r\n    <td bgcolor=\\\"#FFFFFF\\\" style=\\\" text-indent:30px;\\\">大动干戈，创伤较大，伤口出血较大。</td>\r\n  </tr>\r\n  <tr style=\\\" font-size:24px; line-height:30px;\\\">\r\n    <td bgcolor=\\\"#FFFFFF\\\" style=\\\" text-indent:30px;\\\">采用的是精品硅胶、膨体材料、自体软骨组织 注射等多种隆鼻方式</td>\r\n    <td bgcolor=\\\"#FFFFFF\\\" style=\\\" text-align:center;font-size:24px;font-weight:bold; color:#9c3232;\\\">选择材料</td>\r\n    <td bgcolor=\\\"#FFFFFF\\\" style=\\\" text-indent:30px;\\\">以假体为卖点，整个鼻根、鼻背、鼻尖都以假体支撑，初级的整形方式使大多数人出现术后问题</td>\r\n  </tr>\r\n  <tr style=\\\" font-size:24px; line-height:30px;\\\">\r\n    <td bgcolor=\\\"#FFFFFF\\\" style=\\\" text-indent:30px;\\\">立体感强，“鼻部整形、全脸设计”达到 五官自然、和谐、美观的效果</td>\r\n    <td bgcolor=\\\"#FFFFFF\\\" style=\\\" text-align:center;font-size:24px; font-weight:bold;color:#9c3232;\\\">术后效果</td>\r\n    <td bgcolor=\\\"#FFFFFF\\\" style=\\\" text-indent:30px;\\\">单纯鼻部垫高，忽视与脸型整体的协调性，假体容易顶出、透光，使鼻部显得僵硬不自然。</td>\r\n  </tr>\r\n</table>\r\n</div>\r\n<div class=\\\"dw_abouts\\\"><img src=\\\"/skin/picture/meb_35.jpg\\\" /></div>\r\n<div class=\\\"dw_dj\\\">\r\n  <div class=\\\"dw_djcl\\\">\r\n      <div class=\\\"dw_diimg\\\"><img src=\\\"/skin/picture/meb_39.jpg\\\" /></div>\r\n        <div class=\\\"dw_djxk\\\">\r\n          <div class=\\\"dw_djw\\\">国际品质固体硅胶</div>\r\n            <div class=\\\"dw_xxk\\\">\r\n              <div class=\\\"dw_djwe\\\">优势特点</div>\r\n                <p>固体硅胶的优点是价格低、重量轻、易雕刻、有一定可塑性，可高温消毒，且植入人体后性质稳定</p>\r\n            </div>\r\n            <a href=\\\"javascript:void(0)\\\" onclick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\"><div class=\\\"dw_xxwj\\\">详细问价</div></a>\r\n            <a href=\\\"javascript:void(0)\\\" onclick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\"><div class=\\\"dw_djzx\\\">点击咨询</div></a>\r\n        </div>\r\n    </div>\r\n  <hr style=\\\"height:1px;border:none;border-top:1px solid #000; width:100%; float:left;\\\" />\r\n    <div class=\\\"dw_djcl\\\">\r\n      <div class=\\\"dw_diimg\\\"><img src=\\\"/skin/picture/meb_43.jpg\\\" /></div>\r\n        <div class=\\\"dw_djxk\\\">\r\n          <div class=\\\"dw_djw\\\">顶级仿生膨体材料</div>\r\n            <div class=\\\"dw_xxk\\\">\r\n              <div class=\\\"dw_djwe\\\">优势特点</div>\r\n                <p>仿生膨体材料植入人体后可以与人体融为一体，可塑性强，材料异常柔软，术后效果自然，不透光，手感真实。</p>\r\n            </div>\r\n            <a href=\\\"javascript:void(0)\\\" onclick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\"><div class=\\\"dw_xxwj\\\">详细问价</div></a>\r\n            <a href=\\\"javascript:void(0)\\\" onclick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\"><div class=\\\"dw_djzx\\\">点击咨询</div></a>\r\n        </div>\r\n    </div>\r\n  <hr style=\\\"height:1px;border:none;border-top:1px solid #000; width:100%; float:left;\\\" />\r\n    <div class=\\\"dw_djcl\\\">\r\n      <div class=\\\"dw_diimg\\\"><img src=\\\"/skin/picture/meb_46.jpg\\\" /></div>\r\n        <div class=\\\"dw_djxk\\\">\r\n          <div class=\\\"dw_djw\\\">瑞蓝2号</div>\r\n            <div class=\\\"dw_xxk\\\">\r\n              <div class=\\\"dw_djwe\\\">优势特点</div>\r\n                <p>透明质酸为人体真皮组织成份之一，在隆鼻等微整形手术中非常热门，安全、快速、有效，被视为\\\"午休美容\\\"。</p>\r\n            </div>\r\n            <a href=\\\"javascript:void(0)\\\" onclick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\"><div class=\\\"dw_xxwj\\\">详细问价</div></a>\r\n            <a href=\\\"javascript:void(0)\\\" onclick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\"><div class=\\\"dw_djzx\\\">点击咨询</div></a>\r\n        </div>\r\n    </div>\r\n  <hr style=\\\"height:1px;border:none;border-top:1px solid #000; width:100%; float:left;\\\" />\r\n    <div class=\\\"dw_djcl\\\">\r\n      <div class=\\\"dw_diimg\\\"><img src=\\\"/skin/picture/meb_48.jpg\\\" /></div>\r\n        <div class=\\\"dw_djxk\\\">\r\n          <div class=\\\"dw_djw\\\">伊维兰</div>\r\n            <div class=\\\"dw_xxk\\\">\r\n              <div class=\\\"dw_djwe\\\">优势特点</div>\r\n                <p>是一种新的填充隆鼻方法，伊维兰隆鼻与玻尿酸隆鼻有着异曲同工的功效，伊维兰持续的时间会更长一些。</p>\r\n            </div>\r\n            <a href=\\\"javascript:void(0)\\\" onclick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\"><div class=\\\"dw_xxwj\\\">详细问价</div></a>\r\n            <a href=\\\"javascript:void(0)\\\" onclick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\"><div class=\\\"dw_djzx\\\">点击咨询</div></a>\r\n        </div>\r\n    </div>\r\n  <hr style=\\\"height:1px;border:none;border-top:1px solid #000; width:100%; float:left;\\\" />\r\n</div>\r\n<div class=\\\"dw_abouts\\\"><a href=\\\"javascript:void(0)\\\" onClick=\\\"openZoosUrl();\\\" target=\\\"_blank\\\"><img src=\\\"/skin/picture/meb_51.jpg\\\" /></a></div>\r\n<div class=\\\"dw_abouts\\\"><img src=\\\"/skin/picture/meb_55.jpg\\\" /></div>\r\n<div class=\\\"dw_about\\\">\r\n  <img src=\\\"/skin/picture/meb_58.jpg\\\" />\r\n    <img src=\\\"/skin/picture/meb_59.jpg\\\" />\r\n    <img src=\\\"/skin/picture/meb_62.jpg\\\" />\r\n    <img src=\\\"/skin/picture/meb_63.jpg\\\" />\r\n</div>\r\n<script language=\\\"javascript\\\" type=\\\"text/javascript\\\" src=\\\"js/efb7ec7cdb7a4faeb75d0ee3197a7a4f.js\\\"></script>\r\n<!-- end content -->\r\n\r\n[!--temp.footer--]\r\n</body>\r\n</html>', '../../s/Rhinoplastyc/index.html', '0', '多维美雕隆鼻', '多维美雕隆鼻', '多维美雕隆鼻', '0');

-- ----------------------------
-- Table structure for `phome_enewspageclass`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewspageclass`;
CREATE TABLE `phome_enewspageclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewspageclass
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewspagetemp`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewspagetemp`;
CREATE TABLE `phome_enewspagetemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(30) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  PRIMARY KEY (`tempid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewspagetemp
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewspayapi`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewspayapi`;
CREATE TABLE `phome_enewspayapi` (
  `payid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `paytype` varchar(20) NOT NULL DEFAULT '',
  `myorder` tinyint(4) NOT NULL DEFAULT '0',
  `payfee` varchar(10) NOT NULL DEFAULT '',
  `payuser` varchar(60) NOT NULL DEFAULT '',
  `partner` varchar(60) NOT NULL DEFAULT '',
  `paykey` varchar(120) NOT NULL DEFAULT '',
  `paylogo` varchar(200) NOT NULL DEFAULT '',
  `paysay` text NOT NULL,
  `payname` varchar(120) NOT NULL DEFAULT '',
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `payemail` varchar(120) NOT NULL DEFAULT '',
  `paymethod` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`payid`),
  UNIQUE KEY `paytype` (`paytype`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewspayapi
-- ----------------------------
INSERT INTO `phome_enewspayapi` VALUES ('1', 'tenpay', '1', '0', '', '', '', '', '财付通（www.tenpay.com） - 腾讯旗下在线支付平台，通过国家权威安全认证，支持各大银行网上支付。', '财付通', '0', '', '0');
INSERT INTO `phome_enewspayapi` VALUES ('2', 'chinabank', '2', '0', '', '', '', '', '网银在线与中国工商银行、招商银行、中国建设银行、农业银行、民生银行等数十家金融机构达成协议。全面支持全国19家银行的信用卡及借记卡实现网上支付。（网址：http://www.chinabank.com.cn）', '网银在线', '0', '', '0');
INSERT INTO `phome_enewspayapi` VALUES ('3', 'alipay', '0', '0', '', '', '', '', '支付宝网站(www.alipay.com) 是国内先进的网上支付平台。', '支付宝接口', '0', '', '1');

-- ----------------------------
-- Table structure for `phome_enewspayrecord`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewspayrecord`;
CREATE TABLE `phome_enewspayrecord` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `orderid` varchar(50) NOT NULL DEFAULT '',
  `money` varchar(20) NOT NULL DEFAULT '',
  `posttime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `paybz` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(12) NOT NULL DEFAULT '',
  `payip` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`,`orderid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewspayrecord
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewspic`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewspic`;
CREATE TABLE `phome_enewspic` (
  `picid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL DEFAULT '',
  `pic_url` varchar(200) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  `pic_width` varchar(20) NOT NULL DEFAULT '',
  `pic_height` varchar(20) NOT NULL DEFAULT '',
  `open_pic` varchar(20) NOT NULL DEFAULT '',
  `border` tinyint(1) NOT NULL DEFAULT '0',
  `pictext` text NOT NULL,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`picid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewspic
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewspicclass`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewspicclass`;
CREATE TABLE `phome_enewspicclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewspicclass
-- ----------------------------
INSERT INTO `phome_enewspicclass` VALUES ('1', '默认图片信息类别');

-- ----------------------------
-- Table structure for `phome_enewsplayer`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsplayer`;
CREATE TABLE `phome_enewsplayer` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `player` varchar(30) NOT NULL DEFAULT '',
  `filename` varchar(20) NOT NULL DEFAULT '',
  `bz` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsplayer
-- ----------------------------
INSERT INTO `phome_enewsplayer` VALUES ('1', 'RealPlayer', 'realplayer.php', 'RealPlayer播放器');
INSERT INTO `phome_enewsplayer` VALUES ('2', 'MediaPlayer', 'mediaplayer.php', 'MediaPlayer播放器');
INSERT INTO `phome_enewsplayer` VALUES ('3', 'FLASH', 'flasher.php', 'FLASH播放器');
INSERT INTO `phome_enewsplayer` VALUES ('4', 'FLV播放器', 'flver.php', 'FLV播放器');

-- ----------------------------
-- Table structure for `phome_enewsplf`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsplf`;
CREATE TABLE `phome_enewsplf` (
  `fid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `f` varchar(30) NOT NULL DEFAULT '',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `ftype` varchar(30) NOT NULL DEFAULT '',
  `flen` varchar(20) NOT NULL DEFAULT '',
  `ismust` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsplf
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewspltemp`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewspltemp`;
CREATE TABLE `phome_enewspltemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewspltemp
-- ----------------------------
INSERT INTO `phome_enewspltemp` VALUES ('1', '默认评论列表模板', '<!DOCTYPE HTML PUBLIC \\\"-//W3C//DTD HTML 4.01 Transitional//EN\\\">\r\n<html>\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\">\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n<style type=\\\"text/css\\\">\r\n<!--\r\nbody,Table{ color: #222; font-size: 12px; }\r\na { color: #222; text-decoration: none; }\r\na:hover { color: #f00; text-decoration: underline; }\r\nh1 { font-size:32px; font-weight: bold; }\r\nh2 { color: #1e3a9e; font-size: 25px; font-weight: bold;  }\r\n.you { color: #1f3a87; font-size: 14px; }\r\n.text { font-size: 14px; padding-left: 5px; padding-right: 5px; line-height: 20px}\r\n.re a { color: #1f3a87; }\r\n.name { color: #1f3a87; }\r\n.name a { color: #1f3a87; text-decoration: underline;}\r\n.retext { background-color: #f3f3f3; width: 100%; float: left; padding-top: 22px; padding-bottom: 22px; border-top: 1px solid #ccc; }\r\n.retext textarea { width: 535px; height: 130px; float: left; margin-left: 60px; border-top-style: inset; border-top-width: 2px; border-left-style: inset; border-left-width: 2px; }\r\n.hrLine{BORDER-BOTTOM: #807d76 1px dotted;}\r\n\r\n.ecomment {margin:0;padding:0;}\r\n.ecomment {margin-bottom:12px;overflow-x:hidden;overflow-y:hidden;padding-bottom:3px;padding-left:3px;padding-right:3px;padding-top:3px;background:#FFFFEE;padding:3px;border:solid 1px #999;}\r\n.ecommentauthor {float:left; color:#F96; font-weight:bold;}\r\n.ecommenttext {clear:left;margin:0;padding:0;}\r\n-->\r\n</style>\r\n<script src=\\\"[!--news.url--]e/data/js/ajax.js\\\"></script>\r\n</head>\r\n\r\n<body topmargin=\\\"0\\\">\r\n<table width=\\\"766\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\">\r\n  <tr>\r\n    <td width=\\\"210\\\"><a href=\\\"[!--news.url--]\\\"><img src=\\\"[!--news.url--]skin/default/images/logo.gif\\\" border=\\\"0\\\" /></a></td>\r\n    <td><h1>网友评论</h1></td>\r\n    <td><div align=\\\"right\\\"><a href=\\\"#tosaypl\\\"><strong><font color=\\\"#FF0000\\\">我也评两句</font></strong></a></div></td>\r\n  </tr>\r\n</table>\r\n<table width=\\\"766\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\" bgcolor=\\\"#222\\\">\r\n  <tr>\r\n    <td height=\\\"2\\\"></td>\r\n  </tr>\r\n</table>\r\n<table width=\\\"766\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\">\r\n  <tr> \r\n    <td height=\\\"42\\\"> \r\n      <h2>评论：<a href=\\\"[!--titleurl--]\\\" target=\\\"_blank\\\"><font color=\\\"#1e3a9e\\\">[!--title--]</font></a></h2></td>\r\n    <td><div align=\\\"right\\\"><a href=\\\"[!--titleurl--]\\\" target=\\\"_blank\\\">查看原文</a></div></td>\r\n  </tr>\r\n</table>\r\n<hr align=\\\"center\\\" width=\\\"766\\\" size=1 class=hrline>\r\n<table width=\\\"766\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\" bgcolor=\\\"#384EA3\\\">\r\n  <form action=\\\"../enews/index.php\\\" method=\\\"post\\\" name=\\\"infopfenform\\\">\r\n    <input type=\\\"hidden\\\" name=\\\"enews\\\" value=\\\"AddInfoPfen\\\" />\r\n    <input type=\\\"hidden\\\" name=\\\"classid\\\" value=\\\"[!--classid--]\\\" />\r\n    <input type=\\\"hidden\\\" name=\\\"id\\\" value=\\\"[!--id--]\\\" />\r\n    <tr> \r\n      <td width=\\\"50%\\\" height=\\\"27\\\" valign=\\\"middle\\\"><font color=\\\"#FFFFFF\\\">&nbsp;评分: \r\n        <input type=\\\"radio\\\" name=\\\"fen\\\" value=\\\"1\\\">\r\n        1分 \r\n        <input type=\\\"radio\\\" name=\\\"fen\\\" value=\\\"2\\\">\r\n        2分 \r\n        <input name=\\\"fen\\\" type=\\\"radio\\\" value=\\\"3\\\" checked>\r\n        3分 \r\n        <input type=\\\"radio\\\" name=\\\"fen\\\" value=\\\"4\\\">\r\n        4分 \r\n        <input type=\\\"radio\\\" name=\\\"fen\\\" value=\\\"5\\\">\r\n        5分 \r\n        <input type=\\\"submit\\\" name=\\\"Submit\\\" value=\\\"提交\\\">\r\n        </font></td>\r\n      <td width=\\\"50%\\\" valign=\\\"middle\\\"><div align=\\\"center\\\"><font color=\\\"#FFFFFF\\\">平均得分: \r\n          <strong><span id=\\\"pfendiv\\\">[!--pinfopfen--]</span></strong> 分，共有 <strong>[!--infopfennum--]</strong> \r\n          人参与评分</font></div></td>\r\n    </tr>\r\n  </form>\r\n</table>\r\n<table width=\\\"766\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\" bgcolor=\\\"#CCCCCC\\\">\r\n  <tr> \r\n    <td height=\\\"30\\\" bgcolor=\\\"#FFFFFF\\\"> \r\n      <table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td width=\\\"17%\\\">&nbsp;&nbsp;&nbsp;网友评论</td>\r\n          <td width=\\\"83%\\\"><div align=\\\"right\\\">[!--listpage--]&nbsp;&nbsp;&nbsp;</div></td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n  <tr> \r\n    <td bgcolor=\\\"#f8fcff\\\"> [!--empirenews.listtemp--] \r\n      <table width=\\\"96%\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\" style=\\\"word-break:break-all; word-wrap:break-all;\\\">\r\n        <tr> \r\n          <td height=\\\"30\\\"><span class=\\\"name\\\">本站网友 [!--username--]</span> <font color=\\\"#666666\\\">ip:[!--plip--]</font></td>\r\n          <td><div align=\\\"right\\\"><font color=\\\"#666666\\\">[!--pltime--] 发表</font></div></td>\r\n        </tr>\r\n        <tr valign=\\\"top\\\"> \r\n          <td height=\\\"50\\\" colspan=\\\"2\\\" class=\\\"text\\\">[!--pltext--]</td>\r\n        </tr>\r\n        <tr> \r\n          <td height=\\\"30\\\">&nbsp;</td>\r\n          <td><div align=\\\"right\\\" class=\\\"re\\\"><a href=\\\"#tosaypl\\\"[!--includelink--]>回复</a>&nbsp; \r\n              <a href=\\\"JavaScript:makeRequest(\\\'../pl/doaction.php?enews=DoForPl&plid=[!--plid--]&classid=[!--classid--]&id=[!--id--]&dopl=1&doajax=1&ajaxarea=zcpldiv[!--plid--]\\\',\\\'EchoReturnedText\\\',\\\'GET\\\',\\\'\\\');\\\">支持</a>[<span id=\\\"zcpldiv[!--plid--]\\\">[!--zcnum--]</span>]&nbsp; \r\n              <a href=\\\"JavaScript:makeRequest(\\\'../pl/doaction.php?enews=DoForPl&plid=[!--plid--]&classid=[!--classid--]&id=[!--id--]&dopl=0&doajax=1&ajaxarea=fdpldiv[!--plid--]\\\',\\\'EchoReturnedText\\\',\\\'GET\\\',\\\'\\\');\\\">反对</a>[<span id=\\\"fdpldiv[!--plid--]\\\">[!--fdnum--]</span>]\r\n            </div></td>\r\n        </tr>\r\n      </table>\r\n      <table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr>\r\n          <td background=\\\"[!--news.url--]skin/default/images/plhrbg.gif\\\"></td>\r\n        </tr>\r\n      </table>\r\n      [!--empirenews.listtemp--] \r\n      <div align=\\\"right\\\"><br />\r\n        [!--listpage--]&nbsp;&nbsp;&nbsp;<br />\r\n        <br />\r\n        <font color=\\\"#FF0000\\\">网友评论仅供网友表达个人看法，并不表明本站同意其观点或证实其描述&nbsp;&nbsp;&nbsp;</font><br><br> </div></td>\r\n  </tr>\r\n  <script>\r\n  function CheckPl(obj)\r\n  {\r\n  	if(obj.saytext.value==\\\"\\\")\r\n  	{\r\n  		alert(\\\"错误，评论不能为空\\\");\r\n  		obj.saytext.focus();\r\n  		return false;\r\n  	}\r\n  	return true;\r\n  }\r\n  </script>\r\n  <form action=\\\"../pl/doaction.php\\\" method=\\\"post\\\" name=\\\"saypl\\\" id=\\\"saypl\\\" onsubmit=\\\"return CheckPl(document.saypl)\\\">\r\n  <tr id=\\\"tosaypl\\\"> \r\n    <td bgcolor=\\\"#f8fcff\\\"> <table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n            <td width=\\\"13%\\\" height=\\\"28\\\">&nbsp;&nbsp;&nbsp;<span class=\\\"you\\\">我也评两句</span></td>\r\n            <td valign=\\\"middle\\\">用户名： \r\n              <input name=\\\"username\\\" type=\\\"text\\\" id=\\\"username\\\" size=\\\"12\\\" value=\\\"[!--lusername--]\\\" />\r\n            密码： \r\n            <input name=\\\"password\\\" type=\\\"password\\\" id=\\\"password\\\" size=\\\"12\\\" value=\\\"[!--lpassword--]\\\" />\r\n            验证码： \r\n            <input name=\\\"key\\\" type=\\\"text\\\" id=\\\"key\\\" size=\\\"6\\\" />\r\n              <img src=\\\"[!--key.url--]\\\" align=\\\"middle\\\" name=\\\"plKeyImg\\\" id=\\\"plKeyImg\\\" onclick=\\\"plKeyImg.src=\\\'[!--news.url--]e/ShowKey/?v=pl&t=\\\'+Math.random()\\\" title=\\\"看不清楚,点击刷新\\\" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\\\"[!--news.url--]e/member/register/\\\" target=\\\"_blank\\\">还没有注册？</a></td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n  <tr> \r\n    <td bgcolor=\\\"#f8fcff\\\"> <table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" class=\\\"retext\\\">\r\n        <tr> \r\n          <td width=\\\"78%\\\"><div align=\\\"center\\\"> \r\n              <textarea name=\\\"saytext\\\" cols=\\\"58\\\" rows=\\\"6\\\" id=\\\"saytext\\\"></textarea>\r\n            </div></td>\r\n          <td width=\\\"22%\\\" rowspan=\\\"2\\\"> <div align=\\\"center\\\">\r\n              <input name=\\\"nomember\\\" type=\\\"checkbox\\\" id=\\\"nomember\\\" value=\\\"1\\\" checked=\\\"checked\\\" />\r\n                匿名发表<br>\r\n                <br />\r\n              <input name=\\\"imageField\\\" type=\\\"submit\\\" id=\\\"imageField\\\" value=\\\" 提 交 \\\" />\r\n            </div></td>\r\n        </tr>\r\n        <tr> \r\n          <td><div align=\\\"center\\\"> \r\n              <script src=\\\"[!--news.url--]d/js/js/plface.js\\\"></script>\r\n            </div></td>\r\n        </tr>\r\n      </table> </td>\r\n  </tr>\r\n  <input name=\\\"id\\\" type=\\\"hidden\\\" id=\\\"id\\\" value=\\\"[!--id--]\\\" />\r\n  <input name=\\\"classid\\\" type=\\\"hidden\\\" id=\\\"classid\\\" value=\\\"[!--classid--]\\\" />\r\n  <input name=\\\"enews\\\" type=\\\"hidden\\\" id=\\\"enews\\\" value=\\\"AddPl\\\" />\r\n  <input name=\\\"repid\\\" type=\\\"hidden\\\" id=\\\"repid\\\" value=\\\"0\\\" />\r\n  </form>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', '1');

-- ----------------------------
-- Table structure for `phome_enewspl_1`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewspl_1`;
CREATE TABLE `phome_enewspl_1` (
  `plid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pubid` bigint(16) NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `sayip` varchar(20) NOT NULL DEFAULT '',
  `saytime` int(10) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `zcnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fdnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `saytext` text NOT NULL,
  `eipport` varchar(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`plid`),
  KEY `id` (`id`),
  KEY `classid` (`classid`),
  KEY `pubid` (`pubid`,`checked`,`plid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewspl_1
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewspl_set`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewspl_set`;
CREATE TABLE `phome_enewspl_set` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pltime` smallint(5) unsigned NOT NULL DEFAULT '0',
  `plsize` smallint(5) unsigned NOT NULL DEFAULT '0',
  `plincludesize` smallint(5) unsigned NOT NULL DEFAULT '0',
  `plkey_ok` tinyint(1) NOT NULL DEFAULT '0',
  `plface` text NOT NULL,
  `plfacenum` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `plgroupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `plclosewords` text NOT NULL,
  `plf` text NOT NULL,
  `plmustf` text NOT NULL,
  `pldatatbs` text NOT NULL,
  `defpltempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pl_num` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pldeftb` smallint(5) unsigned NOT NULL DEFAULT '0',
  `plurl` varchar(200) NOT NULL DEFAULT '',
  `plmaxfloor` smallint(5) unsigned NOT NULL DEFAULT '0',
  `plquotetemp` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewspl_set
-- ----------------------------
INSERT INTO `phome_enewspl_set` VALUES ('1', '20', '500', '0', '1', '||[~e.jy~]##1.gif||[~e.kq~]##2.gif||[~e.se~]##3.gif||[~e.sq~]##4.gif||[~e.lh~]##5.gif||[~e.ka~]##6.gif||[~e.hh~]##7.gif||[~e.ys~]##8.gif||[~e.ng~]##9.gif||[~e.ot~]##10.gif||', '10', '0', '', '', '', ',1,', '1', '12', '1', '/e/pl/', '0', '<div class=\\\"ecomment\\\">\r\n<span class=\\\"ecommentauthor\\\">网友 [!--username--] 的原文：</span>\r\n<p class=\\\"ecommenttext\\\">[!--pltext--]</p>\r\n</div>');

-- ----------------------------
-- Table structure for `phome_enewspostdata`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewspostdata`;
CREATE TABLE `phome_enewspostdata` (
  `postid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rnd` varchar(32) NOT NULL DEFAULT '',
  `postdata` varchar(255) NOT NULL DEFAULT '',
  `ispath` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`postid`),
  KEY `rnd` (`rnd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewspostdata
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewspostserver`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewspostserver`;
CREATE TABLE `phome_enewspostserver` (
  `pid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `pname` varchar(60) NOT NULL DEFAULT '',
  `purl` varchar(255) NOT NULL DEFAULT '',
  `ptype` tinyint(1) NOT NULL DEFAULT '0',
  `ftphost` varchar(255) NOT NULL DEFAULT '',
  `ftpport` varchar(20) NOT NULL DEFAULT '',
  `ftpusername` varchar(120) NOT NULL DEFAULT '',
  `ftppassword` varchar(120) NOT NULL DEFAULT '',
  `ftppath` varchar(255) NOT NULL DEFAULT '',
  `ftpmode` tinyint(1) NOT NULL DEFAULT '0',
  `ftpssl` tinyint(1) NOT NULL DEFAULT '0',
  `ftppasv` tinyint(1) NOT NULL DEFAULT '0',
  `ftpouttime` smallint(5) unsigned NOT NULL DEFAULT '0',
  `lastposttime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pid`),
  KEY `ptype` (`ptype`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewspostserver
-- ----------------------------
INSERT INTO `phome_enewspostserver` VALUES ('1', '附件服务器', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `phome_enewsprinttemp`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsprinttemp`;
CREATE TABLE `phome_enewsprinttemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `showdate` varchar(50) NOT NULL DEFAULT '',
  `modid` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsprinttemp
-- ----------------------------
INSERT INTO `phome_enewsprinttemp` VALUES ('1', '默认打印模板', '<html>\r\n<head>\r\n<meta http-equiv=\\\"content-type\\\" content=\\\"text/html; charset=utf-8\\\">\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n<style>\r\nbody{font-family:宋体}td,.f12{font-size:12px}.f24 {font-size:24px;}.f14 {font-size:14px;}.title14 {font-size:14px;line-height:130%}.l17 {line-height:170%;}\r\n</style>\r\n</head>\r\n<body bgcolor=\\\"#ffffff\\\" topmargin=5 leftmargin=5 marginheight=5 marginwidth=5 onLoad=\\\'window.print()\\\'>\r\n<center>\r\n<table width=650 border=0 cellspacing=0 cellpadding=0>\r\n<tr>\r\n<td height=65 width=180><A href=\\\"http://www.phome.net/\\\"><IMG src=\\\"../../skin/default/images/elogo.jpg\\\" alt=\\\"帝国软件\\\" width=\\\"180\\\" height=\\\"65\\\" border=0></A></td> \r\n<td valign=\\\"bottom\\\">[!--url--]</td>\r\n<td width=\\\"83\\\" align=\\\"right\\\" valign=\\\"bottom\\\"><a href=\\\'javascript:history.back()\\\'>返回</a>　<a href=\\\'javascript:window.print()\\\'>打印</a></td>\r\n</tr>\r\n</table>\r\n<table width=650 border=0 cellpadding=0 cellspacing=20 bgcolor=\\\"#EDF0F5\\\">\r\n<tr>\r\n<td>\r\n<BR>\r\n<TABLE cellSpacing=0 cellPadding=0 width=\\\"100%\\\" border=0>\r\n<TBODY>\r\n<TR>\r\n<TH class=\\\"f24\\\"><FONT color=#05006c>[!--title--]</FONT></TH></TR>\r\n<TR>\r\n<TD>\r\n<HR SIZE=1 bgcolor=\\\"#d9d9d9\\\">\r\n</TD>\r\n</TR>\r\n<TR>\r\n<TD align=\\\"middle\\\" height=20><div align=\\\"center\\\">[!--writer--]&nbsp;&nbsp;[!--newstime--]&nbsp;&nbsp;[!--befrom--]</div></TD>\r\n</TR>\r\n<TR>\r\n<TD height=15></TD>\r\n</TR>\r\n<TR>\r\n<TD class=\\\"l17\\\">\r\n<FONT class=\\\"f14\\\" id=\\\"zoom\\\"> \r\n<P>[!--newstext--]<br>\r\n<BR clear=all>\r\n</P>\r\n</FONT>\r\n</TD>\r\n</TR>\r\n<TR height=10>\r\n<TD></TD>\r\n</TR>\r\n</TBODY>\r\n</TABLE>\r\n[!--titlelink--]\r\n</td>\r\n</tr>\r\n</table>\r\n</center>\r\n</body>\r\n</html>', '1', 'Y-m-d H:i:s', '1');

-- ----------------------------
-- Table structure for `phome_enewspublic`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewspublic`;
CREATE TABLE `phome_enewspublic` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `newsurl` varchar(120) NOT NULL DEFAULT '',
  `sitename` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `filetype` text NOT NULL,
  `filesize` int(11) NOT NULL DEFAULT '0',
  `hotnum` tinyint(4) NOT NULL DEFAULT '0',
  `newnum` tinyint(4) NOT NULL DEFAULT '0',
  `relistnum` int(11) NOT NULL DEFAULT '0',
  `renewsnum` int(11) NOT NULL DEFAULT '0',
  `min_keyboard` tinyint(4) NOT NULL DEFAULT '0',
  `max_keyboard` tinyint(4) NOT NULL DEFAULT '0',
  `search_num` tinyint(4) NOT NULL DEFAULT '0',
  `search_pagenum` tinyint(4) NOT NULL DEFAULT '0',
  `newslink` tinyint(4) NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `searchtime` int(11) NOT NULL DEFAULT '0',
  `loginnum` smallint(6) NOT NULL DEFAULT '0',
  `logintime` int(11) NOT NULL DEFAULT '0',
  `addnews_ok` tinyint(1) NOT NULL DEFAULT '0',
  `register_ok` tinyint(1) NOT NULL DEFAULT '0',
  `indextype` varchar(10) NOT NULL DEFAULT '',
  `goodlencord` tinyint(4) NOT NULL DEFAULT '0',
  `goodtype` varchar(10) NOT NULL DEFAULT '',
  `goodnum` tinyint(4) NOT NULL DEFAULT '0',
  `searchtype` varchar(10) NOT NULL DEFAULT '',
  `exittime` smallint(6) NOT NULL DEFAULT '0',
  `smalltextlen` smallint(6) NOT NULL DEFAULT '0',
  `defaultgroupid` smallint(6) NOT NULL DEFAULT '0',
  `fileurl` varchar(255) NOT NULL DEFAULT '',
  `phpmode` tinyint(1) NOT NULL DEFAULT '0',
  `ftphost` varchar(255) NOT NULL DEFAULT '',
  `ftpport` varchar(20) NOT NULL DEFAULT '21',
  `ftpusername` varchar(120) NOT NULL DEFAULT '',
  `ftppassword` varchar(120) NOT NULL DEFAULT '',
  `ftppath` varchar(255) NOT NULL DEFAULT '',
  `ftpmode` tinyint(1) NOT NULL DEFAULT '0',
  `install` tinyint(1) NOT NULL DEFAULT '0',
  `hotplnum` tinyint(4) NOT NULL DEFAULT '0',
  `softversion` varchar(30) NOT NULL DEFAULT '0',
  `lctime` int(11) NOT NULL DEFAULT '0',
  `dorepnum` smallint(6) NOT NULL DEFAULT '0',
  `loadtempnum` smallint(6) NOT NULL DEFAULT '0',
  `firstnum` tinyint(4) NOT NULL DEFAULT '0',
  `bakdbpath` varchar(50) NOT NULL DEFAULT '',
  `bakdbzip` varchar(50) NOT NULL DEFAULT '',
  `downpass` varchar(32) NOT NULL DEFAULT '',
  `min_userlen` tinyint(4) NOT NULL DEFAULT '0',
  `max_userlen` tinyint(4) NOT NULL DEFAULT '0',
  `min_passlen` tinyint(4) NOT NULL DEFAULT '0',
  `max_passlen` tinyint(4) NOT NULL DEFAULT '0',
  `filechmod` tinyint(1) NOT NULL DEFAULT '0',
  `tid` smallint(6) NOT NULL DEFAULT '0',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `loginkey_ok` tinyint(1) NOT NULL DEFAULT '0',
  `limittype` tinyint(1) NOT NULL DEFAULT '0',
  `redodown` smallint(6) NOT NULL DEFAULT '0',
  `candocode` tinyint(1) NOT NULL DEFAULT '0',
  `opennotcj` tinyint(1) NOT NULL DEFAULT '0',
  `reuserpagenum` int(11) NOT NULL DEFAULT '0',
  `revotejsnum` int(11) NOT NULL DEFAULT '0',
  `readjsnum` int(11) NOT NULL DEFAULT '0',
  `qaddtran` tinyint(1) NOT NULL DEFAULT '0',
  `qaddtransize` int(11) NOT NULL DEFAULT '0',
  `ebakthisdb` tinyint(1) NOT NULL DEFAULT '0',
  `delnewsnum` int(11) NOT NULL DEFAULT '0',
  `markpos` tinyint(4) NOT NULL DEFAULT '0',
  `markimg` varchar(80) NOT NULL DEFAULT '',
  `marktext` varchar(80) NOT NULL DEFAULT '',
  `markfontsize` varchar(12) NOT NULL DEFAULT '',
  `markfontcolor` varchar(12) NOT NULL DEFAULT '',
  `markfont` varchar(80) NOT NULL DEFAULT '',
  `adminloginkey` tinyint(1) NOT NULL DEFAULT '0',
  `php_outtime` int(11) NOT NULL DEFAULT '0',
  `listpagefun` varchar(36) NOT NULL DEFAULT '',
  `textpagefun` varchar(36) NOT NULL DEFAULT '',
  `adfile` varchar(30) NOT NULL DEFAULT '',
  `notsaveurl` text NOT NULL,
  `jstempid` smallint(6) NOT NULL DEFAULT '0',
  `rssnum` smallint(6) NOT NULL DEFAULT '0',
  `rsssub` smallint(6) NOT NULL DEFAULT '0',
  `savetxtf` text NOT NULL,
  `dorepdlevelnum` int(11) NOT NULL DEFAULT '0',
  `listpagelistfun` varchar(36) NOT NULL DEFAULT '',
  `listpagelistnum` smallint(6) NOT NULL DEFAULT '0',
  `infolinknum` int(11) NOT NULL DEFAULT '0',
  `searchgroupid` smallint(6) NOT NULL DEFAULT '0',
  `opencopytext` tinyint(1) NOT NULL DEFAULT '0',
  `reuserjsnum` int(11) NOT NULL DEFAULT '0',
  `reuserlistnum` int(11) NOT NULL DEFAULT '0',
  `opentitleurl` tinyint(1) NOT NULL DEFAULT '0',
  `qaddtranimgtype` text NOT NULL,
  `qaddtranfile` tinyint(1) NOT NULL DEFAULT '0',
  `qaddtranfilesize` int(11) NOT NULL DEFAULT '0',
  `qaddtranfiletype` text NOT NULL,
  `sendmailtype` tinyint(1) NOT NULL DEFAULT '0',
  `smtphost` varchar(255) NOT NULL DEFAULT '',
  `fromemail` varchar(120) NOT NULL DEFAULT '',
  `loginemail` tinyint(1) NOT NULL DEFAULT '0',
  `emailusername` varchar(60) NOT NULL DEFAULT '',
  `emailpassword` varchar(60) NOT NULL DEFAULT '',
  `smtpport` varchar(20) NOT NULL DEFAULT '',
  `emailname` varchar(120) NOT NULL DEFAULT '',
  `deftempid` smallint(6) NOT NULL DEFAULT '0',
  `feedbacktfile` tinyint(1) NOT NULL DEFAULT '0',
  `feedbackfilesize` int(11) NOT NULL DEFAULT '0',
  `feedbackfiletype` text NOT NULL,
  `searchtempvar` tinyint(1) NOT NULL DEFAULT '0',
  `showinfolevel` smallint(6) NOT NULL DEFAULT '0',
  `navfh` varchar(20) NOT NULL DEFAULT '',
  `spicwidth` smallint(6) NOT NULL DEFAULT '0',
  `spicheight` smallint(6) NOT NULL DEFAULT '0',
  `spickill` tinyint(1) NOT NULL DEFAULT '0',
  `jpgquality` tinyint(4) NOT NULL DEFAULT '0',
  `markpct` tinyint(4) NOT NULL DEFAULT '0',
  `redoview` smallint(6) NOT NULL DEFAULT '0',
  `reggetfen` smallint(6) NOT NULL DEFAULT '0',
  `regbooktime` smallint(6) NOT NULL DEFAULT '0',
  `revotetime` smallint(6) NOT NULL DEFAULT '0',
  `nreclass` text NOT NULL,
  `nreinfo` text NOT NULL,
  `nrejs` text NOT NULL,
  `fpath` tinyint(1) NOT NULL DEFAULT '0',
  `filepath` varchar(30) NOT NULL DEFAULT '',
  `openmembertranimg` tinyint(1) NOT NULL DEFAULT '0',
  `memberimgsize` int(11) NOT NULL DEFAULT '0',
  `memberimgtype` text NOT NULL,
  `openmembertranfile` tinyint(1) NOT NULL DEFAULT '0',
  `memberfilesize` int(11) NOT NULL DEFAULT '0',
  `memberfiletype` text NOT NULL,
  `nottobq` text NOT NULL,
  `defspacestyleid` smallint(6) NOT NULL DEFAULT '0',
  `canposturl` text NOT NULL,
  `openspace` tinyint(1) NOT NULL DEFAULT '0',
  `defadminstyle` smallint(6) NOT NULL DEFAULT '0',
  `realltime` smallint(6) NOT NULL DEFAULT '0',
  `closeip` text NOT NULL,
  `openip` text NOT NULL,
  `hopenip` text NOT NULL,
  `closewords` text NOT NULL,
  `closewordsf` text NOT NULL,
  `textpagelistnum` smallint(6) NOT NULL DEFAULT '0',
  `memberlistlevel` smallint(6) NOT NULL DEFAULT '0',
  `wapopen` tinyint(1) NOT NULL DEFAULT '0',
  `wapdefstyle` smallint(6) NOT NULL DEFAULT '0',
  `wapshowmid` varchar(255) NOT NULL DEFAULT '',
  `waplistnum` tinyint(4) NOT NULL DEFAULT '0',
  `wapsubtitle` tinyint(4) NOT NULL DEFAULT '0',
  `wapshowdate` varchar(50) NOT NULL DEFAULT '',
  `wapchar` tinyint(1) NOT NULL DEFAULT '0',
  `ebakcanlistdb` tinyint(1) NOT NULL DEFAULT '0',
  `paymoneytofen` int(11) NOT NULL DEFAULT '0',
  `payminmoney` int(11) NOT NULL DEFAULT '0',
  `keytog` tinyint(1) NOT NULL DEFAULT '0',
  `keyrnd` varchar(60) NOT NULL DEFAULT '',
  `keytime` int(11) NOT NULL DEFAULT '0',
  `regkey_ok` tinyint(1) NOT NULL DEFAULT '0',
  `opengetdown` tinyint(1) NOT NULL DEFAULT '0',
  `gbkey_ok` tinyint(1) NOT NULL DEFAULT '0',
  `fbkey_ok` tinyint(1) NOT NULL DEFAULT '0',
  `newaddinfotime` smallint(6) NOT NULL DEFAULT '0',
  `classnavline` smallint(6) NOT NULL DEFAULT '0',
  `classnavfh` varchar(120) NOT NULL DEFAULT '',
  `adminstyle` text NOT NULL,
  `sitekey` varchar(255) NOT NULL DEFAULT '',
  `siteintro` text NOT NULL,
  `docnewsnum` int(11) NOT NULL DEFAULT '0',
  `openschall` tinyint(1) NOT NULL DEFAULT '0',
  `schallfield` tinyint(1) NOT NULL DEFAULT '0',
  `schallminlen` tinyint(4) NOT NULL DEFAULT '0',
  `schallmaxlen` tinyint(4) NOT NULL DEFAULT '0',
  `schallnotcid` text NOT NULL,
  `schallnum` smallint(6) NOT NULL DEFAULT '0',
  `schallpagenum` smallint(6) NOT NULL DEFAULT '0',
  `dtcanbq` tinyint(1) NOT NULL DEFAULT '0',
  `dtcachetime` int(11) NOT NULL DEFAULT '0',
  `regretime` smallint(6) NOT NULL DEFAULT '0',
  `regclosewords` text NOT NULL,
  `regemailonly` tinyint(1) NOT NULL DEFAULT '0',
  `repkeynum` smallint(6) NOT NULL DEFAULT '0',
  `getpasstime` int(11) NOT NULL DEFAULT '0',
  `acttime` int(11) NOT NULL DEFAULT '0',
  `regacttype` tinyint(1) NOT NULL DEFAULT '0',
  `acttext` text NOT NULL,
  `getpasstext` text NOT NULL,
  `acttitle` varchar(120) NOT NULL DEFAULT '',
  `getpasstitle` varchar(120) NOT NULL DEFAULT '',
  `opengetpass` tinyint(1) NOT NULL DEFAULT '0',
  `hlistinfonum` int(11) NOT NULL DEFAULT '0',
  `qlistinfonum` int(11) NOT NULL DEFAULT '0',
  `dtncanbq` tinyint(1) NOT NULL DEFAULT '0',
  `dtncachetime` int(11) NOT NULL DEFAULT '0',
  `readdinfotime` smallint(6) NOT NULL DEFAULT '0',
  `qeditinfotime` int(11) NOT NULL DEFAULT '0',
  `ftpssl` tinyint(1) NOT NULL DEFAULT '0',
  `ftppasv` tinyint(1) NOT NULL DEFAULT '0',
  `ftpouttime` smallint(6) NOT NULL DEFAULT '0',
  `onclicktype` tinyint(1) NOT NULL DEFAULT '0',
  `onclickfilesize` int(11) NOT NULL DEFAULT '0',
  `onclickfiletime` int(11) NOT NULL DEFAULT '0',
  `schalltime` smallint(6) NOT NULL DEFAULT '0',
  `defprinttempid` smallint(6) NOT NULL DEFAULT '0',
  `opentags` tinyint(1) NOT NULL DEFAULT '0',
  `tagstempid` smallint(6) NOT NULL DEFAULT '0',
  `usetags` text NOT NULL,
  `chtags` text NOT NULL,
  `tagslistnum` smallint(6) NOT NULL DEFAULT '0',
  `closeqdt` tinyint(1) NOT NULL DEFAULT '0',
  `settop` tinyint(1) NOT NULL DEFAULT '0',
  `qlistinfomod` tinyint(1) NOT NULL DEFAULT '0',
  `gb_num` tinyint(4) NOT NULL DEFAULT '0',
  `member_num` tinyint(4) NOT NULL DEFAULT '0',
  `space_num` tinyint(4) NOT NULL DEFAULT '0',
  `opendoip` text NOT NULL,
  `closedoip` text NOT NULL,
  `doiptype` varchar(255) NOT NULL DEFAULT '',
  `filelday` int(11) NOT NULL DEFAULT '0',
  `infolday` int(11) NOT NULL DEFAULT '0',
  `baktempnum` tinyint(4) NOT NULL DEFAULT '0',
  `dorepkey` tinyint(1) NOT NULL DEFAULT '0',
  `dorepword` tinyint(1) NOT NULL DEFAULT '0',
  `onclickrnd` varchar(20) NOT NULL DEFAULT '',
  `indexpagedt` tinyint(1) NOT NULL DEFAULT '0',
  `keybgcolor` varchar(8) NOT NULL DEFAULT '',
  `keyfontcolor` varchar(8) NOT NULL DEFAULT '',
  `keydistcolor` varchar(8) NOT NULL DEFAULT '',
  `indexpageid` smallint(6) NOT NULL DEFAULT '0',
  `closeqdtmsg` varchar(255) NOT NULL DEFAULT '',
  `openfileserver` tinyint(1) NOT NULL DEFAULT '0',
  `closemods` varchar(255) NOT NULL DEFAULT '',
  `fieldandtop` tinyint(1) NOT NULL DEFAULT '0',
  `fieldandclosetb` text NOT NULL,
  `filedatatbs` text NOT NULL,
  `filedeftb` smallint(5) unsigned NOT NULL DEFAULT '0',
  `firsttitlename` varchar(255) NOT NULL DEFAULT '',
  `isgoodname` varchar(255) NOT NULL DEFAULT '',
  `closelisttemp` varchar(255) NOT NULL DEFAULT '',
  `chclasscolor` varchar(8) NOT NULL DEFAULT '',
  `timeclose` varchar(255) NOT NULL DEFAULT '',
  `timeclosedo` varchar(255) NOT NULL DEFAULT '',
  `ipaddinfonum` int(10) unsigned NOT NULL DEFAULT '0',
  `ipaddinfotime` smallint(5) unsigned NOT NULL DEFAULT '0',
  `rewriteinfo` varchar(120) NOT NULL DEFAULT '',
  `rewriteclass` varchar(120) NOT NULL DEFAULT '',
  `rewriteinfotype` varchar(120) NOT NULL DEFAULT '',
  `rewritetags` varchar(120) NOT NULL DEFAULT '',
  `closehmenu` varchar(80) NOT NULL DEFAULT '',
  `indexaddpage` tinyint(1) NOT NULL DEFAULT '0',
  `rewritepl` varchar(150) NOT NULL DEFAULT '',
  `modmemberedittran` tinyint(1) NOT NULL DEFAULT '0',
  `modinfoedittran` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewspublic
-- ----------------------------
INSERT INTO `phome_enewspublic` VALUES ('1', '/', '南昌莱美整形美容医院', 'admin@phome.net', '|.gif|.jpg|.swf|.rar|.zip|.mp3|.wmv|.txt|.doc|.png|', '2048', '10', '10', '8', '100', '2', '20', '20', '10', '0', '0', '30', '5', '60', '0', '0', '.html', '0', '', '10', '.html', '40', '160', '1', '/d/file/', '0', '', '21', '', '', '', '0', '0', '10', '7.2,1421510410', '1222406370', '300', '50', '10', 'bdata', 'zip', 'yOXKNnP0AHAAWGLTyHsV', '3', '20', '6', '20', '1', '1', 'news', '0', '0', '1', '1', '0', '50', '100', '100', '1', '50', '1', '300', '5', '../data/mark/maskdef.gif', '', '5', '', '../data/mark/cour.ttf', '1', '0', 'sys_ShowListPage', 'sys_ShowTextPage', 'thea', '', '1', '50', '300', ',', '300', 'sys_ShowListMorePage', '10', '100', '0', '0', '100', '8', '1', '|.gif|.jpg|', '1', '500', '|.zip|.rar|', '1', 'smtp.163.com', 'ecms@163.com', '1', 'ecms', 'ecms', '25', '帝国CMS', '0', '1', '500', '|.zip|.rar|', '1', '0', '>', '105', '118', '1', '80', '65', '24', '0', '30', '30', ',', ',', ',', '0', 'Y-m-d', '1', '50', '|.gif|.jpg|', '1', '500', '|.zip|.rar|', ',', '1', '', '0', '1', '0', '', '', '', '', '', '6', '0', '1', '1', '', '10', '30', 'm-d', '0', '0', '10', '1', '2', '3Ee1829Gzz7gF0hPfcuBf6hBsG65NZ', '30', '0', '0', '0', '0', '0', '20', '&nbsp;|&nbsp;', ',1,2,', '南昌整形医院,南昌美容医院,南昌整容医院,南昌好的整形医院,南昌好的美容医院,南昌好的整容医院', '全国的微整形医院，南昌莱美美容医院是江西省一家拥有整形美容医院资质卫生部政府批文的专科整形美容医院，南昌莱美整形美容医院,开设隆胸、隆鼻、祛斑、割双眼皮等整形项目。', '300', '0', '1', '3', '20', ',,', '20', '10', '1', '43200', '0', '', '1', '0', '72', '720', '0', '[!--username--] ，\r\n这封信是由 [!--sitename--] 发送的。\r\n\r\n您收到这封邮件，是因为在我们网站的新用户注册 Email 使用\r\n了您的地址。如果您并没有访问过我们的网站，或没有进行上述操作，请忽\r\n略这封邮件。您不需要退订或进行其他进一步的操作。\r\n\r\n----------------------------------------------------------------------\r\n帐号激活说明\r\n----------------------------------------------------------------------\r\n\r\n您是我们网站的新用户，注册 Email 时使用了本地址，我们需\r\n要对您的地址有效性进行验证以避免垃圾邮件或地址被滥用。\r\n\r\n您只需点击下面的链接即可激活您的帐号：\r\n\r\n[!--pageurl--]\r\n\r\n(如果上面不是链接形式，请将地址手工粘贴到浏览器地址栏再访问)\r\n\r\n感谢您的访问，祝您使用愉快！\r\n\r\n\r\n\r\n此致\r\n\r\n[!--sitename--] 管理团队.\r\n[!--news.url--]', '[!--username--] ，\r\n这封信是由 [!--sitename--] 发送的。\r\n\r\n您收到这封邮件，是因为在我们的网站上这个邮箱地址被登记为用户邮箱，\r\n且该用户请求使用 Email 密码重置功能所致。\r\n\r\n----------------------------------------------------------------------\r\n重要！\r\n----------------------------------------------------------------------\r\n\r\n如果您没有提交密码重置的请求或不是我们网站的注册用户，请立即忽略\r\n并删除这封邮件。只在您确认需要重置密码的情况下，才继续阅读下面的\r\n内容。\r\n\r\n----------------------------------------------------------------------\r\n密码重置说明\r\n----------------------------------------------------------------------\r\n\r\n您只需在提交请求后的三天之内，通过点击下面的链接重置您的密码：\r\n\r\n[!--pageurl--]\r\n\r\n(如果上面不是链接形式，请将地址手工粘贴到浏览器地址栏再访问)\r\n\r\n上面的页面打开后，输入新的密码后提交，之后您即可使用新的密码登录\r\n网站了。您可以在用户控制面板中随时修改您的密码。\r\n\r\n\r\n\r\n此致\r\n\r\n[!--sitename--] 管理团队.\r\n[!--news.url--]', '[[!--sitename--]] Email 地址验证', '[[!--sitename--]] 取回密码说明', '0', '30', '25', '1', '43200', '0', '0', '0', '0', '0', '0', '10', '60', '0', '1', '1', '1', ',1,2,3,4,5,6,7,8,', '', '25', '0', '0', '0', '20', '20', '25', '', '', '', '0', '0', '3', '0', '0', '', '0', '', '', '', '0', '', '0', '', '0', '', ',1,', '1', '一级头条|二级头条|三级头条|四级头条|五级头条|六级头条|七级头条|八级头条|九级头条', '一级推荐|二级推荐|三级推荐|四级推荐|五级推荐|六级推荐|七级推荐|八级推荐|九级推荐', '', '#99C4E3', '', '', '0', '0', '', '', '', '', '', '0', '', '0', '0');

-- ----------------------------
-- Table structure for `phome_enewspublic_update`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewspublic_update`;
CREATE TABLE `phome_enewspublic_update` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `lasttimeinfo` int(10) unsigned NOT NULL DEFAULT '0',
  `lasttimepl` int(10) unsigned NOT NULL DEFAULT '0',
  `lastnuminfo` int(10) unsigned NOT NULL DEFAULT '0',
  `lastnumpl` int(10) unsigned NOT NULL DEFAULT '0',
  `lastnuminfotb` text NOT NULL,
  `lastnumpltb` text NOT NULL,
  `todaytimeinfo` int(10) unsigned NOT NULL DEFAULT '0',
  `todaytimepl` int(10) unsigned NOT NULL DEFAULT '0',
  `todaynuminfo` int(10) unsigned NOT NULL DEFAULT '0',
  `yesterdaynuminfo` int(10) unsigned NOT NULL DEFAULT '0',
  `todaynumpl` int(10) unsigned NOT NULL DEFAULT '0',
  `yesterdaynumpl` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewspublic_update
-- ----------------------------
INSERT INTO `phome_enewspublic_update` VALUES ('1', '1355124469', '1355124476', '14', '0', '|1,14|', '', '1506047902', '1506047902', '4', '10', '0', '0');

-- ----------------------------
-- Table structure for `phome_enewspubtemp`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewspubtemp`;
CREATE TABLE `phome_enewspubtemp` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `indextemp` mediumtext NOT NULL,
  `cptemp` mediumtext NOT NULL,
  `searchtemp` mediumtext NOT NULL,
  `searchjstemp` mediumtext NOT NULL,
  `searchjstemp1` mediumtext NOT NULL,
  `otherlinktemp` mediumtext NOT NULL,
  `downsofttemp` text NOT NULL,
  `onlinemovietemp` text NOT NULL,
  `listpagetemp` text NOT NULL,
  `gbooktemp` mediumtext NOT NULL,
  `loginiframe` mediumtext NOT NULL,
  `otherlinktempsub` tinyint(4) NOT NULL DEFAULT '0',
  `otherlinktempdate` varchar(20) NOT NULL DEFAULT '',
  `loginjstemp` mediumtext NOT NULL,
  `downpagetemp` mediumtext NOT NULL,
  `pljstemp` mediumtext NOT NULL,
  `schalltemp` mediumtext NOT NULL,
  `schallsubnum` smallint(6) NOT NULL DEFAULT '0',
  `schalldate` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewspubtemp
-- ----------------------------
INSERT INTO `phome_enewspubtemp` VALUES ('1', '<!doctype html>\r\n<html>\r\n<head>\r\n<link rel=\\\"shortout icon\\\" href=\\\"http://www.nclaimei.com/skin/laimei2017/images/favicon.ico\\\" />\r\n<meta http-equiv=\\\"Cache-Control\\\" content=\\\"no-transform\\\" />\r\n<meta http-equiv=\\\"Cache-Control\\\" content=\\\"no-siteapp\\\" />\r\n<meta name=\\\"renderer\\\" content=\\\"webkit\\\"/>\r\n<meta http-equiv=\\\"X-UA-Comabsolutetible\\\" content=\\\"IE=Edge,chrome=1\\\" />\r\n<meta name=\\\"format-detection\\\" content=\\\"telephone=no\\\"/>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<meta http-equiv=\\\"x-dns-prefetch-control\\\" content=\\\"on\\\" />\r\n<title>[!--pagetitle--]_南昌莱美美容医院【官网】</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedesc--]。\\\">\r\n<link href=\\\"/skin/css/reset.css\\\" rel=\\\"stylesheet\\\"/>\r\n<link href=\\\"/skin/css/style.css\\\" rel=\\\"stylesheet\\\"/>\r\n<script type=\\\"text/javascript\\\" src=\\\"/skin/js/jquery-1.9.1.min.js\\\"></script>\r\n<script src=\\\"/skin/js/jquery.superslide.2.1.1.source.js\\\"></script>\r\n<script src=\\\"/skin/js/expert.js\\\"></script>\r\n<script src=\\\"/skin/js/indexapp.js\\\"></script>\r\n<script src=\\\"/skin/js/wapskip.js\\\" type=\\\"text/javascript\\\"></script>\r\n</head>\r\n<body>\r\n[!--temp.header--]\r\n<!-- content start -->\r\n<div class=\\\"content\\\" id=\\\"content\\\">\r\n  <div class=\\\"stageContainer pubW center\\\">\r\n    <div class=\\\"stage1 clearfix\\\">       \r\n      <div class=\\\"stage2-width stage1_a fl \\\">\r\n        <div class=\\\"alltitle absolute\\\"></div>\r\n        <div class=\\\"stage1Title clearfix\\\" style=\\\"position: absolute;z-index: 10;right: 20px;top: 55px;\\\">\r\n          <div class=\\\"preNext fr clearfix\\\"> <a href=\\\"javascript:void(0)\\\" class=\\\"preBtn fl\\\"><i></i></a> <a href=\\\"javascript:void(0)\\\" class=\\\"nextBtn fr\\\"><i></i></a> </div>\r\n        </div>\r\n        <div class=\\\"stage1_anliBox\\\">\r\n          <div class=\\\"anliBox\\\"><a href=\\\"javascript:void(0)\\\" onClick=\\\"openZoosUrl();\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/zxhd/2017-09-01/fde9c83dabda3df03029ae69b6597bbd.jpg\\\" width=\\\"687\\\" height=\\\"328\\\"/></a>\r\n          </div>\r\n          <div class=\\\"anliBox\\\"><a href=\\\"javascript:void(0)\\\" onClick=\\\"openZoosUrl();\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/zxhd/2017-09-01/fedd332a502bd6653e558b5095d98deb.jpg\\\" width=\\\"687\\\" height=\\\"328\\\"/></a>\r\n          </div>\r\n          <div class=\\\"anliBox\\\"><a href=\\\"javascript:void(0)\\\" onClick=\\\"openZoosUrl();\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/zxhd/2017-09-01/a83f8f6c116ce46f9fec355af5460e53.jpg\\\" width=\\\"687\\\" height=\\\"328\\\"/></a>\r\n          </div>\r\n        </div>\r\n      </div>\r\n\r\n      <div class=\\\"stage1-width stage1_b fr\\\"style=\\\"height: 385px;\\\">\r\n        <div class=\\\"alltitle absolute\\\"></div>\r\n        <div class=\\\"activityBox\\\"> \r\n        <a href=\\\"/s/201709/\\\" target=\\\"_blank\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/lmdt/2017-09-01/75ca24d0695917e2f21e4a4282f9c2d1.jpg\\\" width=\\\"380\\\" height=\\\"150\\\"/></a></div>\r\n        <div class=\\\"stage1Title clearfix\\\"> \r\n        <a href=\\\"http://www.nclaimei.com/gylm/mtbd/2017-08-18/428.html\\\" target=\\\"_blank\\\">·腋臭的治疗</a><span class=\\\"fonts \\\">2017-08-18</span></div>\r\n        <div class=\\\"stage1Title clearfix\\\"> \r\n        <a href=\\\"http://www.nclaimei.com/gylm/mtbd/2017-08-12/426.html\\\" target=\\\"_blank\\\">·漂唇手术的设计原则是什么...</a><span class=\\\"fonts \\\">2017-08-12</span></div>\r\n        <div class=\\\"stage1Title clearfix\\\"> \r\n        <a href=\\\"http://www.nclaimei.com/gylm/mtbd/2017-08-08/424.html\\\" target=\\\"_blank\\\">·双眼皮的宽窄度是怎么衡量的呢？　...</a><span class=\\\"fonts \\\">2017-08-08</span></div>\r\n        <div class=\\\"stage1Title clearfix\\\"> \r\n        <a href=\\\"http://www.nclaimei.com/gylm/mtbd/2017-08-04/423.html\\\" target=\\\"_blank\\\">·超声刀美容适合年龄</a><span class=\\\"fonts \\\">2017-08-04</span></div>\r\n        <div class=\\\"stage1Title clearfix\\\"> \r\n        <a href=\\\"http://www.nclaimei.com/gylm/mtbd/2017-07-30/417.html\\\" target=\\\"_blank\\\">·双下巴吸脂多久可以恢复</a><span class=\\\"fonts \\\">2017-07-30</span></div>\r\n        <a class=\\\"more absolute\\\" href=\\\"http://www.nclaimei.com/gylm/mtbd\\\" target=\\\"_blank\\\">更多>></a>\r\n      </div>\r\n    </div>\r\n      \r\n    <div class=\\\"stage4 clearfix relative\\\">\r\n        <div class=\\\"rogect absolute\\\">\r\n        <div class=\\\"alltitle absolute\\\"></div>\r\n            <a class=\\\"more\\\" href=\\\"http://www.nclaimei.com/zhuanti\\\" target=\\\"_blank\\\">+更多项目</a> \r\n        </div>\r\n      <div class=\\\"stage3-width stage1_c fl\\\">\r\n          <h1 class=\\\"absolute\\\">整形美容</h1>\r\n        <div class=\\\"expertSlide relative\\\">\r\n          <div class=\\\"slideBox\\\">\r\n                    <a href=\\\"/s/BreastImplanta/index.html\\\" target=\\\"_blank\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/xmzx/zxmr/2016-12-09/0fb26fe9ee5cff8ef74b2401d4c0464b.png\\\" width=\\\"250\\\" height=\\\"330\\\"/></a>\r\n                    <a href=\\\"/s/CarvedEyese/index.html\\\" target=\\\"_blank\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/xmzx/zxmr/2016-12-02/42c491fb4b3b92d5ae2542d6494b4239.jpg\\\" width=\\\"250\\\" height=\\\"330\\\"/></a>\r\n                    <a href=\\\"/s/SdlLiposuctiona/index.html\\\" target=\\\"_blank\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/xmzx/zxmr/2016-12-09/a611d000900df4d00106fac8d6562a81.png\\\" width=\\\"250\\\" height=\\\"330\\\"/></a>\r\n                    <a href=\\\"/s/Rhinoplastyc/index.html\\\" target=\\\"_blank\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/xmzx/zxmr/2016-12-09/797fdedabe6a2d67a9f3535b33c3b2e6.png\\\" width=\\\"250\\\" height=\\\"330\\\"/></a>\r\n                 </div>\r\n          <div class=\\\"focus absolute clearfix\\\"></div>\r\n        </div>\r\n      </div>\r\n      <div class=\\\"stage3-width stage1_c fl\\\">\r\n          <h1 class=\\\"absolute\\\">皮肤美容</h1>\r\n        <div class=\\\"expertSlide relative\\\">\r\n          <div class=\\\"slideBox\\\">\r\n                    <a href=\\\"/s/HairRemoval/index.html\\\" target=\\\"_blank\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/xmzx/pfmr/2016-12-02/e4bcbf5d8ed5c32872aaa597b9041ad1.jpg\\\" width=\\\"250\\\" height=\\\"330\\\"/></a>\r\n                    <a href=\\\"/s/GlxfAcneTreatmenta/index.html\\\" target=\\\"_blank\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/xmzx/pfmr/2016-12-09/65acd18a94cb20bf3534eb5dbcd0ca5e.png\\\" width=\\\"250\\\" height=\\\"330\\\"/></a>\r\n                    <a href=\\\"/s/OPTKingStyleb/index.html\\\" target=\\\"_blank\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/xmzx/pfmr/2016-12-09/66176e999058279fcc33f306bc139156.png\\\" width=\\\"250\\\" height=\\\"330\\\"/></a>\r\n                    <a href=\\\"/s/FreckleRemovingb/index.html\\\" target=\\\"_blank\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/xmzx/pfmr/2016-12-09/03297c89fa16513b2e7f40186712796d.png\\\" width=\\\"250\\\" height=\\\"330\\\"/></a>\r\n                 </div>\r\n          <div class=\\\"focus absolute clearfix\\\"></div>\r\n        </div>\r\n      </div>\r\n      <div class=\\\"stage3-width stage1_c fl\\\">\r\n          <h1 class=\\\"absolute\\\">微整形</h1>\r\n        <div class=\\\"expertSlide relative\\\">\r\n          <div class=\\\"slideBox\\\">\r\n                    <a href=\\\"/s/FaceLiftNeedlea/index.html\\\" target=\\\"_blank\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/xmzx/vzx/2016-12-09/34a6dfc5c7f32b6648b8bf7f84d1a4c0.png\\\" width=\\\"250\\\" height=\\\"330\\\"/></a>\r\n                    <a href=\\\"/s/FaceLiftNeedled/index.html\\\" target=\\\"_blank\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/xmzx/vzx/2016-12-09/4b7fcc5c8388c8f8356ef29e32762fac.png\\\" width=\\\"250\\\" height=\\\"330\\\"/></a>\r\n                    <a href=\\\"/s/BotoxKreotoxina/index.html\\\" target=\\\"_blank\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/xmzx/vzx/2016-12-09/1ba22b0058ddaea832c2c33f13e285dc.png\\\" width=\\\"250\\\" height=\\\"330\\\"/></a>\r\n                 </div>\r\n          <div class=\\\"focus absolute clearfix\\\"></div>\r\n        </div>\r\n      </div>\r\n      <div class=\\\"stage3-width stage1_c fl\\\">\r\n          <h1 class=\\\"absolute\\\">口腔美容</h1>\r\n        <div class=\\\"expertSlide relative\\\">\r\n          <div class=\\\"slideBox\\\">\r\n                    <a href=\\\"/s/DentalCorrection/index.html\\\" target=\\\"_blank\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/xmzx/ycjz/2016-12-28/cb9e9eb8704cfdbb6e7673a54333a774.png\\\" width=\\\"250\\\" height=\\\"330\\\"/></a>\r\n                    <a href=\\\"/s/Teethas/index.html\\\" target=\\\"_blank\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/xmzx/ycjz/2016-12-09/a46e4ca138d855a9fda8b63461d56e03.png\\\" width=\\\"250\\\" height=\\\"330\\\"/></a>\r\n                 </div>\r\n          <div class=\\\"focus absolute clearfix\\\"></div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n    <div class=\\\"stage2 clearfix\\\">\r\n        <div class=\\\"alltitle\\\"></div>\r\n      <div class=\\\"stage_a fl relative\\\">\r\n       <a href=\\\"javascript:void(0)\\\" class=\\\"preBtn absolute bt\\\"><i></i></a> <a href=\\\"javascript:void(0)\\\" class=\\\"nextBtn absolute bt\\\"><i></i></a>\r\n        <div class=\\\"slideBox\\\">\r\n          <div class=\\\"slide relative\\\"><a href=\\\"/gylm/zjtd\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/yszh/2017-05-27/ec1a69b25b038e4c521883525d32d7d2.png\\\" width=\\\"822\\\" height=\\\"479\\\" alt=\\\"整形美容医疗团队\\\" /></a>\r\n            <div class=\\\"innerWrapper absolute\\\">\r\n              <h5 class=\\\"fonts\\\">整形美容医疗团队</h5>\r\n              <p class=\\\"fonts\\\">由数十名临床经验资深医生组成,技术精湛、服务周到根据顾客的个人特点定制合适自然的整形美容方案。</p>\r\n            </div>\r\n          </div>\r\n          <div class=\\\"slide relative\\\"><a href=\\\"/gylm/zjtd\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/yszh/2017-02-28/80d8edb5cd922f34fc513b266499b772.png\\\" width=\\\"822\\\" height=\\\"479\\\" alt=\\\"皮肤美容医疗团队\\\" /></a>\r\n            <div class=\\\"innerWrapper absolute\\\">\r\n              <h5 class=\\\"fonts\\\">皮肤美容医疗团队</h5>\r\n              <p class=\\\"fonts\\\">由皮肤科主任为代表的美肤团队对于嫩肤、祛痘、祛斑等常见皮肤问题\\\"治疗\\\"有道,迄今已为无数女性带来美丽新生。</p>\r\n            </div>\r\n          </div>\r\n          <div class=\\\"slide relative\\\"><a href=\\\"/gylm/zjtd\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/gylm/yszh/2017-01-14/bfc78e76a584838dc7d6fc1305af0d9c.jpg\\\" width=\\\"822\\\" height=\\\"479\\\" alt=\\\"微整形医疗团队\\\" /></a>\r\n            <div class=\\\"innerWrapper absolute\\\">\r\n              <h5 class=\\\"fonts\\\">微整形医疗团队</h5>\r\n              <p class=\\\"fonts\\\">汇集众多资深微整形医生,始终坚持“效果、自然、健康”的原则,以及人性化的美容理念,采用多层定点注射方法！</p>\r\n            </div>\r\n          </div>\r\n          <div class=\\\"slide relative\\\"><a href=\\\"/gylm/zjtd\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/gylm/yszh/2016-12-29/a95d1b69058b0ba4170cde5dc7fd3153.png\\\" width=\\\"822\\\" height=\\\"479\\\" alt=\\\"口腔美容团队\\\" /></a>\r\n            <div class=\\\"innerWrapper absolute\\\">\r\n              <h5 class=\\\"fonts\\\">口腔美容团队</h5>\r\n              <p class=\\\"fonts\\\">汇聚国内外资深口腔医生,在业界荣享盛誉,微创美学修复,深厚的口腔美学功底,深受众多顾客的赞誉。</p>\r\n            </div>\r\n          </div>\r\n          <div class=\\\"slide relative\\\"><a href=\\\"/gylm/zjtd\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/yszh/2017-03-21/63818a66f0b7bd47717eea863e6853b2.png\\\" width=\\\"822\\\" height=\\\"479\\\" alt=\\\"毛发移植医疗团队\\\" /></a>\r\n            <div class=\\\"innerWrapper absolute\\\">\r\n              <h5 class=\\\"fonts\\\">毛发移植医疗团队</h5>\r\n              <p class=\\\"fonts\\\">专业植发手术团队！</p>\r\n            </div>\r\n          </div>\r\n          <div class=\\\"slide relative\\\"><a href=\\\"/gylm/zjtd\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/gylm/yszh/2016-12-29/9c3605fda5a9e21dae53cb2b213d676d.png\\\" width=\\\"822\\\" height=\\\"479\\\" alt=\\\"特邀医生医疗团队\\\" /></a>\r\n            <div class=\\\"innerWrapper absolute\\\">\r\n              <h5 class=\\\"fonts\\\">特邀医生医疗团队</h5>\r\n              <p class=\\\"fonts\\\">邀请整形美容知名医生亲临南昌莱美为求美者服务,享受国际整形技艺。</p>\r\n            </div>\r\n          </div>\r\n         \r\n\r\n        </div>\r\n      </div>\r\n      <div class=\\\"stage_b fr\\\">\r\n        <div class=\\\"focus clearfix relative\\\">\r\n          <div class=\\\"active_bg absolute\\\"></div>\r\n          <span class=\\\"active\\\"><em class=\\\"fonts fonts1\\\">查询医生</em></span> <span><em class=\\\"fonts fonts2\\\">专家团队</em></span> </div>\r\n        <div class=\\\"slides\\\">\r\n          <div class=\\\"slide slide1\\\">\r\n            <div class=\\\"inner center\\\"> \r\n              <h6 class=\\\"fonts\\\">按项目找专家</h6>\r\n              <div class=\\\"itemExperts clearfix\\\">\r\n    <a class=\\\"fonts bt zhengxing\\\" href=\\\"/gylm/zjtd\\\" target=\\\"_blank\\\" title=\\\"整形美容\\\">整形美容</a> \r\n    <a class=\\\"fonts bt pifu\\\" href=\\\"/gylm/zjtd\\\" target=\\\"_blank\\\" title=\\\"皮肤美容\\\">皮肤美容</a> \r\n    <a class=\\\"fonts bt weizhengxing\\\" href=\\\"/gylm/zjtd\\\" target=\\\"_blank\\\" title=\\\"微整形\\\">微整形</a> \r\n    <a class=\\\"fonts bt kouqiang\\\" href=\\\"/gylm/zjtd\\\" target=\\\"_blank\\\" title=\\\"口腔美容\\\">口腔美容</a> \r\n    <a class=\\\"fonts bt maofa\\\" href=\\\"/gylm/zjtd\\\" target=\\\"_blank\\\" title=\\\"毛发移植\\\">毛发移植</a> \r\n    <a class=\\\"fonts bt teyao\\\" href=\\\"/gylm/zjtd\\\" target=\\\"_blank\\\" title=\\\"特邀医生\\\">特邀医生</a> \r\n \r\n              </div>\r\n            </div>\r\n          </div>\r\n          <div class=\\\"slide slide2\\\">\r\n            <div class=\\\"doctorsBox relative\\\">\r\n              <div class=\\\"doctorsWrapper\\\">\r\n                <li> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2016-12-02/247.html\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/zjtd/2016-12-02/d73815ad0abd98fd51f88024a2bf6028.png\\\" width=\\\"100\\\" height=\\\"125\\\"/>\r\n                  <p class=\\\"fonts\\\">覃耀锋</p>\r\n                  </a>\r\n                  <div class=\\\"addInfo\\\"> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2016-12-02/247.html\\\" target=\\\"_blank\\\"><img src=\\\"picture/d73815ad0abd98fd51f88024a2bf6028.png\\\" width=\\\"100\\\" height=\\\"125\\\"/></a>\r\n                    <div class=\\\"addInfoList\\\">\r\n                      <h5 class=\\\"fonts\\\">覃耀锋</h5>\r\n                      <p class=\\\"fonts\\\">擅长项目：五官精细化整形、360°水动力螺旋吸脂、注射微整形等</p>\r\n                    </div>\r\n                  </div>\r\n                </li>\r\n                <li> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2017-02-28/366.html\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/zjtd/2017-02-28/7f6d3b78c210d1f95c39df5f80b1223f.png\\\" width=\\\"100\\\" height=\\\"125\\\"/>\r\n                  <p class=\\\"fonts\\\">刘波涛</p>\r\n                  </a>\r\n                  <div class=\\\"addInfo\\\"> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2017-02-28/366.html\\\" target=\\\"_blank\\\"><img src=\\\"picture/7f6d3b78c210d1f95c39df5f80b1223f.png\\\" width=\\\"100\\\" height=\\\"125\\\"/></a>\r\n                    <div class=\\\"addInfoList\\\">\r\n                      <h5 class=\\\"fonts\\\">刘波涛</h5>\r\n                      <p class=\\\"fonts\\\">擅长项目：双核光祛斑、OPT王者风范美肤、皮肤修复等</p>\r\n                    </div>\r\n                  </div>\r\n                </li>\r\n                <li> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2016-12-02/244.html\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/zjtd/2016-12-02/df46eba0bc90697d266705efbed101ca.png\\\" width=\\\"100\\\" height=\\\"125\\\"/>\r\n                  <p class=\\\"fonts\\\">冯宇明</p>\r\n                  </a>\r\n                  <div class=\\\"addInfo\\\"> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2016-12-02/244.html\\\" target=\\\"_blank\\\"><img src=\\\"picture/df46eba0bc90697d266705efbed101ca.png\\\" width=\\\"100\\\" height=\\\"125\\\"/></a>\r\n                    <div class=\\\"addInfoList\\\">\r\n                      <h5 class=\\\"fonts\\\">冯宇明</h5>\r\n                      <p class=\\\"fonts\\\">擅长项目：面部年轻化、嫩肤美白、水光注射等</p>\r\n                    </div>\r\n                  </div>\r\n                </li>\r\n                <li> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2017-05-31/395.html\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/zjtd/2017-05-31/5fda68130a65149ec9b31ddb2c492c46.png\\\" width=\\\"100\\\" height=\\\"125\\\"/>\r\n                  <p class=\\\"fonts\\\">龚衍寿</p>\r\n                  </a>\r\n                  <div class=\\\"addInfo\\\"> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2017-05-31/395.html\\\" target=\\\"_blank\\\"><img src=\\\"picture/5fda68130a65149ec9b31ddb2c492c46.png\\\" width=\\\"100\\\" height=\\\"125\\\"/></a>\r\n                    <div class=\\\"addInfoList\\\">\r\n                      <h5 class=\\\"fonts\\\">龚衍寿</h5>\r\n                      <p class=\\\"fonts\\\">擅长项目：无痛溶脂减肥、双眼皮、面部线雕年轻化等</p>\r\n                    </div>\r\n                  </div>\r\n                </li>\r\n                <li> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2017-04-16/381.html\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/zjtd/2017-04-16/3c27e29ba3cf829e80662b06d3d4de2c.png\\\" width=\\\"100\\\" height=\\\"125\\\"/>\r\n                  <p class=\\\"fonts\\\">廖洪跃</p>\r\n                  </a>\r\n                  <div class=\\\"addInfo\\\"> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2017-04-16/381.html\\\" target=\\\"_blank\\\"><img src=\\\"picture/3c27e29ba3cf829e80662b06d3d4de2c.png\\\" width=\\\"100\\\" height=\\\"125\\\"/></a>\r\n                    <div class=\\\"addInfoList\\\">\r\n                      <h5 class=\\\"fonts\\\">廖洪跃</h5>\r\n                      <p class=\\\"fonts\\\">擅长项目：各种眼部美容手术、上睑下垂矫正术、眼袋祛除等</p>\r\n                    </div>\r\n                  </div>\r\n                </li>\r\n                <li> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2017-04-26/385.html\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/zjtd/2017-04-26/9d21f05dfc3378bbc513fee55f9f8e3a.png\\\" width=\\\"100\\\" height=\\\"125\\\"/>\r\n                  <p class=\\\"fonts\\\">罗琳</p>\r\n                  </a>\r\n                  <div class=\\\"addInfo\\\"> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2017-04-26/385.html\\\" target=\\\"_blank\\\"><img src=\\\"picture/9d21f05dfc3378bbc513fee55f9f8e3a.png\\\" width=\\\"100\\\" height=\\\"125\\\"/></a>\r\n                    <div class=\\\"addInfoList\\\">\r\n                      <h5 class=\\\"fonts\\\">罗琳</h5>\r\n                      <p class=\\\"fonts\\\">擅长项目：精细化五官整形、鼻部整形、面部除皱术等</p>\r\n                    </div>\r\n                  </div>\r\n                </li>\r\n                <li> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2017-01-01/298.html\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/zjtd/2017-01-01/9a703b037261d797f3219b7731ffaa9f.jpg\\\" width=\\\"100\\\" height=\\\"125\\\"/>\r\n                  <p class=\\\"fonts\\\">秦晓峰</p>\r\n                  </a>\r\n                  <div class=\\\"addInfo\\\"> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2017-01-01/298.html\\\" target=\\\"_blank\\\"><img src=\\\"picture/9a703b037261d797f3219b7731ffaa9f.jpg\\\" width=\\\"100\\\" height=\\\"125\\\"/></a>\r\n                    <div class=\\\"addInfoList\\\">\r\n                      <h5 class=\\\"fonts\\\">秦晓峰</h5>\r\n                      <p class=\\\"fonts\\\">擅长项目:面部精细整形、烧伤整形修复、形体雕塑吸脂；等</p>\r\n                    </div>\r\n                  </div>\r\n                </li>\r\n                <li> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2016-12-02/246.html\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/zjtd/2016-12-02/349b8988f950b83c5a6bd5c1040ed4a6.png\\\" width=\\\"100\\\" height=\\\"125\\\"/>\r\n                  <p class=\\\"fonts\\\">郭小楼</p>\r\n                  </a>\r\n                  <div class=\\\"addInfo\\\"> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2016-12-02/246.html\\\" target=\\\"_blank\\\"><img src=\\\"picture/349b8988f950b83c5a6bd5c1040ed4a6.png\\\" width=\\\"100\\\" height=\\\"125\\\"/></a>\r\n                    <div class=\\\"addInfoList\\\">\r\n                      <h5 class=\\\"fonts\\\">郭小楼</h5>\r\n                      <p class=\\\"fonts\\\">擅长项目：美容冠修复、无托槽隐形矫正、皓齿美白等</p>\r\n                    </div>\r\n                  </div>\r\n                </li>\r\n\r\n            </div>\r\n              <!--<div class=\\\"preNextBtn absolute\\\"><a href=\\\"javascript:void(0)\\\" class=\\\"preBtn fl\\\"><i></i></a><a href=\\\"javascript:void(0)\\\" class=\\\"nextBtn fr\\\"><i></i></a></div>-->\r\n              <div class=\\\"overlayer absolute\\\"></div>\r\n              <div class=\\\"popInfo absolute\\\"> </div>\r\n            </div>\r\n          </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n    <div class=\\\"stage3 clearfix\\\">\r\n      <div class=\\\"stage3_width stage3_a  relative\\\">\r\n        <div class=\\\"alltitle absolute\\\"></div>\r\n        <div class=\\\"stage1Title clearfix absolute\\\">\r\n          <div class=\\\"preNext  clearfix absolute\\\"> \r\n          <a href=\\\"javascript:void(0)\\\" class=\\\"preBtn \\\"><i></i></a> \r\n          <a href=\\\"javascript:void(0)\\\" class=\\\"nextBtn \\\"><i></i></a> \r\n          </div>\r\n        </div>\r\n        <div class=\\\"stage3Box\\\">\r\n          <div class=\\\"slides\\\">\r\n          <a href=\\\"/s/pimiao/index.html\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/mlal/2017-05-03/2fadb6bdd942e78ebbbe966565f9c732.jpg\\\" width=\\\"1200\\\" height=\\\"769\\\"/></a> \r\n          </div>\r\n          <div class=\\\"slides\\\">\r\n          <a href=\\\"/s/Hair/index.html\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/mlal/2017-05-03/f00da24694787e3fac3f957bc3d1018e.jpg\\\" width=\\\"1200\\\" height=\\\"769\\\"/></a> \r\n          </div>\r\n          <div class=\\\"slides\\\">\r\n          <a href=\\\"/s/CarvedEyesc/index.html\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/mlal/2017-05-03/57ebf5884cd6c3e6d58b8a928041fa2c.jpg\\\" width=\\\"1200\\\" height=\\\"769\\\"/></a> \r\n          </div>\r\n          <div class=\\\"slides\\\">\r\n          <a href=\\\"/s/csd/index.html\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/mlal/2017-05-03/446854eac4245a18e3a6deef0d709111.jpg\\\" width=\\\"1200\\\" height=\\\"769\\\"/></a> \r\n          </div>\r\n          <div class=\\\"slides\\\">\r\n          <a href=\\\"/s/Hair/index.html\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/mlal/2017-05-03/ba5a93dfd7cb973a2b2e6a13c08092ed.jpg\\\" width=\\\"1200\\\" height=\\\"769\\\"/></a> \r\n          </div>\r\n          <div class=\\\"slides\\\">\r\n          <a href=\\\"/s/Jsm/index.html\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/mlal/2017-05-03/c1de86780b087673043fab82651bce0e.jpg\\\" width=\\\"1200\\\" height=\\\"769\\\"/></a> \r\n          </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n    <div class=\\\"xslc\\\">\r\n      <div class=\\\"xslc_focus clearfix\\\">\r\n        <div class=\\\"txt\\\" style=\\\"background:url(images/biaoti.png) no-repeat -1157px -0px;\\\"></div>\r\n        <div class=\\\"txt\\\" style=\\\"background:url(images/biaoti.png) no-repeat -1442px -0px;\\\"></div>\r\n        <div class=\\\"txt\\\" style=\\\"background:url(images/biaoti.png) no-repeat -1745px -0px;\\\"></div>\r\n      </div>\r\n      <div class=\\\"slideBox\\\">\r\n        <div class=\\\"slides\\\">\r\n          <div class=\\\"slide slide1 clearfix\\\">\r\n            <div class=\\\"info relative fl\\\"> <a href=\\\"javascript:;\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/gylm/yyhj/2016-12-29/88146cb896297b8d959ce5198aa30c2f.jpg\\\" width=\\\"239\\\" height=\\\"185\\\"/>\r\n              <p>医院外景</p>\r\n              </a> </div>\r\n            <div class=\\\"info relative fl\\\"> <a href=\\\"javascript:;\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/gylm/yyhj/2016-12-29/2714691bb63cfaab9e73017630ad2a63.jpg\\\" width=\\\"239\\\" height=\\\"185\\\"/>\r\n              <p>外科病房</p>\r\n              </a> </div>\r\n            <div class=\\\"info relative fl\\\"> <a href=\\\"javascript:;\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/gylm/yyhj/2016-12-29/567acc31ca63d20ecf0a717645ad1afe.jpg\\\" width=\\\"239\\\" height=\\\"185\\\"/>\r\n              <p>导医台</p>\r\n              </a> </div>\r\n            <div class=\\\"info relative fl\\\"> <a href=\\\"javascript:;\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/gylm/yyhj/2016-12-29/4c7a7a8a2f4f5442c7303165842798ba.jpg\\\" width=\\\"239\\\" height=\\\"185\\\"/>\r\n              <p>医院大厅</p>\r\n              </a> </div>\r\n          </div>\r\n          <div class=\\\"slide slide2 clearfix\\\">\r\n            <div class=\\\"info relative fl\\\"> <a href=\\\"javascript:;\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/gylm/jdsb/2016-12-28/191279171db89391a66907b642a4368e.jpg\\\" width=\\\"239\\\" height=\\\"185\\\"/>\r\n              <p style=\\\"text-align: center;font-size: 30px;line-height: 63px;\\\">王者风范</p>\r\n              </a> </div>\r\n            <div class=\\\"info relative fl\\\"> <a href=\\\"javascript:;\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/gylm/jdsb/2016-12-28/8013d5cdc862f56515289eed649a9b37.jpg\\\" width=\\\"239\\\" height=\\\"185\\\"/>\r\n              <p style=\\\"text-align: center;font-size: 30px;line-height: 63px;\\\">深蓝射频</p>\r\n              </a> </div>\r\n            <div class=\\\"info relative fl\\\"> <a href=\\\"javascript:;\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/gylm/jdsb/2016-12-28/209f5d7706a478085ecbec859885ca11.jpg\\\" width=\\\"239\\\" height=\\\"185\\\"/>\r\n              <p style=\\\"text-align: center;font-size: 30px;line-height: 63px;\\\">超声刀</p>\r\n              </a> </div>\r\n            <div class=\\\"info relative fl\\\"> <a href=\\\"javascript:;\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/gylm/jdsb/2016-12-28/6b72901730af782b7d74fcd6d2a0ff52.jpg\\\" width=\\\"239\\\" height=\\\"185\\\"/>\r\n              <p style=\\\"text-align: center;font-size: 30px;line-height: 63px;\\\">莱茜尔脱毛仪</p>\r\n              </a> </div>\r\n       \r\n          </div>\r\n          <div class=\\\"slide slide6 clearfix\\\">\r\n            <div class=\\\"info relative fl\\\"> <a href=\\\"javascript:;\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/gylm/yyry/2017-01-02/fe7a94e110eafde2271c32dc75c589e6.png\\\" width=\\\"239\\\" height=\\\"185\\\"/>\r\n              <p>韩国汉城整形医院技术合作</p>\r\n              </a> \r\n            </div>\r\n            <div class=\\\"info relative fl\\\"> <a href=\\\"javascript:;\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/gylm/yyry/2017-01-02/4725665ca5834bf2a4ee96934b06a3ba.png\\\" width=\\\"239\\\" height=\\\"185\\\"/>\r\n              <p>中美合作激光美容技术交流</p>\r\n              </a> \r\n            </div>\r\n            <div class=\\\"info relative fl\\\"> <a href=\\\"javascript:;\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/gylm/yyry/2017-01-02/1dd1169b1c7b02a009728e35bb1b0e67.png\\\" width=\\\"239\\\" height=\\\"185\\\"/>\r\n              <p>美国曼托假体授权指定使用</p>\r\n              </a> \r\n            </div>\r\n            <div class=\\\"info relative fl\\\"> <a href=\\\"javascript:;\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/gylm/yyry/2017-01-02/13a5f297f7b93d99189b437c5f26fdeb.png\\\" width=\\\"239\\\" height=\\\"185\\\"/>\r\n              <p>美国科医人激光中国临床培</p>\r\n              </a> \r\n            </div>\r\n            \r\n          </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n<!-- end content -->\r\n[!--temp.footer--]\r\n</body>\r\n</html>', '<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n</head>\r\n<body class=\\\"listpage\\\">\r\n[!--temp.dtheader--] \r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n<tr valign=\\\"top\\\">\r\n<td class=\\\"list_content\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n<tr>\r\n<td>现在的位置：[!--newsnav--]\r\n</td>\r\n</tr>\r\n</table>\r\n      <table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n        <tr> \r\n          <td width=\\\"300\\\" valign=\\\"top\\\"> \r\n		  <?php\r\n		  $lguserid=intval(getcvar(\\\'mluserid\\\'));//登陆用户ID\r\n		  $lgusername=RepPostVar(getcvar(\\\'mlusername\\\'));//登陆用户\r\n		  $lggroupid=intval(getcvar(\\\'mlgroupid\\\'));//会员组ID\r\n		  if($lggroupid)	//登陆会员显示菜单\r\n		  {\r\n		  ?>\r\n            <table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\" class=\\\"tableborder\\\">\r\n              <tr class=\\\"header\\\"> \r\n                <td height=\\\"20\\\" bgcolor=\\\"#FFFFFF\\\"> <div align=\\\"center\\\"><strong><a href=\\\"[!--news.url--]e/member/cp/\\\">功能菜单</a></strong></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/EditInfo/\\\">修改资料</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/my/\\\">帐号状态</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/msg/\\\">站内信息</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/mspace/SetSpace.php\\\">空间设置</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/DoInfo/\\\">管理信息</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/fava/\\\">收藏夹</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/payapi/\\\">在线支付</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/friend/\\\">我的好友</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/buybak/\\\">消费记录</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/buygroup/\\\">在线充值</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/card/\\\">点卡充值</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"#ecms\\\" onclick=\\\"window.open(\\\'[!--news.url--]e/ShopSys/buycar/\\\',\\\'\\\',\\\'width=680,height=500,scrollbars=yes,resizable=yes\\\');\\\">我的购物车</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/ShopSys/ListDd/\\\">我的订单</a></div></td>\r\n              </tr>\r\n			  <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/login/\\\">重新登陆</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/doaction.php?enews=exit\\\" onclick=\\\"return confirm(\\\'确认要退出?\\\');\\\">退出登陆</a></div></td>\r\n              </tr>\r\n            </table>\r\n			<?php\r\n			}\r\n			else	//游客显示菜单\r\n			{\r\n			?>  \r\n            <table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\" class=\\\"tableborder\\\">\r\n              <tr class=\\\"header\\\"> \r\n                <td height=\\\"20\\\" bgcolor=\\\"#FFFFFF\\\"> <div align=\\\"center\\\"><strong><a href=\\\"[!--news.url--]e/member/cp/\\\">功能菜单</a></strong></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/login/\\\">会员登陆</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/register/\\\">注册帐号</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/DoInfo/\\\">发布投稿</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"#ecms\\\" onclick=\\\"window.open(\\\'[!--news.url--]e/ShopSys/buycar/\\\',\\\'\\\',\\\'width=680,height=500,scrollbars=yes,resizable=yes\\\');\\\">我的购物车</a></div></td>\r\n              </tr>\r\n            </table>\r\n			<?php\r\n			}\r\n			?>\r\n			</td>\r\n          <td width=\\\"85%\\\" valign=\\\"top\\\">[!--empirenews.template--]</td>\r\n        </tr>\r\n      </table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', '<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>高级搜索 - Powered by EmpireCMS</title>\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n<script src=\\\"[!--news.url--]e/data/images/setday.js\\\"></script>\r\n</head>\r\n<body class=\\\"listpage\\\">\r\n[!--temp.dtheader--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n	<tr valign=\\\"top\\\">\r\n		<td class=\\\"list_content\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n				<tr>\r\n					<td>现在的位置：[!--url--]</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n				<tr>\r\n					<td><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\r\n						<tr>\r\n							<td><form action=\\\'[!--news.url--]e/search/index.php\\\' method=\\\"post\\\" name=\\\"search_news\\\" id=\\\"search_news\\\">\r\n									<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\r\n										<tr>\r\n											<td width=\\\"54%\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"6\\\" cellspacing=\\\"0\\\">\r\n													<tr>\r\n														<td bgcolor=\\\"#F4F4F4\\\"><strong>搜索范围</strong></td>\r\n													</tr>\r\n											</table></td>\r\n											<td width=\\\"46%\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"6\\\" cellspacing=\\\"0\\\">\r\n													<tr>\r\n														<td bgcolor=\\\"#F4F4F4\\\"><strong>搜索栏目</strong></td>\r\n													</tr>\r\n											</table></td>\r\n										</tr>\r\n										<tr>\r\n											<td valign=\\\"top\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"6\\\" cellspacing=\\\"0\\\">\r\n													<tr>\r\n														<td><input type=\\\"radio\\\" name=\\\"show\\\" value=\\\"title\\\" checked=\\\"checked\\\" />\r\n															标题\r\n															<input type=\\\"radio\\\" name=\\\"show\\\" value=\\\"smalltext\\\" />\r\n															简介\r\n															<input type=\\\"radio\\\" name=\\\"show\\\" value=\\\"newstext\\\" />\r\n															内容\r\n															<input type=\\\"radio\\\" name=\\\"show\\\" value=\\\"writer\\\" />\r\n															作者\r\n															<input name=\\\"show\\\" type=\\\"radio\\\" value=\\\"title,smalltext,newstext,writer\\\" />\r\n															不限</td>\r\n													</tr>\r\n												</table>\r\n													<br />\r\n													<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"6\\\" cellspacing=\\\"0\\\">\r\n														<tr bgcolor=\\\"#F4F4F4\\\">\r\n															<td><strong>时间限制</strong><font color=\\\"#666666\\\">(0000-00-00为不限制)</font></td>\r\n														</tr>\r\n														<tr>\r\n															<td height=\\\"30\\\" valign=\\\"top\\\">从\r\n																<input name=\\\"starttime\\\" type=\\\"text\\\" value=\\\"0000-00-00\\\" size=\\\"12\\\" onclick=\\\"setday(this)\\\" />\r\n																到\r\n																<input name=\\\"endtime\\\" type=\\\"text\\\" value=\\\"0000-00-00\\\" size=\\\"12\\\" onclick=\\\"setday(this)\\\" />\r\n																之间的数据</td>\r\n														</tr>\r\n														<tr>\r\n															<td bgcolor=\\\"#F4F4F4\\\"><strong>价格限制</strong><font color=\\\"#666666\\\">(商城模型中有效,0为不限制)</font></td>\r\n														</tr>\r\n														<tr>\r\n															<td>从\r\n																<input name=\\\"startprice\\\" type=\\\"text\\\" id=\\\"startprice\\\" value=\\\"0\\\" size=\\\"6\\\" />\r\n																到\r\n																<input name=\\\"endprice\\\" type=\\\"text\\\" id=\\\"endprice\\\" value=\\\"0\\\" size=\\\"6\\\" />\r\n																元之间</td>\r\n														</tr>\r\n												</table></td>\r\n											<td valign=\\\"top\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"6\\\" cellpadding=\\\"0\\\">\r\n													<tr>\r\n														<td><select name=\\\"classid\\\" size=\\\"8\\\" id=\\\"select2\\\" style=\\\"width: 100%;height:112px\\\">\r\n																<option value=\\\"0\\\" selected=\\\"selected\\\">所有栏目</option>\r\n															[!--class--]\r\n          \r\n														</select></td>\r\n													</tr>\r\n												</table>\r\n													<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"6\\\" cellspacing=\\\"0\\\">\r\n														<tr>\r\n															<td bgcolor=\\\"#F4F4F4\\\"><strong>结果显示</strong></td>\r\n														</tr>\r\n														<tr>\r\n															<td height=\\\"30\\\"><select name=\\\"orderby\\\" id=\\\"select4\\\">\r\n																	<option value=\\\"\\\">按发布日期</option>\r\n																	<option value=\\\"id\\\">信息ID</option>\r\n																	<option value=\\\"plnum\\\">评论数</option>\r\n																	<option value=\\\"onclick\\\">人气</option>\r\n																	<option value=\\\"totaldown\\\">下载数</option>\r\n																</select>\r\n																	<select name=\\\"myorder\\\" id=\\\"select5\\\">\r\n																		<option value=\\\"0\\\">倒序排列</option>\r\n																		<option value=\\\"1\\\">顺序排列</option>\r\n																	</select>\r\n															</td>\r\n														</tr>\r\n												</table></td>\r\n										</tr>\r\n									</table>\r\n								<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"4\\\" cellspacing=\\\"0\\\">\r\n										<tr>\r\n											<td>关键字：\r\n												<input name=\\\"keyboard\\\" type=\\\"text\\\" id=\\\"keyboard2\\\" size=\\\"60\\\" />\r\n													<input type=\\\"submit\\\" name=\\\"Submit22\\\" value=\\\"搜索\\\" />\r\n											</td>\r\n										</tr>\r\n									</table>\r\n							</form></td>\r\n						</tr>\r\n					</table></td>\r\n				</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', '<table border=0 cellpadding=3 cellspacing=1><form name=search_js1 method=post action=\'[!--news.url--]e/search/index.php\' onsubmit=\'return search_check(document.search_js1);\'><tr><td><div align=center>搜索: <select name=show><option value=title>标题</option><option value=smalltext>简介</option><option value=newstext>内容</option><option value=writer>作者</option><option value=title,smalltext,newstext,writer>搜索全部</option></select><select name=classid><option value=0>所有栏目</option>[!--class--]</select><input name=keyboard type=text size=13><input type=submit name=Submit value=搜索></div></td></tr></form></table>', '<table width=99% border=0 cellpadding=3 cellspacing=1><form name=search_js2 method=post action=\'[!--news.url--]e/search/index.php\' onsubmit=\'return search_check(document.search_js2);\'><tr><td height=25><div align=center>关键字: <input name=keyboard type=text size=13></div></td></tr><tr><td><div align=center>范围: <select name=show><option value=title>标题</option><option value=smalltext>简介</option><option value=newstext>内容</option><option value=writer>作者</option><option value=title,smalltext,newstext,writer>搜索全部</option></select></div></td></tr><tr><td><div align=center>栏目:<select name=classid><option value=0>所有栏目</option>[!--class--]</select></div></td></tr><tr><td><div align=center><input type=submit name=Submit value=搜索></div></td></tr></form></table>', '[!--empirenews.listtemp--]<li><a href=\"[!--titleurl--]\" title=\"[!--oldtitle--]\">[!--title--]</a></li>[!--empirenews.listtemp--]', '[ <a href=\\\"#ecms\\\" onclick=\\\"window.open(\\\'[!--down.url--]\\\',\\\'\\\',\\\'width=300,height=300,resizable=yes\\\');\\\">[!--down.name--]</a> ]', '[ <a href=\\\"#ecms\\\" onclick=\\\"window.open(\\\'[!--down.url--]\\\',\\\'\\\',\\\'width=300,height=300,resizable=yes\\\');\\\">[!--down.name--]</a> ]', '页次：[!--thispage--]/[!--pagenum--]&nbsp;每页[!--lencord--]&nbsp;总数[!--num--]&nbsp;&nbsp;&nbsp;&nbsp;[!--pagelink--]&nbsp;&nbsp;&nbsp;&nbsp;转到:[!--options--]', '<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>留言板 - Powered by EmpireCMS</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--bname--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--bname--]\\\" />\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n</head>\r\n<body class=\\\"listpage\\\">\r\n[!--temp.dtheader--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n<tr valign=\\\"top\\\">\r\n<td class=\\\"list_content\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n<tr>\r\n<td>现在的位置：<a href=../../../>首页</a>&nbsp;>&nbsp;[!--bname--]\r\n</td>\r\n</tr>\r\n</table><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n	<tr>\r\n		<td><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"3\\\" cellspacing=\\\"2\\\">\r\n			<tr>\r\n				<td align=\\\"center\\\" bgcolor=\\\"#E1EFFB\\\"><strong>[!--bname--]</strong></td>\r\n			</tr>\r\n			<tr>\r\n				<td align=\\\"left\\\" valign=\\\"top\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"4\\\" cellspacing=\\\"0\\\" bgcolor=\\\"#FFFFFF\\\">\r\n						<tr>\r\n							<td height=\\\"100%\\\" valign=\\\"top\\\" bgcolor=\\\"#FFFFFF\\\"> [!--empirenews.listtemp--]\r\n								<table width=\\\"92%\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"4\\\" cellspacing=\\\"1\\\" bgcolor=\\\"#F4F9FD\\\" class=\\\"tableborder\\\">\r\n										<tr class=\\\"header\\\">\r\n											<td width=\\\"55%\\\" height=\\\"23\\\">发布者: [!--name--] </td>\r\n											<td width=\\\"45%\\\">发布时间: [!--lytime--] </td>\r\n										</tr>\r\n										<tr bgcolor=\\\"#FFFFFF\\\">\r\n											<td height=\\\"23\\\" colspan=\\\"2\\\"><table border=\\\"0\\\" width=\\\"100%\\\" cellspacing=\\\"1\\\" cellpadding=\\\"8\\\" bgcolor=\\\'#cccccc\\\'>\r\n													<tr>\r\n														<td width=\\\'100%\\\' bgcolor=\\\'#FFFFFF\\\' style=\\\'word-break:break-all\\\'> [!--lytext--] </td>\r\n													</tr>\r\n												</table>\r\n												[!--start.regbook--]\r\n												<table width=\\\"100%\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\">\r\n													<tr>\r\n														<td><img src=\\\"../../data/images/regb.gif\\\" width=\\\"18\\\" height=\\\"18\\\" /><strong><font color=\\\"#FF0000\\\">回复:</font></strong> [!--retext--] </td>\r\n													</tr>\r\n												</table>\r\n												[!--end.regbook--] </td>\r\n										</tr>\r\n									</table>\r\n								<br />\r\n								[!--empirenews.listtemp--]\r\n								<table width=\\\"92%\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"4\\\" cellspacing=\\\"1\\\">\r\n									<tr>\r\n										<td>分页: [!--listpage--]</td>\r\n									</tr>\r\n								</table>\r\n								<form action=\\\"../../enews/index.php\\\" method=\\\"post\\\" name=\\\"form1\\\" id=\\\"form1\\\">\r\n									<table width=\\\"92%\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"4\\\" cellspacing=\\\"1\\\"class=\\\"tableborder\\\">\r\n										<tr class=\\\"header\\\">\r\n											<td colspan=\\\"2\\\" bgcolor=\\\"#F4F9FD\\\"><strong>请您留言:</strong></td>\r\n										</tr>\r\n										<tr bgcolor=\\\"#FFFFFF\\\">\r\n											<td width=\\\"20%\\\">姓名:</td>\r\n											<td width=\\\"722\\\" height=\\\"23\\\"><input name=\\\"name\\\" type=\\\"text\\\" id=\\\"name\\\" />\r\n												*</td>\r\n										</tr>\r\n										<tr bgcolor=\\\"#FFFFFF\\\">\r\n											<td>联系邮箱:</td>\r\n											<td height=\\\"23\\\"><input name=\\\"email\\\" type=\\\"text\\\" id=\\\"email\\\" />\r\n												*</td>\r\n										</tr>\r\n										<tr bgcolor=\\\"#FFFFFF\\\">\r\n											<td>联系电话:</td>\r\n											<td height=\\\"23\\\"><input name=\\\"mycall\\\" type=\\\"text\\\" id=\\\"mycall\\\" /></td>\r\n										</tr>\r\n										<tr bgcolor=\\\"#FFFFFF\\\">\r\n											<td>留言内容(*):</td>\r\n											<td height=\\\"23\\\"><textarea name=\\\"lytext\\\" cols=\\\"60\\\" rows=\\\"12\\\" id=\\\"lytext\\\"></textarea></td>\r\n										</tr>\r\n										<tr bgcolor=\\\"#FFFFFF\\\">\r\n											<td height=\\\"23\\\">&nbsp;</td>\r\n											<td height=\\\"23\\\"><input type=\\\"submit\\\" name=\\\"Submit3\\\" value=\\\"提交\\\" />\r\n											<input type=\\\"reset\\\" name=\\\"Submit22\\\" value=\\\"重置\\\" />\r\n											<input name=\\\"enews\\\" type=\\\"hidden\\\" id=\\\"enews\\\" value=\\\"AddGbook\\\" /></td>\r\n										</tr>\r\n									</table>\r\n								</form></td>\r\n						</tr>\r\n				</table></td>\r\n			</tr>\r\n		</table></td>\r\n	</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', '<html>\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\">\r\n<title>登陆</title>\r\n<LINK href=\\\"../../data/images/qcss.css\\\" rel=stylesheet>\r\n</head>\r\n<body bgcolor=\\\"#ededed\\\" topmargin=\\\"0\\\">\r\n<table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"100%\\\">\r\n  <form name=login method=post action=\\\"../../member/doaction.php\\\">\r\n    <input type=hidden name=enews value=login>\r\n    <input type=hidden name=prtype value=1>\r\n    <tr> \r\n      <td height=\\\"23\\\" align=\\\"center\\\">\r\n      <div align=\\\"left\\\">\r\n      用户名：<input name=\\\"username\\\" type=\\\"text\\\" size=\\\"8\\\">&nbsp;\r\n      密码：<input name=\\\"password\\\" type=\\\"password\\\" size=\\\"8\\\">\r\n      <select name=\\\"lifetime\\\" id=\\\"lifetime\\\">\r\n         <option value=\\\"0\\\">不保存</option>\r\n         <option value=\\\"3600\\\">一小时</option>\r\n         <option value=\\\"86400\\\">一天</option>\r\n         <option value=\\\"2592000\\\">一个月</option>\r\n         <option value=\\\"315360000\\\">永久</option>\r\n      </select>&nbsp;\r\n      <input type=\\\"submit\\\" name=\\\"Submit\\\" value=\\\"登陆\\\">&nbsp;\r\n      <input type=\\\"button\\\" name=\\\"Submit2\\\" value=\\\"注册\\\" onclick=\\\"window.open(\\\'../register/\\\');\\\">\r\n      </div>\r\n      </td>\r\n    </tr>\r\n  </form>\r\n</table>\r\n</body>\r\n</html>\r\n[!--empirenews.template--]\r\n<html>\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\">\r\n<title>登陆</title>\r\n<LINK href=\\\"../../data/images/qcss.css\\\" rel=stylesheet>\r\n</head>\r\n<body bgcolor=\\\"#ededed\\\" topmargin=\\\"0\\\">\r\n<table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"100%\\\">\r\n    <tr>\r\n	<td height=\\\"23\\\" align=\\\"center\\\">\r\n	<div align=\\\"left\\\">\r\n		&raquo;&nbsp;<font color=red><b>[!--username--]</b></font>&nbsp;&nbsp;<a href=\\\"../my/\\\" target=\\\"_parent\\\">[!--groupname--]</a>&nbsp;[!--havemsg--]&nbsp;<a href=\\\"[!--news.url--]e/space/?userid=[!--userid--]\\\" target=_blank>我的空间</a>&nbsp;&nbsp;<a href=\\\"../msg/\\\" target=_blank>短信息</a>&nbsp;&nbsp;<a href=\\\"../fava/\\\" target=_blank>收藏夹</a>&nbsp;&nbsp;<a href=\\\"../cp/\\\" target=\\\"_parent\\\">控制面板</a>&nbsp;&nbsp;<a href=\\\"../../member/doaction.php?enews=exit&prtype=9\\\" onclick=\\\"return confirm(\\\'确认要退出?\\\');\\\">退出</a> \r\n	</div>\r\n	</td>\r\n    </tr>\r\n</table>\r\n</body>\r\n</html>', '50', 'Y-m-d H:i:s', '<form name=login method=post action=\\\"[!--news.url--]e/member/doaction.php\\\">\r\n    <input type=hidden name=enews value=login>\r\n    <input type=hidden name=ecmsfrom value=9>\r\n    用户名：<input name=\\\"username\\\" type=\\\"text\\\" class=\\\"inputText\\\" size=\\\"16\\\" />&nbsp;\r\n    密码：<input name=\\\"password\\\" type=\\\"password\\\" class=\\\"inputText\\\" size=\\\"16\\\" />&nbsp;\r\n    <input type=\\\"submit\\\" name=\\\"Submit\\\" value=\\\"登陆\\\" class=\\\"inputSub\\\" />&nbsp;\r\n    <input type=\\\"button\\\" name=\\\"Submit2\\\" value=\\\"注册\\\" class=\\\"inputSub\\\" onclick=\\\"window.open(\\\'[!--news.url--]e/member/register/\\\');\\\" />\r\n</form>\r\n[!--empirenews.template--]\r\n&raquo;&nbsp;<font color=red><b>[!--username--]</b></font>&nbsp;&nbsp;<a href=\\\"[!--news.url--]e/member/my/\\\" target=\\\"_parent\\\">[!--groupname--]</a>&nbsp;[!--havemsg--]&nbsp;<a href=\\\"[!--news.url--]e/space/?userid=[!--userid--]\\\" target=_blank>我的空间</a>&nbsp;&nbsp;<a href=\\\"[!--news.url--]e/member/msg/\\\" target=_blank>短信息</a>&nbsp;&nbsp;<a href=\\\"[!--news.url--]e/member/fava/\\\" target=_blank>收藏夹</a>&nbsp;&nbsp;<a href=\\\"[!--news.url--]e/member/cp/\\\" target=\\\"_parent\\\">控制面板</a>&nbsp;&nbsp;<a href=\\\"[!--news.url--]e/member/doaction.php?enews=exit&ecmsfrom=9\\\" onclick=\\\"return confirm(\\\'确认要退出?\\\');\\\">退出</a>', '<html>\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\">\r\n<title>[!--pagetitle--]</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n<link href=\\\"../../data/images/qcss.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\">\r\n</head>\r\n<body>\r\n<br>\r\n<br>\r\n<br>\r\n<br>\r\n<table align=\\\"center\\\" width=\\\"100%\\\">\r\n  <tr> \r\n    <td height=\\\"32\\\" align=center>\r\n	<a href=\\\"[!--down.url--]\\\" title=\\\"[!--title--] －[!--down.name--]\\\">\r\n	<img src=\\\"../../data/images/download.jpg\\\" border=0>\r\n	</a>\r\n	</td>\r\n  </tr>\r\n  <tr> \r\n    <td align=center>(点击下载)</td>\r\n  </tr>\r\n</table>\r\n<br>\r\n</body>\r\n</html>', '[!--empirenews.listtemp--] \r\n      <table width=\\\"100%\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\" style=\\\"word-break:break-all; word-wrap:break-all;\\\">\r\n        <tr> \r\n          <td height=\\\"30\\\"><span class=\\\"name\\\">本站网友 [!--username--]</span> <font color=\\\"#666666\\\">ip:[!--plip--]</font></td>\r\n          <td><div align=\\\"right\\\"><font color=\\\"#666666\\\">[!--pltime--] 发表</font></div></td>\r\n        </tr>\r\n        <tr valign=\\\"top\\\"> \r\n          <td height=\\\"50\\\" colspan=\\\"2\\\" class=\\\"text\\\">[!--pltext--]</td>\r\n        </tr>\r\n        <tr> \r\n          <td height=\\\"30\\\">&nbsp;</td>\r\n          <td><div align=\\\"right\\\" class=\\\"re\\\"> \r\n              <a href=\\\"JavaScript:makeRequest(\\\'[!--news.url--]e/pl/doaction.php?enews=DoForPl&plid=[!--plid--]&classid=[!--classid--]&id=[!--id--]&dopl=1&doajax=1&ajaxarea=zcpldiv[!--plid--]\\\',\\\'EchoReturnedText\\\',\\\'GET\\\',\\\'\\\');\\\">支持</a>[<span id=\\\"zcpldiv[!--plid--]\\\">[!--zcnum--]</span>]&nbsp; \r\n              <a href=\\\"JavaScript:makeRequest(\\\'[!--news.url--]e/pl/doaction.php?enews=DoForPl&plid=[!--plid--]&classid=[!--classid--]&id=[!--id--]&dopl=0&doajax=1&ajaxarea=fdpldiv[!--plid--]\\\',\\\'EchoReturnedText\\\',\\\'GET\\\',\\\'\\\');\\\">反对</a>[<span id=\\\"fdpldiv[!--plid--]\\\">[!--fdnum--]</span>]\r\n            </div></td>\r\n        </tr>\r\n      </table>\r\n      <table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr>\r\n          <td background=\\\"[!--news.url--]skin/default/images/plhrbg.gif\\\"></td>\r\n        </tr>\r\n      </table>\r\n[!--empirenews.listtemp--]', '<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>搜索 - Powered by EmpireCMS</title>\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n<style type=\\\"text/css\\\">\r\n<!--\r\n.r {\r\ndisplay:inline;\r\nfont-weight:normal;\r\nmargin:0;\r\nfont-size:16px;\r\nmargin-top:10px;\r\n}\r\n.a{color:green}\r\n.fl{color:#77c}\r\n-->\r\n</style>\r\n</head>\r\n<body class=\\\"listpage\\\">\r\n[!--temp.dtheader--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n	<tr valign=\\\"top\\\">\r\n		<td class=\\\"list_content\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n				<tr>\r\n					<td>现在的位置：<a href=\\\"[!--news.url--]\\\">首页</a>&nbsp;>&nbsp;搜索</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n				<tr>\r\n					<td><form action=\\\'index.php\\\' method=\\\"GET\\\" name=\\\"search_news\\\" id=\\\"search_news\\\">\r\n							<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"6\\\" cellpadding=\\\"0\\\">\r\n								<tr>\r\n									<td height=\\\"32\\\">关键字：\r\n										<input name=\\\"keyboard\\\" type=\\\"text\\\" id=\\\"keyboard\\\" value=\\\"[!--keyboard--]\\\" size=\\\"42\\\" />\r\n                    <select name=\\\"field\\\" id=\\\"field\\\">\r\n                      <option value=\\\"1\\\">全文</option>\r\n                      <option value=\\\"2\\\">标题</option>\r\n                      <option value=\\\"3\\\">内容</option>\r\n                    </select> \r\n                    <input type=\\\"submit\\\" name=\\\"Submit22\\\" value=\\\"搜索\\\" />\r\n                    <font color=\\\"#666666\\\">(多个关键字请用&quot;空格&quot;隔开)</font> </td>\r\n								</tr>\r\n							</table>\r\n						</form>\r\n						<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"6\\\">\r\n							<tr>\r\n								<td>系统搜索到约有<strong>[!--num--]</strong>项符合<strong>[!--keyboard--]</strong>的查询结果</td>\r\n							</tr>\r\n						</table>\r\n						[!--empirenews.listtemp--]\r\n						<h2 class=\\\"r\\\"><span>[!--no.num--].</span> <a class=\\\"l\\\" href=\\\"[!--titleurl--]\\\" target=\\\"_blank\\\">[!--title--]</a></h2>\r\n						<table width=\\\"80%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\r\n							<tbody>\r\n							<tr>\r\n								<td>[!--smalltext--]</td>\r\n							</tr>\r\n							<tr>\r\n								<td><span class=\\\"a\\\">[!--titleurl--] - [!--newstime--]</span></td>\r\n							</tr>\r\n							<tr>\r\n								<td>&nbsp;</td>\r\n							</tr>\r\n							</tbody>\r\n						</table>\r\n						[!--empirenews.listtemp--]\r\n						<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"list_page\\\">\r\n							<tr>\r\n								<td>[!--listpage--]</td>\r\n							</tr>\r\n						</table></td>\r\n				</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', '120', 'Y-m-d H:i:s');

-- ----------------------------
-- Table structure for `phome_enewspubvar`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewspubvar`;
CREATE TABLE `phome_enewspubvar` (
  `varid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `myvar` varchar(60) NOT NULL DEFAULT '',
  `varname` varchar(20) NOT NULL DEFAULT '',
  `varvalue` text NOT NULL,
  `varsay` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tocache` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`varid`),
  UNIQUE KEY `varname` (`varname`),
  KEY `classid` (`classid`),
  KEY `tocache` (`tocache`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewspubvar
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewspubvarclass`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewspubvarclass`;
CREATE TABLE `phome_enewspubvarclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  `classsay` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewspubvarclass
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsqmsg`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsqmsg`;
CREATE TABLE `phome_enewsqmsg` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL DEFAULT '',
  `msgtext` text NOT NULL,
  `haveread` tinyint(1) NOT NULL DEFAULT '0',
  `msgtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `to_username` varchar(30) NOT NULL DEFAULT '',
  `from_userid` int(10) unsigned NOT NULL DEFAULT '0',
  `from_username` varchar(30) NOT NULL DEFAULT '',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0',
  `issys` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mid`),
  KEY `to_username` (`to_username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsqmsg
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewssearch`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewssearch`;
CREATE TABLE `phome_enewssearch` (
  `searchid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `keyboard` varchar(255) NOT NULL DEFAULT '',
  `searchtime` int(10) unsigned NOT NULL DEFAULT '0',
  `searchclass` varchar(255) NOT NULL DEFAULT '',
  `result_num` int(10) unsigned NOT NULL DEFAULT '0',
  `searchip` varchar(20) NOT NULL DEFAULT '',
  `classid` varchar(255) NOT NULL DEFAULT '',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `orderby` varchar(30) NOT NULL DEFAULT '0',
  `myorder` tinyint(1) NOT NULL DEFAULT '0',
  `checkpass` varchar(32) NOT NULL DEFAULT '',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `tempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `iskey` tinyint(1) NOT NULL DEFAULT '0',
  `andsql` text NOT NULL,
  `trueclassid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`searchid`),
  KEY `checkpass` (`checkpass`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewssearch
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewssearchall`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewssearchall`;
CREATE TABLE `phome_enewssearchall` (
  `sid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` text NOT NULL,
  `infotime` int(10) unsigned NOT NULL DEFAULT '0',
  `infotext` mediumtext NOT NULL,
  PRIMARY KEY (`sid`),
  KEY `id` (`id`,`classid`,`infotime`),
  FULLTEXT KEY `title` (`title`,`infotext`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewssearchall
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewssearchall_load`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewssearchall_load`;
CREATE TABLE `phome_enewssearchall_load` (
  `lid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `titlefield` varchar(30) NOT NULL DEFAULT '',
  `infotextfield` varchar(30) NOT NULL DEFAULT '',
  `smalltextfield` varchar(30) NOT NULL DEFAULT '',
  `loadnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewssearchall_load
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewssearchtemp`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewssearchtemp`;
CREATE TABLE `phome_enewssearchtemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `subnews` smallint(6) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `listvar` text NOT NULL,
  `rownum` smallint(6) NOT NULL DEFAULT '0',
  `modid` smallint(6) NOT NULL DEFAULT '0',
  `showdate` varchar(50) NOT NULL DEFAULT '',
  `subtitle` smallint(6) NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `docode` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewssearchtemp
-- ----------------------------
INSERT INTO `phome_enewssearchtemp` VALUES ('1', '默认搜索模板', '<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>[!--keyboard--] 搜索结果 - Powered by EmpireCMS</title>\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n<style type=\\\"text/css\\\">\r\n<!--\r\n.r {\r\ndisplay:inline;\r\nfont-weight:normal;\r\nmargin:0;\r\nfont-size:16px;\r\nmargin-top:10px;\r\n}\r\n.a{color:green}\r\n.fl{color:#77c}\r\n-->\r\n</style>\r\n</head>\r\n<body class=\\\"listpage\\\">\r\n[!--temp.dtheader--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n	<tr valign=\\\"top\\\">\r\n		<td class=\\\"list_content\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n				<tr>\r\n					<td>现在的位置：<a href=\\\"[!--news.url--]\\\" class=\\\"classlinkclass\\\">首页</a>&nbsp;>&nbsp;<a href=\\\"[!--news.url--]search/\\\" class=\\\"classlinkclass\\\">高级搜索</a>&nbsp;>&nbsp;搜索结果</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n				<tr>\r\n					<td><form action=\\\'../../search/index.php\\\' method=\\\"post\\\" name=\\\"search_news\\\" id=\\\"search_news\\\">\r\n							<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"6\\\" cellpadding=\\\"0\\\">\r\n								<input type=\\\"hidden\\\" name=\\\"show\\\" value=\\\"title\\\" />\r\n								<tr>\r\n									<td height=\\\"32\\\">关键字：\r\n										<input name=\\\"keyboard\\\" type=\\\"text\\\" id=\\\"keyboard\\\" value=\\\"[!--keyboard--]\\\" size=\\\"42\\\" />\r\n										<input type=\\\"submit\\\" name=\\\"Submit22\\\" value=\\\"搜索\\\" />\r\n										&nbsp;\r\n										<input type=\\\"button\\\" name=\\\"Submit\\\" value=\\\"高级搜索\\\" onclick=\\\"self.location.href=\\\'../../../search/\\\'\\\" />\r\n										(多个关键字请用&quot;空格&quot;隔开) </td>\r\n								</tr>\r\n							</table>\r\n						</form>\r\n						<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"6\\\">\r\n							<tr>\r\n								<td>系统搜索到约有<strong>[!--ecms.num--]</strong>项符合<strong>[!--keyboard--]</strong>的查询结果</td>\r\n							</tr>\r\n						</table>\r\n						[!--empirenews.listtemp--]\r\n						<!--list.var1-->\r\n						[!--empirenews.listtemp--]\r\n						<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"list_page\\\">\r\n							<tr>\r\n								<td>[!--show.page--]</td>\r\n							</tr>\r\n						</table></td>\r\n				</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', '180', '1', '<h2 class=\\\"r\\\"><span>[!--no.num--].</span> <a class=\\\"l\\\" href=\\\"[!--titleurl--]\\\" target=\\\"_blank\\\">[!--title--]</a></h2>\r\n<table width=\\\"80%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\r\n	<tbody>\r\n		<tr>\r\n			<td>[!--smalltext--]</td>\r\n		</tr>\r\n		<tr>\r\n			<td><span class=\\\"a\\\">[!--titleurl--] - [!--newstime--]</span> - <a class=\\\"fl\\\" href=\\\"[!--this.classlink--]\\\" target=\\\"_blank\\\">[!--this.classname--]</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '1', '1', 'Y-m-d', '0', '0', '0');

-- ----------------------------
-- Table structure for `phome_enewssearchtempclass`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewssearchtempclass`;
CREATE TABLE `phome_enewssearchtempclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewssearchtempclass
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsshopdd`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsshopdd`;
CREATE TABLE `phome_enewsshopdd` (
  `ddid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ddno` varchar(30) NOT NULL DEFAULT '',
  `ddtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `outproduct` tinyint(1) NOT NULL DEFAULT '0',
  `haveprice` tinyint(1) NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `truename` varchar(20) NOT NULL DEFAULT '',
  `oicq` varchar(25) NOT NULL DEFAULT '',
  `msn` varchar(120) NOT NULL DEFAULT '',
  `email` varchar(120) NOT NULL DEFAULT '',
  `mycall` varchar(30) NOT NULL DEFAULT '',
  `phone` varchar(30) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zip` varchar(8) NOT NULL DEFAULT '',
  `psid` smallint(6) NOT NULL DEFAULT '0',
  `psname` varchar(60) NOT NULL DEFAULT '',
  `pstotal` float(11,2) NOT NULL DEFAULT '0.00',
  `alltotal` float(11,2) NOT NULL DEFAULT '0.00',
  `payfsid` smallint(6) NOT NULL DEFAULT '0',
  `payfsname` varchar(60) NOT NULL DEFAULT '',
  `payby` tinyint(4) NOT NULL DEFAULT '0',
  `alltotalfen` float(11,2) NOT NULL DEFAULT '0.00',
  `fp` tinyint(1) NOT NULL DEFAULT '0',
  `fptt` varchar(255) NOT NULL DEFAULT '',
  `fptotal` float(11,2) NOT NULL DEFAULT '0.00',
  `fpname` varchar(50) NOT NULL DEFAULT '',
  `userip` varchar(20) NOT NULL DEFAULT '',
  `signbuild` varchar(100) NOT NULL DEFAULT '',
  `besttime` varchar(120) NOT NULL DEFAULT '',
  `pretotal` float(11,2) NOT NULL DEFAULT '0.00',
  `ddtruetime` int(10) unsigned NOT NULL DEFAULT '0',
  `havecutnum` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ddid`),
  KEY `ddno` (`ddno`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsshopdd
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsshopdd_add`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsshopdd_add`;
CREATE TABLE `phome_enewsshopdd_add` (
  `ddid` int(10) unsigned NOT NULL DEFAULT '0',
  `buycar` mediumtext NOT NULL,
  `bz` text NOT NULL,
  `retext` text NOT NULL,
  PRIMARY KEY (`ddid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsshopdd_add
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsshoppayfs`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsshoppayfs`;
CREATE TABLE `phome_enewsshoppayfs` (
  `payid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `payname` varchar(60) NOT NULL DEFAULT '',
  `payurl` varchar(255) NOT NULL DEFAULT '',
  `paysay` text NOT NULL,
  `userpay` tinyint(1) NOT NULL DEFAULT '0',
  `userfen` tinyint(1) NOT NULL DEFAULT '0',
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`payid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsshoppayfs
-- ----------------------------
INSERT INTO `phome_enewsshoppayfs` VALUES ('1', '邮政汇款', '', '邮政汇款地址:******', '0', '0', '0', '0');
INSERT INTO `phome_enewsshoppayfs` VALUES ('2', '银行转帐', '', '银行转帐帐号:******', '0', '0', '0', '0');
INSERT INTO `phome_enewsshoppayfs` VALUES ('3', '网银支付', '/e/payapi/ShopPay.php?paytype=alipay', '<p>网银支付</p>', '0', '0', '0', '1');
INSERT INTO `phome_enewsshoppayfs` VALUES ('4', '预付款支付', '', '预付款支付', '1', '0', '0', '0');
INSERT INTO `phome_enewsshoppayfs` VALUES ('5', '货到付款(或上门收款)', '', '货到付款(或上门收款)说明', '0', '0', '0', '0');
INSERT INTO `phome_enewsshoppayfs` VALUES ('6', '点数购买', '', '点数购买', '0', '1', '0', '0');

-- ----------------------------
-- Table structure for `phome_enewsshopps`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsshopps`;
CREATE TABLE `phome_enewsshopps` (
  `pid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `pname` varchar(60) NOT NULL DEFAULT '',
  `price` float(11,2) NOT NULL DEFAULT '0.00',
  `otherprice` text NOT NULL,
  `psay` text NOT NULL,
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsshopps
-- ----------------------------
INSERT INTO `phome_enewsshopps` VALUES ('1', '送货上门', '10.00', '', '送货上门', '0', '0');
INSERT INTO `phome_enewsshopps` VALUES ('2', '特快专递（EMS）', '25.00', '', '特快专递（EMS）', '0', '0');
INSERT INTO `phome_enewsshopps` VALUES ('3', '普通邮递', '5.00', '', '普通邮递', '0', '1');
INSERT INTO `phome_enewsshopps` VALUES ('4', '邮局快邮', '12.00', '', '邮局快邮', '0', '0');

-- ----------------------------
-- Table structure for `phome_enewsshop_address`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsshop_address`;
CREATE TABLE `phome_enewsshop_address` (
  `addressid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `addressname` char(50) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `truename` char(20) NOT NULL DEFAULT '',
  `oicq` char(20) NOT NULL DEFAULT '',
  `msn` char(60) NOT NULL DEFAULT '',
  `email` char(60) NOT NULL DEFAULT '',
  `address` char(255) NOT NULL DEFAULT '',
  `zip` char(8) NOT NULL DEFAULT '',
  `mycall` char(30) NOT NULL DEFAULT '',
  `phone` char(30) NOT NULL DEFAULT '',
  `signbuild` char(100) NOT NULL DEFAULT '',
  `besttime` char(120) NOT NULL DEFAULT '',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`addressid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsshop_address
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsshop_ddlog`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsshop_ddlog`;
CREATE TABLE `phome_enewsshop_ddlog` (
  `logid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ddid` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ecms` varchar(30) NOT NULL DEFAULT '',
  `bz` varchar(255) NOT NULL DEFAULT '',
  `addbz` varchar(255) NOT NULL DEFAULT '',
  `logtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`logid`),
  KEY `ddid` (`ddid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsshop_ddlog
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsshop_precode`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsshop_precode`;
CREATE TABLE `phome_enewsshop_precode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `prename` varchar(30) NOT NULL DEFAULT '',
  `precode` varchar(36) NOT NULL DEFAULT '',
  `premoney` int(10) unsigned NOT NULL DEFAULT '0',
  `pretype` tinyint(1) NOT NULL DEFAULT '0',
  `reuse` tinyint(1) NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `groupid` varchar(255) NOT NULL DEFAULT '',
  `classid` text NOT NULL,
  `musttotal` int(10) unsigned NOT NULL DEFAULT '0',
  `usenum` int(11) NOT NULL DEFAULT '0',
  `haveusenum` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `precode` (`precode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsshop_precode
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsshop_set`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsshop_set`;
CREATE TABLE `phome_enewsshop_set` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `shopddgroupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `buycarnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `havefp` tinyint(1) NOT NULL DEFAULT '0',
  `fpnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fpname` text NOT NULL,
  `ddmust` text NOT NULL,
  `haveatt` tinyint(1) NOT NULL DEFAULT '0',
  `shoptbs` varchar(255) NOT NULL DEFAULT '',
  `buystep` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `shoppsmust` tinyint(1) NOT NULL DEFAULT '0',
  `shoppayfsmust` tinyint(1) NOT NULL DEFAULT '0',
  `dddeltime` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cutnumtype` tinyint(1) NOT NULL DEFAULT '0',
  `cutnumtime` int(10) unsigned NOT NULL DEFAULT '0',
  `freepstotal` int(10) unsigned NOT NULL DEFAULT '0',
  `singlenum` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsshop_set
-- ----------------------------
INSERT INTO `phome_enewsshop_set` VALUES ('1', '0', '0', '0', '10', '商品名称\r\n办公用品\r\n日用品', ',truename,mycall,address,', '0', ',shop,', '0', '1', '1', '0', '0', '120', '0', '0');

-- ----------------------------
-- Table structure for `phome_enewssp`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewssp`;
CREATE TABLE `phome_enewssp` (
  `spid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spname` varchar(30) NOT NULL DEFAULT '',
  `varname` varchar(30) NOT NULL DEFAULT '',
  `sppic` varchar(255) NOT NULL DEFAULT '',
  `spsay` varchar(255) NOT NULL DEFAULT '',
  `sptype` tinyint(1) NOT NULL DEFAULT '0',
  `cid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `maxnum` int(11) NOT NULL DEFAULT '0',
  `sptime` int(10) unsigned NOT NULL DEFAULT '0',
  `groupid` text NOT NULL,
  `userclass` text NOT NULL,
  `username` text NOT NULL,
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `cladd` tinyint(1) NOT NULL DEFAULT '0',
  `refile` tinyint(1) NOT NULL DEFAULT '0',
  `spfile` varchar(255) NOT NULL DEFAULT '',
  `spfileline` smallint(6) NOT NULL DEFAULT '0',
  `spfilesub` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`spid`),
  UNIQUE KEY `varname` (`varname`),
  KEY `refile` (`refile`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewssp
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsspacestyle`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsspacestyle`;
CREATE TABLE `phome_enewsspacestyle` (
  `styleid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `stylename` varchar(30) NOT NULL DEFAULT '',
  `stylepic` varchar(255) NOT NULL DEFAULT '',
  `stylesay` varchar(255) NOT NULL DEFAULT '',
  `stylepath` varchar(30) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `membergroup` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`styleid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsspacestyle
-- ----------------------------
INSERT INTO `phome_enewsspacestyle` VALUES ('1', '默认个人空间模板', '', '默认个人空间模板', 'default', '1', ',1,2,');
INSERT INTO `phome_enewsspacestyle` VALUES ('2', '默认企业空间模板', '', '默认企业空间模板', 'comdefault', '0', ',3,4,');

-- ----------------------------
-- Table structure for `phome_enewsspclass`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsspclass`;
CREATE TABLE `phome_enewsspclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  `classsay` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsspclass
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewssp_1`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewssp_1`;
CREATE TABLE `phome_enewssp_1` (
  `sid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `titlepic` varchar(200) NOT NULL DEFAULT '',
  `bigpic` varchar(200) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `smalltext` varchar(255) NOT NULL DEFAULT '',
  `titlefont` varchar(20) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepre` varchar(30) NOT NULL DEFAULT '',
  `titlenext` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`sid`),
  KEY `spid` (`spid`),
  KEY `newstime` (`newstime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewssp_1
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewssp_2`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewssp_2`;
CREATE TABLE `phome_enewssp_2` (
  `sid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spid` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sid`),
  KEY `spid` (`spid`),
  KEY `newstime` (`newstime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewssp_2
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewssp_3`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewssp_3`;
CREATE TABLE `phome_enewssp_3` (
  `sid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spid` int(10) unsigned NOT NULL DEFAULT '0',
  `sptext` mediumtext NOT NULL,
  PRIMARY KEY (`sid`),
  UNIQUE KEY `spid` (`spid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewssp_3
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewssp_3_bak`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewssp_3_bak`;
CREATE TABLE `phome_enewssp_3_bak` (
  `bid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `spid` int(10) unsigned NOT NULL DEFAULT '0',
  `sptext` mediumtext NOT NULL,
  `lastuser` varchar(30) NOT NULL DEFAULT '',
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bid`),
  KEY `sid` (`sid`),
  KEY `spid` (`spid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewssp_3_bak
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewssql`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewssql`;
CREATE TABLE `phome_enewssql` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `sqlname` varchar(60) NOT NULL DEFAULT '',
  `sqltext` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewssql
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewstable`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewstable`;
CREATE TABLE `phome_enewstable` (
  `tid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `tname` varchar(60) NOT NULL DEFAULT '',
  `tsay` text NOT NULL,
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `datatbs` text NOT NULL,
  `deftb` varchar(6) NOT NULL DEFAULT '',
  `yhid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `intb` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewstable
-- ----------------------------
INSERT INTO `phome_enewstable` VALUES ('1', 'news', '新闻系统数据表', '新闻系统数据表', '1', ',1,', '1', '0', '1', '0');

-- ----------------------------
-- Table structure for `phome_enewstags`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewstags`;
CREATE TABLE `phome_enewstags` (
  `tagid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tagname` char(20) NOT NULL DEFAULT '',
  `num` int(10) unsigned NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `cid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tagid`),
  UNIQUE KEY `tagname` (`tagname`),
  KEY `isgood` (`isgood`),
  KEY `cid` (`cid`),
  KEY `num` (`num`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewstags
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewstagsclass`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewstagsclass`;
CREATE TABLE `phome_enewstagsclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewstagsclass
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewstagsdata`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewstagsdata`;
CREATE TABLE `phome_enewstagsdata` (
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tagid` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `mid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`),
  KEY `tagid` (`tagid`),
  KEY `classid` (`classid`),
  KEY `id` (`id`),
  KEY `newstime` (`newstime`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewstagsdata
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewstask`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewstask`;
CREATE TABLE `phome_enewstask` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `taskname` varchar(60) NOT NULL DEFAULT '',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `isopen` tinyint(1) NOT NULL DEFAULT '0',
  `filename` varchar(60) NOT NULL DEFAULT '',
  `lastdo` int(10) unsigned NOT NULL DEFAULT '0',
  `doweek` char(1) NOT NULL DEFAULT '0',
  `doday` char(2) NOT NULL DEFAULT '0',
  `dohour` char(2) NOT NULL DEFAULT '0',
  `dominute` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewstask
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewstempbak`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewstempbak`;
CREATE TABLE `phome_enewstempbak` (
  `bid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `subnews` smallint(6) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `listvar` text NOT NULL,
  `rownum` smallint(6) NOT NULL DEFAULT '0',
  `modid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `showdate` varchar(50) NOT NULL DEFAULT '',
  `subtitle` smallint(6) NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `docode` tinyint(1) NOT NULL DEFAULT '0',
  `baktime` int(10) unsigned NOT NULL DEFAULT '0',
  `temptype` varchar(30) NOT NULL DEFAULT '',
  `gid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `lastuser` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`bid`),
  KEY `tempid` (`tempid`),
  KEY `temptype` (`temptype`),
  KEY `gid` (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=156 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewstempbak
-- ----------------------------
INSERT INTO `phome_enewstempbak` VALUES ('2', '2', 'footer', '   <div class=\\\"footer\\\">\r\n     <div class=\\\"footer-text\\\">\r\n       <p>版权所有：西湖区华翎健身中心</p>\r\n       <p>技术支持：南昌创企网络科技有限公司  ICP证：赣ICP备16012003号</p>\r\n       <p>Copyright ? 2010 - 2015 phpMyWind.com All Rights Reserved </p>\r\n     </div>\r\n   </div>\r\n   <div style=\\\"padding-top:60px;\\\"></div>\r\n\r\n   <div class=\\\"footer-nav flex\\\">\r\n     <div class=\\\"flex-item blue\\\">\r\n       <a href=\\\"tel:10086\\\"><div class=\\\"flex-item-inside\\\">\r\n         <svg class=\\\"dianhua\\\" aria-hidden=\\\"true\\\">\r\n           <use xlink:href=\\\"#icon-gerenzhongxin_kefudianhuaicon\\\"></use>\r\n         </svg>\r\n         <p class=\\\"dinahuazixun\\\">电话咨询</p>\r\n       </div></a>\r\n     </div>\r\n     <div class=\\\"flex-item qing\\\">\r\n       <a href=\\\"index.html\\\"><div class=\\\"flex-item-inside2\\\">\r\n         <svg class=\\\"shouye\\\" aria-hidden=\\\"true\\\">\r\n           <use xlink:href=\\\"#icon-shouye\\\"></use>\r\n         </svg>\r\n         <p>首页</p>\r\n       </div></a>\r\n     </div>\r\n     <div class=\\\"flex-item orenge\\\">\r\n       <a href=\\\"javascript:scrollTo(0,0);\\\"><div class=\\\"flex-item-inside3\\\">\r\n         <svg class=\\\"huiding\\\" aria-hidden=\\\"true\\\">\r\n           <use xlink:href=\\\"#icon-fanhuidingbu\\\"></use>\r\n         </svg>\r\n         <p>返回顶部</p>\r\n       </div></a>\r\n     </div>\r\n   </div>\r\n </div><!-- container-bg end -->\r\n <script type=\\\"text/javascript\\\">\r\n\r\n </script>\r\n    <script src=\\\'js/lun.js\\\'></script>\r\n    <script src=\\\'js/pub.js\\\'></script>\r\n  </body>\r\n</html>', '0', '0', '页面尾部', '0', '0', '', '0', '0', '0', '1505870665', 'tempvar', '1', 'admin');
INSERT INTO `phome_enewstempbak` VALUES ('134', '3', '栏目封面', '<!doctype html>\r\n<html>\r\n<head>\r\n<link rel=\\\"shortout icon\\\" href=\\\"http://www.nclaimei.com/skin/laimei2017/images/favicon.ico\\\" />\r\n<meta name=\\\"renderer\\\" content=\\\"webkit\\\"/>\r\n<meta http-equiv=\\\"X-UA-Comabsolutetible\\\" content=\\\"IE=Edge,chrome=1\\\" />\r\n<meta name=\\\"format-detection\\\" content=\\\"telephone=on\\\"/>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>[!--pagetitle--]_南昌莱美美容医院</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedesc--]\\\">\r\n<link href=\\\"/skin/css/zxmr.css\\\" rel=\\\"stylesheet\\\"/>\r\n<link href=\\\"/skin/css/reset.css\\\" rel=\\\"stylesheet\\\"/>\r\n<script src=\\\"/skin//js/jquery-1.9.1.min.js\\\"></script>\r\n<script src=\\\"/skin/js/jquery.superslide.2.1.1.source.js\\\"></script>\r\n<script src=\\\"/skin/js/expert.js\\\"></script>\r\n<script src=\\\"/skin/js/indexapp.js\\\"></script>\r\n</head>\r\n<body>\r\n[!--temp.header--]\r\n<!--content pinpaiContent-->\r\n<div class=\\\"pinpaiContent pubW center relative clearfix\\\"> \r\n  <div class=\\\"contentRight fr  relative\\\" id=\\\"contentRight\\\">\r\n      <div class=\\\"seoNavs absolute fonts\\\">[!--newsnav--]</div>\r\n    <div class=\\\"pinpaiWrapper\\\">\r\n        <div class=\\\"content1 clearfix fonts\\\">\r\n      <ul>\r\n   [e:loop={\\\"select classname,classpath,classimg from [!db.pre!]enewsclass where bclassid =\\\'$GLOBALS[navclassid]\\\'\\\",10,24,0}]\r\n          <li>\r\n            <a href=\\\"<?=$public_r[newsurl].$bqr[\\\'classpath\\\']?>\\\" class=\\\"img\\\" target=\\\"_blank\\\">\r\n             <img src=\\\"<?=$bqr[\\\'classimg\\\']?>\\\" width=\\\"413\\\" height=\\\"285\\\" \\\"></a>\r\n            <a href=\\\"<?=$public_r[newsurl].$bqr[\\\'classpath\\\']?>\\\" target=\\\"_blank\\\"><?=$bqr[\\\'classname\\\']?></a>\r\n          </li>\r\n        [/e:loop]\r\n          </ul>\r\n      </div>\r\n      <div class=\\\"content2 clearfix fonts\\\">\r\n      <h1>猜你喜欢</h1>\r\n      <ul>\r\n              <li><a href=\\\"/s/FreckleRemovinga/index.html\\\" target=\\\"_blank\\\"><img src=\\\"/skin/picture/20921c0e5d66f0a3e858a959f60886a7.png\\\" width=\\\"356\\\" height=\\\"219\\\" alt=\\\"\\\"></a></li>\r\n              <li><a href=\\\"/s/RemoveEyeBaga/index.html\\\" target=\\\"_blank\\\"><img src=\\\"/skin/picture/11488dc20370d236e76f8bcdff549b7d.png\\\" width=\\\"356\\\" height=\\\"219\\\" alt=\\\"\\\"></a></li>\r\n              <li><a href=\\\"/s/Teethas/index.html\\\" target=\\\"_blank\\\"><img src=\\\"/skin/picture/b25d9186a79496dbaef0913088b47130.png\\\" width=\\\"356\\\" height=\\\"219\\\" alt=\\\"\\\"></a></li>\r\n            </ul>\r\n      </div>\r\n      <div class=\\\"content4 clearfix fonts\\\">\r\n        <ul>\r\n                  <li><a class=\\\"qiujing\\\"  href=\\\"javascript:void(0)\\\" onClick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\"></a><p>专业提供在线免费咨询服务，快速为您解答整形美容疑问。</p></li>\r\n                          <li><a class=\\\"chengxin\\\" href=\\\"javascript:void(0)\\\" onClick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\"></a><p>医生免费预约通道，到院无需排队即可享受美丽专属优惠。</p></li>\r\n                          <li><a class=\\\"reqing\\\"   href=\\\"http://www.nclaimei.com/gylm/lylx\\\"></a><p>无论您在本市还是外地，一份详细的交通指南让您轻松到达。</p></li>\r\n                </ul>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n<!--content pinpaiContent结束-->\r\n[!--temp.footer--]\r\n</body>\r\n</html>', '0', '0', '', '0', '0', '', '0', '0', '0', '1506063798', 'classtemp', '1', 'admin');
INSERT INTO `phome_enewstempbak` VALUES ('132', '3', '栏目封面', '<!doctype html>\r\n<html>\r\n<head>\r\n<link rel=\\\"shortout icon\\\" href=\\\"http://www.nclaimei.com/skin/laimei2017/images/favicon.ico\\\" />\r\n<meta name=\\\"renderer\\\" content=\\\"webkit\\\"/>\r\n<meta http-equiv=\\\"X-UA-Comabsolutetible\\\" content=\\\"IE=Edge,chrome=1\\\" />\r\n<meta name=\\\"format-detection\\\" content=\\\"telephone=on\\\"/>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>[!--pagetitle--]_南昌莱美美容医院</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedesc--]\\\">\r\n<link href=\\\"/skin/css/zxmr.css\\\" rel=\\\"stylesheet\\\"/>\r\n<link href=\\\"/skin/css/reset.css\\\" rel=\\\"stylesheet\\\"/>\r\n<script src=\\\"/skin//js/jquery-1.9.1.min.js\\\"></script>\r\n<script src=\\\"/skin/js/jquery.superslide.2.1.1.source.js\\\"></script>\r\n<script src=\\\"/skin/js/expert.js\\\"></script>\r\n<script src=\\\"/skin/js/indexapp.js\\\"></script>\r\n</head>\r\n<body>\r\n[!--temp.header--]\r\n<!--content pinpaiContent-->\r\n<div class=\\\"pinpaiContent pubW center relative clearfix\\\"> \r\n  <div class=\\\"contentRight fr  relative\\\" id=\\\"contentRight\\\">\r\n      <div class=\\\"seoNavs absolute fonts\\\">[!--newsnav--]</div>\r\n    <div class=\\\"pinpaiWrapper\\\">\r\n        <div class=\\\"content1 clearfix fonts\\\">\r\n      <ul>\r\n  [e:loop={\\\"select classname,classpath,classimg from [!db.pre!]enewsclass where bclassid = 2\\\",10,24,0}]\r\n          <li>\r\n            <a href=\\\"<?=$public_r[newsurl]?><?=$bqr[\\\'classpath\\\']?>\\\" class=\\\"img\\\" target=\\\"_blank\\\">\r\n             <img src=\\\"<?=$bqr[\\\'classimg\\\']?>\\\" width=\\\"413\\\" height=\\\"285\\\" \\\"></a>\r\n            <a href=\\\"<?=$public_r[newsurl]?><?=$bqr[\\\'classpath\\\']?>\\\" target=\\\"_blank\\\"><?=$bqr[\\\'classname\\\']?></a>\r\n          </li>\r\n        [/e:loop]\r\n          </ul>\r\n      </div>\r\n      <div class=\\\"content2 clearfix fonts\\\">\r\n      <h1>猜你喜欢</h1>\r\n      <ul>\r\n              <li><a href=\\\"/s/FreckleRemovinga/index.html\\\" target=\\\"_blank\\\"><img src=\\\"/skin/picture/20921c0e5d66f0a3e858a959f60886a7.png\\\" width=\\\"356\\\" height=\\\"219\\\" alt=\\\"\\\"></a></li>\r\n              <li><a href=\\\"/s/RemoveEyeBaga/index.html\\\" target=\\\"_blank\\\"><img src=\\\"/skin/picture/11488dc20370d236e76f8bcdff549b7d.png\\\" width=\\\"356\\\" height=\\\"219\\\" alt=\\\"\\\"></a></li>\r\n              <li><a href=\\\"/s/Teethas/index.html\\\" target=\\\"_blank\\\"><img src=\\\"/skin/picture/b25d9186a79496dbaef0913088b47130.png\\\" width=\\\"356\\\" height=\\\"219\\\" alt=\\\"\\\"></a></li>\r\n            </ul>\r\n      </div>\r\n      <div class=\\\"content4 clearfix fonts\\\">\r\n        <ul>\r\n                  <li><a class=\\\"qiujing\\\"  href=\\\"javascript:void(0)\\\" onClick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\"></a><p>专业提供在线免费咨询服务，快速为您解答整形美容疑问。</p></li>\r\n                          <li><a class=\\\"chengxin\\\" href=\\\"javascript:void(0)\\\" onClick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\"></a><p>医生免费预约通道，到院无需排队即可享受美丽专属优惠。</p></li>\r\n                          <li><a class=\\\"reqing\\\"   href=\\\"http://www.nclaimei.com/gylm/lylx\\\"></a><p>无论您在本市还是外地，一份详细的交通指南让您轻松到达。</p></li>\r\n                </ul>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n<!--content pinpaiContent结束-->\r\n[!--temp.footer--]\r\n</body>\r\n</html>', '0', '0', '', '0', '0', '', '0', '0', '0', '1506062252', 'classtemp', '1', 'admin');
INSERT INTO `phome_enewstempbak` VALUES ('129', '10', 'nav', '[linknav]$GLOBALS[navclassid][/linknav]', '0', '0', '当前位置', '0', '0', '', '0', '0', '0', '1506061135', 'tempvar', '1', 'admin');
INSERT INTO `phome_enewstempbak` VALUES ('133', '3', '栏目封面', '<!doctype html>\r\n<html>\r\n<head>\r\n<link rel=\\\"shortout icon\\\" href=\\\"http://www.nclaimei.com/skin/laimei2017/images/favicon.ico\\\" />\r\n<meta name=\\\"renderer\\\" content=\\\"webkit\\\"/>\r\n<meta http-equiv=\\\"X-UA-Comabsolutetible\\\" content=\\\"IE=Edge,chrome=1\\\" />\r\n<meta name=\\\"format-detection\\\" content=\\\"telephone=on\\\"/>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>[!--pagetitle--]_南昌莱美美容医院</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedesc--]\\\">\r\n<link href=\\\"/skin/css/zxmr.css\\\" rel=\\\"stylesheet\\\"/>\r\n<link href=\\\"/skin/css/reset.css\\\" rel=\\\"stylesheet\\\"/>\r\n<script src=\\\"/skin//js/jquery-1.9.1.min.js\\\"></script>\r\n<script src=\\\"/skin/js/jquery.superslide.2.1.1.source.js\\\"></script>\r\n<script src=\\\"/skin/js/expert.js\\\"></script>\r\n<script src=\\\"/skin/js/indexapp.js\\\"></script>\r\n</head>\r\n<body>\r\n[!--temp.header--]\r\n<!--content pinpaiContent-->\r\n<div class=\\\"pinpaiContent pubW center relative clearfix\\\"> \r\n  <div class=\\\"contentRight fr  relative\\\" id=\\\"contentRight\\\">\r\n      <div class=\\\"seoNavs absolute fonts\\\">[!--newsnav--]</div>\r\n    <div class=\\\"pinpaiWrapper\\\">\r\n        <div class=\\\"content1 clearfix fonts\\\">\r\n      <ul>\r\n   [e:loop={\\\"select classname,classpath,classimg from [!db.pre!]enewsclass where bclassid = 2\\\",10,24,0}]\r\n          <li>\r\n            <a href=\\\"<?=$public_r[newsurl].$bqr[\\\'classpath\\\']?>\\\" class=\\\"img\\\" target=\\\"_blank\\\">\r\n             <img src=\\\"<?=$bqr[\\\'classimg\\\']?>\\\" width=\\\"413\\\" height=\\\"285\\\" \\\"></a>\r\n            <a href=\\\"<?=$public_r[newsurl].$bqr[\\\'classpath\\\']?>\\\" target=\\\"_blank\\\"><?=$bqr[\\\'classname\\\']?></a>\r\n          </li>\r\n        [/e:loop]\r\n          </ul>\r\n      </div>\r\n      <div class=\\\"content2 clearfix fonts\\\">\r\n      <h1>猜你喜欢</h1>\r\n      <ul>\r\n              <li><a href=\\\"/s/FreckleRemovinga/index.html\\\" target=\\\"_blank\\\"><img src=\\\"/skin/picture/20921c0e5d66f0a3e858a959f60886a7.png\\\" width=\\\"356\\\" height=\\\"219\\\" alt=\\\"\\\"></a></li>\r\n              <li><a href=\\\"/s/RemoveEyeBaga/index.html\\\" target=\\\"_blank\\\"><img src=\\\"/skin/picture/11488dc20370d236e76f8bcdff549b7d.png\\\" width=\\\"356\\\" height=\\\"219\\\" alt=\\\"\\\"></a></li>\r\n              <li><a href=\\\"/s/Teethas/index.html\\\" target=\\\"_blank\\\"><img src=\\\"/skin/picture/b25d9186a79496dbaef0913088b47130.png\\\" width=\\\"356\\\" height=\\\"219\\\" alt=\\\"\\\"></a></li>\r\n            </ul>\r\n      </div>\r\n      <div class=\\\"content4 clearfix fonts\\\">\r\n        <ul>\r\n                  <li><a class=\\\"qiujing\\\"  href=\\\"javascript:void(0)\\\" onClick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\"></a><p>专业提供在线免费咨询服务，快速为您解答整形美容疑问。</p></li>\r\n                          <li><a class=\\\"chengxin\\\" href=\\\"javascript:void(0)\\\" onClick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\"></a><p>医生免费预约通道，到院无需排队即可享受美丽专属优惠。</p></li>\r\n                          <li><a class=\\\"reqing\\\"   href=\\\"http://www.nclaimei.com/gylm/lylx\\\"></a><p>无论您在本市还是外地，一份详细的交通指南让您轻松到达。</p></li>\r\n                </ul>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n<!--content pinpaiContent结束-->\r\n[!--temp.footer--]\r\n</body>\r\n</html>', '0', '0', '', '0', '0', '', '0', '0', '0', '1506062321', 'classtemp', '1', 'admin');
INSERT INTO `phome_enewstempbak` VALUES ('69', '1', '', '<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>多维美雕隆鼻-南昌莱美美容整形医院</title>\r\n<meta name=\\\"keywords\\\" content=\\\"南昌莱美整形专家团队,南昌莱美美容医院专家,莱美国际医师部\\\" />\r\n<meta name=\\\"description\\\" content=\\\"南昌整形美容医院,南昌莱美美容医院汇集国内外一流整形专家团队,全力打造最美的你.\\\" />\r\n<link href=\\\"/skin/css/reset.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script src=\\\"/skin/js/jquery-1.9.1.min.js\\\"></script>\r\n<script src=\\\"/skin/js/jquery.superslide.2.1.1.source.js\\\"></script>\r\n<script src=\\\"/skin/js/indexapp.js\\\"></script>\r\n<script type=\\\"text/javascript\\\" src=\\\"/skin/js/roll.js\\\"></script>\r\n<link href=\\\"/skin/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<body>\r\n[!--temp.head--]\r\n<!-- content start-->\r\n<div class=\\\"dw_banner\\\"><a href=\\\"javascript:void(0)\\\" onclick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\"></a></div>\r\n<div class=\\\"dw_abouts\\\"><img src=\\\"/skin/picture/meb_04.jpg\\\" /></div>\r\n<div class=\\\"dw_about\\\">\r\n  <img src=\\\"/skin/picture/meb_08.jpg\\\" />\r\n    <img src=\\\"/skin/picture/meb_09.jpg\\\" />\r\n    <img src=\\\"/skin/picture/meb_10.jpg\\\" />\r\n    <img src=\\\"/skin/picture/meb_11.jpg\\\" />\r\n</div>\r\n<a href=\\\"javascript:void(0)\\\" onclick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\">\r\n<div class=\\\"dw_abouts\\\"><img src=\\\"/skin/picture/meb_15.jpg\\\" /></div></a>\r\n<div class=\\\"dw_abouts\\\"><img src=\\\"/skin/picture/meb_19.jpg\\\" /></div>\r\n<div class=\\\"dw_abouts\\\"><img src=\\\"/skin/picture/meb_22.jpg\\\" width=\\\"100%\\\" /></div>\r\n<div class=\\\"dw_abouts\\\"><img src=\\\"/skin/picture/meb_25.jpg\\\" /></div>\r\n<div class=\\\"dw_yous\\\">\r\n  <div class=\\\"dw_yuw\\\">\r\n      <img src=\\\"/skin/picture/meb_02.jpg\\\" />\r\n        <img src=\\\"/skin/picture/meb_03.jpg\\\" />\r\n        <img src=\\\"/skin/picture/meb_05.jpg\\\" />\r\n        <img src=\\\"/skin/picture/meb_07.jpg\\\" />\r\n    </div>\r\n    <div class=\\\"dw_drel\\\">手术示意图</div>\r\n    <div class=\\\"dw_syt\\\">\r\n      <img src=\\\"/skin/picture/meb_29.jpg\\\" />\r\n        <img src=\\\"/skin/picture/meb_30.jpg\\\" />\r\n        <img src=\\\"/skin/picture/meb_32.jpg\\\" />\r\n        <img src=\\\"/skin/picture/meb_34.jpg\\\" />\r\n        <img src=\\\"/skin/picture/meb_33.jpg\\\" />\r\n    </div>\r\n</div>\r\n<div class=\\\"dw_abouts\\\"><img src=\\\"/skin/picture/meb_31.jpg\\\" /></div>\r\n<div style=\\\" margin-left:auto; margin-right:auto; clear:both; width:1000px;\\\">\r\n  <table width=\\\"1000\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"10\\\" cellspacing=\\\"1\\\" bgcolor=\\\"#ddd\\\">\r\n  <tr style=\\\"  font-size:24px; color:#9c3232; text-align:center; line-height:30px;\\\">\r\n    <td bgcolor=\\\"#FFFFFF\\\" style=\\\" font-size:24px; font-weight:bold;\\\">多维美雕隆鼻</td>\r\n    <td bgcolor=\\\"#FFFFFF\\\" style=\\\" width:150px; font-size:24px; font-weight:bold;\\\">VS</td>\r\n    <td bgcolor=\\\"#FFFFFF\\\" style=\\\" font-size:24px; font-weight:bold;\\\">传统隆鼻</td>\r\n  </tr>\r\n  <tr style=\\\" font-size:24px; line-height:30px;\\\">\r\n    <td bgcolor=\\\"#FFFFFF\\\" style=\\\" text-indent:30px;\\\">根据医学美容解剖学、艺术学、个人气质、从每个角度为求美者设计出**的鼻型，全面提升个人的气质。</td>\r\n    <td bgcolor=\\\"#FFFFFF\\\" style=\\\" text-align:center;font-size:24px;font-weight:bold; color:#9c3232;\\\">设计方案</td>\r\n    <td bgcolor=\\\"#FFFFFF\\\" style=\\\" text-indent:30px;\\\">以正面鼻背作为出发点，迁就假体，从不考虑侧面和抬头位的形态。</td>\r\n  </tr>\r\n  <tr style=\\\" font-size:24px; line-height:30px;\\\">\r\n    <td bgcolor=\\\"#FFFFFF\\\" style=\\\" text-indent:30px;\\\">依据黄金分割美学理念，将假体或自体组织分段进行手术，保证正面、侧面以及鼻孔的完美形态。</td>\r\n    <td bgcolor=\\\"#FFFFFF\\\" style=\\\" text-align:center; font-size:24px;font-weight:bold;color:#9c3232;\\\">手术方式</td>\r\n    <td bgcolor=\\\"#FFFFFF\\\" style=\\\" text-indent:30px;\\\">大动干戈，创伤较大，伤口出血较大。</td>\r\n  </tr>\r\n  <tr style=\\\" font-size:24px; line-height:30px;\\\">\r\n    <td bgcolor=\\\"#FFFFFF\\\" style=\\\" text-indent:30px;\\\">采用的是精品硅胶、膨体材料、自体软骨组织 注射等多种隆鼻方式</td>\r\n    <td bgcolor=\\\"#FFFFFF\\\" style=\\\" text-align:center;font-size:24px;font-weight:bold; color:#9c3232;\\\">选择材料</td>\r\n    <td bgcolor=\\\"#FFFFFF\\\" style=\\\" text-indent:30px;\\\">以假体为卖点，整个鼻根、鼻背、鼻尖都以假体支撑，初级的整形方式使大多数人出现术后问题</td>\r\n  </tr>\r\n  <tr style=\\\" font-size:24px; line-height:30px;\\\">\r\n    <td bgcolor=\\\"#FFFFFF\\\" style=\\\" text-indent:30px;\\\">立体感强，“鼻部整形、全脸设计”达到 五官自然、和谐、美观的效果</td>\r\n    <td bgcolor=\\\"#FFFFFF\\\" style=\\\" text-align:center;font-size:24px; font-weight:bold;color:#9c3232;\\\">术后效果</td>\r\n    <td bgcolor=\\\"#FFFFFF\\\" style=\\\" text-indent:30px;\\\">单纯鼻部垫高，忽视与脸型整体的协调性，假体容易顶出、透光，使鼻部显得僵硬不自然。</td>\r\n  </tr>\r\n</table>\r\n</div>\r\n<div class=\\\"dw_abouts\\\"><img src=\\\"/skin/picture/meb_35.jpg\\\" /></div>\r\n<div class=\\\"dw_dj\\\">\r\n  <div class=\\\"dw_djcl\\\">\r\n      <div class=\\\"dw_diimg\\\"><img src=\\\"/skin/picture/meb_39.jpg\\\" /></div>\r\n        <div class=\\\"dw_djxk\\\">\r\n          <div class=\\\"dw_djw\\\">国际品质固体硅胶</div>\r\n            <div class=\\\"dw_xxk\\\">\r\n              <div class=\\\"dw_djwe\\\">优势特点</div>\r\n                <p>固体硅胶的优点是价格低、重量轻、易雕刻、有一定可塑性，可高温消毒，且植入人体后性质稳定</p>\r\n            </div>\r\n            <a href=\\\"javascript:void(0)\\\" onclick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\"><div class=\\\"dw_xxwj\\\">详细问价</div></a>\r\n            <a href=\\\"javascript:void(0)\\\" onclick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\"><div class=\\\"dw_djzx\\\">点击咨询</div></a>\r\n        </div>\r\n    </div>\r\n  <hr style=\\\"height:1px;border:none;border-top:1px solid #000; width:100%; float:left;\\\" />\r\n    <div class=\\\"dw_djcl\\\">\r\n      <div class=\\\"dw_diimg\\\"><img src=\\\"/skin/picture/meb_43.jpg\\\" /></div>\r\n        <div class=\\\"dw_djxk\\\">\r\n          <div class=\\\"dw_djw\\\">顶级仿生膨体材料</div>\r\n            <div class=\\\"dw_xxk\\\">\r\n              <div class=\\\"dw_djwe\\\">优势特点</div>\r\n                <p>仿生膨体材料植入人体后可以与人体融为一体，可塑性强，材料异常柔软，术后效果自然，不透光，手感真实。</p>\r\n            </div>\r\n            <a href=\\\"javascript:void(0)\\\" onclick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\"><div class=\\\"dw_xxwj\\\">详细问价</div></a>\r\n            <a href=\\\"javascript:void(0)\\\" onclick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\"><div class=\\\"dw_djzx\\\">点击咨询</div></a>\r\n        </div>\r\n    </div>\r\n  <hr style=\\\"height:1px;border:none;border-top:1px solid #000; width:100%; float:left;\\\" />\r\n    <div class=\\\"dw_djcl\\\">\r\n      <div class=\\\"dw_diimg\\\"><img src=\\\"/skin/picture/meb_46.jpg\\\" /></div>\r\n        <div class=\\\"dw_djxk\\\">\r\n          <div class=\\\"dw_djw\\\">瑞蓝2号</div>\r\n            <div class=\\\"dw_xxk\\\">\r\n              <div class=\\\"dw_djwe\\\">优势特点</div>\r\n                <p>透明质酸为人体真皮组织成份之一，在隆鼻等微整形手术中非常热门，安全、快速、有效，被视为\\\"午休美容\\\"。</p>\r\n            </div>\r\n            <a href=\\\"javascript:void(0)\\\" onclick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\"><div class=\\\"dw_xxwj\\\">详细问价</div></a>\r\n            <a href=\\\"javascript:void(0)\\\" onclick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\"><div class=\\\"dw_djzx\\\">点击咨询</div></a>\r\n        </div>\r\n    </div>\r\n  <hr style=\\\"height:1px;border:none;border-top:1px solid #000; width:100%; float:left;\\\" />\r\n    <div class=\\\"dw_djcl\\\">\r\n      <div class=\\\"dw_diimg\\\"><img src=\\\"/skin/picture/meb_48.jpg\\\" /></div>\r\n        <div class=\\\"dw_djxk\\\">\r\n          <div class=\\\"dw_djw\\\">伊维兰</div>\r\n            <div class=\\\"dw_xxk\\\">\r\n              <div class=\\\"dw_djwe\\\">优势特点</div>\r\n                <p>是一种新的填充隆鼻方法，伊维兰隆鼻与玻尿酸隆鼻有着异曲同工的功效，伊维兰持续的时间会更长一些。</p>\r\n            </div>\r\n            <a href=\\\"javascript:void(0)\\\" onclick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\"><div class=\\\"dw_xxwj\\\">详细问价</div></a>\r\n            <a href=\\\"javascript:void(0)\\\" onclick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\"><div class=\\\"dw_djzx\\\">点击咨询</div></a>\r\n        </div>\r\n    </div>\r\n  <hr style=\\\"height:1px;border:none;border-top:1px solid #000; width:100%; float:left;\\\" />\r\n</div>\r\n<div class=\\\"dw_abouts\\\"><a href=\\\"javascript:void(0)\\\" onClick=\\\"openZoosUrl();\\\" target=\\\"_blank\\\"><img src=\\\"/skin/picture/meb_51.jpg\\\" /></a></div>\r\n<div class=\\\"dw_abouts\\\"><img src=\\\"/skin/picture/meb_55.jpg\\\" /></div>\r\n<div class=\\\"dw_about\\\">\r\n  <img src=\\\"/skin/picture/meb_58.jpg\\\" />\r\n    <img src=\\\"/skin/picture/meb_59.jpg\\\" />\r\n    <img src=\\\"/skin/picture/meb_62.jpg\\\" />\r\n    <img src=\\\"/skin/picture/meb_63.jpg\\\" />\r\n</div>\r\n<script language=\\\"javascript\\\" type=\\\"text/javascript\\\" src=\\\"/skin/js/expert.js\\\"></script>\r\n<!-- end content -->\r\n<!-- footer start -->\r\n[!--temp.footer--]\r\n</body>\r\n</html>', '0', '0', '', '0', '0', '', '0', '0', '0', '1505989618', 'pubindextemp', '1', 'admin');
INSERT INTO `phome_enewstempbak` VALUES ('70', '1', '', '<!doctype html>\r\n<html>\r\n<head>\r\n<link rel=\\\"shortout icon\\\" href=\\\"http://www.nclaimei.com/skin/laimei2017/images/favicon.ico\\\" />\r\n<meta http-equiv=\\\"Cache-Control\\\" content=\\\"no-transform\\\" />\r\n<meta http-equiv=\\\"Cache-Control\\\" content=\\\"no-siteapp\\\" />\r\n<meta name=\\\"renderer\\\" content=\\\"webkit\\\"/>\r\n<meta http-equiv=\\\"X-UA-Comabsolutetible\\\" content=\\\"IE=Edge,chrome=1\\\" />\r\n<meta name=\\\"format-detection\\\" content=\\\"telephone=no\\\"/>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<meta http-equiv=\\\"x-dns-prefetch-control\\\" content=\\\"on\\\" />\r\n<title>[!--pagetitle--]_南昌莱美美容医院【官网】</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedesc--]。\\\">\r\n<link href=\\\"/skin/css/reset.css\\\" rel=\\\"stylesheet\\\"/>\r\n<link href=\\\"/skin/css/style.css\\\" rel=\\\"stylesheet\\\"/>\r\n<script type=\\\"text/javascript\\\" src=\\\"/skin/js/jquery-1.9.1.min.js\\\"></script>\r\n<script src=\\\"/skin/js/jquery.superslide.2.1.1.source.js\\\"></script>\r\n<script src=\\\"/skin/js/expert.js\\\"></script>\r\n<script src=\\\"/skin/js/indexapp.js\\\"></script>\r\n<script src=\\\"/skin/js/wapskip.js\\\" type=\\\"text/javascript\\\"></script>\r\n</head>\r\n<body>\r\n[!--temp.header--]\r\n<!-- content start -->\r\n<div class=\\\"content\\\" id=\\\"content\\\">\r\n  <div class=\\\"stageContainer pubW center\\\">\r\n    <div class=\\\"stage1 clearfix\\\">       \r\n      <div class=\\\"stage2-width stage1_a fl \\\">\r\n        <div class=\\\"alltitle absolute\\\"></div>\r\n        <div class=\\\"stage1Title clearfix\\\" style=\\\"position: absolute;z-index: 10;right: 20px;top: 55px;\\\">\r\n          <div class=\\\"preNext fr clearfix\\\"> <a href=\\\"javascript:void(0)\\\" class=\\\"preBtn fl\\\"><i></i></a> <a href=\\\"javascript:void(0)\\\" class=\\\"nextBtn fr\\\"><i></i></a> </div>\r\n        </div>\r\n        <div class=\\\"stage1_anliBox\\\">\r\n          <div class=\\\"anliBox\\\"><a href=\\\"javascript:void(0)\\\" onClick=\\\"openZoosUrl();\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/zxhd/2017-09-01/fde9c83dabda3df03029ae69b6597bbd.jpg\\\" width=\\\"687\\\" height=\\\"328\\\"/></a>\r\n          </div>\r\n          <div class=\\\"anliBox\\\"><a href=\\\"javascript:void(0)\\\" onClick=\\\"openZoosUrl();\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/zxhd/2017-09-01/fedd332a502bd6653e558b5095d98deb.jpg\\\" width=\\\"687\\\" height=\\\"328\\\"/></a>\r\n          </div>\r\n          <div class=\\\"anliBox\\\"><a href=\\\"javascript:void(0)\\\" onClick=\\\"openZoosUrl();\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/zxhd/2017-09-01/a83f8f6c116ce46f9fec355af5460e53.jpg\\\" width=\\\"687\\\" height=\\\"328\\\"/></a>\r\n          </div>\r\n        </div>\r\n      </div>\r\n\r\n      <div class=\\\"stage1-width stage1_b fr\\\"style=\\\"height: 385px;\\\">\r\n        <div class=\\\"alltitle absolute\\\"></div>\r\n        <div class=\\\"activityBox\\\"> \r\n        <a href=\\\"/s/201709/\\\" target=\\\"_blank\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/lmdt/2017-09-01/75ca24d0695917e2f21e4a4282f9c2d1.jpg\\\" width=\\\"380\\\" height=\\\"150\\\"/></a></div>\r\n        <div class=\\\"stage1Title clearfix\\\"> \r\n        <a href=\\\"http://www.nclaimei.com/gylm/mtbd/2017-08-18/428.html\\\" target=\\\"_blank\\\">·腋臭的治疗</a><span class=\\\"fonts \\\">2017-08-18</span></div>\r\n        <div class=\\\"stage1Title clearfix\\\"> \r\n        <a href=\\\"http://www.nclaimei.com/gylm/mtbd/2017-08-12/426.html\\\" target=\\\"_blank\\\">·漂唇手术的设计原则是什么...</a><span class=\\\"fonts \\\">2017-08-12</span></div>\r\n        <div class=\\\"stage1Title clearfix\\\"> \r\n        <a href=\\\"http://www.nclaimei.com/gylm/mtbd/2017-08-08/424.html\\\" target=\\\"_blank\\\">·双眼皮的宽窄度是怎么衡量的呢？　...</a><span class=\\\"fonts \\\">2017-08-08</span></div>\r\n        <div class=\\\"stage1Title clearfix\\\"> \r\n        <a href=\\\"http://www.nclaimei.com/gylm/mtbd/2017-08-04/423.html\\\" target=\\\"_blank\\\">·超声刀美容适合年龄</a><span class=\\\"fonts \\\">2017-08-04</span></div>\r\n        <div class=\\\"stage1Title clearfix\\\"> \r\n        <a href=\\\"http://www.nclaimei.com/gylm/mtbd/2017-07-30/417.html\\\" target=\\\"_blank\\\">·双下巴吸脂多久可以恢复</a><span class=\\\"fonts \\\">2017-07-30</span></div>\r\n        <a class=\\\"more absolute\\\" href=\\\"http://www.nclaimei.com/gylm/mtbd\\\" target=\\\"_blank\\\">更多>></a>\r\n      </div>\r\n    </div>\r\n      \r\n    <div class=\\\"stage4 clearfix relative\\\">\r\n        <div class=\\\"rogect absolute\\\">\r\n        <div class=\\\"alltitle absolute\\\"></div>\r\n            <a class=\\\"more\\\" href=\\\"http://www.nclaimei.com/zhuanti\\\" target=\\\"_blank\\\">+更多项目</a> \r\n        </div>\r\n      <div class=\\\"stage3-width stage1_c fl\\\">\r\n          <h1 class=\\\"absolute\\\">整形美容</h1>\r\n        <div class=\\\"expertSlide relative\\\">\r\n          <div class=\\\"slideBox\\\">\r\n                    <a href=\\\"/s/BreastImplanta/index.html\\\" target=\\\"_blank\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/xmzx/zxmr/2016-12-09/0fb26fe9ee5cff8ef74b2401d4c0464b.png\\\" width=\\\"250\\\" height=\\\"330\\\"/></a>\r\n                    <a href=\\\"/s/CarvedEyese/index.html\\\" target=\\\"_blank\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/xmzx/zxmr/2016-12-02/42c491fb4b3b92d5ae2542d6494b4239.jpg\\\" width=\\\"250\\\" height=\\\"330\\\"/></a>\r\n                    <a href=\\\"/s/SdlLiposuctiona/index.html\\\" target=\\\"_blank\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/xmzx/zxmr/2016-12-09/a611d000900df4d00106fac8d6562a81.png\\\" width=\\\"250\\\" height=\\\"330\\\"/></a>\r\n                    <a href=\\\"/s/Rhinoplastyc/index.html\\\" target=\\\"_blank\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/xmzx/zxmr/2016-12-09/797fdedabe6a2d67a9f3535b33c3b2e6.png\\\" width=\\\"250\\\" height=\\\"330\\\"/></a>\r\n                 </div>\r\n          <div class=\\\"focus absolute clearfix\\\"></div>\r\n        </div>\r\n      </div>\r\n      <div class=\\\"stage3-width stage1_c fl\\\">\r\n          <h1 class=\\\"absolute\\\">皮肤美容</h1>\r\n        <div class=\\\"expertSlide relative\\\">\r\n          <div class=\\\"slideBox\\\">\r\n                    <a href=\\\"/s/HairRemoval/index.html\\\" target=\\\"_blank\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/xmzx/pfmr/2016-12-02/e4bcbf5d8ed5c32872aaa597b9041ad1.jpg\\\" width=\\\"250\\\" height=\\\"330\\\"/></a>\r\n                    <a href=\\\"/s/GlxfAcneTreatmenta/index.html\\\" target=\\\"_blank\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/xmzx/pfmr/2016-12-09/65acd18a94cb20bf3534eb5dbcd0ca5e.png\\\" width=\\\"250\\\" height=\\\"330\\\"/></a>\r\n                    <a href=\\\"/s/OPTKingStyleb/index.html\\\" target=\\\"_blank\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/xmzx/pfmr/2016-12-09/66176e999058279fcc33f306bc139156.png\\\" width=\\\"250\\\" height=\\\"330\\\"/></a>\r\n                    <a href=\\\"/s/FreckleRemovingb/index.html\\\" target=\\\"_blank\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/xmzx/pfmr/2016-12-09/03297c89fa16513b2e7f40186712796d.png\\\" width=\\\"250\\\" height=\\\"330\\\"/></a>\r\n                 </div>\r\n          <div class=\\\"focus absolute clearfix\\\"></div>\r\n        </div>\r\n      </div>\r\n      <div class=\\\"stage3-width stage1_c fl\\\">\r\n          <h1 class=\\\"absolute\\\">微整形</h1>\r\n        <div class=\\\"expertSlide relative\\\">\r\n          <div class=\\\"slideBox\\\">\r\n                    <a href=\\\"/s/FaceLiftNeedlea/index.html\\\" target=\\\"_blank\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/xmzx/vzx/2016-12-09/34a6dfc5c7f32b6648b8bf7f84d1a4c0.png\\\" width=\\\"250\\\" height=\\\"330\\\"/></a>\r\n                    <a href=\\\"/s/FaceLiftNeedled/index.html\\\" target=\\\"_blank\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/xmzx/vzx/2016-12-09/4b7fcc5c8388c8f8356ef29e32762fac.png\\\" width=\\\"250\\\" height=\\\"330\\\"/></a>\r\n                    <a href=\\\"/s/BotoxKreotoxina/index.html\\\" target=\\\"_blank\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/xmzx/vzx/2016-12-09/1ba22b0058ddaea832c2c33f13e285dc.png\\\" width=\\\"250\\\" height=\\\"330\\\"/></a>\r\n                 </div>\r\n          <div class=\\\"focus absolute clearfix\\\"></div>\r\n        </div>\r\n      </div>\r\n      <div class=\\\"stage3-width stage1_c fl\\\">\r\n          <h1 class=\\\"absolute\\\">口腔美容</h1>\r\n        <div class=\\\"expertSlide relative\\\">\r\n          <div class=\\\"slideBox\\\">\r\n                    <a href=\\\"/s/DentalCorrection/index.html\\\" target=\\\"_blank\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/xmzx/ycjz/2016-12-28/cb9e9eb8704cfdbb6e7673a54333a774.png\\\" width=\\\"250\\\" height=\\\"330\\\"/></a>\r\n                    <a href=\\\"/s/Teethas/index.html\\\" target=\\\"_blank\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/xmzx/ycjz/2016-12-09/a46e4ca138d855a9fda8b63461d56e03.png\\\" width=\\\"250\\\" height=\\\"330\\\"/></a>\r\n                 </div>\r\n          <div class=\\\"focus absolute clearfix\\\"></div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n    <div class=\\\"stage2 clearfix\\\">\r\n        <div class=\\\"alltitle\\\"></div>\r\n      <div class=\\\"stage_a fl relative\\\">\r\n       <a href=\\\"javascript:void(0)\\\" class=\\\"preBtn absolute bt\\\"><i></i></a> <a href=\\\"javascript:void(0)\\\" class=\\\"nextBtn absolute bt\\\"><i></i></a>\r\n        <div class=\\\"slideBox\\\">\r\n          <div class=\\\"slide relative\\\"><a href=\\\"/gylm/zjtd\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/yszh/2017-05-27/ec1a69b25b038e4c521883525d32d7d2.png\\\" width=\\\"822\\\" height=\\\"479\\\" alt=\\\"整形美容医疗团队\\\" /></a>\r\n            <div class=\\\"innerWrapper absolute\\\">\r\n              <h5 class=\\\"fonts\\\">整形美容医疗团队</h5>\r\n              <p class=\\\"fonts\\\">由数十名临床经验资深医生组成,技术精湛、服务周到根据顾客的个人特点定制合适自然的整形美容方案。</p>\r\n            </div>\r\n          </div>\r\n          <div class=\\\"slide relative\\\"><a href=\\\"/gylm/zjtd\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/yszh/2017-02-28/80d8edb5cd922f34fc513b266499b772.png\\\" width=\\\"822\\\" height=\\\"479\\\" alt=\\\"皮肤美容医疗团队\\\" /></a>\r\n            <div class=\\\"innerWrapper absolute\\\">\r\n              <h5 class=\\\"fonts\\\">皮肤美容医疗团队</h5>\r\n              <p class=\\\"fonts\\\">由皮肤科主任为代表的美肤团队对于嫩肤、祛痘、祛斑等常见皮肤问题\\\"治疗\\\"有道,迄今已为无数女性带来美丽新生。</p>\r\n            </div>\r\n          </div>\r\n          <div class=\\\"slide relative\\\"><a href=\\\"/gylm/zjtd\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/gylm/yszh/2017-01-14/bfc78e76a584838dc7d6fc1305af0d9c.jpg\\\" width=\\\"822\\\" height=\\\"479\\\" alt=\\\"微整形医疗团队\\\" /></a>\r\n            <div class=\\\"innerWrapper absolute\\\">\r\n              <h5 class=\\\"fonts\\\">微整形医疗团队</h5>\r\n              <p class=\\\"fonts\\\">汇集众多资深微整形医生,始终坚持“效果、自然、健康”的原则,以及人性化的美容理念,采用多层定点注射方法！</p>\r\n            </div>\r\n          </div>\r\n          <div class=\\\"slide relative\\\"><a href=\\\"/gylm/zjtd\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/gylm/yszh/2016-12-29/a95d1b69058b0ba4170cde5dc7fd3153.png\\\" width=\\\"822\\\" height=\\\"479\\\" alt=\\\"口腔美容团队\\\" /></a>\r\n            <div class=\\\"innerWrapper absolute\\\">\r\n              <h5 class=\\\"fonts\\\">口腔美容团队</h5>\r\n              <p class=\\\"fonts\\\">汇聚国内外资深口腔医生,在业界荣享盛誉,微创美学修复,深厚的口腔美学功底,深受众多顾客的赞誉。</p>\r\n            </div>\r\n          </div>\r\n          <div class=\\\"slide relative\\\"><a href=\\\"/gylm/zjtd\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/yszh/2017-03-21/63818a66f0b7bd47717eea863e6853b2.png\\\" width=\\\"822\\\" height=\\\"479\\\" alt=\\\"毛发移植医疗团队\\\" /></a>\r\n            <div class=\\\"innerWrapper absolute\\\">\r\n              <h5 class=\\\"fonts\\\">毛发移植医疗团队</h5>\r\n              <p class=\\\"fonts\\\">专业植发手术团队！</p>\r\n            </div>\r\n          </div>\r\n          <div class=\\\"slide relative\\\"><a href=\\\"/gylm/zjtd\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/gylm/yszh/2016-12-29/9c3605fda5a9e21dae53cb2b213d676d.png\\\" width=\\\"822\\\" height=\\\"479\\\" alt=\\\"特邀医生医疗团队\\\" /></a>\r\n            <div class=\\\"innerWrapper absolute\\\">\r\n              <h5 class=\\\"fonts\\\">特邀医生医疗团队</h5>\r\n              <p class=\\\"fonts\\\">邀请整形美容知名医生亲临南昌莱美为求美者服务,享受国际整形技艺。</p>\r\n            </div>\r\n          </div>\r\n         \r\n\r\n        </div>\r\n      </div>\r\n      <div class=\\\"stage_b fr\\\">\r\n        <div class=\\\"focus clearfix relative\\\">\r\n          <div class=\\\"active_bg absolute\\\"></div>\r\n          <span class=\\\"active\\\"><em class=\\\"fonts fonts1\\\">查询医生</em></span> <span><em class=\\\"fonts fonts2\\\">专家团队</em></span> </div>\r\n        <div class=\\\"slides\\\">\r\n          <div class=\\\"slide slide1\\\">\r\n            <div class=\\\"inner center\\\"> \r\n              <h6 class=\\\"fonts\\\">按项目找专家</h6>\r\n              <div class=\\\"itemExperts clearfix\\\">\r\n    <a class=\\\"fonts bt zhengxing\\\" href=\\\"/gylm/zjtd\\\" target=\\\"_blank\\\" title=\\\"整形美容\\\">整形美容</a> \r\n    <a class=\\\"fonts bt pifu\\\" href=\\\"/gylm/zjtd\\\" target=\\\"_blank\\\" title=\\\"皮肤美容\\\">皮肤美容</a> \r\n    <a class=\\\"fonts bt weizhengxing\\\" href=\\\"/gylm/zjtd\\\" target=\\\"_blank\\\" title=\\\"微整形\\\">微整形</a> \r\n    <a class=\\\"fonts bt kouqiang\\\" href=\\\"/gylm/zjtd\\\" target=\\\"_blank\\\" title=\\\"口腔美容\\\">口腔美容</a> \r\n    <a class=\\\"fonts bt maofa\\\" href=\\\"/gylm/zjtd\\\" target=\\\"_blank\\\" title=\\\"毛发移植\\\">毛发移植</a> \r\n    <a class=\\\"fonts bt teyao\\\" href=\\\"/gylm/zjtd\\\" target=\\\"_blank\\\" title=\\\"特邀医生\\\">特邀医生</a> \r\n \r\n              </div>\r\n            </div>\r\n          </div>\r\n          <div class=\\\"slide slide2\\\">\r\n            <div class=\\\"doctorsBox relative\\\">\r\n              <div class=\\\"doctorsWrapper\\\">\r\n                <li> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2016-12-02/247.html\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/zjtd/2016-12-02/d73815ad0abd98fd51f88024a2bf6028.png\\\" width=\\\"100\\\" height=\\\"125\\\"/>\r\n                  <p class=\\\"fonts\\\">覃耀锋</p>\r\n                  </a>\r\n                  <div class=\\\"addInfo\\\"> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2016-12-02/247.html\\\" target=\\\"_blank\\\"><img src=\\\"picture/d73815ad0abd98fd51f88024a2bf6028.png\\\" width=\\\"100\\\" height=\\\"125\\\"/></a>\r\n                    <div class=\\\"addInfoList\\\">\r\n                      <h5 class=\\\"fonts\\\">覃耀锋</h5>\r\n                      <p class=\\\"fonts\\\">擅长项目：五官精细化整形、360°水动力螺旋吸脂、注射微整形等</p>\r\n                    </div>\r\n                  </div>\r\n                </li>\r\n                <li> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2017-02-28/366.html\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/zjtd/2017-02-28/7f6d3b78c210d1f95c39df5f80b1223f.png\\\" width=\\\"100\\\" height=\\\"125\\\"/>\r\n                  <p class=\\\"fonts\\\">刘波涛</p>\r\n                  </a>\r\n                  <div class=\\\"addInfo\\\"> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2017-02-28/366.html\\\" target=\\\"_blank\\\"><img src=\\\"picture/7f6d3b78c210d1f95c39df5f80b1223f.png\\\" width=\\\"100\\\" height=\\\"125\\\"/></a>\r\n                    <div class=\\\"addInfoList\\\">\r\n                      <h5 class=\\\"fonts\\\">刘波涛</h5>\r\n                      <p class=\\\"fonts\\\">擅长项目：双核光祛斑、OPT王者风范美肤、皮肤修复等</p>\r\n                    </div>\r\n                  </div>\r\n                </li>\r\n                <li> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2016-12-02/244.html\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/zjtd/2016-12-02/df46eba0bc90697d266705efbed101ca.png\\\" width=\\\"100\\\" height=\\\"125\\\"/>\r\n                  <p class=\\\"fonts\\\">冯宇明</p>\r\n                  </a>\r\n                  <div class=\\\"addInfo\\\"> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2016-12-02/244.html\\\" target=\\\"_blank\\\"><img src=\\\"picture/df46eba0bc90697d266705efbed101ca.png\\\" width=\\\"100\\\" height=\\\"125\\\"/></a>\r\n                    <div class=\\\"addInfoList\\\">\r\n                      <h5 class=\\\"fonts\\\">冯宇明</h5>\r\n                      <p class=\\\"fonts\\\">擅长项目：面部年轻化、嫩肤美白、水光注射等</p>\r\n                    </div>\r\n                  </div>\r\n                </li>\r\n                <li> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2017-05-31/395.html\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/zjtd/2017-05-31/5fda68130a65149ec9b31ddb2c492c46.png\\\" width=\\\"100\\\" height=\\\"125\\\"/>\r\n                  <p class=\\\"fonts\\\">龚衍寿</p>\r\n                  </a>\r\n                  <div class=\\\"addInfo\\\"> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2017-05-31/395.html\\\" target=\\\"_blank\\\"><img src=\\\"picture/5fda68130a65149ec9b31ddb2c492c46.png\\\" width=\\\"100\\\" height=\\\"125\\\"/></a>\r\n                    <div class=\\\"addInfoList\\\">\r\n                      <h5 class=\\\"fonts\\\">龚衍寿</h5>\r\n                      <p class=\\\"fonts\\\">擅长项目：无痛溶脂减肥、双眼皮、面部线雕年轻化等</p>\r\n                    </div>\r\n                  </div>\r\n                </li>\r\n                <li> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2017-04-16/381.html\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/zjtd/2017-04-16/3c27e29ba3cf829e80662b06d3d4de2c.png\\\" width=\\\"100\\\" height=\\\"125\\\"/>\r\n                  <p class=\\\"fonts\\\">廖洪跃</p>\r\n                  </a>\r\n                  <div class=\\\"addInfo\\\"> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2017-04-16/381.html\\\" target=\\\"_blank\\\"><img src=\\\"picture/3c27e29ba3cf829e80662b06d3d4de2c.png\\\" width=\\\"100\\\" height=\\\"125\\\"/></a>\r\n                    <div class=\\\"addInfoList\\\">\r\n                      <h5 class=\\\"fonts\\\">廖洪跃</h5>\r\n                      <p class=\\\"fonts\\\">擅长项目：各种眼部美容手术、上睑下垂矫正术、眼袋祛除等</p>\r\n                    </div>\r\n                  </div>\r\n                </li>\r\n                <li> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2017-04-26/385.html\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/zjtd/2017-04-26/9d21f05dfc3378bbc513fee55f9f8e3a.png\\\" width=\\\"100\\\" height=\\\"125\\\"/>\r\n                  <p class=\\\"fonts\\\">罗琳</p>\r\n                  </a>\r\n                  <div class=\\\"addInfo\\\"> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2017-04-26/385.html\\\" target=\\\"_blank\\\"><img src=\\\"picture/9d21f05dfc3378bbc513fee55f9f8e3a.png\\\" width=\\\"100\\\" height=\\\"125\\\"/></a>\r\n                    <div class=\\\"addInfoList\\\">\r\n                      <h5 class=\\\"fonts\\\">罗琳</h5>\r\n                      <p class=\\\"fonts\\\">擅长项目：精细化五官整形、鼻部整形、面部除皱术等</p>\r\n                    </div>\r\n                  </div>\r\n                </li>\r\n                <li> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2017-01-01/298.html\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/zjtd/2017-01-01/9a703b037261d797f3219b7731ffaa9f.jpg\\\" width=\\\"100\\\" height=\\\"125\\\"/>\r\n                  <p class=\\\"fonts\\\">秦晓峰</p>\r\n                  </a>\r\n                  <div class=\\\"addInfo\\\"> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2017-01-01/298.html\\\" target=\\\"_blank\\\"><img src=\\\"picture/9a703b037261d797f3219b7731ffaa9f.jpg\\\" width=\\\"100\\\" height=\\\"125\\\"/></a>\r\n                    <div class=\\\"addInfoList\\\">\r\n                      <h5 class=\\\"fonts\\\">秦晓峰</h5>\r\n                      <p class=\\\"fonts\\\">擅长项目:面部精细整形、烧伤整形修复、形体雕塑吸脂；等</p>\r\n                    </div>\r\n                  </div>\r\n                </li>\r\n                <li> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2016-12-02/246.html\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/zjtd/2016-12-02/349b8988f950b83c5a6bd5c1040ed4a6.png\\\" width=\\\"100\\\" height=\\\"125\\\"/>\r\n                  <p class=\\\"fonts\\\">郭小楼</p>\r\n                  </a>\r\n                  <div class=\\\"addInfo\\\"> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2016-12-02/246.html\\\" target=\\\"_blank\\\"><img src=\\\"picture/349b8988f950b83c5a6bd5c1040ed4a6.png\\\" width=\\\"100\\\" height=\\\"125\\\"/></a>\r\n                    <div class=\\\"addInfoList\\\">\r\n                      <h5 class=\\\"fonts\\\">郭小楼</h5>\r\n                      <p class=\\\"fonts\\\">擅长项目：美容冠修复、无托槽隐形矫正、皓齿美白等</p>\r\n                    </div>\r\n                  </div>\r\n                </li>\r\n\r\n            </div>\r\n              <!--<div class=\\\"preNextBtn absolute\\\"><a href=\\\"javascript:void(0)\\\" class=\\\"preBtn fl\\\"><i></i></a><a href=\\\"javascript:void(0)\\\" class=\\\"nextBtn fr\\\"><i></i></a></div>-->\r\n              <div class=\\\"overlayer absolute\\\"></div>\r\n              <div class=\\\"popInfo absolute\\\"> </div>\r\n            </div>\r\n          </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n    <div class=\\\"stage3 clearfix\\\">\r\n      <div class=\\\"stage3_width stage3_a  relative\\\">\r\n        <div class=\\\"alltitle absolute\\\"></div>\r\n        <div class=\\\"stage1Title clearfix absolute\\\">\r\n          <div class=\\\"preNext  clearfix absolute\\\"> \r\n          <a href=\\\"javascript:void(0)\\\" class=\\\"preBtn \\\"><i></i></a> \r\n          <a href=\\\"javascript:void(0)\\\" class=\\\"nextBtn \\\"><i></i></a> \r\n          </div>\r\n        </div>\r\n        <div class=\\\"stage3Box\\\">\r\n          <div class=\\\"slides\\\">\r\n          <a href=\\\"/s/pimiao/index.html\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/mlal/2017-05-03/2fadb6bdd942e78ebbbe966565f9c732.jpg\\\" width=\\\"1200\\\" height=\\\"769\\\"/></a> \r\n          </div>\r\n          <div class=\\\"slides\\\">\r\n          <a href=\\\"/s/Hair/index.html\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/mlal/2017-05-03/f00da24694787e3fac3f957bc3d1018e.jpg\\\" width=\\\"1200\\\" height=\\\"769\\\"/></a> \r\n          </div>\r\n          <div class=\\\"slides\\\">\r\n          <a href=\\\"/s/CarvedEyesc/index.html\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/mlal/2017-05-03/57ebf5884cd6c3e6d58b8a928041fa2c.jpg\\\" width=\\\"1200\\\" height=\\\"769\\\"/></a> \r\n          </div>\r\n          <div class=\\\"slides\\\">\r\n          <a href=\\\"/s/csd/index.html\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/mlal/2017-05-03/446854eac4245a18e3a6deef0d709111.jpg\\\" width=\\\"1200\\\" height=\\\"769\\\"/></a> \r\n          </div>\r\n          <div class=\\\"slides\\\">\r\n          <a href=\\\"/s/Hair/index.html\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/mlal/2017-05-03/ba5a93dfd7cb973a2b2e6a13c08092ed.jpg\\\" width=\\\"1200\\\" height=\\\"769\\\"/></a> \r\n          </div>\r\n          <div class=\\\"slides\\\">\r\n          <a href=\\\"/s/Jsm/index.html\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/mlal/2017-05-03/c1de86780b087673043fab82651bce0e.jpg\\\" width=\\\"1200\\\" height=\\\"769\\\"/></a> \r\n          </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n    <div class=\\\"xslc\\\">\r\n      <div class=\\\"xslc_focus clearfix\\\">\r\n        <div class=\\\"txt\\\" style=\\\"background:url(images/biaoti.png) no-repeat -1157px -0px;\\\"></div>\r\n        <div class=\\\"txt\\\" style=\\\"background:url(images/biaoti.png) no-repeat -1442px -0px;\\\"></div>\r\n        <div class=\\\"txt\\\" style=\\\"background:url(images/biaoti.png) no-repeat -1745px -0px;\\\"></div>\r\n      </div>\r\n      <div class=\\\"slideBox\\\">\r\n        <div class=\\\"slides\\\">\r\n          <div class=\\\"slide slide1 clearfix\\\">\r\n            <div class=\\\"info relative fl\\\"> <a href=\\\"javascript:;\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/gylm/yyhj/2016-12-29/88146cb896297b8d959ce5198aa30c2f.jpg\\\" width=\\\"239\\\" height=\\\"185\\\"/>\r\n              <p>医院外景</p>\r\n              </a> </div>\r\n            <div class=\\\"info relative fl\\\"> <a href=\\\"javascript:;\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/gylm/yyhj/2016-12-29/2714691bb63cfaab9e73017630ad2a63.jpg\\\" width=\\\"239\\\" height=\\\"185\\\"/>\r\n              <p>外科病房</p>\r\n              </a> </div>\r\n            <div class=\\\"info relative fl\\\"> <a href=\\\"javascript:;\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/gylm/yyhj/2016-12-29/567acc31ca63d20ecf0a717645ad1afe.jpg\\\" width=\\\"239\\\" height=\\\"185\\\"/>\r\n              <p>导医台</p>\r\n              </a> </div>\r\n            <div class=\\\"info relative fl\\\"> <a href=\\\"javascript:;\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/gylm/yyhj/2016-12-29/4c7a7a8a2f4f5442c7303165842798ba.jpg\\\" width=\\\"239\\\" height=\\\"185\\\"/>\r\n              <p>医院大厅</p>\r\n              </a> </div>\r\n          </div>\r\n          <div class=\\\"slide slide2 clearfix\\\">\r\n            <div class=\\\"info relative fl\\\"> <a href=\\\"javascript:;\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/gylm/jdsb/2016-12-28/191279171db89391a66907b642a4368e.jpg\\\" width=\\\"239\\\" height=\\\"185\\\"/>\r\n              <p style=\\\"text-align: center;font-size: 30px;line-height: 63px;\\\">王者风范</p>\r\n              </a> </div>\r\n            <div class=\\\"info relative fl\\\"> <a href=\\\"javascript:;\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/gylm/jdsb/2016-12-28/8013d5cdc862f56515289eed649a9b37.jpg\\\" width=\\\"239\\\" height=\\\"185\\\"/>\r\n              <p style=\\\"text-align: center;font-size: 30px;line-height: 63px;\\\">深蓝射频</p>\r\n              </a> </div>\r\n            <div class=\\\"info relative fl\\\"> <a href=\\\"javascript:;\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/gylm/jdsb/2016-12-28/209f5d7706a478085ecbec859885ca11.jpg\\\" width=\\\"239\\\" height=\\\"185\\\"/>\r\n              <p style=\\\"text-align: center;font-size: 30px;line-height: 63px;\\\">超声刀</p>\r\n              </a> </div>\r\n            <div class=\\\"info relative fl\\\"> <a href=\\\"javascript:;\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/gylm/jdsb/2016-12-28/6b72901730af782b7d74fcd6d2a0ff52.jpg\\\" width=\\\"239\\\" height=\\\"185\\\"/>\r\n              <p style=\\\"text-align: center;font-size: 30px;line-height: 63px;\\\">莱茜尔脱毛仪</p>\r\n              </a> </div>\r\n       \r\n          </div>\r\n          <div class=\\\"slide slide6 clearfix\\\">\r\n            <div class=\\\"info relative fl\\\"> <a href=\\\"javascript:;\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/gylm/yyry/2017-01-02/fe7a94e110eafde2271c32dc75c589e6.png\\\" width=\\\"239\\\" height=\\\"185\\\"/>\r\n              <p>韩国汉城整形医院技术合作</p>\r\n              </a> \r\n            </div>\r\n            <div class=\\\"info relative fl\\\"> <a href=\\\"javascript:;\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/gylm/yyry/2017-01-02/4725665ca5834bf2a4ee96934b06a3ba.png\\\" width=\\\"239\\\" height=\\\"185\\\"/>\r\n              <p>中美合作激光美容技术交流</p>\r\n              </a> \r\n            </div>\r\n            <div class=\\\"info relative fl\\\"> <a href=\\\"javascript:;\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/gylm/yyry/2017-01-02/1dd1169b1c7b02a009728e35bb1b0e67.png\\\" width=\\\"239\\\" height=\\\"185\\\"/>\r\n              <p>美国曼托假体授权指定使用</p>\r\n              </a> \r\n            </div>\r\n            <div class=\\\"info relative fl\\\"> <a href=\\\"javascript:;\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/gylm/yyry/2017-01-02/13a5f297f7b93d99189b437c5f26fdeb.png\\\" width=\\\"239\\\" height=\\\"185\\\"/>\r\n              <p>美国科医人激光中国临床培</p>\r\n              </a> \r\n            </div>\r\n            \r\n          </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n<!-- end content -->\r\n[!--temp.footer--]\r\n</body>\r\n</html>', '0', '0', '', '0', '0', '', '0', '0', '0', '1505991526', 'pubindextemp', '1', 'admin');
INSERT INTO `phome_enewstempbak` VALUES ('75', '8', 'head', '<!-- header start -->\r\n<div class=\\\"header\\\" id=\\\"header\\\">\r\n  <div class=\\\"topDateTell clearfix\\\">\r\n    <div class=\\\"pubW center clearfix\\\">\r\n      <div class=\\\"englishTags fl\\\"><a href=\\\"javascript:void(0)\\\" onClick=\\\"openZoosUrl();\\\" target=\\\"_blank\\\">在线咨询</a>|<a href=\\\"javascript:void(0)\\\" onClick=\\\"openZoosUrl();\\\" target=\\\"_blank\\\">在线留言 </a></div>\r\n      <span class=\\\"tellnumber fr\\\">美丽热线 : 0791-86667777</span> <span class=\\\"openTime fr fonts\\\">门诊时间 (无假日医院) 8:00-20:00</span> </div>\r\n  </div>\r\n  <div class=\\\"topLogo pubW center clearfix relative\\\">\r\n    <h1><a href=\\\"[!--news.url--]\\\" title=\\\"南昌莱美美容医院\\\"></a></h1>\r\n    <div class=\\\"topNav fr clearfix\\\">\r\n      <ul>\r\n        <li><a href=\\\"<?=$class_r[47][\\\'classpath\\\']?>\\\" target=\\\"_blank\\\" title=\\\"关于莱美\\\">关于莱美</a></li>\r\n        <li><a href=\\\"<?=$class_r[48][\\\'classpath\\\']?>\\\" target=\\\"_blank\\\" title=\\\"医师团队\\\">医师团队</a></li>\r\n        <li><a href=\\\"<?=$class_r[49][\\\'classpath\\\']?>\\\" target=\\\"_blank\\\" title=\\\"医院环境\\\">医院环境</a></li>\r\n        <li><a href=\\\"<?=$class_r[50][\\\'classpath\\\']?>\\\" target=\\\"_blank\\\" title=\\\"医疗荣誉\\\">医疗荣誉</a></li>\r\n        <li><a href=\\\"/\\\" target=\\\"_blank\\\" title=\\\"美丽案例\\\">美丽案例</a></li>\r\n        <li><a href=\\\"<?=$class_r[53][\\\'classpath\\\']?>\\\" target=\\\"_blank\\\" title=\\\"来院路线\\\">来院路线</a></li>\r\n      </ul>\r\n    </div>\r\n    <div class=\\\"searchBox absolute\\\">\r\n        <div class=\\\"selectBox\\\">\r\n          <div class=\\\"switch switch1 clearfix\\\">\r\n            <div class=\\\"item item1 relative fl\\\">\r\n                      <!--<span class=\\\"itemNum\\\" style=\\\"text-align:center; color:#fff; line-height:20px;z-index:66;position:absolute;top:-10px;left:122px;display:block;width: 22px;height: 20px;background:url(\\\'images/itemnum.png\\\') no-repeat center;\\\"></span>-->\r\n              <form action=\\\"/e/search/index.php\\\" method=\\\"post\\\" onsubmit=\\\"if (this.search.value == \\\'\\\'){this.search.focus();return false;}\\\" name=\\\"formsearch\\\" id=\\\"formsearch\\\">\r\n                      <input type=\\\"hidden\\\" name=\\\"show\\\" value=\\\"title\\\" />\r\n                      <input type=\\\"hidden\\\" name=\\\"tempid\\\" value=\\\"1\\\" />\r\n                      <input type=\\\"hidden\\\" name=\\\"tbname\\\" value=\\\"news\\\" />\r\n                      <input name=\\\"keyboard\\\" id=\\\"keyboard\\\" class=\\\"btn-text fonts\\\" type=\\\"text\\\" size=\\\"22\\\" maxlength=\\\"30\\\" placeholder=\\\"查找您想要改变的部位\\\" />\r\n                      <ul></ul>\r\n                  </div>\r\n                  <div class=\\\"itemBtn fl relative\\\">\r\n                    <input type=\\\"submit\\\" class=\\\"inputSub bt\\\"  title=\\\"查找\\\" value=\\\"查找\\\" />\r\n                    <i class=\\\"absolute\\\"></i>\r\n                  </div>\r\n              </form>\r\n          </div>\r\n        </div>\r\n        <div class=\\\"zhutiWripper\\\">\r\n          <ul class=\\\"clearfix\\\">\r\n          [e:loop={55,12,0,0,0,\\\'classid desc\\\'}]\r\n            <li>\r\n              <a class=\\\"\\\" href=\\\"<?=$bqr[\\\'titleurl\\\']?>\\\" target=\\\"_blank\\\">\r\n                <img src=\\\"<?=$bqr[\\\'titlepic\\\']?>\\\" width=\\\"58\\\" height=\\\"58\\\"/>\r\n              </a>\r\n              <span><?=$bqr[\\\'title\\\']?></span>\r\n            </li>\r\n          [/e:loop]\r\n          </ul>\r\n        </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n<!-- end header -->\r\n<!-- nav banner start -->\r\n<div class=\\\"banner relative\\\" id=\\\"banner\\\"> <div class=\\\"menu absolute\\\">\r\n    <ul class=\\\"active\\\">\r\n     [e:loop={\\\"select classid,classname,classpath,classimg,bname from [!db.pre!]enewsclass where bclassid=0 order by myorder limit 11\\\",11,24,0}]\r\n      <?php if( $bqno == 1 || $bqno == 9 || $bqno == 11 ){ ?>\r\n        <li class=\\\"subNav subNav<?php if( $bqno == 1 ){ echo 10;}elseif( $bqno == 9){ echo 8;}else{ echo 9;}?>\\\"><a href=\\\"<?=$public_r[newsurl]?><?=$bqr[\\\'classpath\\\']?>\\\"><i></i> <span data-txt=\\\"<?=$bqr[\\\'classname\\\']?>\\\"></span> </a>\r\n          <div class=\\\"subMenu subMenu<?=$bqno?> clearfix\\\">\r\n            <div class=\\\"aside fl\\\">\r\n              <div class=\\\"subMenu-Logo subMenu-Logo<?=$bqno?>\\\"> <i></i>\r\n              <h6><?=$bqr[\\\'classname\\\']?></h6>\r\n              <p><?=$bqr[\\\'bname\\\']?></p>\r\n              </div>\r\n            </div>\r\n            <div class=\\\"bside fl\\\">\r\n              <div class=\\\"inner fl\\\">\r\n                <dl class=\\\"clearfix fl\\\">\r\n                  <dd class=\\\"clearfix\\\">\r\n                   <?php $sql = $empire->query(\\\"select title,titleurl,lastdotime,classid from {$dbtbpre}ecms_news where classid = \\\'$bqr[classid]\\\' order by id desc limit 6\\\");while( $row = $empire -> fetch($sql) ){ ?>\r\n                    <a href=\\\"<?=$row[\\\'titleurl\\\']?>\\\" target=\\\"_blank\\\"><?=$row[\\\'title\\\']?></a>\r\n                   <?php } ?>\r\n                  </dd> \r\n                </dl>\r\n              </div>     \r\n            </div>\r\n            <div class=\\\"cside fr\\\"> \r\n              <?php $sql = $empire -> query(\\\"select titlepic,classid from {$dbtbpre}ecms_news where classid = \\\'$bqr[classid]\\\' order by id desc limit 2\\\");while( $row = $empire -> fetch( $sql ) ){?>\r\n                  <img src=\\\"<?=$row[\\\'titlepic\\\']?>\\\" width=\\\"321\\\" height=\\\"248\\\"/> \r\n              <?php } ?>    \r\n            </div>\r\n          </div>\r\n        </li>\r\n      <?php } else { ?>\r\n        <li class=\\\"subNav subNav<?php if( $bqno == 7){ echo 7;}elseif( $bqno == 8 ){ echo 6;}elseif( $bqno == 10 ){ echo 12; }else{ echo $bqno-1;}?>\\\"><a href=\\\"<?=$bqr[\\\'classpath\\\']?>\\\"><i></i> <span data-txt=\\\"<?=$bqr[\\\'classname\\\']?>\\\"></span></a>\r\n          <div class=\\\"subMenu subMenu<?=$bqno?> clearfix\\\">\r\n            <div class=\\\"aside fl\\\">\r\n              <div class=\\\"subMenu-Logo subMenu-Logo<?=$bqno?>\\\"> <i></i>\r\n                <h6><?=$bqr[\\\'classname\\\']?></h6>\r\n                <p><?=$bqr[\\\'bname\\\']?></p>\r\n              </div>\r\n            </div>\r\n            <div class=\\\"bside fl\\\">\r\n              <div class=\\\"inner fl\\\">\r\n              <?php $sql = $empire -> query(\\\"select classid,classname,classpath,bclassid from {$dbtbpre}enewsclass where bclassid = \\\'$bqr[classid]\\\' order by myorder limit 6\\\"); while( $row = $empire -> fetch( $sql ) ){ ?>\r\n                <dl class=\\\"clearfix fl\\\">\r\n                  <dt><a href=\\\"<?=$row[\\\'classpath\\\']?>\\\"><?=$row[\\\'classname\\\']?></a></dt> \r\n                  <?php $sql2 = $empire -> query(\\\"select title,titleurl,classid from {$dbtbpre}ecms_news where classid= \\\'$row[classid]\\\' order by lastdotime desc limit 6\\\");while( $row2 = $empire ->fetch($sql2) ){ ?>\r\n                    <dd class=\\\"clearfix\\\">\r\n                       <a href=\\\"<?=$row2[\\\'titleurl\\\']?>\\\" target=\\\"_blank\\\"><?=$row2[\\\'title\\\']?></a>\r\n                    </dd> \r\n                  <?php } ?>  \r\n                </dl>\r\n                <?php } ?>\r\n              </div>     \r\n            </div>\r\n            <div class=\\\"cside fr\\\"> \r\n              <?php $sql3 = (\\\"select classimg from {$dbtbpre}enewsclass where classid= \\\'$bqr[classid]\\\' order by myorder desc \\\");$row3 = $empire -> fetch1($sql3); ?>\r\n                <img src=\\\"<?php echo $row3[\\\'classimg\\\'];?>\\\" width=\\\"321\\\" height=\\\"248\\\"/>\r\n            </div>\r\n          </div>\r\n        </li>\r\n      <?php } ?>\r\n       [/e:loop]  \r\n    </ul>\r\n</div>\r\n', '0', '0', '自定义页面头部', '0', '0', '', '0', '0', '0', '1505994792', 'tempvar', '1', 'admin');
INSERT INTO `phome_enewstempbak` VALUES ('72', '9', 'expert', '<div class=\\\"ey_zjd\\\">\r\n<div class=\\\"ey_abouts\\\"><img src=\\\"http://www.nclaimei.com/expert/images/zj_01.jpg\\\"></div>\r\n<div class=\\\"ey_list\\\" style=\\\"width: 7115px;\\\">\r\n<div class=\\\"ey_zj\\\" style=\\\"width: 1423px;\\\">\r\n<div class=\\\"ey_zjlef\\\"><img src=\\\"http://www.nclaimei.com/expert/images/zj_2.jpg\\\"> </div>\r\n<div class=\\\"ey_zjrin\\\"><b style=\\\"font-size:36px; color:;\\\">覃耀锋|</b><b style=\\\" font-size:28px;\\\">技术副院长</b>\r\n<div class=\\\"ey_zjcj\\\">\r\n南昌莱美美容医院技术副院长；<br>\r\n中国医师协会整形美容分会成员；<br>\r\n中国修复重建外科学会成员； <br>\r\n中国十佳青年技术派杰出整形医师； \r\n</div>\r\n<div class=\\\"ey_zjsc\\\">\r\n擅长项目:五官精细化整形<br>\r\n<div class=\\\"ey_zjc\\\">\r\n360°水动力螺旋吸脂 <br>\r\nU弧立体美胸<br>\r\n注射微整形等\r\n</div> \r\n</div>\r\n<a href=\\\"javascript:void(0)\\\" onclick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\">\r\n<div class=\\\"ey_zjim\\\"><img src=\\\"http://www.nclaimei.com/expert/images/zj_02.jpg\\\"></div></a>\r\n</div>\r\n</div>\r\n<div class=\\\"ey_zj\\\" style=\\\"width: 1423px;\\\">\r\n<div class=\\\"ey_zjlef\\\"><img src=\\\"http://www.nclaimei.com/expert/images/zj_7.jpg\\\"> </div>\r\n<div class=\\\"ey_zjrin\\\"><b style=\\\"font-size:36px; color:;\\\">廖洪越|</b><b style=\\\" font-size:28px;\\\">副主任医师</b>\r\n<div class=\\\"ey_zjcj\\\">\r\n南昌莱美美容医院副主任医师；<br>\r\n医学博士；<br>\r\n硕士研究生导师；\r\n</div>\r\n<div class=\\\"ey_zjsc\\\">\r\n擅长项目:上睑下垂矫正术<br>\r\n<div class=\\\"ey_zjc\\\">\r\n鼻部综合塑形 <br>\r\n唇裂二期畸形的整复<br>\r\n自体脂肪隆胸等\r\n</div> \r\n</div>\r\n<a href=\\\"javascript:void(0)\\\" onclick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\">\r\n<div class=\\\"ey_zjim\\\"><img src=\\\"http://www.nclaimei.com/expert/images/zj_02.jpg\\\"></div></a>\r\n</div>\r\n</div>\r\n<div class=\\\"ey_zj\\\" style=\\\"width: 1423px;\\\">\r\n<div class=\\\"ey_zjlef\\\"><img src=\\\"http://www.nclaimei.com/expert/images/zj_8.jpg\\\"> </div>\r\n<div class=\\\"ey_zjrin\\\"><b style=\\\"font-size:36px; color:;\\\">刘波涛|</b><b style=\\\" font-size:28px;\\\">皮肤科主任</b>\r\n<div class=\\\"ey_zjcj\\\">\r\n国内资深皮肤专家<br>\r\n中国激光美肤实力派代表；<br>\r\n明星医学美肤私人顾问；<br>\r\n电视台众多主持人美肤特约顾问 <br>\r\n韩国首尔整形美容医院合作专家\r\n</div>\r\n<div class=\\\"ey_zjsc\\\">\r\n擅长项目:双核光祛斑；<br>\r\n<div class=\\\"ey_zjc\\\">\r\nopt王者风范美肤； <br>\r\n解决各种不良皮肤美容后遗症等； \r\n</div> \r\n</div>\r\n<a href=\\\"javascript:void(0)\\\" onclick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\">\r\n<div class=\\\"ey_zjim\\\"><img src=\\\"http://www.nclaimei.com/expert/images/zj_02.jpg\\\"></div></a>\r\n</div>\r\n</div>\r\n<div class=\\\"ey_zj\\\" style=\\\"width: 1423px;\\\">\r\n<div class=\\\"ey_zjlef\\\"><img src=\\\"http://www.nclaimei.com/expert/images/zj_5.jpg\\\"> </div>\r\n<div class=\\\"ey_zjrin\\\"><b style=\\\"font-size:36px; color:;\\\">冯宇明|</b><b style=\\\" font-size:28px;\\\">皮肤科医师</b>\r\n<div class=\\\"ey_zjcj\\\">\r\n莱美美容医院皮肤科执行医师:<br>\r\n莱美抗衰老专家；<br>\r\n中国医师协会美容整形分会会员；<br>\r\n中国激光美容协会会员\r\n</div>\r\n<div class=\\\"ey_zjsc\\\">\r\n擅长项目:面部年轻化；<br>\r\n<div class=\\\"ey_zjc\\\">\r\n嫩肤美白；<br>\r\n水光注射；等\r\n</div> \r\n</div>\r\n<a href=\\\"javascript:void(0)\\\" onclick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\">\r\n<div class=\\\"ey_zjim\\\"><img src=\\\"http://www.nclaimei.com/expert/images/zj_02.jpg\\\"></div></a>\r\n</div>\r\n</div>\r\n<div class=\\\"ey_zj\\\" style=\\\"width: 1423px;\\\">\r\n<div class=\\\"ey_zjlef\\\"><img src=\\\"http://www.nclaimei.com/expert/images/zj_9.jpg\\\"> </div>\r\n<div class=\\\"ey_zjrin\\\"><b style=\\\"font-size:36px; color:;\\\">龚衍寿|</b><b style=\\\" font-size:28px;\\\">个性化无痛整形专家</b>\r\n<div class=\\\"ey_zjcj\\\">\r\n莱美个性化无痛整形定制学科带头人<br>\r\n国内首批倡导安全无痛整形专家；<br>\r\n中华医学会疼痛学会会员；<br>\r\n中华医学会麻醉学分会会员\r\n</div>\r\n<div class=\\\"ey_zjsc\\\">\r\n擅长项目:无痛溶质减肥；<br>\r\n<div class=\\\"ey_zjc\\\">\r\n双眼皮； <br>\r\n面部线雕年轻化等\r\n</div> \r\n</div>\r\n<a href=\\\"javascript:void(0)\\\" onclick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\">\r\n<div class=\\\"ey_zjim\\\"><img src=\\\"http://www.nclaimei.com/expert/images/zj_02.jpg\\\"></div></a>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\\\"ey_left\\\"><img src=\\\"http://www.nclaimei.com/expert/images/ler_03.jpg\\\"></div>\r\n<div class=\\\"ey_ring\\\"><img src=\\\"http://www.nclaimei.com/expert/images/ler_05.jpg\\\"></div>\r\n</div>', '0', '0', '专家', '0', '0', '', '0', '0', '0', '1505993860', 'tempvar', '1', 'admin');
INSERT INTO `phome_enewstempbak` VALUES ('73', '8', 'head', '<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>多维美雕隆鼻-南昌莱美美容整形医院</title>\r\n<meta name=\\\"keywords\\\" content=\\\"南昌莱美整形专家团队,南昌莱美美容医院专家,莱美国际医师部\\\" />\r\n<meta name=\\\"description\\\" content=\\\"南昌整形美容医院,南昌莱美美容医院汇集国内外一流整形专家团队,全力打造最美的你.\\\" />\r\n<link href=\\\"/skin/css/reset.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script src=\\\"/skin/js/jquery-1.9.1.min.js\\\"></script>\r\n<script src=\\\"/skin/js/jquery.superslide.2.1.1.source.js\\\"></script>\r\n<script src=\\\"/skin/js/indexapp.js\\\"></script>\r\n<script type=\\\"text/javascript\\\" src=\\\"/skin/js/roll.js\\\"></script>\r\n<link href=\\\"/skin/css/bizi.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<body>\r\n<!-- header start -->\r\n[!--temp.head--]\r\n<!-- content start-->\r\n<div class=\\\"dw_banner\\\"><a href=\\\"javascript:void(0)\\\" onclick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\"></a></div>\r\n<div class=\\\"dw_abouts\\\"><img src=\\\"/skin/picture/meb_04.jpg\\\" /></div>\r\n<div class=\\\"dw_about\\\">\r\n  <img src=\\\"/skin/picture/meb_08.jpg\\\" />\r\n    <img src=\\\"/skin/picture/meb_09.jpg\\\" />\r\n    <img src=\\\"/skin/picture/meb_10.jpg\\\" />\r\n    <img src=\\\"/skin/picture/meb_11.jpg\\\" />\r\n</div>\r\n<a href=\\\"javascript:void(0)\\\" onclick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\">\r\n<div class=\\\"dw_abouts\\\"><img src=\\\"/skin/picture/meb_15.jpg\\\" /></div></a>\r\n<div class=\\\"dw_abouts\\\"><img src=\\\"/skin/picture/meb_19.jpg\\\" /></div>\r\n<div class=\\\"dw_abouts\\\"><img src=\\\"/skin/picture/meb_22.jpg\\\" width=\\\"100%\\\" /></div>\r\n<div class=\\\"dw_abouts\\\"><img src=\\\"/skin/picture/meb_25.jpg\\\" /></div>\r\n<div class=\\\"dw_yous\\\">\r\n  <div class=\\\"dw_yuw\\\">\r\n      <img src=\\\"/skin/picture/meb_02.jpg\\\" />\r\n        <img src=\\\"/skin/picture/meb_03.jpg\\\" />\r\n        <img src=\\\"/skin/picture/meb_05.jpg\\\" />\r\n        <img src=\\\"/skin/picture/meb_07.jpg\\\" />\r\n    </div>\r\n    <div class=\\\"dw_drel\\\">手术示意图</div>\r\n    <div class=\\\"dw_syt\\\">\r\n      <img src=\\\"/skin/picture/meb_29.jpg\\\" />\r\n        <img src=\\\"/skin/picture/meb_30.jpg\\\" />\r\n        <img src=\\\"/skin/picture/meb_32.jpg\\\" />\r\n        <img src=\\\"/skin/picture/meb_34.jpg\\\" />\r\n        <img src=\\\"/skin/picture/meb_33.jpg\\\" />\r\n    </div>\r\n</div>\r\n<div class=\\\"dw_abouts\\\"><img src=\\\"/skin/picture/meb_31.jpg\\\" /></div>\r\n<div style=\\\" margin-left:auto; margin-right:auto; clear:both; width:1000px;\\\">\r\n  <table width=\\\"1000\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"10\\\" cellspacing=\\\"1\\\" bgcolor=\\\"#ddd\\\">\r\n  <tr style=\\\"  font-size:24px; color:#9c3232; text-align:center; line-height:30px;\\\">\r\n    <td bgcolor=\\\"#FFFFFF\\\" style=\\\" font-size:24px; font-weight:bold;\\\">多维美雕隆鼻</td>\r\n    <td bgcolor=\\\"#FFFFFF\\\" style=\\\" width:150px; font-size:24px; font-weight:bold;\\\">VS</td>\r\n    <td bgcolor=\\\"#FFFFFF\\\" style=\\\" font-size:24px; font-weight:bold;\\\">传统隆鼻</td>\r\n  </tr>\r\n  <tr style=\\\" font-size:24px; line-height:30px;\\\">\r\n    <td bgcolor=\\\"#FFFFFF\\\" style=\\\" text-indent:30px;\\\">根据医学美容解剖学、艺术学、个人气质、从每个角度为求美者设计出**的鼻型，全面提升个人的气质。</td>\r\n    <td bgcolor=\\\"#FFFFFF\\\" style=\\\" text-align:center;font-size:24px;font-weight:bold; color:#9c3232;\\\">设计方案</td>\r\n    <td bgcolor=\\\"#FFFFFF\\\" style=\\\" text-indent:30px;\\\">以正面鼻背作为出发点，迁就假体，从不考虑侧面和抬头位的形态。</td>\r\n  </tr>\r\n  <tr style=\\\" font-size:24px; line-height:30px;\\\">\r\n    <td bgcolor=\\\"#FFFFFF\\\" style=\\\" text-indent:30px;\\\">依据黄金分割美学理念，将假体或自体组织分段进行手术，保证正面、侧面以及鼻孔的完美形态。</td>\r\n    <td bgcolor=\\\"#FFFFFF\\\" style=\\\" text-align:center; font-size:24px;font-weight:bold;color:#9c3232;\\\">手术方式</td>\r\n    <td bgcolor=\\\"#FFFFFF\\\" style=\\\" text-indent:30px;\\\">大动干戈，创伤较大，伤口出血较大。</td>\r\n  </tr>\r\n  <tr style=\\\" font-size:24px; line-height:30px;\\\">\r\n    <td bgcolor=\\\"#FFFFFF\\\" style=\\\" text-indent:30px;\\\">采用的是精品硅胶、膨体材料、自体软骨组织 注射等多种隆鼻方式</td>\r\n    <td bgcolor=\\\"#FFFFFF\\\" style=\\\" text-align:center;font-size:24px;font-weight:bold; color:#9c3232;\\\">选择材料</td>\r\n    <td bgcolor=\\\"#FFFFFF\\\" style=\\\" text-indent:30px;\\\">以假体为卖点，整个鼻根、鼻背、鼻尖都以假体支撑，初级的整形方式使大多数人出现术后问题</td>\r\n  </tr>\r\n  <tr style=\\\" font-size:24px; line-height:30px;\\\">\r\n    <td bgcolor=\\\"#FFFFFF\\\" style=\\\" text-indent:30px;\\\">立体感强，“鼻部整形、全脸设计”达到 五官自然、和谐、美观的效果</td>\r\n    <td bgcolor=\\\"#FFFFFF\\\" style=\\\" text-align:center;font-size:24px; font-weight:bold;color:#9c3232;\\\">术后效果</td>\r\n    <td bgcolor=\\\"#FFFFFF\\\" style=\\\" text-indent:30px;\\\">单纯鼻部垫高，忽视与脸型整体的协调性，假体容易顶出、透光，使鼻部显得僵硬不自然。</td>\r\n  </tr>\r\n</table>\r\n</div>\r\n<div class=\\\"dw_abouts\\\"><img src=\\\"/skin/picture/meb_35.jpg\\\" /></div>\r\n<div class=\\\"dw_dj\\\">\r\n  <div class=\\\"dw_djcl\\\">\r\n      <div class=\\\"dw_diimg\\\"><img src=\\\"/skin/picture/meb_39.jpg\\\" /></div>\r\n        <div class=\\\"dw_djxk\\\">\r\n          <div class=\\\"dw_djw\\\">国际品质固体硅胶</div>\r\n            <div class=\\\"dw_xxk\\\">\r\n              <div class=\\\"dw_djwe\\\">优势特点</div>\r\n                <p>固体硅胶的优点是价格低、重量轻、易雕刻、有一定可塑性，可高温消毒，且植入人体后性质稳定</p>\r\n            </div>\r\n            <a href=\\\"javascript:void(0)\\\" onclick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\"><div class=\\\"dw_xxwj\\\">详细问价</div></a>\r\n            <a href=\\\"javascript:void(0)\\\" onclick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\"><div class=\\\"dw_djzx\\\">点击咨询</div></a>\r\n        </div>\r\n    </div>\r\n  <hr style=\\\"height:1px;border:none;border-top:1px solid #000; width:100%; float:left;\\\" />\r\n    <div class=\\\"dw_djcl\\\">\r\n      <div class=\\\"dw_diimg\\\"><img src=\\\"/skin/picture/meb_43.jpg\\\" /></div>\r\n        <div class=\\\"dw_djxk\\\">\r\n          <div class=\\\"dw_djw\\\">顶级仿生膨体材料</div>\r\n            <div class=\\\"dw_xxk\\\">\r\n              <div class=\\\"dw_djwe\\\">优势特点</div>\r\n                <p>仿生膨体材料植入人体后可以与人体融为一体，可塑性强，材料异常柔软，术后效果自然，不透光，手感真实。</p>\r\n            </div>\r\n            <a href=\\\"javascript:void(0)\\\" onclick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\"><div class=\\\"dw_xxwj\\\">详细问价</div></a>\r\n            <a href=\\\"javascript:void(0)\\\" onclick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\"><div class=\\\"dw_djzx\\\">点击咨询</div></a>\r\n        </div>\r\n    </div>\r\n  <hr style=\\\"height:1px;border:none;border-top:1px solid #000; width:100%; float:left;\\\" />\r\n    <div class=\\\"dw_djcl\\\">\r\n      <div class=\\\"dw_diimg\\\"><img src=\\\"/skin/picture/meb_46.jpg\\\" /></div>\r\n        <div class=\\\"dw_djxk\\\">\r\n          <div class=\\\"dw_djw\\\">瑞蓝2号</div>\r\n            <div class=\\\"dw_xxk\\\">\r\n              <div class=\\\"dw_djwe\\\">优势特点</div>\r\n                <p>透明质酸为人体真皮组织成份之一，在隆鼻等微整形手术中非常热门，安全、快速、有效，被视为\\\"午休美容\\\"。</p>\r\n            </div>\r\n            <a href=\\\"javascript:void(0)\\\" onclick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\"><div class=\\\"dw_xxwj\\\">详细问价</div></a>\r\n            <a href=\\\"javascript:void(0)\\\" onclick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\"><div class=\\\"dw_djzx\\\">点击咨询</div></a>\r\n        </div>\r\n    </div>\r\n  <hr style=\\\"height:1px;border:none;border-top:1px solid #000; width:100%; float:left;\\\" />\r\n    <div class=\\\"dw_djcl\\\">\r\n      <div class=\\\"dw_diimg\\\"><img src=\\\"/skin/picture/meb_48.jpg\\\" /></div>\r\n        <div class=\\\"dw_djxk\\\">\r\n          <div class=\\\"dw_djw\\\">伊维兰</div>\r\n            <div class=\\\"dw_xxk\\\">\r\n              <div class=\\\"dw_djwe\\\">优势特点</div>\r\n                <p>是一种新的填充隆鼻方法，伊维兰隆鼻与玻尿酸隆鼻有着异曲同工的功效，伊维兰持续的时间会更长一些。</p>\r\n            </div>\r\n            <a href=\\\"javascript:void(0)\\\" onclick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\"><div class=\\\"dw_xxwj\\\">详细问价</div></a>\r\n            <a href=\\\"javascript:void(0)\\\" onclick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\"><div class=\\\"dw_djzx\\\">点击咨询</div></a>\r\n        </div>\r\n    </div>\r\n  <hr style=\\\"height:1px;border:none;border-top:1px solid #000; width:100%; float:left;\\\" />\r\n</div>\r\n<div class=\\\"dw_abouts\\\"><a href=\\\"javascript:void(0)\\\" onClick=\\\"openZoosUrl();\\\" target=\\\"_blank\\\"><img src=\\\"/skin/picture/meb_51.jpg\\\" /></a></div>\r\n<div class=\\\"dw_abouts\\\"><img src=\\\"/skin/picture/meb_55.jpg\\\" /></div>\r\n<div class=\\\"dw_about\\\">\r\n  <img src=\\\"/skin/picture/meb_58.jpg\\\" />\r\n    <img src=\\\"/skin/picture/meb_59.jpg\\\" />\r\n    <img src=\\\"/skin/picture/meb_62.jpg\\\" />\r\n    <img src=\\\"/skin/picture/meb_63.jpg\\\" />\r\n</div>\r\n<script language=\\\"javascript\\\" type=\\\"text/javascript\\\" src=\\\"js/efb7ec7cdb7a4faeb75d0ee3197a7a4f.js\\\"></script>\r\n<!-- end content -->\r\n[!--temp.zhuangjia--]\r\n[!--temp.footer--]\r\n</body>\r\n</html>', '0', '0', '自定义页面头部', '0', '0', '', '0', '0', '0', '1505993885', 'tempvar', '1', 'admin');
INSERT INTO `phome_enewstempbak` VALUES ('74', '8', 'head', '<!-- header start -->\r\n<div class=\\\"header\\\" id=\\\"header\\\">\r\n  <div class=\\\"topDateTell clearfix\\\">\r\n    <div class=\\\"pubW center clearfix\\\">\r\n      <div class=\\\"englishTags fl\\\"><a href=\\\"javascript:void(0)\\\" onClick=\\\"openZoosUrl();\\\" target=\\\"_blank\\\">在线咨询</a>|<a href=\\\"javascript:void(0)\\\" onClick=\\\"openZoosUrl();\\\" target=\\\"_blank\\\">在线留言 </a></div>\r\n      <span class=\\\"tellnumber fr\\\">美丽热线 : 0791-86667777</span> <span class=\\\"openTime fr fonts\\\">门诊时间 (无假日医院) 8:00-20:00</span> </div>\r\n  </div>\r\n  <div class=\\\"topLogo pubW center clearfix relative\\\">\r\n    <h1><a href=\\\"[!--news.url--]\\\" title=\\\"南昌莱美美容医院\\\"></a></h1>\r\n    <div class=\\\"topNav fr clearfix\\\">\r\n      <ul>\r\n        <li><a href=\\\"<?=$class_r[47][\\\'classpath\\\']?>\\\" target=\\\"_blank\\\" title=\\\"关于莱美\\\">关于莱美</a></li>\r\n        <li><a href=\\\"<?=$class_r[48][\\\'classpath\\\']?>\\\" target=\\\"_blank\\\" title=\\\"医师团队\\\">医师团队</a></li>\r\n        <li><a href=\\\"<?=$class_r[49][\\\'classpath\\\']?>\\\" target=\\\"_blank\\\" title=\\\"医院环境\\\">医院环境</a></li>\r\n        <li><a href=\\\"<?=$class_r[50][\\\'classpath\\\']?>\\\" target=\\\"_blank\\\" title=\\\"医疗荣誉\\\">医疗荣誉</a></li>\r\n        <li><a href=\\\"/\\\" target=\\\"_blank\\\" title=\\\"美丽案例\\\">美丽案例</a></li>\r\n        <li><a href=\\\"<?=$class_r[53][\\\'classpath\\\']?>\\\" target=\\\"_blank\\\" title=\\\"来院路线\\\">来院路线</a></li>\r\n      </ul>\r\n    </div>\r\n    <div class=\\\"searchBox absolute\\\">\r\n        <div class=\\\"selectBox\\\">\r\n          <div class=\\\"switch switch1 clearfix\\\">\r\n            <div class=\\\"item item1 relative fl\\\">\r\n                      <!--<span class=\\\"itemNum\\\" style=\\\"text-align:center; color:#fff; line-height:20px;z-index:66;position:absolute;top:-10px;left:122px;display:block;width: 22px;height: 20px;background:url(\\\'images/itemnum.png\\\') no-repeat center;\\\"></span>-->\r\n              <form action=\\\"/e/search/index.php\\\" method=\\\"post\\\" onsubmit=\\\"if (this.search.value == \\\'\\\'){this.search.focus();return false;}\\\" name=\\\"formsearch\\\" id=\\\"formsearch\\\">\r\n                      <input type=\\\"hidden\\\" name=\\\"show\\\" value=\\\"title\\\" />\r\n                      <input type=\\\"hidden\\\" name=\\\"tempid\\\" value=\\\"1\\\" />\r\n                      <input type=\\\"hidden\\\" name=\\\"tbname\\\" value=\\\"news\\\" />\r\n                      <input name=\\\"keyboard\\\" id=\\\"keyboard\\\" class=\\\"btn-text fonts\\\" type=\\\"text\\\" size=\\\"22\\\" maxlength=\\\"30\\\" placeholder=\\\"查找您想要改变的部位\\\" />\r\n                      <ul></ul>\r\n                  </div>\r\n                  <div class=\\\"itemBtn fl relative\\\">\r\n                    <input type=\\\"submit\\\" class=\\\"inputSub bt\\\"  title=\\\"查找\\\" value=\\\"查找\\\" />\r\n                    <i class=\\\"absolute\\\"></i>\r\n                  </div>\r\n              </form>\r\n          </div>\r\n        </div>\r\n        <div class=\\\"zhutiWripper\\\">\r\n          <ul class=\\\"clearfix\\\">\r\n          [e:loop={55,12,0,0,0,\\\'classid desc\\\'}]\r\n            <li>\r\n              <a class=\\\"\\\" href=\\\"<?=$bqr[\\\'titleurl\\\']?>\\\" target=\\\"_blank\\\">\r\n                <img src=\\\"<?=$bqr[\\\'titlepic\\\']?>\\\" width=\\\"58\\\" height=\\\"58\\\"/>\r\n              </a>\r\n              <span><?=$bqr[\\\'title\\\']?></span>\r\n            </li>\r\n          [/e:loop]\r\n          </ul>\r\n        </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n<!-- end header -->\r\n<!-- nav banner start -->\r\n<div class=\\\"banner relative\\\" id=\\\"banner\\\"> <div class=\\\"menu absolute\\\">\r\n    <ul class=\\\"active\\\">\r\n     [e:loop={\\\"select classid,classname,classpath,classimg,bname from [!db.pre!]enewsclass where bclassid=0 order by myorder limit 11\\\",11,24,0}]\r\n      <?php if( $bqno == 1 || $bqno == 9 || $bqno == 11 ){ ?>\r\n        <li class=\\\"subNav subNav<?php if( $bqno == 1 ){ echo 10;}elseif( $bqno == 9){ echo 8;}else{ echo 9;}?>\\\"><a href=\\\"<?=$public_r[newurl].$bqr[\\\'classpath\\\']?>\\\"><i></i> <span data-txt=\\\"<?=$bqr[\\\'classname\\\']?>\\\"></span> </a>\r\n          <div class=\\\"subMenu subMenu<?=$bqno?> clearfix\\\">\r\n            <div class=\\\"aside fl\\\">\r\n              <div class=\\\"subMenu-Logo subMenu-Logo<?=$bqno?>\\\"> <i></i>\r\n              <h6><?=$bqr[\\\'classname\\\']?></h6>\r\n              <p><?=$bqr[\\\'bname\\\']?></p>\r\n              </div>\r\n            </div>\r\n            <div class=\\\"bside fl\\\">\r\n              <div class=\\\"inner fl\\\">\r\n                <dl class=\\\"clearfix fl\\\">\r\n                  <dd class=\\\"clearfix\\\">\r\n                   <?php $sql = $empire->query(\\\"select title,titleurl,lastdotime,classid from {$dbtbpre}ecms_news where classid = \\\'$bqr[classid]\\\' order by id desc limit 6\\\");while( $row = $empire -> fetch($sql) ){ ?>\r\n                    <a href=\\\"<?=$row[\\\'titleurl\\\']?>\\\" target=\\\"_blank\\\"><?=$row[\\\'title\\\']?></a>\r\n                   <?php } ?>\r\n                  </dd> \r\n                </dl>\r\n              </div>     \r\n            </div>\r\n            <div class=\\\"cside fr\\\"> \r\n              <?php $sql = $empire -> query(\\\"select titlepic,classid from {$dbtbpre}ecms_news where classid = \\\'$bqr[classid]\\\' order by id desc limit 2\\\");while( $row = $empire -> fetch( $sql ) ){?>\r\n                  <img src=\\\"<?=$row[\\\'titlepic\\\']?>\\\" width=\\\"321\\\" height=\\\"248\\\"/> \r\n              <?php } ?>    \r\n            </div>\r\n          </div>\r\n        </li>\r\n      <?php } else { ?>\r\n        <li class=\\\"subNav subNav<?php if( $bqno == 7){ echo 7;}elseif( $bqno == 8 ){ echo 6;}elseif( $bqno == 10 ){ echo 12; }else{ echo $bqno-1;}?>\\\"><a href=\\\"<?=$bqr[\\\'classpath\\\']?>\\\"><i></i> <span data-txt=\\\"<?=$bqr[\\\'classname\\\']?>\\\"></span></a>\r\n          <div class=\\\"subMenu subMenu<?=$bqno?> clearfix\\\">\r\n            <div class=\\\"aside fl\\\">\r\n              <div class=\\\"subMenu-Logo subMenu-Logo<?=$bqno?>\\\"> <i></i>\r\n                <h6><?=$bqr[\\\'classname\\\']?></h6>\r\n                <p><?=$bqr[\\\'bname\\\']?></p>\r\n              </div>\r\n            </div>\r\n            <div class=\\\"bside fl\\\">\r\n              <div class=\\\"inner fl\\\">\r\n              <?php $sql = $empire -> query(\\\"select classid,classname,classpath,bclassid from {$dbtbpre}enewsclass where bclassid = \\\'$bqr[classid]\\\' order by myorder limit 6\\\"); while( $row = $empire -> fetch( $sql ) ){ ?>\r\n                <dl class=\\\"clearfix fl\\\">\r\n                  <dt><a href=\\\"<?=$row[\\\'classpath\\\']?>\\\"><?=$row[\\\'classname\\\']?></a></dt> \r\n                  <?php $sql2 = $empire -> query(\\\"select title,titleurl,classid from {$dbtbpre}ecms_news where classid= \\\'$row[classid]\\\' order by lastdotime desc limit 6\\\");while( $row2 = $empire ->fetch($sql2) ){ ?>\r\n                    <dd class=\\\"clearfix\\\">\r\n                       <a href=\\\"<?=$row2[\\\'titleurl\\\']?>\\\" target=\\\"_blank\\\"><?=$row2[\\\'title\\\']?></a>\r\n                    </dd> \r\n                  <?php } ?>  \r\n                </dl>\r\n                <?php } ?>\r\n              </div>     \r\n            </div>\r\n            <div class=\\\"cside fr\\\"> \r\n              <?php $sql3 = (\\\"select classimg from {$dbtbpre}enewsclass where classid= \\\'$bqr[classid]\\\' order by myorder desc \\\");$row3 = $empire -> fetch1($sql3); ?>\r\n                <img src=\\\"<?php echo $row3[\\\'classimg\\\'];?>\\\" width=\\\"321\\\" height=\\\"248\\\"/>\r\n            </div>\r\n          </div>\r\n        </li>\r\n      <?php } ?>\r\n       [/e:loop]  \r\n    </ul>\r\n</div>\r\n', '0', '0', '自定义页面头部', '0', '0', '', '0', '0', '0', '1505994512', 'tempvar', '1', 'admin');
INSERT INTO `phome_enewstempbak` VALUES ('68', '2', 'footer', '<div class=\\\"footer\\\">\r\n  <div class=\\\"pubW center clearfix\\\">\r\n	<div class=\\\"footerNav\\\">\r\n		<div class=\\\"footer_logo fl\\\"></div>\r\n		<i></i>\r\n		<div class=\\\"footer_address fl\\\">\r\n			<div class=\\\"footer_text center\\\">\r\n				<h1>医院地址</h1>\r\n				<p>南昌市抚河抚河南路261号（上林春天花园北门）</p>\r\n				<p>免费热线：0791-86667777</p>\r\n				<p>乘车路线：20路、25路、218路、33路到建设路西口</p>\r\n			</div>\r\n		</div>\r\n		<i></i>\r\n		<div class=\\\"footer_qrcode fl\\\"></div>\r\n	</div>\r\n		<p>网站内容申明：本网站信息仅供参考，不能作为诊疗及医疗依据本网站商标及图片权属本医院所有，未经授权请勿复制及转载！部分图片来源于网络且图文无关，若侵犯了您的权益请及时联系。<script type=\\\"text/javascript\\\">\r\nvar _bdhmProtocol = ((\\\"https:\\\" == document.location.protocol) ? \\\" https://\\\" : \\\" http://\\\");\r\ndocument.write(unescape(\\\"%3Cscript src=\\\'\\\" + _bdhmProtocol + \\\"hm.baidu.com/h.js%3Fb6c8806730042053a0e3f0786c2872ce\\\' type=\\\'text/javascript\\\'%3E%3C/script%3E\\\"));\r\n</script></p>\r\n  </div>\r\n</div>\r\n<div class=\\\"copyright\\\">\r\n	<div class=\\\"splitline\\\"></div>\r\n	<p>Copyright @ 南昌莱美美容医院 All rights reserved 赣ICP备10201680号</p>\r\n</div>\r\n<!-- end footer -->\r\n<script language=\\\"javascript\\\" src=\\\"js/kst.js\\\"></script>\r\n<div id=\\\"ScrollTop\\\">Top</div>\r\n<script>\r\n	window.onload = function () {\r\n    var top = document.getElementById(\\\"ScrollTop\\\");\r\n    //滚动一屏幕时显示回到顶部\r\n    window.onscroll = function () {\r\n        var currentPosition = document.documentElement.scrollTop || document.body.scrollTop;\r\n        currentPosition > window.screen.availHeight ? top.style.display = \\\"block\\\" : top.style.display = \\\"none\\\";\r\n    };\r\n    top.onclick = GoTop;// 注意不要括号\r\n    function GoTop() {\r\n        var timer = setInterval(function () {\r\n    var currentPosition = document.documentElement.scrollTop || document.body.scrollTop;\r\n            currentPosition -= 100;\r\n            if (currentPosition > 0) {\r\n                window.scrollTo(0, currentPosition);\r\n            }\r\n            else {\r\n                window.scrollTo(0, 0);\r\n                clearInterval(timer);\r\n            }\r\n        }, 30);\r\n    }\r\n}\r\n</script>', '0', '0', '页面尾部', '0', '0', '', '0', '0', '0', '1505989291', 'tempvar', '1', 'admin');
INSERT INTO `phome_enewstempbak` VALUES ('150', '9', '整形美容项目', '<!doctype html>\r\n<html>\r\n<head>\r\n<link rel=\\\"shortout icon\\\" href=\\\"http://www.nclaimei.com/skin/laimei2017/images/favicon.ico\\\" />\r\n<meta name=\\\"renderer\\\" content=\\\"webkit\\\"/>\r\n<meta http-equiv=\\\"X-UA-Comabsolutetible\\\" content=\\\"IE=Edge,chrome=1\\\" />\r\n<meta name=\\\"format-detection\\\" content=\\\"telephone=on\\\"/>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>[!--pagetitle--]_南昌莱美美容医院</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedesc--]\\\">\r\n<link href=\\\"/skin/css/zxmrxm.css\\\" rel=\\\"stylesheet\\\"/>\r\n<link href=\\\"/skin/css/reset.css\\\" rel=\\\"stylesheet\\\"/>\r\n<script src=\\\"/skin//js/jquery-1.9.1.min.js\\\"></script>\r\n<script src=\\\"/skin/js/jquery.superslide.2.1.1.source.js\\\"></script>\r\n<script src=\\\"/skin/js/expert.js\\\"></script>\r\n<script src=\\\"/skin/js/indexapp.js\\\"></script>\r\n</head>\r\n<body>\r\n[!--temp.header--]\r\n<!--content pinpaiContent-->\r\n<div class=\\\"pinpaiContent pubW center relative clearfix\\\">\r\n    <div class=\\\"contentRight fr  relative\\\" id=\\\"contentRight\\\">\r\n        <?php\r\n            $cid = $GLOBALS[\\\'navclassid\\\']; \r\n            $classid =$GLOBALS[\\\'navclassid\\\']; \r\n            if( $class_r[$cid][\\\'bclassid\\\'] == 0){\r\n                $fid = $cid;\r\n            }else{\r\n                $fid = $class_r[$cid][\\\'bclassid\\\'];\r\n            }\r\n        ?>\r\n             [e:loop={\\\"select classid,classname,bclassid from [!db.pre!]enewsclass where classid=\\\'$fid\\\'\\\",0,24,0}]\r\n            <?php if( $cid == 1 || $cid == 2 || $cid == 11 ){ ?>\r\n                <div class=\\\"seoNavs absolute fonts\\\"><a href=\\\"<?=$bqr[\\\'classurl\\\']?>\\\"></a><?=$bqr[\\\'classname\\\']?></div>\r\n            <?php } else {   $sql = $empire -> query( \\\"select classname,classpath from {$dbtbpre}enewsclass where   classid ={$cid}\\\" );while( $row = $empire->fetch($sql) ){?>\r\n                <div class=\\\"seoNavs absolute fonts\\\"><a href=\\\"<?=$bqsr[\\\'classurl\\\']?>\\\"><?=$bqr[\\\'classname\\\']?></a> | <?=$row[\\\'classname\\\']?></div>\r\n            <?php }} ?>    \r\n        [/e:loop]\r\n       <div class=\\\"pinpaiWrapper\\\">\r\n        <div class=\\\"content1 clearfix fonts\\\">\r\n      <ul>\r\n    [!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]\r\n      </ul>\r\n      </div>\r\n        <div class=\\\"listpage\\\">[!--show.listpage--]</div>\r\n      <div class=\\\"content4 clearfix fonts\\\">\r\n        <ul>\r\n                    <li><a class=\\\"qiujing\\\" href=\\\"javascript:void(0)\\\" onClick=\\\"openZoosUrl();return false;\\\"\r\n                           target=\\\"_blank\\\"></a>\r\n                        <p>专业提供在线免费咨询服务，快速为您解答整形美容疑问。</p></li>\r\n                    <li><a class=\\\"chengxin\\\" href=\\\"javascript:void(0)\\\" onClick=\\\"openZoosUrl();return false;\\\"\r\n                           target=\\\"_blank\\\"></a>\r\n                        <p>医生免费预约通道，到院无需排队即可享受美丽专属优惠。</p></li>\r\n                    <li><a class=\\\"reqing\\\" href=\\\"http://www.nclaimei.com/gylm/lylx\\\"></a>\r\n                        <p>无论您在本市还是外地，一份详细的交通指南让您轻松到达。</p></li>\r\n                </ul>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>\r\n<!--content pinpaiContent结束-->\r\n[!--temp.footer--]\r\n</body>\r\n</html>', '0', '0', '<li><a href=\\\"[!--titleurl--]\\\" class=\\\"img\\\"  target=\\\"_blank\\\"><img src=\\\"[!--titlepic--]\\\" width=\\\"349\\\" height=\\\"241\\\" alt=\\\"[!--oldtitle--]\\\"></a><a href=\\\"[!--titleurl--]\\\" title=\\\"[!--oldtitle--]\\\" target=\\\"_blank\\\">[!--title--]</a><a href=\\\"[!--titleurl--]\\\" class=\\\"span\\\" target=\\\"_blank\\\"><span>[!--ftitle--]</span></a><div class=\\\"on\\\"><p>[!--smalltext--]</p></div></li>', '1', '1', 'Y-m-d H:i:s', '0', '0', '0', '1506067609', 'listtemp', '1', 'admin');
INSERT INTO `phome_enewstempbak` VALUES ('148', '9', '整形美容项目', '<!doctype html>\r\n<html>\r\n<head>\r\n<link rel=\\\"shortout icon\\\" href=\\\"http://www.nclaimei.com/skin/laimei2017/images/favicon.ico\\\" />\r\n<meta name=\\\"renderer\\\" content=\\\"webkit\\\"/>\r\n<meta http-equiv=\\\"X-UA-Comabsolutetible\\\" content=\\\"IE=Edge,chrome=1\\\" />\r\n<meta name=\\\"format-detection\\\" content=\\\"telephone=on\\\"/>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>[!--pagetitle--]_南昌莱美美容医院</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedesc--]\\\">\r\n<link href=\\\"/skin/css/zxmrxm.css\\\" rel=\\\"stylesheet\\\"/>\r\n<link href=\\\"/skin/css/reset.css\\\" rel=\\\"stylesheet\\\"/>\r\n<script src=\\\"/skin//js/jquery-1.9.1.min.js\\\"></script>\r\n<script src=\\\"/skin/js/jquery.superslide.2.1.1.source.js\\\"></script>\r\n<script src=\\\"/skin/js/expert.js\\\"></script>\r\n<script src=\\\"/skin/js/indexapp.js\\\"></script>\r\n</head>\r\n<body>\r\n[!--temp.header--]\r\n<!--content pinpaiContent-->\r\n<div class=\\\"pinpaiContent pubW center relative clearfix\\\">\r\n    <div class=\\\"contentRight fr  relative\\\" id=\\\"contentRight\\\">\r\n        <?php\r\n            $cid = $GLOBALS[\\\'navclassid\\\']; \r\n            $classid =$GLOBALS[\\\'navclassid\\\']; \r\n            if( $class_r[$cid][\\\'bclassid\\\'] == 0){\r\n                $fid = $cid;\r\n            }else{\r\n                $fid = $class_r[$cid][\\\'bclassid\\\'];\r\n            }\r\n        ?>\r\n             [e:loop={\\\"select classid,classname,bclassid from [!db.pre!]enewsclass where classid=\\\'$fid\\\'\\\",0,24,0}]\r\n            <?php if( $cid == 1 || $cid == 2 || $cid == 11 ){ ?>\r\n                <div class=\\\"seoNavs absolute fonts\\\"><a href=\\\"<?=$bqr[\\\'classurl\\\']?>\\\"></a><?=$bqr[\\\'classname\\\']?></div>\r\n            <?php } else {   $sql = $empire -> query( \\\"select classname,classpath from {$dbtbpre}enewsclass where   classid ={$cid}\\\" );while( $row = $empire->fetch($sql) ){?>\r\n                <div class=\\\"seoNavs absolute fonts\\\"><a href=\\\"<?=$bqsr[\\\'classurl\\\']?>\\\"><?=$bqr[\\\'classname\\\']?></a> | <?=$row[\\\'classname\\\']?></div>\r\n            <?php }} ?>    \r\n        [/e:loop]\r\n       <div class=\\\"pinpaiWrapper\\\">\r\n        <div class=\\\"content1 clearfix fonts\\\">\r\n      <ul>\r\n    [!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]\r\n      </ul>\r\n      </div>\r\n        <div class=\\\"listpage\\\">[!--show.listpage--]</div>\r\n      <div class=\\\"content4 clearfix fonts\\\">\r\n        <ul>\r\n                    <li><a class=\\\"qiujing\\\" href=\\\"javascript:void(0)\\\" onClick=\\\"openZoosUrl();return false;\\\"\r\n                           target=\\\"_blank\\\"></a>\r\n                        <p>专业提供在线免费咨询服务，快速为您解答整形美容疑问。</p></li>\r\n                    <li><a class=\\\"chengxin\\\" href=\\\"javascript:void(0)\\\" onClick=\\\"openZoosUrl();return false;\\\"\r\n                           target=\\\"_blank\\\"></a>\r\n                        <p>医生免费预约通道，到院无需排队即可享受美丽专属优惠。</p></li>\r\n                    <li><a class=\\\"reqing\\\" href=\\\"http://www.nclaimei.com/gylm/lylx\\\"></a>\r\n                        <p>无论您在本市还是外地，一份详细的交通指南让您轻松到达。</p></li>\r\n                </ul>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>\r\n<!--content pinpaiContent结束-->\r\n[!--temp.footer--]\r\n</body>\r\n</html>', '0', '0', '<li><a href=\\\"[!--titleurl--]\\\" class=\\\"img\\\"  target=\\\"_blank\\\"><img src=\\\"[!--titlepic--]\\\" width=\\\"349\\\" height=\\\"241\\\" alt=\\\"[!--oldtitle--]\\\"></a><a href=\\\"[!--titleurl--]\\\" title=\\\"[!--oldtitle--]\\\" target=\\\"_blank\\\">[!--title--]</a><a href=\\\"[!--titleurl--]\\\" class=\\\"span\\\" target=\\\"_blank\\\"><span>[!--ftitle--]</span></a><div class=\\\"on\\\"><p>[!--smalltext--]</p></div></li>', '1', '1', 'Y-m-d H:i:s', '0', '0', '0', '1506067363', 'listtemp', '1', 'admin');
INSERT INTO `phome_enewstempbak` VALUES ('149', '9', '整形美容项目', 'yy', '0', '0', '<li><a href=\\\"[!--titleurl--]\\\" class=\\\"img\\\"  target=\\\"_blank\\\"><img src=\\\"[!--titlepic--]\\\" width=\\\"349\\\" height=\\\"241\\\" alt=\\\"[!--oldtitle--]\\\"></a><a href=\\\"[!--titleurl--]\\\" title=\\\"[!--oldtitle--]\\\" target=\\\"_blank\\\">[!--title--]</a><a href=\\\"[!--titleurl--]\\\" class=\\\"span\\\" target=\\\"_blank\\\"><span>[!--ftitle--]</span></a><div class=\\\"on\\\"><p>[!--smalltext--]</p></div></li>', '0', '1', 'Y-m-d H:i:s', '0', '0', '0', '1506067505', 'listtemp', '1', 'admin');
INSERT INTO `phome_enewstempbak` VALUES ('16', '1', '', '<!doctype html>\r\n<html>\r\n<head>\r\n<link rel=\\\"shortout icon\\\" href=\\\"http://www.nclaimei.com/skin/laimei2017/images/favicon.ico\\\" />\r\n<meta http-equiv=\\\"Cache-Control\\\" content=\\\"no-transform\\\" />\r\n<meta http-equiv=\\\"Cache-Control\\\" content=\\\"no-siteapp\\\" />\r\n<meta name=\\\"renderer\\\" content=\\\"webkit\\\"/>\r\n<meta http-equiv=\\\"X-UA-Comabsolutetible\\\" content=\\\"IE=Edge,chrome=1\\\" />\r\n<meta name=\\\"format-detection\\\" content=\\\"telephone=no\\\"/>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<meta http-equiv=\\\"x-dns-prefetch-control\\\" content=\\\"on\\\" />\r\n<title>[!--pagetitle--]</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n<link href=\\\"/skin/css/reset.css\\\" rel=\\\"stylesheet\\\"/>\r\n<link href=\\\"/skin/css/style.css\\\" rel=\\\"stylesheet\\\"/>\r\n<script type=\\\"text/javascript\\\" src=\\\"/skin/js/jquery-1.9.1.min.js\\\"></script>\r\n<script src=\\\"/skin/js/jquery.superslide.2.1.1.source.js\\\"></script>\r\n<script src=\\\"/skin/js/expert.js\\\"></script>\r\n<script src=\\\"/skin/js/indexapp.js\\\"></script>\r\n<script src=\\\"/skin/js/wapskip.js\\\" type=\\\"text/javascript\\\"></script>\r\n</head>\r\n<body>\r\n[!--temp.header--]\r\n<!-- content start -->\r\n<div class=\\\"content\\\" id=\\\"content\\\">\r\n  <div class=\\\"stageContainer pubW center\\\">\r\n    <div class=\\\"stage1 clearfix\\\">       \r\n      <div class=\\\"stage2-width stage1_a fl \\\">\r\n        <div class=\\\"alltitle absolute\\\"></div>\r\n        <div class=\\\"stage1Title clearfix\\\" style=\\\"position: absolute;z-index: 10;right: 20px;top: 55px;\\\">\r\n          <div class=\\\"preNext fr clearfix\\\"> <a href=\\\"javascript:void(0)\\\" class=\\\"preBtn fl\\\"><i></i></a> <a href=\\\"javascript:void(0)\\\" class=\\\"nextBtn fr\\\"><i></i></a> </div>\r\n        </div>\r\n        <div class=\\\"stage1_anliBox\\\">\r\n          <div class=\\\"anliBox\\\"><a href=\\\"javascript:void(0)\\\" onClick=\\\"openZoosUrl();\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/zxhd/2017-09-01/fde9c83dabda3df03029ae69b6597bbd.jpg\\\" width=\\\"687\\\" height=\\\"328\\\"/></a>\r\n          </div>\r\n          <div class=\\\"anliBox\\\"><a href=\\\"javascript:void(0)\\\" onClick=\\\"openZoosUrl();\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/zxhd/2017-09-01/fedd332a502bd6653e558b5095d98deb.jpg\\\" width=\\\"687\\\" height=\\\"328\\\"/></a>\r\n          </div>\r\n          <div class=\\\"anliBox\\\"><a href=\\\"javascript:void(0)\\\" onClick=\\\"openZoosUrl();\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/zxhd/2017-09-01/a83f8f6c116ce46f9fec355af5460e53.jpg\\\" width=\\\"687\\\" height=\\\"328\\\"/></a>\r\n          </div>\r\n        </div>\r\n      </div>\r\n\r\n      <div class=\\\"stage1-width stage1_b fr\\\"style=\\\"height: 385px;\\\">\r\n        <div class=\\\"alltitle absolute\\\"></div>\r\n        <div class=\\\"activityBox\\\"> \r\n        <a href=\\\"/s/201709/\\\" target=\\\"_blank\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/lmdt/2017-09-01/75ca24d0695917e2f21e4a4282f9c2d1.jpg\\\" width=\\\"380\\\" height=\\\"150\\\"/></a></div>\r\n        <div class=\\\"stage1Title clearfix\\\"> \r\n        <a href=\\\"http://www.nclaimei.com/gylm/mtbd/2017-08-18/428.html\\\" target=\\\"_blank\\\">·腋臭的治疗</a><span class=\\\"fonts \\\">2017-08-18</span></div>\r\n        <div class=\\\"stage1Title clearfix\\\"> \r\n        <a href=\\\"http://www.nclaimei.com/gylm/mtbd/2017-08-12/426.html\\\" target=\\\"_blank\\\">·漂唇手术的设计原则是什么...</a><span class=\\\"fonts \\\">2017-08-12</span></div>\r\n        <div class=\\\"stage1Title clearfix\\\"> \r\n        <a href=\\\"http://www.nclaimei.com/gylm/mtbd/2017-08-08/424.html\\\" target=\\\"_blank\\\">·双眼皮的宽窄度是怎么衡量的呢？　...</a><span class=\\\"fonts \\\">2017-08-08</span></div>\r\n        <div class=\\\"stage1Title clearfix\\\"> \r\n        <a href=\\\"http://www.nclaimei.com/gylm/mtbd/2017-08-04/423.html\\\" target=\\\"_blank\\\">·超声刀美容适合年龄</a><span class=\\\"fonts \\\">2017-08-04</span></div>\r\n        <div class=\\\"stage1Title clearfix\\\"> \r\n        <a href=\\\"http://www.nclaimei.com/gylm/mtbd/2017-07-30/417.html\\\" target=\\\"_blank\\\">·双下巴吸脂多久可以恢复</a><span class=\\\"fonts \\\">2017-07-30</span></div>\r\n        <a class=\\\"more absolute\\\" href=\\\"http://www.nclaimei.com/gylm/mtbd\\\" target=\\\"_blank\\\">更多>></a>\r\n      </div>\r\n    </div>\r\n      \r\n    <div class=\\\"stage4 clearfix relative\\\">\r\n        <div class=\\\"rogect absolute\\\">\r\n        <div class=\\\"alltitle absolute\\\"></div>\r\n            <a class=\\\"more\\\" href=\\\"http://www.nclaimei.com/zhuanti\\\" target=\\\"_blank\\\">+更多项目</a> \r\n        </div>\r\n      <div class=\\\"stage3-width stage1_c fl\\\">\r\n          <h1 class=\\\"absolute\\\">整形美容</h1>\r\n        <div class=\\\"expertSlide relative\\\">\r\n          <div class=\\\"slideBox\\\">\r\n                    <a href=\\\"/s/BreastImplanta/index.html\\\" target=\\\"_blank\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/xmzx/zxmr/2016-12-09/0fb26fe9ee5cff8ef74b2401d4c0464b.png\\\" width=\\\"250\\\" height=\\\"330\\\"/></a>\r\n                    <a href=\\\"/s/CarvedEyese/index.html\\\" target=\\\"_blank\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/xmzx/zxmr/2016-12-02/42c491fb4b3b92d5ae2542d6494b4239.jpg\\\" width=\\\"250\\\" height=\\\"330\\\"/></a>\r\n                    <a href=\\\"/s/SdlLiposuctiona/index.html\\\" target=\\\"_blank\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/xmzx/zxmr/2016-12-09/a611d000900df4d00106fac8d6562a81.png\\\" width=\\\"250\\\" height=\\\"330\\\"/></a>\r\n                    <a href=\\\"/s/Rhinoplastyc/index.html\\\" target=\\\"_blank\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/xmzx/zxmr/2016-12-09/797fdedabe6a2d67a9f3535b33c3b2e6.png\\\" width=\\\"250\\\" height=\\\"330\\\"/></a>\r\n                 </div>\r\n          <div class=\\\"focus absolute clearfix\\\"></div>\r\n        </div>\r\n      </div>\r\n      <div class=\\\"stage3-width stage1_c fl\\\">\r\n          <h1 class=\\\"absolute\\\">皮肤美容</h1>\r\n        <div class=\\\"expertSlide relative\\\">\r\n          <div class=\\\"slideBox\\\">\r\n                    <a href=\\\"/s/HairRemoval/index.html\\\" target=\\\"_blank\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/xmzx/pfmr/2016-12-02/e4bcbf5d8ed5c32872aaa597b9041ad1.jpg\\\" width=\\\"250\\\" height=\\\"330\\\"/></a>\r\n                    <a href=\\\"/s/GlxfAcneTreatmenta/index.html\\\" target=\\\"_blank\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/xmzx/pfmr/2016-12-09/65acd18a94cb20bf3534eb5dbcd0ca5e.png\\\" width=\\\"250\\\" height=\\\"330\\\"/></a>\r\n                    <a href=\\\"/s/OPTKingStyleb/index.html\\\" target=\\\"_blank\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/xmzx/pfmr/2016-12-09/66176e999058279fcc33f306bc139156.png\\\" width=\\\"250\\\" height=\\\"330\\\"/></a>\r\n                    <a href=\\\"/s/FreckleRemovingb/index.html\\\" target=\\\"_blank\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/xmzx/pfmr/2016-12-09/03297c89fa16513b2e7f40186712796d.png\\\" width=\\\"250\\\" height=\\\"330\\\"/></a>\r\n                 </div>\r\n          <div class=\\\"focus absolute clearfix\\\"></div>\r\n        </div>\r\n      </div>\r\n      <div class=\\\"stage3-width stage1_c fl\\\">\r\n          <h1 class=\\\"absolute\\\">微整形</h1>\r\n        <div class=\\\"expertSlide relative\\\">\r\n          <div class=\\\"slideBox\\\">\r\n                    <a href=\\\"/s/FaceLiftNeedlea/index.html\\\" target=\\\"_blank\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/xmzx/vzx/2016-12-09/34a6dfc5c7f32b6648b8bf7f84d1a4c0.png\\\" width=\\\"250\\\" height=\\\"330\\\"/></a>\r\n                    <a href=\\\"/s/FaceLiftNeedled/index.html\\\" target=\\\"_blank\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/xmzx/vzx/2016-12-09/4b7fcc5c8388c8f8356ef29e32762fac.png\\\" width=\\\"250\\\" height=\\\"330\\\"/></a>\r\n                    <a href=\\\"/s/BotoxKreotoxina/index.html\\\" target=\\\"_blank\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/xmzx/vzx/2016-12-09/1ba22b0058ddaea832c2c33f13e285dc.png\\\" width=\\\"250\\\" height=\\\"330\\\"/></a>\r\n                 </div>\r\n          <div class=\\\"focus absolute clearfix\\\"></div>\r\n        </div>\r\n      </div>\r\n      <div class=\\\"stage3-width stage1_c fl\\\">\r\n          <h1 class=\\\"absolute\\\">口腔美容</h1>\r\n        <div class=\\\"expertSlide relative\\\">\r\n          <div class=\\\"slideBox\\\">\r\n                    <a href=\\\"/s/DentalCorrection/index.html\\\" target=\\\"_blank\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/xmzx/ycjz/2016-12-28/cb9e9eb8704cfdbb6e7673a54333a774.png\\\" width=\\\"250\\\" height=\\\"330\\\"/></a>\r\n                    <a href=\\\"/s/Teethas/index.html\\\" target=\\\"_blank\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/xmzx/ycjz/2016-12-09/a46e4ca138d855a9fda8b63461d56e03.png\\\" width=\\\"250\\\" height=\\\"330\\\"/></a>\r\n                 </div>\r\n          <div class=\\\"focus absolute clearfix\\\"></div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n    <div class=\\\"stage2 clearfix\\\">\r\n        <div class=\\\"alltitle\\\"></div>\r\n      <div class=\\\"stage_a fl relative\\\">\r\n       <a href=\\\"javascript:void(0)\\\" class=\\\"preBtn absolute bt\\\"><i></i></a> <a href=\\\"javascript:void(0)\\\" class=\\\"nextBtn absolute bt\\\"><i></i></a>\r\n        <div class=\\\"slideBox\\\">\r\n          <div class=\\\"slide relative\\\"><a href=\\\"/gylm/zjtd\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/yszh/2017-05-27/ec1a69b25b038e4c521883525d32d7d2.png\\\" width=\\\"822\\\" height=\\\"479\\\" alt=\\\"整形美容医疗团队\\\" /></a>\r\n            <div class=\\\"innerWrapper absolute\\\">\r\n              <h5 class=\\\"fonts\\\">整形美容医疗团队</h5>\r\n              <p class=\\\"fonts\\\">由数十名临床经验资深医生组成,技术精湛、服务周到根据顾客的个人特点定制合适自然的整形美容方案。</p>\r\n            </div>\r\n          </div>\r\n          <div class=\\\"slide relative\\\"><a href=\\\"/gylm/zjtd\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/yszh/2017-02-28/80d8edb5cd922f34fc513b266499b772.png\\\" width=\\\"822\\\" height=\\\"479\\\" alt=\\\"皮肤美容医疗团队\\\" /></a>\r\n            <div class=\\\"innerWrapper absolute\\\">\r\n              <h5 class=\\\"fonts\\\">皮肤美容医疗团队</h5>\r\n              <p class=\\\"fonts\\\">由皮肤科主任为代表的美肤团队对于嫩肤、祛痘、祛斑等常见皮肤问题\\\"治疗\\\"有道,迄今已为无数女性带来美丽新生。</p>\r\n            </div>\r\n          </div>\r\n          <div class=\\\"slide relative\\\"><a href=\\\"/gylm/zjtd\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/gylm/yszh/2017-01-14/bfc78e76a584838dc7d6fc1305af0d9c.jpg\\\" width=\\\"822\\\" height=\\\"479\\\" alt=\\\"微整形医疗团队\\\" /></a>\r\n            <div class=\\\"innerWrapper absolute\\\">\r\n              <h5 class=\\\"fonts\\\">微整形医疗团队</h5>\r\n              <p class=\\\"fonts\\\">汇集众多资深微整形医生,始终坚持“效果、自然、健康”的原则,以及人性化的美容理念,采用多层定点注射方法！</p>\r\n            </div>\r\n          </div>\r\n          <div class=\\\"slide relative\\\"><a href=\\\"/gylm/zjtd\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/gylm/yszh/2016-12-29/a95d1b69058b0ba4170cde5dc7fd3153.png\\\" width=\\\"822\\\" height=\\\"479\\\" alt=\\\"口腔美容团队\\\" /></a>\r\n            <div class=\\\"innerWrapper absolute\\\">\r\n              <h5 class=\\\"fonts\\\">口腔美容团队</h5>\r\n              <p class=\\\"fonts\\\">汇聚国内外资深口腔医生,在业界荣享盛誉,微创美学修复,深厚的口腔美学功底,深受众多顾客的赞誉。</p>\r\n            </div>\r\n          </div>\r\n          <div class=\\\"slide relative\\\"><a href=\\\"/gylm/zjtd\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/yszh/2017-03-21/63818a66f0b7bd47717eea863e6853b2.png\\\" width=\\\"822\\\" height=\\\"479\\\" alt=\\\"毛发移植医疗团队\\\" /></a>\r\n            <div class=\\\"innerWrapper absolute\\\">\r\n              <h5 class=\\\"fonts\\\">毛发移植医疗团队</h5>\r\n              <p class=\\\"fonts\\\">专业植发手术团队！</p>\r\n            </div>\r\n          </div>\r\n          <div class=\\\"slide relative\\\"><a href=\\\"/gylm/zjtd\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/gylm/yszh/2016-12-29/9c3605fda5a9e21dae53cb2b213d676d.png\\\" width=\\\"822\\\" height=\\\"479\\\" alt=\\\"特邀医生医疗团队\\\" /></a>\r\n            <div class=\\\"innerWrapper absolute\\\">\r\n              <h5 class=\\\"fonts\\\">特邀医生医疗团队</h5>\r\n              <p class=\\\"fonts\\\">邀请整形美容知名医生亲临南昌莱美为求美者服务,享受国际整形技艺。</p>\r\n            </div>\r\n          </div>\r\n         \r\n\r\n        </div>\r\n      </div>\r\n      <div class=\\\"stage_b fr\\\">\r\n        <div class=\\\"focus clearfix relative\\\">\r\n          <div class=\\\"active_bg absolute\\\"></div>\r\n          <span class=\\\"active\\\"><em class=\\\"fonts fonts1\\\">查询医生</em></span> <span><em class=\\\"fonts fonts2\\\">专家团队</em></span> </div>\r\n        <div class=\\\"slides\\\">\r\n          <div class=\\\"slide slide1\\\">\r\n            <div class=\\\"inner center\\\"> \r\n              <h6 class=\\\"fonts\\\">按项目找专家</h6>\r\n              <div class=\\\"itemExperts clearfix\\\">\r\n    <a class=\\\"fonts bt zhengxing\\\" href=\\\"/gylm/zjtd\\\" target=\\\"_blank\\\" title=\\\"整形美容\\\">整形美容</a> \r\n    <a class=\\\"fonts bt pifu\\\" href=\\\"/gylm/zjtd\\\" target=\\\"_blank\\\" title=\\\"皮肤美容\\\">皮肤美容</a> \r\n    <a class=\\\"fonts bt weizhengxing\\\" href=\\\"/gylm/zjtd\\\" target=\\\"_blank\\\" title=\\\"微整形\\\">微整形</a> \r\n    <a class=\\\"fonts bt kouqiang\\\" href=\\\"/gylm/zjtd\\\" target=\\\"_blank\\\" title=\\\"口腔美容\\\">口腔美容</a> \r\n    <a class=\\\"fonts bt maofa\\\" href=\\\"/gylm/zjtd\\\" target=\\\"_blank\\\" title=\\\"毛发移植\\\">毛发移植</a> \r\n    <a class=\\\"fonts bt teyao\\\" href=\\\"/gylm/zjtd\\\" target=\\\"_blank\\\" title=\\\"特邀医生\\\">特邀医生</a> \r\n \r\n              </div>\r\n            </div>\r\n          </div>\r\n          <div class=\\\"slide slide2\\\">\r\n            <div class=\\\"doctorsBox relative\\\">\r\n              <div class=\\\"doctorsWrapper\\\">\r\n                <li> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2016-12-02/247.html\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/zjtd/2016-12-02/d73815ad0abd98fd51f88024a2bf6028.png\\\" width=\\\"100\\\" height=\\\"125\\\"/>\r\n                  <p class=\\\"fonts\\\">覃耀锋</p>\r\n                  </a>\r\n                  <div class=\\\"addInfo\\\"> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2016-12-02/247.html\\\" target=\\\"_blank\\\"><img src=\\\"/skin/picture/d73815ad0abd98fd51f88024a2bf6028.png\\\" width=\\\"100\\\" height=\\\"125\\\"/></a>\r\n                    <div class=\\\"addInfoList\\\">\r\n                      <h5 class=\\\"fonts\\\">覃耀锋</h5>\r\n                      <p class=\\\"fonts\\\">擅长项目：五官精细化整形、360°水动力螺旋吸脂、注射微整形等</p>\r\n                    </div>\r\n                  </div>\r\n                </li>\r\n                <li> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2017-02-28/366.html\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/zjtd/2017-02-28/7f6d3b78c210d1f95c39df5f80b1223f.png\\\" width=\\\"100\\\" height=\\\"125\\\"/>\r\n                  <p class=\\\"fonts\\\">刘波涛</p>\r\n                  </a>\r\n                  <div class=\\\"addInfo\\\"> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2017-02-28/366.html\\\" target=\\\"_blank\\\"><img src=\\\"/skin/picture/7f6d3b78c210d1f95c39df5f80b1223f.png\\\" width=\\\"100\\\" height=\\\"125\\\"/></a>\r\n                    <div class=\\\"addInfoList\\\">\r\n                      <h5 class=\\\"fonts\\\">刘波涛</h5>\r\n                      <p class=\\\"fonts\\\">擅长项目：双核光祛斑、OPT王者风范美肤、皮肤修复等</p>\r\n                    </div>\r\n                  </div>\r\n                </li>\r\n                <li> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2016-12-02/244.html\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/zjtd/2016-12-02/df46eba0bc90697d266705efbed101ca.png\\\" width=\\\"100\\\" height=\\\"125\\\"/>\r\n                  <p class=\\\"fonts\\\">冯宇明</p>\r\n                  </a>\r\n                  <div class=\\\"addInfo\\\"> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2016-12-02/244.html\\\" target=\\\"_blank\\\"><img src=\\\"/skin/picture/df46eba0bc90697d266705efbed101ca.png\\\" width=\\\"100\\\" height=\\\"125\\\"/></a>\r\n                    <div class=\\\"addInfoList\\\">\r\n                      <h5 class=\\\"fonts\\\">冯宇明</h5>\r\n                      <p class=\\\"fonts\\\">擅长项目：面部年轻化、嫩肤美白、水光注射等</p>\r\n                    </div>\r\n                  </div>\r\n                </li>\r\n                <li> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2017-05-31/395.html\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/zjtd/2017-05-31/5fda68130a65149ec9b31ddb2c492c46.png\\\" width=\\\"100\\\" height=\\\"125\\\"/>\r\n                  <p class=\\\"fonts\\\">龚衍寿</p>\r\n                  </a>\r\n                  <div class=\\\"addInfo\\\"> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2017-05-31/395.html\\\" target=\\\"_blank\\\"><img src=\\\"/skin/picture/5fda68130a65149ec9b31ddb2c492c46.png\\\" width=\\\"100\\\" height=\\\"125\\\"/></a>\r\n                    <div class=\\\"addInfoList\\\">\r\n                      <h5 class=\\\"fonts\\\">龚衍寿</h5>\r\n                      <p class=\\\"fonts\\\">擅长项目：无痛溶脂减肥、双眼皮、面部线雕年轻化等</p>\r\n                    </div>\r\n                  </div>\r\n                </li>\r\n                <li> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2017-04-16/381.html\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/zjtd/2017-04-16/3c27e29ba3cf829e80662b06d3d4de2c.png\\\" width=\\\"100\\\" height=\\\"125\\\"/>\r\n                  <p class=\\\"fonts\\\">廖洪跃</p>\r\n                  </a>\r\n                  <div class=\\\"addInfo\\\"> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2017-04-16/381.html\\\" target=\\\"_blank\\\"><img src=\\\"/skin/picture/3c27e29ba3cf829e80662b06d3d4de2c.png\\\" width=\\\"100\\\" height=\\\"125\\\"/></a>\r\n                    <div class=\\\"addInfoList\\\">\r\n                      <h5 class=\\\"fonts\\\">廖洪跃</h5>\r\n                      <p class=\\\"fonts\\\">擅长项目：各种眼部美容手术、上睑下垂矫正术、眼袋祛除等</p>\r\n                    </div>\r\n                  </div>\r\n                </li>\r\n                <li> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2017-04-26/385.html\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/zjtd/2017-04-26/9d21f05dfc3378bbc513fee55f9f8e3a.png\\\" width=\\\"100\\\" height=\\\"125\\\"/>\r\n                  <p class=\\\"fonts\\\">罗琳</p>\r\n                  </a>\r\n                  <div class=\\\"addInfo\\\"> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2017-04-26/385.html\\\" target=\\\"_blank\\\"><img src=\\\"/skin/picture/9d21f05dfc3378bbc513fee55f9f8e3a.png\\\" width=\\\"100\\\" height=\\\"125\\\"/></a>\r\n                    <div class=\\\"addInfoList\\\">\r\n                      <h5 class=\\\"fonts\\\">罗琳</h5>\r\n                      <p class=\\\"fonts\\\">擅长项目：精细化五官整形、鼻部整形、面部除皱术等</p>\r\n                    </div>\r\n                  </div>\r\n                </li>\r\n                <li> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2017-01-01/298.html\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/zjtd/2017-01-01/9a703b037261d797f3219b7731ffaa9f.jpg\\\" width=\\\"100\\\" height=\\\"125\\\"/>\r\n                  <p class=\\\"fonts\\\">秦晓峰</p>\r\n                  </a>\r\n                  <div class=\\\"addInfo\\\"> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2017-01-01/298.html\\\" target=\\\"_blank\\\"><img src=\\\"/skin/picture/9a703b037261d797f3219b7731ffaa9f.jpg\\\" width=\\\"100\\\" height=\\\"125\\\"/></a>\r\n                    <div class=\\\"addInfoList\\\">\r\n                      <h5 class=\\\"fonts\\\">秦晓峰</h5>\r\n                      <p class=\\\"fonts\\\">擅长项目:面部精细整形、烧伤整形修复、形体雕塑吸脂；等</p>\r\n                    </div>\r\n                  </div>\r\n                </li>\r\n                <li> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2016-12-02/246.html\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/zjtd/2016-12-02/349b8988f950b83c5a6bd5c1040ed4a6.png\\\" width=\\\"100\\\" height=\\\"125\\\"/>\r\n                  <p class=\\\"fonts\\\">郭小楼</p>\r\n                  </a>\r\n                  <div class=\\\"addInfo\\\"> <a href=\\\"http://www.nclaimei.com/gylm/zjtd/2016-12-02/246.html\\\" target=\\\"_blank\\\"><img src=\\\"/skin/picture/349b8988f950b83c5a6bd5c1040ed4a6.png\\\" width=\\\"100\\\" height=\\\"125\\\"/></a>\r\n                    <div class=\\\"addInfoList\\\">\r\n                      <h5 class=\\\"fonts\\\">郭小楼</h5>\r\n                      <p class=\\\"fonts\\\">擅长项目：美容冠修复、无托槽隐形矫正、皓齿美白等</p>\r\n                    </div>\r\n                  </div>\r\n                </li>\r\n\r\n            </div>\r\n              <!--<div class=\\\"preNextBtn absolute\\\"><a href=\\\"javascript:void(0)\\\" class=\\\"preBtn fl\\\"><i></i></a><a href=\\\"javascript:void(0)\\\" class=\\\"nextBtn fr\\\"><i></i></a></div>-->\r\n              <div class=\\\"overlayer absolute\\\"></div>\r\n              <div class=\\\"popInfo absolute\\\"> </div>\r\n            </div>\r\n          </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n    <div class=\\\"stage3 clearfix\\\">\r\n      <div class=\\\"stage3_width stage3_a  relative\\\">\r\n        <div class=\\\"alltitle absolute\\\"></div>\r\n        <div class=\\\"stage1Title clearfix absolute\\\">\r\n          <div class=\\\"preNext  clearfix absolute\\\"> \r\n          <a href=\\\"javascript:void(0)\\\" class=\\\"preBtn \\\"><i></i></a> \r\n          <a href=\\\"javascript:void(0)\\\" class=\\\"nextBtn \\\"><i></i></a> \r\n          </div>\r\n        </div>\r\n        <div class=\\\"stage3Box\\\">\r\n          <div class=\\\"slides\\\">\r\n          <a href=\\\"/s/pimiao/index.html\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/mlal/2017-05-03/2fadb6bdd942e78ebbbe966565f9c732.jpg\\\" width=\\\"1200\\\" height=\\\"769\\\"/></a> \r\n          </div>\r\n          <div class=\\\"slides\\\">\r\n          <a href=\\\"/s/Hair/index.html\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/mlal/2017-05-03/f00da24694787e3fac3f957bc3d1018e.jpg\\\" width=\\\"1200\\\" height=\\\"769\\\"/></a> \r\n          </div>\r\n          <div class=\\\"slides\\\">\r\n          <a href=\\\"/s/CarvedEyesc/index.html\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/mlal/2017-05-03/57ebf5884cd6c3e6d58b8a928041fa2c.jpg\\\" width=\\\"1200\\\" height=\\\"769\\\"/></a> \r\n          </div>\r\n          <div class=\\\"slides\\\">\r\n          <a href=\\\"/s/csd/index.html\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/mlal/2017-05-03/446854eac4245a18e3a6deef0d709111.jpg\\\" width=\\\"1200\\\" height=\\\"769\\\"/></a> \r\n          </div>\r\n          <div class=\\\"slides\\\">\r\n          <a href=\\\"/s/Hair/index.html\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/mlal/2017-05-03/ba5a93dfd7cb973a2b2e6a13c08092ed.jpg\\\" width=\\\"1200\\\" height=\\\"769\\\"/></a> \r\n          </div>\r\n          <div class=\\\"slides\\\">\r\n          <a href=\\\"/s/Jsm/index.html\\\"><img class=\\\"lazyLoading\\\" data-url=\\\"http://www.nclaimei.com/d/file/gylm/mlal/2017-05-03/c1de86780b087673043fab82651bce0e.jpg\\\" width=\\\"1200\\\" height=\\\"769\\\"/></a> \r\n          </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n    <div class=\\\"xslc\\\">\r\n      <div class=\\\"xslc_focus clearfix\\\">\r\n        <div class=\\\"txt\\\" style=\\\"background:url(images/biaoti.png) no-repeat -1157px -0px;\\\"></div>\r\n        <div class=\\\"txt\\\" style=\\\"background:url(images/biaoti.png) no-repeat -1442px -0px;\\\"></div>\r\n        <div class=\\\"txt\\\" style=\\\"background:url(images/biaoti.png) no-repeat -1745px -0px;\\\"></div>\r\n      </div>\r\n      <div class=\\\"slideBox\\\">\r\n        <div class=\\\"slides\\\">\r\n          <div class=\\\"slide slide1 clearfix\\\">\r\n            <div class=\\\"info relative fl\\\"> <a href=\\\"javascript:;\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/gylm/yyhj/2016-12-29/88146cb896297b8d959ce5198aa30c2f.jpg\\\" width=\\\"239\\\" height=\\\"185\\\"/>\r\n              <p>医院外景</p>\r\n              </a> </div>\r\n            <div class=\\\"info relative fl\\\"> <a href=\\\"javascript:;\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/gylm/yyhj/2016-12-29/2714691bb63cfaab9e73017630ad2a63.jpg\\\" width=\\\"239\\\" height=\\\"185\\\"/>\r\n              <p>外科病房</p>\r\n              </a> </div>\r\n            <div class=\\\"info relative fl\\\"> <a href=\\\"javascript:;\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/gylm/yyhj/2016-12-29/567acc31ca63d20ecf0a717645ad1afe.jpg\\\" width=\\\"239\\\" height=\\\"185\\\"/>\r\n              <p>导医台</p>\r\n              </a> </div>\r\n            <div class=\\\"info relative fl\\\"> <a href=\\\"javascript:;\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/gylm/yyhj/2016-12-29/4c7a7a8a2f4f5442c7303165842798ba.jpg\\\" width=\\\"239\\\" height=\\\"185\\\"/>\r\n              <p>医院大厅</p>\r\n              </a> </div>\r\n          </div>\r\n          <div class=\\\"slide slide2 clearfix\\\">\r\n            <div class=\\\"info relative fl\\\"> <a href=\\\"javascript:;\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/gylm/jdsb/2016-12-28/191279171db89391a66907b642a4368e.jpg\\\" width=\\\"239\\\" height=\\\"185\\\"/>\r\n              <p style=\\\"text-align: center;font-size: 30px;line-height: 63px;\\\">王者风范</p>\r\n              </a> </div>\r\n            <div class=\\\"info relative fl\\\"> <a href=\\\"javascript:;\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/gylm/jdsb/2016-12-28/8013d5cdc862f56515289eed649a9b37.jpg\\\" width=\\\"239\\\" height=\\\"185\\\"/>\r\n              <p style=\\\"text-align: center;font-size: 30px;line-height: 63px;\\\">深蓝射频</p>\r\n              </a> </div>\r\n            <div class=\\\"info relative fl\\\"> <a href=\\\"javascript:;\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/gylm/jdsb/2016-12-28/209f5d7706a478085ecbec859885ca11.jpg\\\" width=\\\"239\\\" height=\\\"185\\\"/>\r\n              <p style=\\\"text-align: center;font-size: 30px;line-height: 63px;\\\">超声刀</p>\r\n              </a> </div>\r\n            <div class=\\\"info relative fl\\\"> <a href=\\\"javascript:;\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/gylm/jdsb/2016-12-28/6b72901730af782b7d74fcd6d2a0ff52.jpg\\\" width=\\\"239\\\" height=\\\"185\\\"/>\r\n              <p style=\\\"text-align: center;font-size: 30px;line-height: 63px;\\\">莱茜尔脱毛仪</p>\r\n              </a> </div>\r\n       \r\n          </div>\r\n          <div class=\\\"slide slide6 clearfix\\\">\r\n            <div class=\\\"info relative fl\\\"> <a href=\\\"javascript:;\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/gylm/yyry/2017-01-02/fe7a94e110eafde2271c32dc75c589e6.png\\\" width=\\\"239\\\" height=\\\"185\\\"/>\r\n              <p>韩国汉城整形医院技术合作</p>\r\n              </a> \r\n            </div>\r\n            <div class=\\\"info relative fl\\\"> <a href=\\\"javascript:;\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/gylm/yyry/2017-01-02/4725665ca5834bf2a4ee96934b06a3ba.png\\\" width=\\\"239\\\" height=\\\"185\\\"/>\r\n              <p>中美合作激光美容技术交流</p>\r\n              </a> \r\n            </div>\r\n            <div class=\\\"info relative fl\\\"> <a href=\\\"javascript:;\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/gylm/yyry/2017-01-02/1dd1169b1c7b02a009728e35bb1b0e67.png\\\" width=\\\"239\\\" height=\\\"185\\\"/>\r\n              <p>美国曼托假体授权指定使用</p>\r\n              </a> \r\n            </div>\r\n            <div class=\\\"info relative fl\\\"> <a href=\\\"javascript:;\\\" target=\\\"_blank\\\"> <img class=\\\"lazyLoading\\\" data-url=\\\"/d/file/gylm/yyry/2017-01-02/13a5f297f7b93d99189b437c5f26fdeb.png\\\" width=\\\"239\\\" height=\\\"185\\\"/>\r\n              <p>美国科医人激光中国临床培</p>\r\n              </a> \r\n            </div>\r\n            \r\n          </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n<!-- end content -->\r\n<!-- footer start -->\r\n<!-- footer start -->\r\n<div class=\\\"footer\\\">\r\n  <div class=\\\"pubW center clearfix\\\">\r\n  <div class=\\\"footerNav\\\">\r\n    <div class=\\\"footer_logo fl\\\"></div>\r\n    <i></i>\r\n    <div class=\\\"footer_address fl\\\">\r\n      <div class=\\\"footer_text center\\\">\r\n        <h1>医院地址</h1>\r\n        <p>南昌市抚河抚河南路261号（上林春天花园北门）</p>\r\n        <p>免费热线：0791-86667777</p>\r\n        <p>乘车路线：20路、25路、218路、33路到建设路西口</p>\r\n      </div>\r\n    </div>\r\n    <i></i>\r\n    <div class=\\\"footer_qrcode fl\\\"></div>\r\n  </div>\r\n    <p>网站内容申明：本网站信息仅供参考，不能作为诊疗及医疗依据本网站商标及图片权属本医院所有，未经授权请勿复制及转载！部分图片来源于网络且图文无关，若侵犯了您的权益请及时联系。<script type=\\\"text/javascript\\\">\r\nvar _bdhmProtocol = ((\\\"https:\\\" == document.location.protocol) ? \\\" https://\\\" : \\\" http://\\\");\r\ndocument.write(unescape(\\\"%3Cscript src=\\\'\\\" + _bdhmProtocol + \\\"hm.baidu.com/h.js%3Fb6c8806730042053a0e3f0786c2872ce\\\' type=\\\'text/javascript\\\'%3E%3C/script%3E\\\"));\r\n</script></p>\r\n  </div>\r\n</div>\r\n<div class=\\\"copyright\\\">\r\n  <div class=\\\"splitline\\\"></div>\r\n  <p>Copyright @ 南昌莱美美容医院 All rights reserved 赣ICP备10201680号</p>\r\n</div>\r\n<!-- end footer -->\r\n<script language=\\\"javascript\\\" src=\\\"/skin/js/kst.js\\\"></script>\r\n<div id=\\\"ScrollTop\\\">Top</div>\r\n<script>\r\n  window.onload = function () {\r\n    var top = document.getElementById(\\\"ScrollTop\\\");\r\n    //滚动一屏幕时显示回到顶部\r\n    window.onscroll = function () {\r\n        var currentPosition = document.documentElement.scrollTop || document.body.scrollTop;\r\n        currentPosition > window.screen.availHeight ? top.style.display = \\\"block\\\" : top.style.display = \\\"none\\\";\r\n    };\r\n    top.onclick = GoTop;// 注意不要括号\r\n    function GoTop() {\r\n        var timer = setInterval(function () {\r\n    var currentPosition = document.documentElement.scrollTop || document.body.scrollTop;\r\n            currentPosition -= 100;\r\n            if (currentPosition > 0) {\r\n                window.scrollTo(0, currentPosition);\r\n            }\r\n            else {\r\n                window.scrollTo(0, 0);\r\n                clearInterval(timer);\r\n            }\r\n        }, 30);\r\n    }\r\n}\r\n</script>\r\n\r\n<!-- end footer  -->\r\n</body>\r\n</html>\r\n<script>\r\n    $(function(){  \r\n    $(\\\".xslc\\\").slide({\r\n            mainCell: \\\'.slides\\\',\r\n            titCell: \\\'.xslc_focus .txt\\\',\r\n            effect: \\\'fade\\\',\r\n            prevCell: \\\'\\\',\r\n            nextCell: \\\'\\\',\r\n            autoPlay: true,\r\n            mouseOverStop:true,\r\n            interTime: 6000,\r\n            delayTime:1200,\r\n            titOnClassName: \\\'active\\\',\r\n    });\r\n})\r\n</script>\r\n<script type=\\\"text/javascript\\\" src=\\\"/skin/js/imglazyloading.js\\\"></script>\r\n<script type=\\\"text/javascript\\\">\r\n$(\\\".lazyLoading\\\").imgLazyLoading({\r\n  url : \\\"data-url\\\",\r\n  fadeIn : 400\r\n});\r\n</script>', '0', '0', '', '0', '0', '', '0', '0', '0', '1505902087', 'pubindextemp', '1', 'admin');
INSERT INTO `phome_enewstempbak` VALUES ('153', '1', 'header', '<!-- header start -->\r\n<div class=\\\"header\\\" id=\\\"header\\\">\r\n  <div class=\\\"topDateTell clearfix\\\">\r\n    <div class=\\\"pubW center clearfix\\\">\r\n      <div class=\\\"englishTags fl\\\"><a href=\\\"javascript:void(0)\\\" onClick=\\\"openZoosUrl();\\\" target=\\\"_blank\\\">在线咨询</a>|<a href=\\\"javascript:void(0)\\\" onClick=\\\"openZoosUrl();\\\" target=\\\"_blank\\\">在线留言 </a></div>\r\n      <span class=\\\"tellnumber fr\\\">美丽热线 : 0791-86667777</span> <span class=\\\"openTime fr fonts\\\">门诊时间 (无假日医院) 8:00-20:00</span> </div>\r\n  </div>\r\n  <div class=\\\"topLogo pubW center clearfix relative\\\">\r\n    <h1><a href=\\\"[!--news.url--]\\\" title=\\\"南昌莱美美容医院\\\"></a></h1>\r\n    <div class=\\\"topNav fr clearfix\\\">\r\n      <ul>\r\n        <li><a href=\\\"<?=$class_r[47][\\\'classpath\\\']?>\\\" target=\\\"_blank\\\" title=\\\"关于莱美\\\">关于莱美</a></li>\r\n        <li><a href=\\\"<?=$class_r[48][\\\'classpath\\\']?>\\\" target=\\\"_blank\\\" title=\\\"医师团队\\\">医师团队</a></li>\r\n        <li><a href=\\\"<?=$class_r[49][\\\'classpath\\\']?>\\\" target=\\\"_blank\\\" title=\\\"医院环境\\\">医院环境</a></li>\r\n        <li><a href=\\\"<?=$class_r[50][\\\'classpath\\\']?>\\\" target=\\\"_blank\\\" title=\\\"医疗荣誉\\\">医疗荣誉</a></li>\r\n        <li><a href=\\\"/\\\" target=\\\"_blank\\\" title=\\\"美丽案例\\\">美丽案例</a></li>\r\n        <li><a href=\\\"<?=$class_r[53][\\\'classpath\\\']?>\\\" target=\\\"_blank\\\" title=\\\"来院路线\\\">来院路线</a></li>\r\n      </ul>\r\n    </div>\r\n    <div class=\\\"searchBox absolute\\\">\r\n        <div class=\\\"selectBox\\\">\r\n          <div class=\\\"switch switch1 clearfix\\\">\r\n            <div class=\\\"item item1 relative fl\\\">\r\n                      <!--<span class=\\\"itemNum\\\" style=\\\"text-align:center; color:#fff; line-height:20px;z-index:66;position:absolute;top:-10px;left:122px;display:block;width: 22px;height: 20px;background:url(\\\'images/itemnum.png\\\') no-repeat center;\\\"></span>-->\r\n              <form action=\\\"/e/search/index.php\\\" method=\\\"post\\\" onsubmit=\\\"if (this.search.value == \\\'\\\'){this.search.focus();return false;}\\\" name=\\\"formsearch\\\" id=\\\"formsearch\\\">\r\n                      <input type=\\\"hidden\\\" name=\\\"show\\\" value=\\\"title\\\" />\r\n                      <input type=\\\"hidden\\\" name=\\\"tempid\\\" value=\\\"1\\\" />\r\n                      <input type=\\\"hidden\\\" name=\\\"tbname\\\" value=\\\"news\\\" />\r\n                      <input name=\\\"keyboard\\\" id=\\\"keyboard\\\" class=\\\"btn-text fonts\\\" type=\\\"text\\\" size=\\\"22\\\" maxlength=\\\"30\\\" placeholder=\\\"查找您想要改变的部位\\\" />\r\n                      <ul></ul>\r\n                  </div>\r\n                  <div class=\\\"itemBtn fl relative\\\">\r\n                    <input type=\\\"submit\\\" class=\\\"inputSub bt\\\"  title=\\\"查找\\\" value=\\\"查找\\\" />\r\n                    <i class=\\\"absolute\\\"></i>\r\n                  </div>\r\n              </form>\r\n          </div>\r\n        </div>\r\n        <div class=\\\"zhutiWripper\\\">\r\n          <ul class=\\\"clearfix\\\">\r\n          [e:loop={55,12,0,0,0,\\\'classid desc\\\'}]\r\n            <li>\r\n              <a class=\\\"\\\" href=\\\"<?=$bqr[\\\'titleurl\\\']?>\\\" target=\\\"_blank\\\">\r\n                <img src=\\\"<?=$bqr[\\\'titlepic\\\']?>\\\" width=\\\"58\\\" height=\\\"58\\\"/>\r\n              </a>\r\n              <span><?=$bqr[\\\'title\\\']?></span>\r\n            </li>\r\n          [/e:loop]\r\n          </ul>\r\n        </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n<!-- end header -->\r\n<!-- nav banner start -->\r\n<div class=\\\"banner relative\\\" id=\\\"banner\\\"> <div class=\\\"menu absolute\\\">\r\n    <ul class=\\\"active\\\">\r\n     [e:loop={\\\"select classid,classname,classpath,classimg,bname from [!db.pre!]enewsclass where bclassid=0 order by myorder limit 11\\\",11,24,0}]\r\n      <?php if( $bqno == 1 || $bqno == 9 || $bqno == 11 ){ ?>\r\n        <li class=\\\"subNav subNav<?php if( $bqno == 1 ){ echo 10;}elseif( $bqno == 9){ echo 8;}else{ echo 9;}?>\\\"><a href=\\\"/<?=$bqr[\\\'classpath\\\']?>\\\"><i></i> <span data-txt=\\\"<?=$bqr[\\\'classname\\\']?>\\\"></span> </a>\r\n          <div class=\\\"subMenu subMenu<?=$bqno?> clearfix\\\">\r\n            <div class=\\\"aside fl\\\">\r\n              <div class=\\\"subMenu-Logo subMenu-Logo<?=$bqno?>\\\"> <i></i>\r\n              <h6><?=$bqr[\\\'classname\\\']?></h6>\r\n              <p><?=$bqr[\\\'bname\\\']?></p>\r\n              </div>\r\n            </div>\r\n            <div class=\\\"bside fl\\\">\r\n              <div class=\\\"inner fl\\\">\r\n                <dl class=\\\"clearfix fl\\\">\r\n                  <dd class=\\\"clearfix\\\">\r\n                   <?php $sql = $empire->query(\\\"select title,titleurl,lastdotime,classid from {$dbtbpre}ecms_news where classid = \\\'$bqr[classid]\\\' order by id desc limit 6\\\");while( $row = $empire -> fetch($sql) ){ ?>\r\n                    <a href=\\\"<?=$row[\\\'titleurl\\\']?>\\\" target=\\\"_blank\\\"><?=$row[\\\'title\\\']?></a>\r\n                   <?php } ?>\r\n                  </dd> \r\n                </dl>\r\n              </div>     \r\n            </div>\r\n            <div class=\\\"cside fr\\\"> \r\n              <?php $sql = $empire -> query(\\\"select titlepic,classid from {$dbtbpre}ecms_news where classid = \\\'$bqr[classid]\\\' order by id desc limit 2\\\");while( $row = $empire -> fetch( $sql ) ){?>\r\n                  <img src=\\\"<?=$row[\\\'titlepic\\\']?>\\\" width=\\\"321\\\" height=\\\"248\\\"/> \r\n              <?php } ?>    \r\n            </div>\r\n          </div>\r\n        </li>\r\n      <?php } else { ?>\r\n        <li class=\\\"subNav subNav<?php if( $bqno == 7){ echo 7;}elseif( $bqno == 8 ){ echo 6;}elseif( $bqno == 10 ){ echo 12; }else{ echo $bqno-1;}?>\\\"><a href=\\\"/<?=$bqr[\\\'classpath\\\']?>\\\"><i></i> <span data-txt=\\\"<?=$bqr[\\\'classname\\\']?>\\\"></span></a>\r\n          <div class=\\\"subMenu subMenu<?=$bqno?> clearfix\\\">\r\n            <div class=\\\"aside fl\\\">\r\n              <div class=\\\"subMenu-Logo subMenu-Logo<?=$bqno?>\\\"> <i></i>\r\n                <h6><?=$bqr[\\\'classname\\\']?></h6>\r\n                <p><?=$bqr[\\\'bname\\\']?></p>\r\n              </div>\r\n            </div>\r\n            <div class=\\\"bside fl\\\">\r\n              <div class=\\\"inner fl\\\">\r\n              <?php $sql = $empire -> query(\\\"select classid,classname,classpath,bclassid from {$dbtbpre}enewsclass where bclassid = \\\'$bqr[classid]\\\' order by myorder limit 6\\\"); while( $row = $empire -> fetch( $sql ) ){ ?>\r\n                <dl class=\\\"clearfix fl\\\">\r\n                  <dt><a href=\\\"/<?=$row[\\\'classpath\\\']?>\\\"><?=$row[\\\'classname\\\']?></a></dt> \r\n                  <?php $sql2 = $empire -> query(\\\"select title,titleurl,classid from {$dbtbpre}ecms_news where classid= \\\'$row[classid]\\\' order by lastdotime desc limit 6\\\");while( $row2 = $empire ->fetch($sql2) ){ ?>\r\n                    <dd class=\\\"clearfix\\\">\r\n                       <a href=\\\"<?=$row2[\\\'titleurl\\\']?>\\\" target=\\\"_blank\\\"><?=$row2[\\\'title\\\']?></a>\r\n                    </dd> \r\n                  <?php } ?>  \r\n                </dl>\r\n                <?php } ?>\r\n              </div>     \r\n            </div>\r\n            <div class=\\\"cside fr\\\"> \r\n              <?php $sql3 = (\\\"select classimg from {$dbtbpre}enewsclass where classid= \\\'$bqr[classid]\\\' order by myorder desc \\\");$row3 = $empire->fetch1($sql3);?>\r\n                <img src=\\\"<?=$row3[\\\'classimg\\\'];?>\\\" width=\\\"321\\\" height=\\\"248\\\"/>\r\n               \r\n            </div>\r\n          </div>\r\n        </li>\r\n      <?php } ?>\r\n       [/e:loop]  \r\n    </ul>\r\n</div>\r\n  <div class=\\\"bannerSlide relative\\\" id=\\\"bannerSlide\\\"><a href=\\\"javascript:void(0)\\\" class=\\\"preBtn absolute bt\\\"><i></i></a> <a href=\\\"javascript:void(0)\\\" class=\\\"nextBtn absolute bt\\\"><i></i></a>\r\n  <div class=\\\"focus absolute\\\"></div>\r\n\r\n  <div class=\\\"slideBox\\\">\r\n    <ul>\r\n   [e:loop={56,10,0,1,0,\\\'id\\\'}]\r\n    <li><a href=\\\"<?=$bqr[\\\'titleurl\\\']?>\\\" target=\\\"_blank\\\"><img src=\\\"<?=$bqr[\\\'titlepic\\\']?>\\\" width=\\\"1920\\\" height=\\\"600\\\"/></a></li>\r\n   [/e:loop]\r\n    </ul>\r\n  </div>\r\n  </div>\r\n</div>', '1', '0', '页面头部', '0', '0', '', '0', '0', '0', '1506070040', 'tempvar', '1', 'admin');
INSERT INTO `phome_enewstempbak` VALUES ('154', '1', 'header', '<!-- header start -->\r\n<div class=\\\"header\\\" id=\\\"header\\\">\r\n  <div class=\\\"topDateTell clearfix\\\">\r\n    <div class=\\\"pubW center clearfix\\\">\r\n      <div class=\\\"englishTags fl\\\"><a href=\\\"javascript:void(0)\\\" onClick=\\\"openZoosUrl();\\\" target=\\\"_blank\\\">在线咨询</a>|<a href=\\\"javascript:void(0)\\\" onClick=\\\"openZoosUrl();\\\" target=\\\"_blank\\\">在线留言 </a></div>\r\n      <span class=\\\"tellnumber fr\\\">美丽热线 : 0791-86667777</span> <span class=\\\"openTime fr fonts\\\">门诊时间 (无假日医院) 8:00-20:00</span> </div>\r\n  </div>\r\n  <div class=\\\"topLogo pubW center clearfix relative\\\">\r\n    <h1><a href=\\\"[!--news.url--]\\\" title=\\\"南昌莱美美容医院\\\"></a></h1>\r\n    <div class=\\\"topNav fr clearfix\\\">\r\n      <ul>\r\n        <li><a href=\\\"<?=$class_r[47][\\\'classpath\\\']?>\\\" target=\\\"_blank\\\" title=\\\"关于莱美\\\">关于莱美</a></li>\r\n        <li><a href=\\\"<?=$class_r[48][\\\'classpath\\\']?>\\\" target=\\\"_blank\\\" title=\\\"医师团队\\\">医师团队</a></li>\r\n        <li><a href=\\\"<?=$class_r[49][\\\'classpath\\\']?>\\\" target=\\\"_blank\\\" title=\\\"医院环境\\\">医院环境</a></li>\r\n        <li><a href=\\\"<?=$class_r[50][\\\'classpath\\\']?>\\\" target=\\\"_blank\\\" title=\\\"医疗荣誉\\\">医疗荣誉</a></li>\r\n        <li><a href=\\\"/\\\" target=\\\"_blank\\\" title=\\\"美丽案例\\\">美丽案例</a></li>\r\n        <li><a href=\\\"<?=$class_r[53][\\\'classpath\\\']?>\\\" target=\\\"_blank\\\" title=\\\"来院路线\\\">来院路线</a></li>\r\n      </ul>\r\n    </div>\r\n    <div class=\\\"searchBox absolute\\\">\r\n        <div class=\\\"selectBox\\\">\r\n          <div class=\\\"switch switch1 clearfix\\\">\r\n            <div class=\\\"item item1 relative fl\\\">\r\n                      <!--<span class=\\\"itemNum\\\" style=\\\"text-align:center; color:#fff; line-height:20px;z-index:66;position:absolute;top:-10px;left:122px;display:block;width: 22px;height: 20px;background:url(\\\'images/itemnum.png\\\') no-repeat center;\\\"></span>-->\r\n              <form action=\\\"/e/search/index.php\\\" method=\\\"post\\\" onsubmit=\\\"if (this.search.value == \\\'\\\'){this.search.focus();return false;}\\\" name=\\\"formsearch\\\" id=\\\"formsearch\\\">\r\n                      <input type=\\\"hidden\\\" name=\\\"show\\\" value=\\\"title\\\" />\r\n                      <input type=\\\"hidden\\\" name=\\\"tempid\\\" value=\\\"1\\\" />\r\n                      <input type=\\\"hidden\\\" name=\\\"tbname\\\" value=\\\"news\\\" />\r\n                      <input name=\\\"keyboard\\\" id=\\\"keyboard\\\" class=\\\"btn-text fonts\\\" type=\\\"text\\\" size=\\\"22\\\" maxlength=\\\"30\\\" placeholder=\\\"查找您想要改变的部位\\\" />\r\n                      <ul></ul>\r\n                  </div>\r\n                  <div class=\\\"itemBtn fl relative\\\">\r\n                    <input type=\\\"submit\\\" class=\\\"inputSub bt\\\"  title=\\\"查找\\\" value=\\\"查找\\\" />\r\n                    <i class=\\\"absolute\\\"></i>\r\n                  </div>\r\n              </form>\r\n          </div>\r\n        </div>\r\n        <div class=\\\"zhutiWripper\\\">\r\n          <ul class=\\\"clearfix\\\">\r\n          [e:loop={55,12,0,0,0,\\\'classid desc\\\'}]\r\n            <li>\r\n              <a class=\\\"\\\" href=\\\"<?=$bqr[\\\'titleurl\\\']?>\\\" target=\\\"_blank\\\">\r\n                <img src=\\\"<?=$bqr[\\\'titlepic\\\']?>\\\" width=\\\"58\\\" height=\\\"58\\\"/>\r\n              </a>\r\n              <span><?=$bqr[\\\'title\\\']?></span>\r\n            </li>\r\n          [/e:loop]\r\n          </ul>\r\n        </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n<!-- end header -->\r\n<!-- nav banner start -->\r\n<div class=\\\"banner relative\\\" id=\\\"banner\\\"> <div class=\\\"menu absolute\\\">\r\n    <ul class=\\\"active\\\">\r\n     [e:loop={\\\"select classid,classname,classpath,classimg,bname from [!db.pre!]enewsclass where bclassid=0 order by myorder limit 11\\\",11,24,0}]\r\n      <?php if( $bqno == 1 || $bqno == 9 || $bqno == 11 ){ ?>\r\n        <li class=\\\"subNav subNav<?php if( $bqno == 1 ){ echo 10;}elseif( $bqno == 9){ echo 8;}else{ echo 9;}?>\\\"><a href=\\\"/<?=$bqr[\\\'classpath\\\']?>\\\"><i></i> <span data-txt=\\\"<?=$bqr[\\\'classname\\\']?>\\\"></span> </a>\r\n          <div class=\\\"subMenu subMenu<?=$bqno?> clearfix\\\">\r\n            <div class=\\\"aside fl\\\">\r\n              <div class=\\\"subMenu-Logo subMenu-Logo<?=$bqno?>\\\"> <i></i>\r\n              <h6><?=$bqr[\\\'classname\\\']?></h6>\r\n              <p><?=$bqr[\\\'bname\\\']?></p>\r\n              </div>\r\n            </div>\r\n            <div class=\\\"bside fl\\\">\r\n              <div class=\\\"inner fl\\\">\r\n                <dl class=\\\"clearfix fl\\\">\r\n                  <dd class=\\\"clearfix\\\">\r\n                   <?php $sql = $empire->query(\\\"select title,titleurl,lastdotime,classid from {$dbtbpre}ecms_news where classid = \\\'$bqr[classid]\\\' order by id desc limit 6\\\");while( $row = $empire -> fetch($sql) ){ ?>\r\n                    <a href=\\\"<?=$row[\\\'titleurl\\\']?>\\\" target=\\\"_blank\\\"><?=$row[\\\'title\\\']?></a>\r\n                   <?php } ?>\r\n                  </dd> \r\n                </dl>\r\n              </div>     \r\n            </div>\r\n            <div class=\\\"cside fr\\\"> \r\n              <?php $sql = $empire -> query(\\\"select titlepic,classid from {$dbtbpre}ecms_news where classid = \\\'$bqr[classid]\\\' order by id desc limit 2\\\");while( $row = $empire -> fetch( $sql ) ){?>\r\n                  <img src=\\\"<?=$row[\\\'titlepic\\\']?>\\\" width=\\\"321\\\" height=\\\"248\\\"/> \r\n              <?php } ?>    \r\n            </div>\r\n          </div>\r\n        </li>\r\n      <?php } else { ?>\r\n        <li class=\\\"subNav subNav<?php if( $bqno == 7){ echo 7;}elseif( $bqno == 8 ){ echo 6;}elseif( $bqno == 10 ){ echo 12; }else{ echo $bqno-1;}?>\\\"><a href=\\\"/<?=$bqr[\\\'classpath\\\']?>\\\"><i></i> <span data-txt=\\\"<?=$bqr[\\\'classname\\\']?>\\\"></span></a>\r\n          <div class=\\\"subMenu subMenu<?=$bqno?> clearfix\\\">\r\n            <div class=\\\"aside fl\\\">\r\n              <div class=\\\"subMenu-Logo subMenu-Logo<?=$bqno?>\\\"> <i></i>\r\n                <h6><?=$bqr[\\\'classname\\\']?></h6>\r\n                <p><?=$bqr[\\\'bname\\\']?></p>\r\n              </div>\r\n            </div>\r\n            <div class=\\\"bside fl\\\">\r\n              <div class=\\\"inner fl\\\">\r\n              <?php $sql = $empire -> query(\\\"select classid,classname,classpath,bclassid from {$dbtbpre}enewsclass where bclassid = \\\'$bqr[classid]\\\' order by myorder limit 6\\\"); while( $row = $empire -> fetch( $sql ) ){ ?>\r\n                <dl class=\\\"clearfix fl\\\">\r\n                  <dt><a href=\\\"/<?=$row[\\\'classpath\\\']?>\\\"><?=$row[\\\'classname\\\']?></a></dt> \r\n                  <?php $sql2 = $empire -> query(\\\"select title,titleurl,classid from {$dbtbpre}ecms_news where classid= \\\'$row[classid]\\\' order by lastdotime desc limit 6\\\");while( $row2 = $empire ->fetch($sql2) ){ ?>\r\n                    <dd class=\\\"clearfix\\\">\r\n                       <a href=\\\"<?=$row2[\\\'titleurl\\\']?>\\\" target=\\\"_blank\\\"><?=$row2[\\\'title\\\']?></a>\r\n                    </dd> \r\n                  <?php } ?>  \r\n                </dl>\r\n                <?php } ?>\r\n              </div>     \r\n            </div>\r\n            <div class=\\\"cside fr\\\"> \r\n            <!--   <?php $sql3 = (\\\"select classimg from {$dbtbpre}enewsclass where classid= \\\'$bqr[classid]\\\' order by myorder desc \\\");$row3 = $empire->fetch1($sql3);?>\r\n                <img src=\\\"<?=$row3[\\\'classimg\\\'];?>\\\" width=\\\"321\\\" height=\\\"248\\\"/> -->\r\n               \r\n            </div>\r\n          </div>\r\n        </li>\r\n      <?php } ?>\r\n       [/e:loop]  \r\n    </ul>\r\n</div>\r\n  <div class=\\\"bannerSlide relative\\\" id=\\\"bannerSlide\\\"><a href=\\\"javascript:void(0)\\\" class=\\\"preBtn absolute bt\\\"><i></i></a> <a href=\\\"javascript:void(0)\\\" class=\\\"nextBtn absolute bt\\\"><i></i></a>\r\n  <div class=\\\"focus absolute\\\"></div>\r\n\r\n  <div class=\\\"slideBox\\\">\r\n    <ul>\r\n   [e:loop={56,10,0,1,0,\\\'id\\\'}]\r\n    <li><a href=\\\"<?=$bqr[\\\'titleurl\\\']?>\\\" target=\\\"_blank\\\"><img src=\\\"<?=$bqr[\\\'titlepic\\\']?>\\\" width=\\\"1920\\\" height=\\\"600\\\"/></a></li>\r\n   [/e:loop]\r\n    </ul>\r\n  </div>\r\n  </div>\r\n</div>', '1', '0', '页面头部', '0', '0', '', '0', '0', '0', '1506070110', 'tempvar', '1', 'admin');
INSERT INTO `phome_enewstempbak` VALUES ('155', '1', 'header', '<!-- header start -->\r\n<div class=\\\"header\\\" id=\\\"header\\\">\r\n  <div class=\\\"topDateTell clearfix\\\">\r\n    <div class=\\\"pubW center clearfix\\\">\r\n      <div class=\\\"englishTags fl\\\"><a href=\\\"javascript:void(0)\\\" onClick=\\\"openZoosUrl();\\\" target=\\\"_blank\\\">在线咨询</a>|<a href=\\\"javascript:void(0)\\\" onClick=\\\"openZoosUrl();\\\" target=\\\"_blank\\\">在线留言 </a></div>\r\n      <span class=\\\"tellnumber fr\\\">美丽热线 : 0791-86667777</span> <span class=\\\"openTime fr fonts\\\">门诊时间 (无假日医院) 8:00-20:00</span> </div>\r\n  </div>\r\n  <div class=\\\"topLogo pubW center clearfix relative\\\">\r\n    <h1><a href=\\\"[!--news.url--]\\\" title=\\\"南昌莱美美容医院\\\"></a></h1>\r\n    <div class=\\\"topNav fr clearfix\\\">\r\n      <ul>\r\n        <li><a href=\\\"<?=$class_r[47][\\\'classpath\\\']?>\\\" target=\\\"_blank\\\" title=\\\"关于莱美\\\">关于莱美</a></li>\r\n        <li><a href=\\\"<?=$class_r[48][\\\'classpath\\\']?>\\\" target=\\\"_blank\\\" title=\\\"医师团队\\\">医师团队</a></li>\r\n        <li><a href=\\\"<?=$class_r[49][\\\'classpath\\\']?>\\\" target=\\\"_blank\\\" title=\\\"医院环境\\\">医院环境</a></li>\r\n        <li><a href=\\\"<?=$class_r[50][\\\'classpath\\\']?>\\\" target=\\\"_blank\\\" title=\\\"医疗荣誉\\\">医疗荣誉</a></li>\r\n        <li><a href=\\\"/\\\" target=\\\"_blank\\\" title=\\\"美丽案例\\\">美丽案例</a></li>\r\n        <li><a href=\\\"<?=$class_r[53][\\\'classpath\\\']?>\\\" target=\\\"_blank\\\" title=\\\"来院路线\\\">来院路线</a></li>\r\n      </ul>\r\n    </div>\r\n    <div class=\\\"searchBox absolute\\\">\r\n        <div class=\\\"selectBox\\\">\r\n          <div class=\\\"switch switch1 clearfix\\\">\r\n            <div class=\\\"item item1 relative fl\\\">\r\n                      <!--<span class=\\\"itemNum\\\" style=\\\"text-align:center; color:#fff; line-height:20px;z-index:66;position:absolute;top:-10px;left:122px;display:block;width: 22px;height: 20px;background:url(\\\'images/itemnum.png\\\') no-repeat center;\\\"></span>-->\r\n              <form action=\\\"/e/search/index.php\\\" method=\\\"post\\\" onsubmit=\\\"if (this.search.value == \\\'\\\'){this.search.focus();return false;}\\\" name=\\\"formsearch\\\" id=\\\"formsearch\\\">\r\n                      <input type=\\\"hidden\\\" name=\\\"show\\\" value=\\\"title\\\" />\r\n                      <input type=\\\"hidden\\\" name=\\\"tempid\\\" value=\\\"1\\\" />\r\n                      <input type=\\\"hidden\\\" name=\\\"tbname\\\" value=\\\"news\\\" />\r\n                      <input name=\\\"keyboard\\\" id=\\\"keyboard\\\" class=\\\"btn-text fonts\\\" type=\\\"text\\\" size=\\\"22\\\" maxlength=\\\"30\\\" placeholder=\\\"查找您想要改变的部位\\\" />\r\n                      <ul></ul>\r\n                  </div>\r\n                  <div class=\\\"itemBtn fl relative\\\">\r\n                    <input type=\\\"submit\\\" class=\\\"inputSub bt\\\"  title=\\\"查找\\\" value=\\\"查找\\\" />\r\n                    <i class=\\\"absolute\\\"></i>\r\n                  </div>\r\n              </form>\r\n          </div>\r\n        </div>\r\n        <div class=\\\"zhutiWripper\\\">\r\n          <ul class=\\\"clearfix\\\">\r\n          [e:loop={55,12,0,0,0,\\\'classid desc\\\'}]\r\n            <li>\r\n              <a class=\\\"\\\" href=\\\"<?=$bqr[\\\'titleurl\\\']?>\\\" target=\\\"_blank\\\">\r\n                <img src=\\\"<?=$bqr[\\\'titlepic\\\']?>\\\" width=\\\"58\\\" height=\\\"58\\\"/>\r\n              </a>\r\n              <span><?=$bqr[\\\'title\\\']?></span>\r\n            </li>\r\n          [/e:loop]\r\n          </ul>\r\n        </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n<!-- end header -->\r\n<!-- nav banner start -->\r\n<div class=\\\"banner relative\\\" id=\\\"banner\\\"> <div class=\\\"menu absolute\\\">\r\n    <ul class=\\\"active\\\">\r\n     [e:loop={\\\"select classid,classname,classpath,classimg,bname from [!db.pre!]enewsclass where bclassid=0 order by myorder limit 11\\\",11,24,0}]\r\n      <?php if( $bqno == 1 || $bqno == 9 || $bqno == 11 ){ ?>\r\n        <li class=\\\"subNav subNav<?php if( $bqno == 1 ){ echo 10;}elseif( $bqno == 9){ echo 8;}else{ echo 9;}?>\\\"><a href=\\\"/<?=$bqr[\\\'classpath\\\']?>\\\"><i></i> <span data-txt=\\\"<?=$bqr[\\\'classname\\\']?>\\\"></span> </a>\r\n          <div class=\\\"subMenu subMenu<?=$bqno?> clearfix\\\">\r\n            <div class=\\\"aside fl\\\">\r\n              <div class=\\\"subMenu-Logo subMenu-Logo<?=$bqno?>\\\"> <i></i>\r\n              <h6><?=$bqr[\\\'classname\\\']?></h6>\r\n              <p><?=$bqr[\\\'bname\\\']?></p>\r\n              </div>\r\n            </div>\r\n            <div class=\\\"bside fl\\\">\r\n              <div class=\\\"inner fl\\\">\r\n                <dl class=\\\"clearfix fl\\\">\r\n                  <dd class=\\\"clearfix\\\">\r\n                   <?php $sql = $empire->query(\\\"select title,titleurl,lastdotime,classid from {$dbtbpre}ecms_news where classid = \\\'$bqr[classid]\\\' order by id desc limit 6\\\");while( $row = $empire -> fetch($sql) ){ ?>\r\n                    <a href=\\\"<?=$row[\\\'titleurl\\\']?>\\\" target=\\\"_blank\\\"><?=$row[\\\'title\\\']?></a>\r\n                   <?php } ?>\r\n                  </dd> \r\n                </dl>\r\n              </div>     \r\n            </div>\r\n            <div class=\\\"cside fr\\\"> \r\n              <?php $sql = $empire -> query(\\\"select titlepic,classid from {$dbtbpre}ecms_news where classid = \\\'$bqr[classid]\\\' order by id desc limit 2\\\");while( $row = $empire -> fetch( $sql ) ){?>\r\n                  <img src=\\\"<?=$row[\\\'titlepic\\\']?>\\\" width=\\\"321\\\" height=\\\"248\\\"/> \r\n              <?php } ?>    \r\n            </div>\r\n          </div>\r\n        </li>\r\n      <?php } else { ?>\r\n        <li class=\\\"subNav subNav<?php if( $bqno == 7){ echo 7;}elseif( $bqno == 8 ){ echo 6;}elseif( $bqno == 10 ){ echo 12; }else{ echo $bqno-1;}?>\\\"><a href=\\\"/<?=$bqr[\\\'classpath\\\']?>\\\"><i></i> <span data-txt=\\\"<?=$bqr[\\\'classname\\\']?>\\\"></span></a>\r\n          <div class=\\\"subMenu subMenu<?=$bqno?> clearfix\\\">\r\n            <div class=\\\"aside fl\\\">\r\n              <div class=\\\"subMenu-Logo subMenu-Logo<?=$bqno?>\\\"> <i></i>\r\n                <h6><?=$bqr[\\\'classname\\\']?></h6>\r\n                <p><?=$bqr[\\\'bname\\\']?></p>\r\n              </div>\r\n            </div>\r\n            <div class=\\\"bside fl\\\">\r\n              <div class=\\\"inner fl\\\">\r\n              <?php $sql = $empire -> query(\\\"select classid,classname,classpath,bclassid from {$dbtbpre}enewsclass where bclassid = \\\'$bqr[classid]\\\' order by myorder limit 6\\\"); while( $row = $empire -> fetch( $sql ) ){ ?>\r\n                <dl class=\\\"clearfix fl\\\">\r\n                  <dt><a href=\\\"/<?=$row[\\\'classpath\\\']?>\\\"><?=$row[\\\'classname\\\']?></a></dt> \r\n                  <?php $sql2 = $empire -> query(\\\"select title,titleurl,classid from {$dbtbpre}ecms_news where classid= \\\'$row[classid]\\\' order by lastdotime desc limit 6\\\");while( $row2 = $empire ->fetch($sql2) ){ ?>\r\n                    <dd class=\\\"clearfix\\\">\r\n                       <a href=\\\"<?=$row2[\\\'titleurl\\\']?>\\\" target=\\\"_blank\\\"><?=$row2[\\\'title\\\']?></a>\r\n                    </dd> \r\n                  <?php } ?>  \r\n                </dl>\r\n                <?php } ?>\r\n              </div>     \r\n            </div>\r\n            <div class=\\\"cside fr\\\"> \r\n              <?php $sql3 = (\\\"select classimg from {$dbtbpre}enewsclass where classid= \\\'$bqr[classid]\\\' order by myorder desc \\\");$row3 = $empire->fetch1($sql3);?>\r\n                <img src=\\\"<?=$row3[\\\'classimg\\\'];?>\\\" width=\\\"321\\\" height=\\\"248\\\"/>\r\n               \r\n            </div>\r\n          </div>\r\n        </li>\r\n      <?php } ?>\r\n       [/e:loop]  \r\n    </ul>\r\n</div>\r\n  <div class=\\\"bannerSlide relative\\\" id=\\\"bannerSlide\\\"><a href=\\\"javascript:void(0)\\\" class=\\\"preBtn absolute bt\\\"><i></i></a> <a href=\\\"javascript:void(0)\\\" class=\\\"nextBtn absolute bt\\\"><i></i></a>\r\n  <div class=\\\"focus absolute\\\"></div>\r\n\r\n  <div class=\\\"slideBox\\\">\r\n    <ul>\r\n   [e:loop={56,10,0,1,0,\\\'id\\\'}]\r\n    <li><a href=\\\"<?=$bqr[\\\'titleurl\\\']?>\\\" target=\\\"_blank\\\"><img src=\\\"<?=$bqr[\\\'titlepic\\\']?>\\\" width=\\\"1920\\\" height=\\\"600\\\"/></a></li>\r\n   [/e:loop]\r\n    </ul>\r\n  </div>\r\n  </div>\r\n</div>', '1', '0', '页面头部', '0', '0', '', '0', '0', '0', '1506070185', 'tempvar', '1', 'admin');

-- ----------------------------
-- Table structure for `phome_enewstempdt`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewstempdt`;
CREATE TABLE `phome_enewstempdt` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempvar` char(30) NOT NULL DEFAULT '',
  `tempname` char(30) NOT NULL DEFAULT '',
  `tempsay` char(255) NOT NULL DEFAULT '',
  `tempfile` char(200) NOT NULL DEFAULT '',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `temptype` char(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`tempid`),
  UNIQUE KEY `tempvar` (`tempvar`),
  KEY `temptype` (`temptype`),
  KEY `myorder` (`myorder`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewstempdt
-- ----------------------------
INSERT INTO `phome_enewstempdt` VALUES ('1', 'header', '主界面头部', '主界面头部', 'e/template/incfile/header.php', '0', 'incfile');
INSERT INTO `phome_enewstempdt` VALUES ('2', 'footer', '主界面尾部', '主界面尾部', 'e/template/incfile/footer.php', '0', 'incfile');
INSERT INTO `phome_enewstempdt` VALUES ('3', 'qDoInfo', '管理投稿首页', '管理投稿首页', 'e/template/DoInfo/DoInfo.php', '0', 'doinfo');
INSERT INTO `phome_enewstempdt` VALUES ('4', 'qChangeClass', '投稿选择栏目页', '投稿选择栏目页', 'e/template/DoInfo/ChangeClass.php', '0', 'doinfo');
INSERT INTO `phome_enewstempdt` VALUES ('5', 'qDoInfoTran', '发布投稿上传附件页面', '发布投稿上传附件页面', 'e/template/DoInfo/tran.php', '0', 'doinfo');
INSERT INTO `phome_enewstempdt` VALUES ('6', 'qAddInfo', '发布投稿页', '发布投稿页', 'e/template/DoInfo/AddInfo.php', '0', 'doinfo');
INSERT INTO `phome_enewstempdt` VALUES ('7', 'qListInfo', '默认管理投稿列表页', '默认管理投稿列表页', 'e/data/html/list/qlistinfo.php', '0', 'doinfo');
INSERT INTO `phome_enewstempdt` VALUES ('8', 'report', '提交错误报告页面', '提交错误报告页面', 'e/template/public/report.php', '0', 'pubtemp');
INSERT INTO `phome_enewstempdt` VALUES ('9', 'payapi', '在线支付页面', '在线支付页面', 'e/template/payapi/payapi.php', '0', 'pubtemp');
INSERT INTO `phome_enewstempdt` VALUES ('10', 'infovote', '信息投票页面', '信息投票页面', 'e/template/public/vote.php', '0', 'pubtemp');
INSERT INTO `phome_enewstempdt` VALUES ('11', 'vote', '投票插件页面', '投票插件页面', 'e/template/tool/vote.php', '0', 'pubtemp');
INSERT INTO `phome_enewstempdt` VALUES ('12', 'ShopBurcar', '购物车页面', '购物车页面', 'e/template/ShopSys/buycar.php', '0', 'shopsys');
INSERT INTO `phome_enewstempdt` VALUES ('13', 'ShopOrder', '提交订单页面', '提交订单页面', 'e/template/ShopSys/order.php', '0', 'shopsys');
INSERT INTO `phome_enewstempdt` VALUES ('14', 'ShopSubmitOrder', '确认提交订单页面', '确认提交订单页面', 'e/template/ShopSys/SubmitOrder.php', '0', 'shopsys');
INSERT INTO `phome_enewstempdt` VALUES ('15', 'ShopListDd', '订单列表页面', '订单列表页面', 'e/template/ShopSys/ListDd.php', '0', 'shopsys');
INSERT INTO `phome_enewstempdt` VALUES ('16', 'ShopShowDd', '订单详细页面', '订单详细页面', 'e/template/ShopSys/ShowDd.php', '0', 'shopsys');
INSERT INTO `phome_enewstempdt` VALUES ('17', 'ShopBurcarForm', '购物车-加入表单模板', '购物车-加入表单模板', 'e/template/ShopSys/buycar/buycar_form.php', '0', 'shopsys');
INSERT INTO `phome_enewstempdt` VALUES ('18', 'ShopBurcarOrder', '购物车-确认订单模板', '购物车-确认订单模板', 'e/template/ShopSys/buycar/buycar_order.php', '0', 'shopsys');
INSERT INTO `phome_enewstempdt` VALUES ('19', 'ShopBurcarShowdd', '购物车-显示订单模板', '购物车-显示订单模板', 'e/template/ShopSys/buycar/buycar_showdd.php', '0', 'shopsys');
INSERT INTO `phome_enewstempdt` VALUES ('20', 'ShopAddAddress', '增加配送地址页面', '增加配送地址页面', 'e/template/ShopSys/AddAddress.php', '0', 'shopsys');
INSERT INTO `phome_enewstempdt` VALUES ('21', 'ShopListAddress', '管理配送地址页面', '管理配送地址页面', 'e/template/ShopSys/ListAddress.php', '0', 'shopsys');
INSERT INTO `phome_enewstempdt` VALUES ('22', 'MemberReg', '会员注册页面', '会员注册页面', 'e/template/member/register.php', '0', 'member');
INSERT INTO `phome_enewstempdt` VALUES ('23', 'MemberChangeReg', '选择注册类型页面', '选择注册类型页面', 'e/template/member/ChangeRegister.php', '0', 'member');
INSERT INTO `phome_enewstempdt` VALUES ('24', 'MemberRegsend', '重发注册激活邮件页面', '重发注册激活邮件页面', 'e/template/member/regsend.php', '0', 'member');
INSERT INTO `phome_enewstempdt` VALUES ('25', 'MemberLogin', '会员登录页面', '会员登录页面', 'e/template/member/login.php', '0', 'member');
INSERT INTO `phome_enewstempdt` VALUES ('26', 'MemberLoginopen', '会员登录弹出页面', '会员登录弹出页面', 'e/template/member/loginopen.php', '0', 'member');
INSERT INTO `phome_enewstempdt` VALUES ('27', 'MemberEditinfo', '修改会员信息页面', '修改会员信息页面', 'e/template/member/EditInfo.php', '0', 'member');
INSERT INTO `phome_enewstempdt` VALUES ('28', 'MemberEditsafeinfo', '修改会员安全信息页面', '修改会员安全信息页面', 'e/template/member/EditSafeInfo.php', '0', 'member');
INSERT INTO `phome_enewstempdt` VALUES ('29', 'MemberGetPassword', '取回密码页面', '取回密码页面', 'e/template/member/GetPassword.php', '0', 'member');
INSERT INTO `phome_enewstempdt` VALUES ('30', 'MemberGetResetPass', '取回密码重置页面', '取回密码重置页面', 'e/template/member/getpass.php', '0', 'member');
INSERT INTO `phome_enewstempdt` VALUES ('31', 'MemberCp', '会员中心首页', '会员中心首页', 'e/template/member/cp.php', '0', 'member');
INSERT INTO `phome_enewstempdt` VALUES ('32', 'MemberMy', '会员状态页面', '会员状态页面', 'e/template/member/my.php', '0', 'member');
INSERT INTO `phome_enewstempdt` VALUES ('33', 'MemberShowInfo', '查看会员信息页面', '查看会员信息页面', 'e/template/member/ShowInfo.php', '0', 'member');
INSERT INTO `phome_enewstempdt` VALUES ('34', 'MemberList1', '默认会员列表页面', '默认会员列表页面', 'e/template/member/memberlist/1.php', '0', 'member');
INSERT INTO `phome_enewstempdt` VALUES ('35', 'MemberAddMsg', '发送站内消息页面', '发送站内消息页面', 'e/template/member/AddMsg.php', '0', 'membermsg');
INSERT INTO `phome_enewstempdt` VALUES ('36', 'MemberMsg', '站内消息列表页面', '站内消息列表页面', 'e/template/member/msg.php', '0', 'membermsg');
INSERT INTO `phome_enewstempdt` VALUES ('37', 'MemberViewMsg', '查看站内消息页面', '查看站内消息页面', 'e/template/member/ViewMsg.php', '0', 'membermsg');
INSERT INTO `phome_enewstempdt` VALUES ('38', 'MemberAddFriend', '增加好友页面', '增加好友页面', 'e/template/member/AddFriend.php', '0', 'memberfriend');
INSERT INTO `phome_enewstempdt` VALUES ('39', 'MemberFriend', '好友列表页面', '好友列表页面', 'e/template/member/friend.php', '0', 'memberfriend');
INSERT INTO `phome_enewstempdt` VALUES ('40', 'MemberFriendClass', '好友分类页面', '好友分类页面', 'e/template/member/FriendClass.php', '0', 'memberfriend');
INSERT INTO `phome_enewstempdt` VALUES ('41', 'MemberChangeFriend', '选择好友页面', '选择好友页面', 'e/template/member/ChangeFriend.php', '0', 'memberfriend');
INSERT INTO `phome_enewstempdt` VALUES ('42', 'MemberAddFava', '增加收藏信息页面', '增加收藏信息页面', 'e/template/member/AddFava.php', '0', 'memberfav');
INSERT INTO `phome_enewstempdt` VALUES ('43', 'MemberFava', '管理收藏页面', '管理收藏页面', 'e/template/member/fava.php', '0', 'memberfav');
INSERT INTO `phome_enewstempdt` VALUES ('44', 'MemberFavaClass', '管理收藏分类页面', '管理收藏分类页面', 'e/template/member/FavaClass.php', '0', 'memberfav');
INSERT INTO `phome_enewstempdt` VALUES ('45', 'MemberBuybak', '充值记录页面', '充值记录页面', 'e/template/member/buybak.php', '0', 'memberother');
INSERT INTO `phome_enewstempdt` VALUES ('46', 'MemberDownbak', '下载记录页面', '下载记录页面', 'e/template/member/downbak.php', '0', 'memberother');
INSERT INTO `phome_enewstempdt` VALUES ('47', 'MemberBuygroup', '购买会员类型页面', '购买会员类型页面', 'e/template/member/buygroup.php', '0', 'memberother');
INSERT INTO `phome_enewstempdt` VALUES ('48', 'MemberCard', '点卡充值页面', '点卡充值页面', 'e/template/member/card.php', '0', 'memberother');
INSERT INTO `phome_enewstempdt` VALUES ('49', 'MemberChangeStyle', '选择会员空间风格页面', '选择会员空间风格页面', 'e/template/member/mspace/ChangeStyle.php', '0', 'memberspace');
INSERT INTO `phome_enewstempdt` VALUES ('50', 'MemberSetSpace', '设置会员空间页面', '设置会员空间页面', 'e/template/member/mspace/SetSpace.php', '0', 'memberspace');
INSERT INTO `phome_enewstempdt` VALUES ('51', 'MemberFeedback', '管理会员空间反馈页面', '管理会员空间反馈页面', 'e/template/member/mspace/feedback.php', '0', 'memberspace');
INSERT INTO `phome_enewstempdt` VALUES ('52', 'MemberShowFeedback', '查看会员空间反馈页面', '查看会员空间反馈页面', 'e/template/member/mspace/ShowFeedback.php', '0', 'memberspace');
INSERT INTO `phome_enewstempdt` VALUES ('53', 'MemberGbook', '管理会员空间留言页面', '管理会员空间留言页面', 'e/template/member/mspace/gbook.php', '0', 'memberspace');
INSERT INTO `phome_enewstempdt` VALUES ('54', 'MemberReGbook', '回复会员空间留言页面', '回复会员空间留言页面', 'e/template/member/mspace/ReGbook.php', '0', 'memberspace');
INSERT INTO `phome_enewstempdt` VALUES ('55', 'MemberConnectListBind', '登录绑定管理页面', '登录绑定管理页面', 'e/template/memberconnect/ListBind.php', '0', 'memberconnect');
INSERT INTO `phome_enewstempdt` VALUES ('56', 'MemberConnectTobind', '绑定登录帐号页面', '绑定登录帐号页面', 'e/template/memberconnect/tobind.php', '0', 'memberconnect');

-- ----------------------------
-- Table structure for `phome_enewstempgroup`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewstempgroup`;
CREATE TABLE `phome_enewstempgroup` (
  `gid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `gname` varchar(60) NOT NULL DEFAULT '',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewstempgroup
-- ----------------------------
INSERT INTO `phome_enewstempgroup` VALUES ('1', '默认模板组', '1');

-- ----------------------------
-- Table structure for `phome_enewstempvar`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewstempvar`;
CREATE TABLE `phome_enewstempvar` (
  `varid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `myvar` varchar(60) NOT NULL DEFAULT '',
  `varname` varchar(60) NOT NULL DEFAULT '',
  `varvalue` mediumtext NOT NULL,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`varid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewstempvar
-- ----------------------------
INSERT INTO `phome_enewstempvar` VALUES ('1', 'header', '页面头部', '<!-- header start -->\r\n<div class=\\\"header\\\" id=\\\"header\\\">\r\n  <div class=\\\"topDateTell clearfix\\\">\r\n    <div class=\\\"pubW center clearfix\\\">\r\n      <div class=\\\"englishTags fl\\\"><a href=\\\"javascript:void(0)\\\" onClick=\\\"openZoosUrl();\\\" target=\\\"_blank\\\">在线咨询</a>|<a href=\\\"javascript:void(0)\\\" onClick=\\\"openZoosUrl();\\\" target=\\\"_blank\\\">在线留言 </a></div>\r\n      <span class=\\\"tellnumber fr\\\">美丽热线 : 0791-86667777</span> <span class=\\\"openTime fr fonts\\\">门诊时间 (无假日医院) 8:00-20:00</span> </div>\r\n  </div>\r\n  <div class=\\\"topLogo pubW center clearfix relative\\\">\r\n    <h1><a href=\\\"[!--news.url--]\\\" title=\\\"南昌莱美美容医院\\\"></a></h1>\r\n    <div class=\\\"topNav fr clearfix\\\">\r\n      <ul>\r\n        <li><a href=\\\"<?=$class_r[47][\\\'classpath\\\']?>\\\" target=\\\"_blank\\\" title=\\\"关于莱美\\\">关于莱美</a></li>\r\n        <li><a href=\\\"<?=$class_r[48][\\\'classpath\\\']?>\\\" target=\\\"_blank\\\" title=\\\"医师团队\\\">医师团队</a></li>\r\n        <li><a href=\\\"<?=$class_r[49][\\\'classpath\\\']?>\\\" target=\\\"_blank\\\" title=\\\"医院环境\\\">医院环境</a></li>\r\n        <li><a href=\\\"<?=$class_r[50][\\\'classpath\\\']?>\\\" target=\\\"_blank\\\" title=\\\"医疗荣誉\\\">医疗荣誉</a></li>\r\n        <li><a href=\\\"/\\\" target=\\\"_blank\\\" title=\\\"美丽案例\\\">美丽案例</a></li>\r\n        <li><a href=\\\"<?=$class_r[53][\\\'classpath\\\']?>\\\" target=\\\"_blank\\\" title=\\\"来院路线\\\">来院路线</a></li>\r\n      </ul>\r\n    </div>\r\n    <div class=\\\"searchBox absolute\\\">\r\n        <div class=\\\"selectBox\\\">\r\n          <div class=\\\"switch switch1 clearfix\\\">\r\n            <div class=\\\"item item1 relative fl\\\">\r\n                      <!--<span class=\\\"itemNum\\\" style=\\\"text-align:center; color:#fff; line-height:20px;z-index:66;position:absolute;top:-10px;left:122px;display:block;width: 22px;height: 20px;background:url(\\\'images/itemnum.png\\\') no-repeat center;\\\"></span>-->\r\n              <form action=\\\"/e/search/index.php\\\" method=\\\"post\\\" onsubmit=\\\"if (this.search.value == \\\'\\\'){this.search.focus();return false;}\\\" name=\\\"formsearch\\\" id=\\\"formsearch\\\">\r\n                      <input type=\\\"hidden\\\" name=\\\"show\\\" value=\\\"title\\\" />\r\n                      <input type=\\\"hidden\\\" name=\\\"tempid\\\" value=\\\"1\\\" />\r\n                      <input type=\\\"hidden\\\" name=\\\"tbname\\\" value=\\\"news\\\" />\r\n                      <input name=\\\"keyboard\\\" id=\\\"keyboard\\\" class=\\\"btn-text fonts\\\" type=\\\"text\\\" size=\\\"22\\\" maxlength=\\\"30\\\" placeholder=\\\"查找您想要改变的部位\\\" />\r\n                      <ul></ul>\r\n                  </div>\r\n                  <div class=\\\"itemBtn fl relative\\\">\r\n                    <input type=\\\"submit\\\" class=\\\"inputSub bt\\\"  title=\\\"查找\\\" value=\\\"查找\\\" />\r\n                    <i class=\\\"absolute\\\"></i>\r\n                  </div>\r\n              </form>\r\n          </div>\r\n        </div>\r\n        <div class=\\\"zhutiWripper\\\">\r\n          <ul class=\\\"clearfix\\\">\r\n          [e:loop={55,12,0,0,0,\\\'classid desc\\\'}]\r\n            <li>\r\n              <a class=\\\"\\\" href=\\\"<?=$bqr[\\\'titleurl\\\']?>\\\" target=\\\"_blank\\\">\r\n                <img src=\\\"<?=$bqr[\\\'titlepic\\\']?>\\\" width=\\\"58\\\" height=\\\"58\\\"/>\r\n              </a>\r\n              <span><?=$bqr[\\\'title\\\']?></span>\r\n            </li>\r\n          [/e:loop]\r\n          </ul>\r\n        </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n<!-- end header -->\r\n<!-- nav banner start -->\r\n<div class=\\\"banner relative\\\" id=\\\"banner\\\"> <div class=\\\"menu absolute\\\">\r\n    <ul class=\\\"active\\\">\r\n     [e:loop={\\\"select classid,classname,classpath,classimg,bname from [!db.pre!]enewsclass where bclassid=0 order by myorder limit 11\\\",11,24,0}]\r\n      <?php if( $bqno == 1 || $bqno == 9 || $bqno == 11 ){ ?>\r\n        <li class=\\\"subNav subNav<?php if( $bqno == 1 ){ echo 10;}elseif( $bqno == 9){ echo 8;}else{ echo 9;}?>\\\"><a href=\\\"/<?=$bqr[\\\'classpath\\\']?>\\\"><i></i> <span data-txt=\\\"<?=$bqr[\\\'classname\\\']?>\\\"></span> </a>\r\n          <div class=\\\"subMenu subMenu<?=$bqno?> clearfix\\\">\r\n            <div class=\\\"aside fl\\\">\r\n              <div class=\\\"subMenu-Logo subMenu-Logo<?=$bqno?>\\\"> <i></i>\r\n              <h6><?=$bqr[\\\'classname\\\']?></h6>\r\n              <p><?=$bqr[\\\'bname\\\']?></p>\r\n              </div>\r\n            </div>\r\n            <div class=\\\"bside fl\\\">\r\n              <div class=\\\"inner fl\\\">\r\n                <dl class=\\\"clearfix fl\\\">\r\n                  <dd class=\\\"clearfix\\\">\r\n                   <?php $sql = $empire->query(\\\"select title,titleurl,lastdotime,classid from {$dbtbpre}ecms_news where classid = \\\'$bqr[classid]\\\' order by id desc limit 6\\\");while( $row = $empire -> fetch($sql) ){ ?>\r\n                    <a href=\\\"<?=$row[\\\'titleurl\\\']?>\\\" target=\\\"_blank\\\"><?=$row[\\\'title\\\']?></a>\r\n                   <?php } ?>\r\n                  </dd> \r\n                </dl>\r\n              </div>     \r\n            </div>\r\n            <div class=\\\"cside fr\\\"> \r\n              <?php $sql = $empire -> query(\\\"select titlepic,classid from {$dbtbpre}ecms_news where classid = \\\'$bqr[classid]\\\' order by id desc limit 2\\\");while( $row = $empire -> fetch( $sql ) ){?>\r\n                  <img src=\\\"<?=$row[\\\'titlepic\\\']?>\\\" width=\\\"321\\\" height=\\\"248\\\"/> \r\n              <?php } ?>    \r\n            </div>\r\n          </div>\r\n        </li>\r\n      <?php } else { ?>\r\n        <li class=\\\"subNav subNav<?php if( $bqno == 7){ echo 7;}elseif( $bqno == 8 ){ echo 6;}elseif( $bqno == 10 ){ echo 12; }else{ echo $bqno-1;}?>\\\"><a href=\\\"/<?=$bqr[\\\'classpath\\\']?>\\\"><i></i> <span data-txt=\\\"<?=$bqr[\\\'classname\\\']?>\\\"></span></a>\r\n          <div class=\\\"subMenu subMenu<?=$bqno?> clearfix\\\">\r\n            <div class=\\\"aside fl\\\">\r\n              <div class=\\\"subMenu-Logo subMenu-Logo<?=$bqno?>\\\"> <i></i>\r\n                <h6><?=$bqr[\\\'classname\\\']?></h6>\r\n                <p><?=$bqr[\\\'bname\\\']?></p>\r\n              </div>\r\n            </div>\r\n            <div class=\\\"bside fl\\\">\r\n              <div class=\\\"inner fl\\\">\r\n              <?php $sql = $empire -> query(\\\"select classid,classname,classpath,bclassid from {$dbtbpre}enewsclass where bclassid = \\\'$bqr[classid]\\\' order by myorder limit 6\\\"); while( $row = $empire -> fetch( $sql ) ){ ?>\r\n                <dl class=\\\"clearfix fl\\\">\r\n                  <dt><a href=\\\"/<?=$row[\\\'classpath\\\']?>\\\"><?=$row[\\\'classname\\\']?></a></dt> \r\n                  <?php $sql2 = $empire -> query(\\\"select title,titleurl,classid from {$dbtbpre}ecms_news where classid= \\\'$row[classid]\\\' order by lastdotime desc limit 6\\\");while( $row2 = $empire ->fetch($sql2) ){ ?>\r\n                    <dd class=\\\"clearfix\\\">\r\n                       <a href=\\\"<?=$row2[\\\'titleurl\\\']?>\\\" target=\\\"_blank\\\"><?=$row2[\\\'title\\\']?></a>\r\n                    </dd> \r\n                  <?php } ?>  \r\n                </dl>\r\n                <?php } ?>\r\n              </div>     \r\n            </div>\r\n            <div class=\\\"cside fr\\\"> \r\n              <?php $sql3 = (\\\"select classimg from {$dbtbpre}enewsclass where classid= \\\'$bqr[classid]\\\' order by myorder desc \\\");$row3 = $empire->fetch1($sql3);?>\r\n                <img src=\\\"<?=$row3[\\\'classimg\\\'];?>\\\" width=\\\"321\\\" height=\\\"248\\\"/>\r\n               \r\n            </div>\r\n          </div>\r\n        </li>\r\n      <?php } ?>\r\n       [/e:loop]  \r\n    </ul>\r\n</div>\r\n  <div class=\\\"bannerSlide relative\\\" id=\\\"bannerSlide\\\"><a href=\\\"javascript:void(0)\\\" class=\\\"preBtn absolute bt\\\"><i></i></a> <a href=\\\"javascript:void(0)\\\" class=\\\"nextBtn absolute bt\\\"><i></i></a>\r\n  <div class=\\\"focus absolute\\\"></div>\r\n\r\n  <div class=\\\"slideBox\\\">\r\n    <ul>\r\n   [e:loop={56,10,0,1,0,\\\'id\\\'}]\r\n    <li><a href=\\\"<?=$bqr[\\\'titleurl\\\']?>\\\" target=\\\"_blank\\\"><img src=\\\"<?=$bqr[\\\'titlepic\\\']?>\\\" width=\\\"1920\\\" height=\\\"600\\\"/></a></li>\r\n   [/e:loop]\r\n    </ul>\r\n  </div>\r\n  </div>\r\n</div>', '0', '0', '1');
INSERT INTO `phome_enewstempvar` VALUES ('2', 'footer', '页面尾部', '<div class=\\\"footer\\\">\r\n  <div class=\\\"pubW center clearfix\\\">\r\n	<div class=\\\"footerNav\\\">\r\n		<div class=\\\"footer_logo fl\\\"></div>\r\n		<i></i>\r\n		<div class=\\\"footer_address fl\\\">\r\n			<div class=\\\"footer_text center\\\">\r\n				<h1>医院地址</h1>\r\n				<p>南昌市抚河抚河南路261号（上林春天花园北门）</p>\r\n				<p>免费热线：0791-86667777</p>\r\n				<p>乘车路线：20路、25路、218路、33路到建设路西口</p>\r\n			</div>\r\n		</div>\r\n		<i></i>\r\n		<div class=\\\"footer_qrcode fl\\\"></div>\r\n	</div>\r\n		<p>网站内容申明：本网站信息仅供参考，不能作为诊疗及医疗依据本网站商标及图片权属本医院所有，未经授权请勿复制及转载！部分图片来源于网络且图文无关，若侵犯了您的权益请及时联系。<script type=\\\"text/javascript\\\">\r\nvar _bdhmProtocol = ((\\\"https:\\\" == document.location.protocol) ? \\\" https://\\\" : \\\" http://\\\");\r\ndocument.write(unescape(\\\"%3Cscript src=\\\'\\\" + _bdhmProtocol + \\\"hm.baidu.com/h.js%3Fb6c8806730042053a0e3f0786c2872ce\\\' type=\\\'text/javascript\\\'%3E%3C/script%3E\\\"));\r\n</script></p>\r\n  </div>\r\n</div>\r\n<div class=\\\"copyright\\\">\r\n	<div class=\\\"splitline\\\"></div>\r\n	<p>Copyright @ 南昌莱美美容医院 All rights reserved 赣ICP备10201680号</p>\r\n</div>\r\n<!-- end footer -->\r\n<script language=\\\"javascript\\\" src=\\\"js/kst.js\\\"></script>\r\n<div id=\\\"ScrollTop\\\">Top</div>\r\n<script>\r\n	window.onload = function () {\r\n    var top = document.getElementById(\\\"ScrollTop\\\");\r\n    //滚动一屏幕时显示回到顶部\r\n    window.onscroll = function () {\r\n        var currentPosition = document.documentElement.scrollTop || document.body.scrollTop;\r\n        currentPosition > window.screen.availHeight ? top.style.display = \\\"block\\\" : top.style.display = \\\"none\\\";\r\n    };\r\n    top.onclick = GoTop;// 注意不要括号\r\n    function GoTop() {\r\n        var timer = setInterval(function () {\r\n    var currentPosition = document.documentElement.scrollTop || document.body.scrollTop;\r\n            currentPosition -= 100;\r\n            if (currentPosition > 0) {\r\n                window.scrollTo(0, currentPosition);\r\n            }\r\n            else {\r\n                window.scrollTo(0, 0);\r\n                clearInterval(timer);\r\n            }\r\n        }, 30);\r\n    }\r\n}\r\n</script>', '0', '0', '0');
INSERT INTO `phome_enewstempvar` VALUES ('3', 'dtheader', '动态页面头部', '<!-- 页头 -->\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"top\\\">\r\n<tr>\r\n<td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\r\n<tr>\r\n<td width=\\\"63%\\\">\r\n<!-- 登录 -->\r\n<script>\r\ndocument.write(\\\'<script src=\\\"[!--news.url--]e/member/login/loginjs.php?t=\\\'+Math.random()+\\\'\\\"><\\\'+\\\'/script>\\\');\r\n</script>\r\n</td>\r\n<td align=\\\"right\\\">\r\n<a onclick=\\\"window.external.addFavorite(location.href,document.title)\\\" href=\\\"#ecms\\\">加入收藏</a> | <a onclick=\\\"this.style.behavior=\\\'url(#default#homepage)\\\';this.setHomePage(\\\'[!--news.url--]\\\')\\\" href=\\\"#ecms\\\">设为首页</a> | <a href=\\\"[!--news.url--]e/member/cp/\\\">会员中心</a> | <a href=\\\"[!--news.url--]e/DoInfo/\\\">我要投稿</a> | <a href=\\\"[!--news.url--]e/web/?type=rss2\\\" target=\\\"_blank\\\">RSS<img src=\\\"[!--news.url--]skin/default/images/rss.gif\\\" border=\\\"0\\\" hspace=\\\"2\\\" /></a>\r\n</td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"10\\\">\r\n<tr valign=\\\"middle\\\">\r\n<td width=\\\"240\\\" align=\\\"center\\\"><a href=\\\"[!--news.url--]\\\"><img src=\\\"[!--news.url--]skin/default/images/logo.gif\\\" width=\\\"200\\\" height=\\\"65\\\" border=\\\"0\\\" /></a></td>\r\n<td align=\\\"center\\\"><a href=\\\"http://www.phome.net/OpenSource/\\\" target=\\\"_blank\\\"><img src=\\\"[!--news.url--]skin/default/images/opensource.gif\\\" width=\\\"100%\\\" height=\\\"70\\\" border=\\\"0\\\" /></a></td>\r\n</tr>\r\n</table>\r\n<!-- 导航tab选项卡 -->\r\n<table width=\\\"920\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" class=\\\"nav\\\">\r\n  <tr> \r\n    <td class=\\\"nav_global\\\"><ul>\r\n        <li class=\\\"curr\\\" id=\\\"tabnav_btn_0\\\" onmouseover=\\\"tabit(this)\\\"><a href=\\\"[!--news.url--]\\\">首页</a></li>\r\n        <li id=\\\"tabnav_btn_1\\\" onmouseover=\\\"tabit(this)\\\"><a href=\\\"[!--news.url--]news/\\\">新闻中心</a></li>\r\n        <li id=\\\"tabnav_btn_2\\\" onmouseover=\\\"tabit(this)\\\"><a href=\\\"[!--news.url--]download/\\\">下载中心</a></li>\r\n        <li id=\\\"tabnav_btn_3\\\" onmouseover=\\\"tabit(this)\\\"><a href=\\\"[!--news.url--]movie/\\\">影视频道</a></li>\r\n        <li id=\\\"tabnav_btn_4\\\" onmouseover=\\\"tabit(this)\\\"><a href=\\\"[!--news.url--]shop/\\\">网上商城</a></li>\r\n        <li id=\\\"tabnav_btn_5\\\" onmouseover=\\\"tabit(this)\\\"><a href=\\\"[!--news.url--]flash/\\\">FLASH频道</a></li>\r\n        <li id=\\\"tabnav_btn_6\\\" onmouseover=\\\"tabit(this)\\\"><a href=\\\"[!--news.url--]photo/\\\">图片频道</a></li>\r\n        <li id=\\\"tabnav_btn_7\\\" onmouseover=\\\"tabit(this)\\\"><a href=\\\"[!--news.url--]article/\\\">文章中心</a></li>\r\n        <li id=\\\"tabnav_btn_8\\\" onmouseover=\\\"tabit(this)\\\"><a href=\\\"[!--news.url--]info/\\\">分类信息</a></li>\r\n      </ul></td>\r\n  </tr>\r\n</table>', '0', '0', '0');
INSERT INTO `phome_enewstempvar` VALUES ('4', 'infoarea', '分类信息区域导航', '<table width=\\\"96%\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"0\\\" cellspacing=\\\"4\\\">\r\n	<tr>\r\n		<td width=\\\"33%\\\"><img src=\\\"[!--news.url--]e/data/images/msgnav.gif\\\" width=\\\"5\\\" height=\\\"5\\\" />&nbsp;<a href=\\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=东城区\\\">东城区</a></td>\r\n		<td width=\\\"33%\\\"><img src=\\\"[!--news.url--]e/data/images/msgnav.gif\\\" width=\\\"5\\\" height=\\\"5\\\" />&nbsp;<a href=\\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=西城区\\\">西城区</a></td>\r\n		<td width=\\\"33%\\\"><img src=\\\"[!--news.url--]e/data/images/msgnav.gif\\\" width=\\\"5\\\" height=\\\"5\\\" />&nbsp;<a href=\\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=通州区\\\">通州区</a></td>\r\n	</tr>\r\n	<tr>\r\n		<td><img src=\\\"[!--news.url--]e/data/images/msgnav.gif\\\" width=\\\"5\\\" height=\\\"5\\\" />&nbsp;<a href=\\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=崇文区\\\">崇文区</a></td>\r\n		<td><img src=\\\"[!--news.url--]e/data/images/msgnav.gif\\\" width=\\\"5\\\" height=\\\"5\\\" />&nbsp;<a href=\\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=宣武区\\\">宣武区</a></td>\r\n		<td><img src=\\\"[!--news.url--]e/data/images/msgnav.gif\\\" width=\\\"5\\\" height=\\\"5\\\" />&nbsp;<a href=\\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=大兴区\\\">大兴区</a></td>\r\n	</tr>\r\n	<tr>\r\n		<td><img src=\\\"[!--news.url--]e/data/images/msgnav.gif\\\" width=\\\"5\\\" height=\\\"5\\\" /><a href=\\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=朝阳区\\\">&nbsp;朝阳区</a></td>\r\n		<td><img src=\\\"[!--news.url--]e/data/images/msgnav.gif\\\" width=\\\"5\\\" height=\\\"5\\\" />&nbsp;<a href=\\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=海淀区\\\">海淀区</a></td>\r\n		<td><img src=\\\"[!--news.url--]e/data/images/msgnav.gif\\\" width=\\\"5\\\" height=\\\"5\\\" />&nbsp;<a href=\\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=昌平区\\\">昌平区</a></td>\r\n	</tr>\r\n	<tr>\r\n		<td><img src=\\\"[!--news.url--]e/data/images/msgnav.gif\\\" width=\\\"5\\\" height=\\\"5\\\" />&nbsp;<a href=\\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=丰台区\\\">丰台区</a></td>\r\n		<td><img src=\\\"[!--news.url--]e/data/images/msgnav.gif\\\" width=\\\"5\\\" height=\\\"5\\\" />&nbsp;<a href=\\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=石景山区\\\">石景山区</a></td>\r\n		<td><img src=\\\"[!--news.url--]e/data/images/msgnav.gif\\\" width=\\\"5\\\" height=\\\"5\\\" />&nbsp;<a href=\\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=其它\\\">其它</a></td>\r\n	</tr>\r\n</table>', '0', '0', '0');
INSERT INTO `phome_enewstempvar` VALUES ('5', 'infoclassnav', '分类信息分类导航', '<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"4\\\" cellspacing=\\\"0\\\">\r\n  <tr>\r\n    <td bgcolor=\\\"#EEF1F4\\\">&nbsp;<img src=\\\"[!--news.url--]e/data/images/msgnav.gif\\\" width=\\\"5\\\" height=\\\"5\\\" />&nbsp;<a href=\\\"[!--news.url--]e/action/ListInfo/?classid=10\\\"><strong>房屋信息</strong></a></td>\r\n  </tr> \r\n</table>\r\n<table width=\\\"96%\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"0\\\" cellspacing=\\\"4\\\">\r\n  <tr>\r\n    <td width=\\\"33%\\\"><a href=\\\"[!--news.url--]e/action/ListInfo/?classid=11\\\">房屋求租</a></td>\r\n    <td width=\\\"33%\\\"><a href=\\\"[!--news.url--]e/action/ListInfo/?classid=12\\\">房屋出租</a></td>\r\n  		<td width=\\\"33%\\\"><a href=\\\"[!--news.url--]e/action/ListInfo/?classid=15\\\">办公用房</a></td>\r\n  </tr>\r\n  <tr>\r\n    <td><a href=\\\"[!--news.url--]e/action/ListInfo/?classid=13\\\">房屋求购</a></td>\r\n    <td><a href=\\\"[!--news.url--]e/action/ListInfo/?classid=14\\\">房屋出售</a></td>\r\n  		<td><a href=\\\"[!--news.url--]e/action/ListInfo/?classid=16\\\">旺铺门面</a></td>\r\n  </tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"4\\\" bgcolor=\\\"#EEF1F4\\\">\r\n  <tr>\r\n    <td>&nbsp;<img src=\\\"[!--news.url--]e/data/images/msgnav.gif\\\" width=\\\"5\\\" height=\\\"5\\\" />&nbsp;<a href=\\\"[!--news.url--]e/action/ListInfo/?classid=17\\\"><strong>跳蚤市场</strong></a></td>\r\n  </tr>\r\n</table>\r\n<table width=\\\"96%\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"0\\\" cellspacing=\\\"4\\\">\r\n  <tr>\r\n    <td width=\\\"33%\\\"><a href=\\\"[!--news.url--]e/action/ListInfo/?classid=18\\\">电脑配件</a></td>\r\n    <td width=\\\"33%\\\"><a href=\\\"[!--news.url--]e/action/ListInfo/?classid=19\\\">电器数码</a></td>\r\n  		<td width=\\\"33%\\\"><a href=\\\"[!--news.url--]e/action/ListInfo/?classid=21\\\">居家用品</a></td>\r\n  </tr>\r\n  <tr>\r\n    <td><a href=\\\"[!--news.url--]e/action/ListInfo/?classid=20\\\">通讯产品</a></td>\r\n    <td><a href=\\\"[!--news.url--]e/action/ListInfo/?classid=21\\\"></a></td>\r\n  		<td>&nbsp;</td>\r\n  </tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"4\\\" cellspacing=\\\"0\\\" bgcolor=\\\"#EEF1F4\\\">\r\n  <tr>\r\n    <td>&nbsp;<img src=\\\"[!--news.url--]e/data/images/msgnav.gif\\\" width=\\\"5\\\" height=\\\"5\\\" />&nbsp;<a href=\\\"[!--news.url--]e/action/ListInfo/?classid=22\\\"><strong>同城生活</strong></a></td>\r\n  </tr>\r\n</table>\r\n<table width=\\\"96%\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"0\\\" cellspacing=\\\"4\\\">\r\n  <tr>\r\n    <td width=\\\"33%\\\"><a href=\\\"[!--news.url--]e/action/ListInfo/?classid=23\\\">本地新闻</a></td>\r\n    <td width=\\\"33%\\\"><a href=\\\"[!--news.url--]e/action/ListInfo/?classid=24\\\">购物打折</a></td>\r\n  		<td width=\\\"33%\\\"><a href=\\\"[!--news.url--]e/action/ListInfo/?classid=26\\\">便民告示</a></td>\r\n  </tr>\r\n  <tr>\r\n    <td><a href=\\\"[!--news.url--]e/action/ListInfo/?classid=25\\\">旅游活动</a></td>\r\n    <td>&nbsp;</td>\r\n  		<td>&nbsp;</td>\r\n  </tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"4\\\" cellspacing=\\\"0\\\" bgcolor=\\\"#EEF1F4\\\">\r\n  <tr>\r\n    <td>&nbsp;<img src=\\\"[!--news.url--]e/data/images/msgnav.gif\\\" width=\\\"5\\\" height=\\\"5\\\" />&nbsp;<a href=\\\"[!--news.url--]e/action/ListInfo/?classid=27\\\"><strong>求职招聘</strong></a></td>\r\n  </tr>\r\n</table>\r\n<table width=\\\"96%\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"0\\\" cellspacing=\\\"4\\\">\r\n  <tr>\r\n    <td width=\\\"33%\\\"><a href=\\\"[!--news.url--]e/action/ListInfo/?classid=28\\\">工程技术</a></td>\r\n    <td width=\\\"33%\\\"><a href=\\\"[!--news.url--]e/action/ListInfo/?classid=29\\\">财务会计</a></td>\r\n  		<td width=\\\"33%\\\"><a href=\\\"[!--news.url--]e/action/ListInfo/?classid=31\\\">经营管理</a></td>\r\n  </tr>\r\n  <tr>\r\n    <td><a href=\\\"[!--news.url--]e/action/ListInfo/?classid=30\\\">餐饮行业</a></td>\r\n    <td><a href=\\\"[!--news.url--]e/action/ListInfo/?classid=31\\\"></a></td>\r\n  		<td>&nbsp;</td>\r\n  </tr>\r\n</table>', '0', '0', '0');
INSERT INTO `phome_enewstempvar` VALUES ('7', 'pl', '评论表单', '<script>\r\n		  function CheckPl(obj)\r\n		  {\r\n		  if(obj.saytext.value==\\\"\\\")\r\n		  {\r\n		  alert(\\\"您没什么话要说吗？\\\");\r\n		  obj.saytext.focus();\r\n		  return false;\r\n		  }\r\n		  return true;\r\n		  }\r\n		  </script><form action=\\\"[!--news.url--]e/pl/doaction.php\\\" method=\\\"post\\\" name=\\\"saypl\\\" id=\\\"saypl\\\" onsubmit=\\\"return CheckPl(document.saypl)\\\">\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" id=\\\"plpost\\\">\r\n\r\n<tr>\r\n<td><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" class=\\\"title\\\">\r\n<tr>\r\n<td><strong>发表评论</strong></td>\r\n<td align=\\\"right\\\"><a href=\\\"[!--news.url--]e/pl/?classid=[!--classid--]&amp;id=[!--id--]\\\">共有<span><script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]e/public/ViewClick/?classid=[!--classid--]&id=[!--id--]&down=2\\\"></script></span>条评论</a></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n<tr>\r\n<td><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"2\\\">\r\n<tr>\r\n<td width=\\\"56%\\\" align=\\\"left\\\">用户名:\r\n<input name=\\\"username\\\" type=\\\"text\\\" class=\\\"inputText\\\" id=\\\"username\\\" value=\\\"\\\" size=\\\"16\\\" /></td>\r\n<td width=\\\"44%\\\" align=\\\"left\\\">密码:\r\n<input name=\\\"password\\\" type=\\\"password\\\" class=\\\"inputText\\\" id=\\\"password\\\" value=\\\"\\\" size=\\\"16\\\" /></td>\r\n</tr>\r\n<tr>\r\n<td align=\\\"left\\\">验证码:\r\n<input name=\\\"key\\\" type=\\\"text\\\" class=\\\"inputText\\\" size=\\\"10\\\" />\r\n<img src=\\\"[!--news.url--]e/ShowKey/?v=pl\\\" align=\\\"absmiddle\\\" name=\\\"plKeyImg\\\" id=\\\"plKeyImg\\\" onclick=\\\"plKeyImg.src=\\\'[!--news.url--]e/ShowKey/?v=pl&t=\\\'+Math.random()\\\" title=\\\"看不清楚,点击刷新\\\" /> </td>\r\n<td align=\\\"left\\\"><input name=\\\"nomember\\\" type=\\\"checkbox\\\" id=\\\"nomember\\\" value=\\\"1\\\" checked=\\\"checked\\\" />\r\n匿名发表</td>\r\n</tr>\r\n</table>\r\n<textarea name=\\\"saytext\\\" rows=\\\"6\\\" id=\\\"saytext\\\"></textarea><input name=\\\"imageField\\\" type=\\\"image\\\" src=\\\"[!--news.url--]e/data/images/postpl.gif\\\"/>\r\n<input name=\\\"id\\\" type=\\\"hidden\\\" id=\\\"id\\\" value=\\\"[!--id--]\\\" />\r\n<input name=\\\"classid\\\" type=\\\"hidden\\\" id=\\\"classid\\\" value=\\\"[!--classid--]\\\" />\r\n<input name=\\\"enews\\\" type=\\\"hidden\\\" id=\\\"enews\\\" value=\\\"AddPl\\\" />\r\n<input name=\\\"repid\\\" type=\\\"hidden\\\" id=\\\"repid\\\" value=\\\"0\\\" />\r\n<input type=\\\"hidden\\\" name=\\\"ecmsfrom\\\" value=\\\"[!--titleurl--]\\\"></td>\r\n</tr>\r\n</table>\r\n</td>\r\n</tr>\r\n</table></form>', '0', '0', '0');
INSERT INTO `phome_enewstempvar` VALUES ('8', 'head', '自定义页面头部', '<!-- header start -->\r\n<div class=\\\"header\\\" id=\\\"header\\\">\r\n  <div class=\\\"topDateTell clearfix\\\">\r\n    <div class=\\\"pubW center clearfix\\\">\r\n      <div class=\\\"englishTags fl\\\"><a href=\\\"javascript:void(0)\\\" onClick=\\\"openZoosUrl();\\\" target=\\\"_blank\\\">在线咨询</a>|<a href=\\\"javascript:void(0)\\\" onClick=\\\"openZoosUrl();\\\" target=\\\"_blank\\\">在线留言 </a></div>\r\n      <span class=\\\"tellnumber fr\\\">美丽热线 : 0791-86667777</span> <span class=\\\"openTime fr fonts\\\">门诊时间 (无假日医院) 8:00-20:00</span> </div>\r\n  </div>\r\n  <div class=\\\"topLogo pubW center clearfix relative\\\">\r\n    <h1><a href=\\\"[!--news.url--]\\\" title=\\\"南昌莱美美容医院\\\"></a></h1>\r\n    <div class=\\\"topNav fr clearfix\\\">\r\n      <ul>\r\n        <li><a href=\\\"<?=$class_r[47][\\\'classpath\\\']?>\\\" target=\\\"_blank\\\" title=\\\"关于莱美\\\">关于莱美</a></li>\r\n        <li><a href=\\\"<?=$class_r[48][\\\'classpath\\\']?>\\\" target=\\\"_blank\\\" title=\\\"医师团队\\\">医师团队</a></li>\r\n        <li><a href=\\\"<?=$class_r[49][\\\'classpath\\\']?>\\\" target=\\\"_blank\\\" title=\\\"医院环境\\\">医院环境</a></li>\r\n        <li><a href=\\\"<?=$class_r[50][\\\'classpath\\\']?>\\\" target=\\\"_blank\\\" title=\\\"医疗荣誉\\\">医疗荣誉</a></li>\r\n        <li><a href=\\\"/\\\" target=\\\"_blank\\\" title=\\\"美丽案例\\\">美丽案例</a></li>\r\n        <li><a href=\\\"<?=$class_r[53][\\\'classpath\\\']?>\\\" target=\\\"_blank\\\" title=\\\"来院路线\\\">来院路线</a></li>\r\n      </ul>\r\n    </div>\r\n    <div class=\\\"searchBox absolute\\\">\r\n        <div class=\\\"selectBox\\\">\r\n          <div class=\\\"switch switch1 clearfix\\\">\r\n            <div class=\\\"item item1 relative fl\\\">\r\n                      <!--<span class=\\\"itemNum\\\" style=\\\"text-align:center; color:#fff; line-height:20px;z-index:66;position:absolute;top:-10px;left:122px;display:block;width: 22px;height: 20px;background:url(\\\'images/itemnum.png\\\') no-repeat center;\\\"></span>-->\r\n              <form action=\\\"/e/search/index.php\\\" method=\\\"post\\\" onsubmit=\\\"if (this.search.value == \\\'\\\'){this.search.focus();return false;}\\\" name=\\\"formsearch\\\" id=\\\"formsearch\\\">\r\n                      <input type=\\\"hidden\\\" name=\\\"show\\\" value=\\\"title\\\" />\r\n                      <input type=\\\"hidden\\\" name=\\\"tempid\\\" value=\\\"1\\\" />\r\n                      <input type=\\\"hidden\\\" name=\\\"tbname\\\" value=\\\"news\\\" />\r\n                      <input name=\\\"keyboard\\\" id=\\\"keyboard\\\" class=\\\"btn-text fonts\\\" type=\\\"text\\\" size=\\\"22\\\" maxlength=\\\"30\\\" placeholder=\\\"查找您想要改变的部位\\\" />\r\n                      <ul></ul>\r\n                  </div>\r\n                  <div class=\\\"itemBtn fl relative\\\">\r\n                    <input type=\\\"submit\\\" class=\\\"inputSub bt\\\"  title=\\\"查找\\\" value=\\\"查找\\\" />\r\n                    <i class=\\\"absolute\\\"></i>\r\n                  </div>\r\n              </form>\r\n          </div>\r\n        </div>\r\n        <div class=\\\"zhutiWripper\\\">\r\n          <ul class=\\\"clearfix\\\">\r\n          [e:loop={55,12,0,0,0,\\\'classid desc\\\'}]\r\n            <li>\r\n              <a class=\\\"\\\" href=\\\"<?=$bqr[\\\'titleurl\\\']?>\\\" target=\\\"_blank\\\">\r\n                <img src=\\\"<?=$bqr[\\\'titlepic\\\']?>\\\" width=\\\"58\\\" height=\\\"58\\\"/>\r\n              </a>\r\n              <span><?=$bqr[\\\'title\\\']?></span>\r\n            </li>\r\n          [/e:loop]\r\n          </ul>\r\n        </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n<!-- end header -->\r\n<!-- nav banner start -->\r\n<div class=\\\"banner relative\\\" id=\\\"banner\\\"> <div class=\\\"menu absolute\\\">\r\n    <ul class=\\\"active\\\">\r\n     [e:loop={\\\"select classid,classname,classpath,classimg,bname from [!db.pre!]enewsclass where bclassid=0 order by myorder limit 11\\\",11,24,0}]\r\n      <?php if( $bqno == 1 || $bqno == 9 || $bqno == 11 ){ ?>\r\n        <li class=\\\"subNav subNav<?php if( $bqno == 1 ){ echo 10;}elseif( $bqno == 9){ echo 8;}else{ echo 9;}?>\\\"><a href=\\\"<?=$public_r[newsurl]?><?=$bqr[\\\'classpath\\\']?>\\\"><i></i> <span data-txt=\\\"<?=$bqr[\\\'classname\\\']?>\\\"></span> </a>\r\n          <div class=\\\"subMenu subMenu<?=$bqno?> clearfix\\\">\r\n            <div class=\\\"aside fl\\\">\r\n              <div class=\\\"subMenu-Logo subMenu-Logo<?=$bqno?>\\\"> <i></i>\r\n              <h6><?=$bqr[\\\'classname\\\']?></h6>\r\n              <p><?=$bqr[\\\'bname\\\']?></p>\r\n              </div>\r\n            </div>\r\n            <div class=\\\"bside fl\\\">\r\n              <div class=\\\"inner fl\\\">\r\n                <dl class=\\\"clearfix fl\\\">\r\n                  <dd class=\\\"clearfix\\\">\r\n                   <?php $sql = $empire->query(\\\"select title,titleurl,lastdotime,classid from {$dbtbpre}ecms_news where classid = \\\'$bqr[classid]\\\' order by id desc limit 6\\\");while( $row = $empire -> fetch($sql) ){ ?>\r\n                    <a href=\\\"<?=$row[\\\'titleurl\\\']?>\\\" target=\\\"_blank\\\"><?=$row[\\\'title\\\']?></a>\r\n                   <?php } ?>\r\n                  </dd> \r\n                </dl>\r\n              </div>     \r\n            </div>\r\n            <div class=\\\"cside fr\\\"> \r\n              <?php $sql = $empire -> query(\\\"select titlepic,classid from {$dbtbpre}ecms_news where classid = \\\'$bqr[classid]\\\' order by id desc limit 2\\\");while( $row = $empire -> fetch( $sql ) ){?>\r\n                  <img src=\\\"<?=$row[\\\'titlepic\\\']?>\\\" width=\\\"321\\\" height=\\\"248\\\"/> \r\n              <?php } ?>    \r\n            </div>\r\n          </div>\r\n        </li>\r\n      <?php } else { ?>\r\n        <li class=\\\"subNav subNav<?php if( $bqno == 7){ echo 7;}elseif( $bqno == 8 ){ echo 6;}elseif( $bqno == 10 ){ echo 12; }else{ echo $bqno-1;}?>\\\"><a href=\\\"<?=$bqr[\\\'classpath\\\']?>\\\"><i></i> <span data-txt=\\\"<?=$bqr[\\\'classname\\\']?>\\\"></span></a>\r\n          <div class=\\\"subMenu subMenu<?=$bqno?> clearfix\\\">\r\n            <div class=\\\"aside fl\\\">\r\n              <div class=\\\"subMenu-Logo subMenu-Logo<?=$bqno?>\\\"> <i></i>\r\n                <h6><?=$bqr[\\\'classname\\\']?></h6>\r\n                <p><?=$bqr[\\\'bname\\\']?></p>\r\n              </div>\r\n            </div>\r\n            <div class=\\\"bside fl\\\">\r\n              <div class=\\\"inner fl\\\">\r\n              <?php $sql = $empire -> query(\\\"select classid,classname,classpath,bclassid from {$dbtbpre}enewsclass where bclassid = \\\'$bqr[classid]\\\' order by myorder limit 6\\\"); while( $row = $empire -> fetch( $sql ) ){ ?>\r\n                <dl class=\\\"clearfix fl\\\">\r\n                  <dt><a href=\\\"<?=$row[\\\'classpath\\\']?>\\\"><?=$row[\\\'classname\\\']?></a></dt> \r\n                  <?php $sql2 = $empire -> query(\\\"select title,titleurl,classid from {$dbtbpre}ecms_news where classid= \\\'$row[classid]\\\' order by lastdotime desc limit 6\\\");while( $row2 = $empire ->fetch($sql2) ){ ?>\r\n                    <dd class=\\\"clearfix\\\">\r\n                       <a href=\\\"<?=$row2[\\\'titleurl\\\']?>\\\" target=\\\"_blank\\\"><?=$row2[\\\'title\\\']?></a>\r\n                    </dd> \r\n                  <?php } ?>  \r\n                </dl>\r\n                <?php } ?>\r\n              </div>     \r\n            </div>\r\n            <div class=\\\"cside fr\\\"> \r\n              <?php $sql3 = (\\\"select classimg from {$dbtbpre}enewsclass where classid= \\\'$bqr[classid]\\\' order by myorder desc \\\");$row3 = $empire -> fetch1($sql3); ?>\r\n                <img src=\\\"<?php echo $row3[\\\'classimg\\\'];?>\\\" width=\\\"321\\\" height=\\\"248\\\"/>\r\n            </div>\r\n          </div>\r\n        </li>\r\n      <?php } ?>\r\n       [/e:loop]  \r\n    </ul>\r\n</div>\r\n', '0', '0', '0');
INSERT INTO `phome_enewstempvar` VALUES ('9', 'expert', '专家', '<div class=\\\"ey_zjd\\\">\r\n<div class=\\\"ey_abouts\\\"><img src=\\\"http://www.nclaimei.com/expert/images/zj_01.jpg\\\"></div>\r\n<div class=\\\"ey_list\\\" style=\\\"width: 7115px;\\\">\r\n<div class=\\\"ey_zj\\\" style=\\\"width: 1423px;\\\">\r\n<div class=\\\"ey_zjlef\\\"><img src=\\\"http://www.nclaimei.com/expert/images/zj_2.jpg\\\"> </div>\r\n<div class=\\\"ey_zjrin\\\"><b style=\\\"font-size:36px; color:;\\\">覃耀锋|</b><b style=\\\" font-size:28px;\\\">技术副院长</b>\r\n<div class=\\\"ey_zjcj\\\">\r\n南昌莱美美容医院技术副院长；<br>\r\n中国医师协会整形美容分会成员；<br>\r\n中国修复重建外科学会成员； <br>\r\n中国十佳青年技术派杰出整形医师； \r\n</div>\r\n<div class=\\\"ey_zjsc\\\">\r\n擅长项目:五官精细化整形<br>\r\n<div class=\\\"ey_zjc\\\">\r\n360°水动力螺旋吸脂 <br>\r\nU弧立体美胸<br>\r\n注射微整形等\r\n</div> \r\n</div>\r\n<a href=\\\"javascript:void(0)\\\" onclick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\">\r\n<div class=\\\"ey_zjim\\\"><img src=\\\"http://www.nclaimei.com/expert/images/zj_02.jpg\\\"></div></a>\r\n</div>\r\n</div>\r\n<div class=\\\"ey_zj\\\" style=\\\"width: 1423px;\\\">\r\n<div class=\\\"ey_zjlef\\\"><img src=\\\"http://www.nclaimei.com/expert/images/zj_7.jpg\\\"> </div>\r\n<div class=\\\"ey_zjrin\\\"><b style=\\\"font-size:36px; color:;\\\">廖洪越|</b><b style=\\\" font-size:28px;\\\">副主任医师</b>\r\n<div class=\\\"ey_zjcj\\\">\r\n南昌莱美美容医院副主任医师；<br>\r\n医学博士；<br>\r\n硕士研究生导师；\r\n</div>\r\n<div class=\\\"ey_zjsc\\\">\r\n擅长项目:上睑下垂矫正术<br>\r\n<div class=\\\"ey_zjc\\\">\r\n鼻部综合塑形 <br>\r\n唇裂二期畸形的整复<br>\r\n自体脂肪隆胸等\r\n</div> \r\n</div>\r\n<a href=\\\"javascript:void(0)\\\" onclick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\">\r\n<div class=\\\"ey_zjim\\\"><img src=\\\"http://www.nclaimei.com/expert/images/zj_02.jpg\\\"></div></a>\r\n</div>\r\n</div>\r\n<div class=\\\"ey_zj\\\" style=\\\"width: 1423px;\\\">\r\n<div class=\\\"ey_zjlef\\\"><img src=\\\"http://www.nclaimei.com/expert/images/zj_8.jpg\\\"> </div>\r\n<div class=\\\"ey_zjrin\\\"><b style=\\\"font-size:36px; color:;\\\">刘波涛|</b><b style=\\\" font-size:28px;\\\">皮肤科主任</b>\r\n<div class=\\\"ey_zjcj\\\">\r\n国内资深皮肤专家<br>\r\n中国激光美肤实力派代表；<br>\r\n明星医学美肤私人顾问；<br>\r\n电视台众多主持人美肤特约顾问 <br>\r\n韩国首尔整形美容医院合作专家\r\n</div>\r\n<div class=\\\"ey_zjsc\\\">\r\n擅长项目:双核光祛斑；<br>\r\n<div class=\\\"ey_zjc\\\">\r\nopt王者风范美肤； <br>\r\n解决各种不良皮肤美容后遗症等； \r\n</div> \r\n</div>\r\n<a href=\\\"javascript:void(0)\\\" onclick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\">\r\n<div class=\\\"ey_zjim\\\"><img src=\\\"http://www.nclaimei.com/expert/images/zj_02.jpg\\\"></div></a>\r\n</div>\r\n</div>\r\n<div class=\\\"ey_zj\\\" style=\\\"width: 1423px;\\\">\r\n<div class=\\\"ey_zjlef\\\"><img src=\\\"http://www.nclaimei.com/expert/images/zj_5.jpg\\\"> </div>\r\n<div class=\\\"ey_zjrin\\\"><b style=\\\"font-size:36px; color:;\\\">冯宇明|</b><b style=\\\" font-size:28px;\\\">皮肤科医师</b>\r\n<div class=\\\"ey_zjcj\\\">\r\n莱美美容医院皮肤科执行医师:<br>\r\n莱美抗衰老专家；<br>\r\n中国医师协会美容整形分会会员；<br>\r\n中国激光美容协会会员\r\n</div>\r\n<div class=\\\"ey_zjsc\\\">\r\n擅长项目:面部年轻化；<br>\r\n<div class=\\\"ey_zjc\\\">\r\n嫩肤美白；<br>\r\n水光注射；等\r\n</div> \r\n</div>\r\n<a href=\\\"javascript:void(0)\\\" onclick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\">\r\n<div class=\\\"ey_zjim\\\"><img src=\\\"http://www.nclaimei.com/expert/images/zj_02.jpg\\\"></div></a>\r\n</div>\r\n</div>\r\n<div class=\\\"ey_zj\\\" style=\\\"width: 1423px;\\\">\r\n<div class=\\\"ey_zjlef\\\"><img src=\\\"http://www.nclaimei.com/expert/images/zj_9.jpg\\\"> </div>\r\n<div class=\\\"ey_zjrin\\\"><b style=\\\"font-size:36px; color:;\\\">龚衍寿|</b><b style=\\\" font-size:28px;\\\">个性化无痛整形专家</b>\r\n<div class=\\\"ey_zjcj\\\">\r\n莱美个性化无痛整形定制学科带头人<br>\r\n国内首批倡导安全无痛整形专家；<br>\r\n中华医学会疼痛学会会员；<br>\r\n中华医学会麻醉学分会会员\r\n</div>\r\n<div class=\\\"ey_zjsc\\\">\r\n擅长项目:无痛溶质减肥；<br>\r\n<div class=\\\"ey_zjc\\\">\r\n双眼皮； <br>\r\n面部线雕年轻化等\r\n</div> \r\n</div>\r\n<a href=\\\"javascript:void(0)\\\" onclick=\\\"openZoosUrl();return false;\\\" target=\\\"_blank\\\">\r\n<div class=\\\"ey_zjim\\\"><img src=\\\"http://www.nclaimei.com/expert/images/zj_02.jpg\\\"></div></a>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\\\"ey_left\\\"><img src=\\\"http://www.nclaimei.com/expert/images/ler_03.jpg\\\"></div>\r\n<div class=\\\"ey_ring\\\"><img src=\\\"http://www.nclaimei.com/expert/images/ler_05.jpg\\\"></div>\r\n</div>', '0', '0', '0');
INSERT INTO `phome_enewstempvar` VALUES ('10', 'nav', '当前位置', '[linknav]$GLOBALS[navclassid][/linknav]', '0', '0', '0');

-- ----------------------------
-- Table structure for `phome_enewstempvarclass`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewstempvarclass`;
CREATE TABLE `phome_enewstempvarclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewstempvarclass
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewstogzts`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewstogzts`;
CREATE TABLE `phome_enewstogzts` (
  `togid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keyboard` varchar(255) NOT NULL DEFAULT '',
  `searchf` varchar(255) NOT NULL DEFAULT '',
  `query` text NOT NULL,
  `specialsearch` varchar(255) NOT NULL DEFAULT '',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `retype` tinyint(1) NOT NULL DEFAULT '0',
  `startday` varchar(20) NOT NULL DEFAULT '',
  `endday` varchar(20) NOT NULL DEFAULT '',
  `startid` int(10) unsigned NOT NULL DEFAULT '0',
  `endid` int(10) unsigned NOT NULL DEFAULT '0',
  `pline` int(11) NOT NULL DEFAULT '0',
  `doecmszt` tinyint(1) NOT NULL DEFAULT '0',
  `togztname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`togid`),
  KEY `togztname` (`togztname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewstogzts
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsuser`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsuser`;
CREATE TABLE `phome_enewsuser` (
  `userid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `rnd` varchar(20) NOT NULL DEFAULT '',
  `adminclass` mediumtext NOT NULL,
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `styleid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `filelevel` tinyint(1) NOT NULL DEFAULT '0',
  `salt` varchar(8) NOT NULL DEFAULT '',
  `loginnum` int(10) unsigned NOT NULL DEFAULT '0',
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(20) NOT NULL DEFAULT '',
  `truename` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(120) NOT NULL DEFAULT '',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pretime` int(10) unsigned NOT NULL DEFAULT '0',
  `preip` varchar(20) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `addip` varchar(20) NOT NULL DEFAULT '',
  `userprikey` varchar(50) NOT NULL DEFAULT '',
  `salt2` varchar(20) NOT NULL DEFAULT '',
  `lastipport` varchar(6) NOT NULL DEFAULT '',
  `preipport` varchar(6) NOT NULL DEFAULT '',
  `addipport` varchar(6) NOT NULL DEFAULT '',
  `uprnd` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsuser
-- ----------------------------
INSERT INTO `phome_enewsuser` VALUES ('1', 'admin', 'ef21c07348ad676bbbbe6c1218f3044f', 'b1Gc5UekGFrjvYzFU8Be', '', '1', '0', '1', '0', 'b8bYxKFg', '35', '1506085810', '::1', '', '', '0', '1506068692', '::1', '1505868030', '::1', 'bHZHc9Ptaa27oDslVIDoNJYAh2JUNeKRvCQbNkRzHZb58Lfe', 'qdXgxeVnyQoQ1CefYKrw', '55818', '57846', '58141', '');

-- ----------------------------
-- Table structure for `phome_enewsuseradd`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsuseradd`;
CREATE TABLE `phome_enewsuseradd` (
  `userid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `equestion` tinyint(4) NOT NULL DEFAULT '0',
  `eanswer` varchar(32) NOT NULL DEFAULT '',
  `openip` text NOT NULL,
  `certkey` varchar(60) NOT NULL DEFAULT '',
  `certtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsuseradd
-- ----------------------------
INSERT INTO `phome_enewsuseradd` VALUES ('1', '0', '', '', '', '0');

-- ----------------------------
-- Table structure for `phome_enewsuserclass`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsuserclass`;
CREATE TABLE `phome_enewsuserclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsuserclass
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsuserjs`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsuserjs`;
CREATE TABLE `phome_enewsuserjs` (
  `jsid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `jsname` varchar(60) NOT NULL DEFAULT '',
  `jssql` text NOT NULL,
  `jstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `jsfilename` varchar(120) NOT NULL DEFAULT '',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`jsid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsuserjs
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsuserjsclass`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsuserjsclass`;
CREATE TABLE `phome_enewsuserjsclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsuserjsclass
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsuserlist`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsuserlist`;
CREATE TABLE `phome_enewsuserlist` (
  `listid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `listname` varchar(60) NOT NULL DEFAULT '',
  `pagetitle` varchar(120) NOT NULL DEFAULT '',
  `filepath` varchar(120) NOT NULL DEFAULT '',
  `filetype` varchar(12) NOT NULL DEFAULT '',
  `totalsql` text NOT NULL,
  `listsql` text NOT NULL,
  `maxnum` int(11) NOT NULL DEFAULT '0',
  `lencord` int(11) NOT NULL DEFAULT '0',
  `listtempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pagekeywords` varchar(255) NOT NULL DEFAULT '',
  `pagedescription` varchar(255) NOT NULL DEFAULT '',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`listid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsuserlist
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsuserlistclass`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsuserlistclass`;
CREATE TABLE `phome_enewsuserlistclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsuserlistclass
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsuserloginck`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsuserloginck`;
CREATE TABLE `phome_enewsuserloginck` (
  `userid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `andauth` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsuserloginck
-- ----------------------------
INSERT INTO `phome_enewsuserloginck` VALUES ('1', '3ebc23743ecb01df3c5346af995f8ae8');

-- ----------------------------
-- Table structure for `phome_enewsvote`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsvote`;
CREATE TABLE `phome_enewsvote` (
  `voteid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL DEFAULT '',
  `votenum` int(10) unsigned NOT NULL DEFAULT '0',
  `voteip` mediumtext NOT NULL,
  `votetext` text NOT NULL,
  `voteclass` tinyint(1) NOT NULL DEFAULT '0',
  `doip` tinyint(1) NOT NULL DEFAULT '0',
  `votetime` int(10) unsigned NOT NULL DEFAULT '0',
  `dotime` date NOT NULL DEFAULT '0000-00-00',
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`voteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsvote
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsvotemod`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsvotemod`;
CREATE TABLE `phome_enewsvotemod` (
  `voteid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL DEFAULT '',
  `votetext` text NOT NULL,
  `voteclass` tinyint(1) NOT NULL DEFAULT '0',
  `doip` tinyint(1) NOT NULL DEFAULT '0',
  `dotime` date NOT NULL DEFAULT '0000-00-00',
  `tempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `votenum` int(10) unsigned NOT NULL DEFAULT '0',
  `ysvotename` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`voteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsvotemod
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsvotetemp`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsvotetemp`;
CREATE TABLE `phome_enewsvotetemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  PRIMARY KEY (`tempid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsvotetemp
-- ----------------------------
INSERT INTO `phome_enewsvotetemp` VALUES ('1', '默认投票模板', '<table width=100% border=0 align=center cellpadding=3 cellspacing=0><form name=enewsvote method=POST action=\'[!--vote.action--]\' target=_blank><tr><td><strong>[!--title--]</strong></td></tr><input type=hidden name=voteid value=\'[!--voteid--]\'><input type=hidden name=enews value=AddVote>\r\n[!--empirenews.listtemp--]\r\n<tr><td>[!--vote.box--]&nbsp;[!--vote.name--]</td></tr>\r\n[!--empirenews.listtemp--]\r\n<tr><td align=center><input type=submit name=submit value=投票>&nbsp;&nbsp;<input type=button name=button value=查看结果 onclick=javascript:window.open(\'[!--vote.view--]\',\'\',\'width=[!--width--],height=[!--height--],scrollbars=yes\');></td></tr></form></table>');
INSERT INTO `phome_enewsvotetemp` VALUES ('2', '默认信息投票模板', '<table width=\\\'100%\\\' border=0 align=center cellpadding=3 cellspacing=0><form name=enewsvote method=POST action=\\\'[!--news.url--]e/enews/index.php\\\' target=_blank><tr><td><strong>[!--title--]</strong></td></tr><input type=hidden name=id value=\\\'[!--id--]\\\'><input type=hidden name=classid value=\\\'[!--classid--]\\\'><input type=hidden name=enews value=AddInfoVote>\r\n[!--empirenews.listtemp--]\r\n<tr><td>[!--vote.box--]&nbsp;[!--vote.name--]</td></tr>\r\n[!--empirenews.listtemp--]\r\n<tr><td align=center><input type=submit name=submit value=投票>&nbsp;&nbsp;<input type=button name=button value=查看结果 onclick=javascript:window.open(\\\'[!--news.url--]e/public/vote/?classid=[!--classid--]&id=[!--id--]\\\',\\\'\\\',\\\'width=[!--width--],height=[!--height--],scrollbars=yes\\\');></td></tr></form></table>');

-- ----------------------------
-- Table structure for `phome_enewswapstyle`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewswapstyle`;
CREATE TABLE `phome_enewswapstyle` (
  `styleid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `stylename` varchar(60) NOT NULL DEFAULT '',
  `path` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`styleid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewswapstyle
-- ----------------------------
INSERT INTO `phome_enewswapstyle` VALUES ('1', '新闻模板', '1');
INSERT INTO `phome_enewswapstyle` VALUES ('2', '分类信息模板', '2');

-- ----------------------------
-- Table structure for `phome_enewswfinfo`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewswfinfo`;
CREATE TABLE `phome_enewswfinfo` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `wfid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tid` int(10) unsigned NOT NULL DEFAULT '0',
  `groupid` text NOT NULL,
  `userclass` text NOT NULL,
  `username` text NOT NULL,
  `checknum` tinyint(4) NOT NULL DEFAULT '0',
  `tstatus` varchar(30) NOT NULL DEFAULT '0',
  `checktno` tinyint(4) NOT NULL DEFAULT '0',
  KEY `id` (`id`,`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewswfinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewswfinfolog`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewswfinfolog`;
CREATE TABLE `phome_enewswfinfolog` (
  `logid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `wfid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tid` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `checktime` int(10) unsigned NOT NULL DEFAULT '0',
  `checktext` text NOT NULL,
  `checknum` tinyint(4) NOT NULL DEFAULT '0',
  `checktype` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`logid`),
  KEY `id` (`id`,`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewswfinfolog
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewswords`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewswords`;
CREATE TABLE `phome_enewswords` (
  `wordid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `oldword` varchar(255) NOT NULL DEFAULT '',
  `newword` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`wordid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewswords
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsworkflow`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsworkflow`;
CREATE TABLE `phome_enewsworkflow` (
  `wfid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `wfname` varchar(60) NOT NULL DEFAULT '',
  `wftext` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `adduser` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`wfid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsworkflow
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsworkflowitem`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsworkflowitem`;
CREATE TABLE `phome_enewsworkflowitem` (
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wfid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tname` varchar(60) NOT NULL DEFAULT '',
  `tno` int(11) NOT NULL DEFAULT '0',
  `ttext` varchar(255) NOT NULL DEFAULT '',
  `groupid` text NOT NULL,
  `userclass` text NOT NULL,
  `username` text NOT NULL,
  `lztype` tinyint(1) NOT NULL DEFAULT '0',
  `tbdo` int(10) unsigned NOT NULL DEFAULT '0',
  `tddo` int(10) unsigned NOT NULL DEFAULT '0',
  `tstatus` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`tid`),
  KEY `wfid` (`wfid`),
  KEY `tno` (`tno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsworkflowitem
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewswriter`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewswriter`;
CREATE TABLE `phome_enewswriter` (
  `wid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `writer` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`wid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewswriter
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsyh`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsyh`;
CREATE TABLE `phome_enewsyh` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `yhname` varchar(30) NOT NULL DEFAULT '',
  `yhtext` varchar(255) NOT NULL DEFAULT '',
  `hlist` int(11) NOT NULL DEFAULT '0',
  `qlist` int(11) NOT NULL DEFAULT '0',
  `bqnew` int(11) NOT NULL DEFAULT '0',
  `bqhot` int(11) NOT NULL DEFAULT '0',
  `bqpl` int(11) NOT NULL DEFAULT '0',
  `bqgood` int(11) NOT NULL DEFAULT '0',
  `bqfirst` int(11) NOT NULL DEFAULT '0',
  `bqdown` int(11) NOT NULL DEFAULT '0',
  `otherlink` int(11) NOT NULL DEFAULT '0',
  `qmlist` int(11) NOT NULL DEFAULT '0',
  `dobq` tinyint(1) NOT NULL DEFAULT '0',
  `dojs` tinyint(1) NOT NULL DEFAULT '0',
  `dosbq` tinyint(1) NOT NULL DEFAULT '0',
  `rehtml` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsyh
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewszt`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewszt`;
CREATE TABLE `phome_enewszt` (
  `ztid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `ztname` varchar(60) NOT NULL DEFAULT '',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `ztnum` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `listtempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ztpath` varchar(255) NOT NULL DEFAULT '',
  `zttype` varchar(10) NOT NULL DEFAULT '',
  `zturl` varchar(200) NOT NULL DEFAULT '',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `islist` tinyint(1) NOT NULL DEFAULT '0',
  `maxnum` int(11) NOT NULL DEFAULT '0',
  `reorder` varchar(50) NOT NULL DEFAULT '',
  `intro` text NOT NULL,
  `ztimg` varchar(255) NOT NULL DEFAULT '',
  `zcid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `showzt` tinyint(1) NOT NULL DEFAULT '0',
  `ztpagekey` varchar(255) NOT NULL DEFAULT '',
  `classtempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `usezt` tinyint(1) NOT NULL DEFAULT '0',
  `yhid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `checkpl` tinyint(1) NOT NULL DEFAULT '0',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `usernames` varchar(255) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `pltempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ztid`),
  KEY `classid` (`classid`),
  KEY `zcid` (`zcid`),
  KEY `usezt` (`usezt`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewszt
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsztadd`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsztadd`;
CREATE TABLE `phome_enewsztadd` (
  `ztid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `classtext` mediumtext NOT NULL,
  PRIMARY KEY (`ztid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsztadd
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsztclass`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsztclass`;
CREATE TABLE `phome_enewsztclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsztclass
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsztf`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsztf`;
CREATE TABLE `phome_enewsztf` (
  `fid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `f` varchar(30) NOT NULL DEFAULT '',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `fform` varchar(20) NOT NULL DEFAULT '',
  `fhtml` mediumtext NOT NULL,
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ftype` varchar(30) NOT NULL DEFAULT '',
  `flen` varchar(20) NOT NULL DEFAULT '',
  `fvalue` text NOT NULL,
  `fformsize` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsztf
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewsztinfo`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewsztinfo`;
CREATE TABLE `phome_enewsztinfo` (
  `zid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ztid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `mid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `isgood` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`zid`),
  KEY `ztid` (`ztid`),
  KEY `cid` (`cid`),
  KEY `classid` (`classid`),
  KEY `id` (`id`),
  KEY `newstime` (`newstime`),
  KEY `mid` (`mid`),
  KEY `isgood` (`isgood`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewsztinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewszttype`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewszttype`;
CREATE TABLE `phome_enewszttype` (
  `cid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ztid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cname` varchar(20) NOT NULL DEFAULT '',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `islist` tinyint(1) NOT NULL DEFAULT '0',
  `listtempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `maxnum` int(10) unsigned NOT NULL DEFAULT '0',
  `tnum` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `reorder` varchar(50) NOT NULL DEFAULT '',
  `ttype` varchar(10) NOT NULL DEFAULT '',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `ztid` (`ztid`),
  KEY `myorder` (`myorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewszttype
-- ----------------------------

-- ----------------------------
-- Table structure for `phome_enewszttypeadd`
-- ----------------------------
DROP TABLE IF EXISTS `phome_enewszttypeadd`;
CREATE TABLE `phome_enewszttypeadd` (
  `cid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `classtext` mediumtext NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phome_enewszttypeadd
-- ----------------------------
