/*
Navicat MySQL Data Transfer

Source Server         : bcdata
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : question

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-03-06 08:07:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for answers
-- ----------------------------
DROP TABLE IF EXISTS `answers`;
CREATE TABLE `answers` (
  `AId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Uid` int(10) unsigned DEFAULT NULL COMMENT '用户id',
  `Qid` int(11) DEFAULT NULL COMMENT '问卷id',
  `Aresult` varchar(255) DEFAULT NULL COMMENT '结果',
  `Adate` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`AId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `Mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Mname` varchar(255) DEFAULT NULL,
  `Mpassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Mid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for questions
-- ----------------------------
DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `Qid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Qname` varchar(255) DEFAULT NULL COMMENT '问卷名称',
  `Qauthor` int(255) DEFAULT NULL COMMENT '问卷作者',
  `QstartDate` datetime NOT NULL COMMENT '开始日期',
  `QendDate` datetime NOT NULL COMMENT '结束日期',
  `Qtype` int(11) DEFAULT NULL COMMENT '问卷类型',
  PRIMARY KEY (`Qid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for title
-- ----------------------------
DROP TABLE IF EXISTS `title`;
CREATE TABLE `title` (
  `Tid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Qid` int(11) DEFAULT NULL COMMENT '问卷编号',
  `Tname` varchar(255) DEFAULT NULL COMMENT '题目名称',
  `Tselect1` varchar(255) DEFAULT NULL,
  `Tselect2` varchar(255) DEFAULT NULL,
  `Tselect3` varchar(255) DEFAULT NULL,
  `Tselect4` varchar(255) DEFAULT NULL,
  `Tselect5` varchar(255) DEFAULT NULL,
  `Tselect6` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for total
-- ----------------------------
DROP TABLE IF EXISTS `total`;
CREATE TABLE `total` (
  `Tid` int(11) NOT NULL,
  `Tdate` datetime DEFAULT NULL COMMENT '统计时间',
  `Tconditions` varchar(255) DEFAULT NULL COMMENT '统计条件',
  `Tresult` varchar(255) DEFAULT NULL COMMENT '统计结果',
  `Qid` int(11) DEFAULT NULL COMMENT '问卷编号',
  `Uid` int(11) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`Tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `Uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Uname用户名` varchar(255) DEFAULT NULL,
  `Upassword` varchar(255) DEFAULT NULL COMMENT '密码',
  `sex` char(10) DEFAULT NULL COMMENT '性别',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `phone` varchar(255) DEFAULT NULL COMMENT '电话',
  `head` varchar(255) DEFAULT NULL COMMENT '头像（存url）',
  PRIMARY KEY (`Uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
