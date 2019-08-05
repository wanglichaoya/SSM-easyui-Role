/*
Navicat MySQL Data Transfer

Source Server         : one
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : mybatis_test

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-08-02 17:31:35
*/

SET
FOREIGN_KEY_CHECKS
=
0;

-- ----------------------------
-- Table structure for t_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_role_menu`;
CREATE TABLE `t_role_menu`
(
  `R_Id`       int(11) DEFAULT NULL COMMENT '角色资源表',
  `M_Id`       int(11) DEFAULT NULL,
  `R_Disabled` varchar(255) COLLATE utf8_bin DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE =utf8_bin;

-- ----------------------------
-- Records of t_role_menu
-- ----------------------------
INSERT INTO `t_role_menu`
VALUES ('1', '1', '');
INSERT INTO `t_role_menu`
VALUES ('1', '2', '');
INSERT INTO `t_role_menu`
VALUES ('1', '3', '');
INSERT INTO `t_role_menu`
VALUES ('1', '4', '');
INSERT INTO `t_role_menu`
VALUES ('1', '5', '');
INSERT INTO `t_role_menu`
VALUES ('1', '6', '');
INSERT INTO `t_role_menu`
VALUES ('2', '2', '');
INSERT INTO `t_role_menu`
VALUES ('2', '3', '');
INSERT INTO `t_role_menu`
VALUES ('3', '4', '');
INSERT INTO `t_role_menu`
VALUES ('3', '5', '');
