/*
Navicat MySQL Data Transfer

Source Server         : one
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : mybatis_test

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-08-02 17:31:52
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
  `id`       int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `age`      int(20) DEFAULT NULL,
  `sex`      varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `province` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `salary`   int(30) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE =utf8_bin;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user`
VALUES ('1', '王立朝', '123456', '20', '男', '河南', '10000');
INSERT INTO `t_user`
VALUES ('3', '王朝霞', '123456', '20', '男', '河北', '2000');
INSERT INTO `t_user`
VALUES ('4', '王石晨', '123456', '20', '男', '河南', '10000');
INSERT INTO `t_user`
VALUES ('5', '李四', '123456', '18', '男', '上海', '3000');
INSERT INTO `t_user`
VALUES ('6', '张三', '123456', '20', '男', '河南', '10000');
INSERT INTO `t_user`
VALUES ('7', '张三', '123456', '20', '男', '河南', '10000');
INSERT INTO `t_user`
VALUES ('8', '李四', '123456', '18', '男', '上海', '3000');
INSERT INTO `t_user`
VALUES ('9', 'adfas', 'aasdf', '20', '男', '河北', '2000');
INSERT INTO `t_user`
VALUES ('10', '张三', '123456', '20', '男', '河南', '10000');
INSERT INTO `t_user`
VALUES ('11', '李四', '123456', '18', '男', '上海', '3000');
INSERT INTO `t_user`
VALUES ('12', '张三', '123456', '20', '男', '河南', '10000');
INSERT INTO `t_user`
VALUES ('13', '张三', '123456', '20', '男', '河南', '10000');
INSERT INTO `t_user`
VALUES ('14', '李四', '123456', '18', '男', '上海', '3000');
INSERT INTO `t_user`
VALUES ('15', 'adfas', 'aasdf', '20', '男', '河北', '2000');
INSERT INTO `t_user`
VALUES ('16', '张三', '123456', '20', '男', '河南', '10000');
INSERT INTO `t_user`
VALUES ('17', '李四', '123456', '18', '男', '上海', '3000');
INSERT INTO `t_user`
VALUES ('18', '张三', '123456', '20', '男', '河南', '10000');
INSERT INTO `t_user`
VALUES ('19', '张三', '123456', '20', '男', '河南', '10000');
INSERT INTO `t_user`
VALUES ('20', '李四', '123456', '18', '男', '上海', '3000');
INSERT INTO `t_user`
VALUES ('21', 'adfas', 'aasdf', '20', '男', '河北', '2000');
INSERT INTO `t_user`
VALUES ('22', '张三', '123456', '20', '男', '河南', '10000');
INSERT INTO `t_user`
VALUES ('23', '李四', '123456', '18', '男', '上海', '3000');
INSERT INTO `t_user`
VALUES ('24', '张三', '123456', '20', '男', '河南', '10000');
INSERT INTO `t_user`
VALUES ('25', '张军', null, '22', '男', '上海', '25000');
INSERT INTO `t_user`
VALUES ('50', '张阳阳', null, '22', '男', '25', '3000');
INSERT INTO `t_user`
VALUES ('51', '张三', null, '22', '男', '上海', '25000');
INSERT INTO `t_user`
VALUES ('52', '张阳阳', null, '33', '男', '上海', '25000');
INSERT INTO `t_user`
VALUES ('53', '张军', null, '33', '女', '上海', '25000');
INSERT INTO `t_user`
VALUES ('54', '张阳阳', null, '22', '男', '上海', '3000');
INSERT INTO `t_user`
VALUES ('55', '张军', null, '22', '男', '上海', '3000');
INSERT INTO `t_user`
VALUES ('56', '张三', null, '22', '女', '上海', '25000');
