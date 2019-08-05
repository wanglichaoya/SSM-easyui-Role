/*
Navicat MySQL Data Transfer

Source Server         : one
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : mybatis_test

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-08-02 17:32:00
*/

SET
FOREIGN_KEY_CHECKS
=
0;

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role`
(
  `U_id` int(11) NOT NULL COMMENT '用户角色表',
  `R_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE =utf8_bin;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role`
VALUES ('1', '1');
INSERT INTO `t_user_role`
VALUES ('2', '2');
INSERT INTO `t_user_role`
VALUES ('3', '3');
INSERT INTO `t_user_role`
VALUES ('4', '3');
INSERT INTO `t_user_role`
VALUES ('4', '1');
