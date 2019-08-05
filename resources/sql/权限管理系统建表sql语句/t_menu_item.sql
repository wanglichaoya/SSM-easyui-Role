/*
Navicat MySQL Data Transfer

Source Server         : one
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : mybatis_test

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-08-02 17:31:25
*/

SET
FOREIGN_KEY_CHECKS
=
0;

-- ----------------------------
-- Table structure for t_menu_item
-- ----------------------------
DROP TABLE IF EXISTS `t_menu_item`;
CREATE TABLE `t_menu_item`
(
  `M_Id`    int(11) DEFAULT NULL COMMENT '资源id',
  `M_Pid`   int(11) DEFAULT NULL,
  `M_Name`  varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `M_Url`   varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `M_Icon`  varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `M_MeMo`  varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '菜单的显示顺序有这个字段来决定',
  `M_Pin`   varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `M_State` varchar(10) COLLATE utf8_bin  DEFAULT NULL COMMENT '菜单展开和关闭'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE =utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_menu_item
-- ----------------------------
INSERT INTO `t_menu_item`
VALUES ('1', '0', '系统管理', '#', null, null, null, 'open');
INSERT INTO `t_menu_item`
VALUES ('2', '1', '用户管理', '/urlRouteJump/toLayout.action', null, null, null, 'open');
INSERT INTO `t_menu_item`
VALUES ('3', '1', '密码管理', '/urlRouteJump/toPwdPage.action', null, null, null, 'open');
INSERT INTO `t_menu_item`
VALUES ('4', '0', '会员管理', '#', null, null, null, 'close');
INSERT INTO `t_menu_item`
VALUES ('5', '4', '普通会员', '/urlRouteJump/toPutongVipPage.action', null, null, null, '');
INSERT INTO `t_menu_item`
VALUES ('6', '4', '超级会员', '/urlRouteJump/toUserMagPage.action', null, null, null, '');
INSERT INTO `t_menu_item`
VALUES ('7', '0', '医疗服务', '#', null, null, null, 'open');
INSERT INTO `t_menu_item`
VALUES ('8', '7', '医院', '/urlRouteJump/toUserMagPage.action', null, null, null, 'state');
