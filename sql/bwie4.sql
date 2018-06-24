/*
Navicat MySQL Data Transfer

Source Server         : 梦想的天空
Source Server Version : 50622
Source Host           : 127.0.0.1:3306
Source Database       : bwie4

Target Server Type    : MYSQL
Target Server Version : 50622
File Encoding         : 65001

Date: 2018-06-24 23:31:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_teacher
-- ----------------------------
DROP TABLE IF EXISTS `t_teacher`;
CREATE TABLE `t_teacher` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `sex` varchar(4) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `hobby` varchar(200) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_teacher
-- ----------------------------
INSERT INTO `t_teacher` VALUES ('1', 'tom1-123', '男', '2000-06-09', '唱歌,跳舞,爬山,读书', '河北省张家口市');
INSERT INTO `t_teacher` VALUES ('3', 'tom3', '男', '2000-06-01', '唱歌,跳舞,爬山', '河北省保定市');
INSERT INTO `t_teacher` VALUES ('4', 'tom4', '男', '2000-06-01', '唱歌,跳舞,爬山,读书,其他', '河北省保定市');
INSERT INTO `t_teacher` VALUES ('5', 'tom5', '女', '2000-06-01', '唱歌,跳舞,爬山', '河北省保定市');
INSERT INTO `t_teacher` VALUES ('6', 'tom6', '女', '2000-06-01', '唱歌,跳舞,爬山', '河北省保定市');
INSERT INTO `t_teacher` VALUES ('7', 'tom7', '男', '2000-06-01', '唱歌,跳舞,爬山', '河北省保定市');
INSERT INTO `t_teacher` VALUES ('8', 'tom8', '女', '2000-06-01', '唱歌,跳舞,爬山', '河北省保定市');
INSERT INTO `t_teacher` VALUES ('9', 'tom9', '女', '2000-06-01', '唱歌,跳舞,爬山', '河北省保定市');
INSERT INTO `t_teacher` VALUES ('10', 'tom10', '男', '2000-06-01', '唱歌,跳舞,爬山', '河北省保定市');
INSERT INTO `t_teacher` VALUES ('11', 'tom11', '男', '2002-06-19', '唱歌,跳舞,爬山', '河北省保定市');
INSERT INTO `t_teacher` VALUES ('12', 'tom12', '男', '2000-06-01', '唱歌,跳舞,爬山,读书', '河北省保定市');
INSERT INTO `t_teacher` VALUES ('13', 'tom13', '男', '2000-06-01', '唱歌,跳舞,爬山', '河北省保定市');
INSERT INTO `t_teacher` VALUES ('14', 'tom14', '男', '2000-06-01', '唱歌,跳舞,爬山', '河北省保定市');
INSERT INTO `t_teacher` VALUES ('15', 'tom15', '男', '2000-06-01', '唱歌,跳舞,爬山', '河北省保定市');
INSERT INTO `t_teacher` VALUES ('16', '孙悟空', '男', '2000-07-01', '筋斗云,吃桃子,探险', '花果山');
INSERT INTO `t_teacher` VALUES ('17', '猪八戒', '男', '2000-05-04', '吃东西', '高老庄');
INSERT INTO `t_teacher` VALUES ('18', '沙僧', '男', '1997-07-01', '挑担子', '流沙河');
INSERT INTO `t_teacher` VALUES ('19', '张无忌', '男', '2018-06-21', '唱歌', '光明顶');
INSERT INTO `t_teacher` VALUES ('20', '金毛狮王', '女', '2018-06-22', '跳舞,爬山', '光明顶');
INSERT INTO `t_teacher` VALUES ('21', '白眉鹰王', '男', '1996-06-19', '跳舞,读书,其他', '光明顶');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'admin', 'admin');
