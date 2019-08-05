/*
Navicat MySQL Data Transfer

Source Server         : one
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : mybatis_test

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-08-02 17:31:42
*/

SET
FOREIGN_KEY_CHECKS
=
0;

-- ----------------------------
-- Table structure for t_roles
-- ----------------------------
DROP TABLE IF EXISTS `t_roles`;
CREATE TABLE `t_roles`
(
  `R_Id`   int(11) NOT NULL,
  `R_Name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '角色表'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE =utf8_bin;

-- ----------------------------
-- Records of t_roles
-- ----------------------------
INSERT INTO `t_roles`
VALUES ('1', '普通用户');
INSERT INTO `t_roles`
VALUES ('2', '系统管理员');
INSERT INTO `t_roles`
VALUES ('3', '质检员');
