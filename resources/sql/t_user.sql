/*
Navicat MySQL Data Transfer

Source Server         : papersystem
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : mybatis_test

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-07-04 17:49:11
*/

SET
FOREIGN_KEY_CHECKS
=
0;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`
(
  `id`       int(20) DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `age`      int(20) DEFAULT NULL,
  `sex`      varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `province` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `salary`   int(30) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE =utf8_bin;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user`
VALUES ('1', '张三', '123456', '20', '男', '河南', '10000');
INSERT INTO `t_user`
VALUES ('2', '李四', '123456', '18', '男', '上海', '3000');
