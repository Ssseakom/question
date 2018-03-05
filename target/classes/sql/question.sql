/*
Navicat MySQL Data Transfer

Source Server         : bcdata
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : question

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-03-04 12:20:52
*/

SET FOREIGN_KEY_CHECKS=0;

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
