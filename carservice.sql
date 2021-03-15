/*
 Navicat MySQL Data Transfer

 Source Server         : aliECS
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : 116.62.25.133:3306
 Source Schema         : carservice

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 15/03/2021 12:58:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for car_cart
-- ----------------------------
DROP TABLE IF EXISTS `car_cart`;
CREATE TABLE `car_cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `goods` varchar(200) DEFAULT NULL,
  `goods_desc` varchar(500) DEFAULT NULL,
  `pic` varchar(300) DEFAULT NULL,
  `prices` bigint(200) DEFAULT NULL,
  `nums` bigint(20) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of car_cart
-- ----------------------------
BEGIN;
INSERT INTO `car_cart` VALUES (1, 1, '方向盘', '牛逼的方向盘', 'http://myblogoss.aimezhao.online/3.jpg\r\n', 100, 1, '2020-06-02 15:56:32', '2020-06-02 15:56:32');
COMMIT;

-- ----------------------------
-- Table structure for car_content
-- ----------------------------
DROP TABLE IF EXISTS `car_content`;
CREATE TABLE `car_content` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `sub_title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `title_desc` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `url` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `pic` varchar(300) CHARACTER SET utf8 DEFAULT NULL,
  `pic2` varchar(300) CHARACTER SET utf8 DEFAULT NULL,
  `content` text CHARACTER SET utf8,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of car_content
-- ----------------------------
BEGIN;
INSERT INTO `car_content` VALUES (28, 89, ' 轮播广告', '1', ' 轮播大广告', NULL, 'https://supers1.oss-cn-hangzhou.aliyuncs.com/slider-1.jpg\r\n', NULL, ' 标题', '2020-04-02 17:04:13', '2020-04-02 17:04:13');
INSERT INTO `car_content` VALUES (32, 89, ' 轮播广告', '2', '轮播大广告', '', '/static/upload/681dcb66-2f5d-4174-a1b8-92cdb6cd70ae.jpg', '', '<p>aaaaa</p><p><br></p>', '2020-04-03 13:41:54', '2020-06-24 13:11:55');
INSERT INTO `car_content` VALUES (33, 89, ' 轮播广告', '3', '轮播大广告', '', 'https://supers1.oss-cn-hangzhou.aliyuncs.com/slider-3.jpg\r\n', '', '<p>dadaddadadada</p>', '2020-04-03 13:44:05', '2020-04-03 13:44:05');
INSERT INTO `car_content` VALUES (34, 102, '热销榜单', '1.1', '第一列第一个', NULL, 'https://supers1.oss-cn-hangzhou.aliyuncs.com/anime/1.jpg\r\n', 'https://supers1.oss-cn-hangzhou.aliyuncs.com/anime/2.jpg\r\n', NULL, '2020-04-07 14:43:15', '2020-04-07 14:43:15');
INSERT INTO `car_content` VALUES (35, 102, '热销榜单', '1.2', '第一列第二个', NULL, 'https://supers1.oss-cn-hangzhou.aliyuncs.com/anime/2.jpg\r\n', 'https://supers1.oss-cn-hangzhou.aliyuncs.com/anime/3.jpg\r\n', NULL, '2020-04-07 14:43:15', '2020-04-07 14:43:15');
INSERT INTO `car_content` VALUES (36, 103, '热销榜单', '2.1', '第二列第一个', NULL, 'https://supers1.oss-cn-hangzhou.aliyuncs.com/anime/3.jpg', 'https://supers1.oss-cn-hangzhou.aliyuncs.com/anime/4.jpg\r\n', NULL, '2020-04-07 14:43:15', '2020-04-07 14:43:15');
INSERT INTO `car_content` VALUES (37, 103, '热销榜单', '2.2', '第二列第二个', NULL, 'https://supers1.oss-cn-hangzhou.aliyuncs.com/anime/4.jpg\r\n', 'https://supers1.oss-cn-hangzhou.aliyuncs.com/anime/5.jpg\r\n', NULL, '2020-04-07 14:43:15', '2020-04-07 14:43:15');
INSERT INTO `car_content` VALUES (38, 104, '热销榜单', '3.1', '第三列第一个', NULL, 'https://supers1.oss-cn-hangzhou.aliyuncs.com/anime/5.jpg\r\n', 'https://supers1.oss-cn-hangzhou.aliyuncs.com/anime/6.jpg\r\n', NULL, '2020-04-07 14:43:15', '2020-04-07 14:43:15');
INSERT INTO `car_content` VALUES (39, 104, '热销榜单', '3.2', '第三列第二个', NULL, 'https://supers1.oss-cn-hangzhou.aliyuncs.com/anime/6.jpg\r\n', 'https://supers1.oss-cn-hangzhou.aliyuncs.com/anime/7.jpg\r\n', NULL, '2020-04-07 14:43:15', '2020-04-07 14:43:15');
INSERT INTO `car_content` VALUES (40, 105, '热销榜单', '4.1', '第四列第一个', NULL, 'https://supers1.oss-cn-hangzhou.aliyuncs.com/anime/7.jpg\r\n', 'https://supers1.oss-cn-hangzhou.aliyuncs.com/anime/8.jpg\r\n', NULL, '2020-04-07 14:43:15', '2020-04-07 14:43:15');
INSERT INTO `car_content` VALUES (41, 105, '热销榜单', '4.2', '第四列第二个', NULL, 'https://supers1.oss-cn-hangzhou.aliyuncs.com/anime/8.jpg\r\n', 'http://myblogoss.aimezhao.online/9.jpg\r\n', NULL, '2020-04-07 14:43:15', '2020-04-07 14:43:15');
INSERT INTO `car_content` VALUES (42, 86, '测试广告', '测试广告', '测试广告', '', '/static/upload/5f5fff60-b5fb-43c2-bf29-40e88e5aa654.jpg', '', '<h1><img src=\"http://localhost:8080/static/upload/6f7f2673-b496-4c55-bd00-46e80ab80953.jpg\" style=\"max-width:100%;\"></h1>', '2020-04-20 14:45:38', '2020-04-20 14:45:38');
INSERT INTO `car_content` VALUES (43, 98, '测试广告11', '测试广告', 'aaaa', '测试广告', '/static/upload/929fa92d-565f-4b5a-b013-eae57c6cdcf3.jpg', '', '<h1>sasasa</h1>', '2020-06-02 15:58:18', '2020-06-02 15:58:18');
COMMIT;

-- ----------------------------
-- Table structure for car_content_category
-- ----------------------------
DROP TABLE IF EXISTS `car_content_category`;
CREATE TABLE `car_content_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  `sort_order` int(4) DEFAULT NULL,
  `is_parent` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of car_content_category
-- ----------------------------
BEGIN;
INSERT INTO `car_content_category` VALUES (30, 0, 'Car', 1, 1, 1, '2020-02-28 15:21:56', '2020-02-28 15:21:56');
INSERT INTO `car_content_category` VALUES (86, 30, '首页', 1, 1, 1, '2020-02-28 15:21:40', '2020-02-28 15:21:40');
INSERT INTO `car_content_category` VALUES (89, 86, '轮播大广告', 1, 1, 1, '2020-02-28 15:21:40', '2020-04-02 17:31:37');
INSERT INTO `car_content_category` VALUES (92, 86, '热销榜单', 1, 1, 1, '2020-02-28 15:21:40', '2020-02-28 15:21:40');
INSERT INTO `car_content_category` VALUES (93, 86, '页头广告', 1, 1, 1, '2020-02-28 15:21:40', '2020-02-28 15:21:40');
INSERT INTO `car_content_category` VALUES (94, 86, '页脚广告', 1, 1, 1, '2020-02-28 15:21:40', '2020-02-28 15:21:40');
INSERT INTO `car_content_category` VALUES (95, 88, '边栏广告', 1, 1, 1, '2020-02-28 15:21:40', '2020-02-28 15:21:40');
INSERT INTO `car_content_category` VALUES (98, 0, '常见问题', 1, 1, 1, '2020-02-28 15:21:40', '2020-02-28 15:21:40');
INSERT INTO `car_content_category` VALUES (99, 98, ' 常见问题分类', 1, 2, 1, '2020-02-28 15:21:40', '2020-02-28 15:21:40');
INSERT INTO `car_content_category` VALUES (100, 99, '购买指南', 1, 1, 1, '2020-02-28 15:21:40', '2020-02-28 15:21:40');
INSERT INTO `car_content_category` VALUES (101, 99, '购买流程', 1, 1, 1, '2020-02-28 15:21:40', '2020-02-28 15:21:40');
INSERT INTO `car_content_category` VALUES (102, 86, ' 热销榜单1', 1, 1, 1, '2020-04-07 14:43:15', '2020-04-07 14:43:15');
INSERT INTO `car_content_category` VALUES (103, 86, ' 热销榜单2', 1, 1, 1, '2020-04-07 14:43:15', '2020-04-07 14:43:15');
INSERT INTO `car_content_category` VALUES (104, 86, '热销榜单3', 1, 1, 1, '2020-04-07 14:43:15', '2020-04-07 14:43:15');
INSERT INTO `car_content_category` VALUES (105, 86, ' 热销榜单4', 1, 1, 1, '2020-04-07 14:43:15', '2020-04-07 14:43:15');
INSERT INTO `car_content_category` VALUES (107, 98, 'demo', NULL, 2, 1, '2020-06-24 10:32:54', '2020-06-24 10:32:54');
INSERT INTO `car_content_category` VALUES (108, 98, '工具111', NULL, 1, 1, '2020-06-24 13:09:49', '2020-06-24 13:10:07');
COMMIT;

-- ----------------------------
-- Table structure for car_goods
-- ----------------------------
DROP TABLE IF EXISTS `car_goods`;
CREATE TABLE `car_goods` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `prices` bigint(200) DEFAULT NULL,
  `desc` varchar(500) DEFAULT NULL,
  `pic` varchar(300) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of car_goods
-- ----------------------------
BEGIN;
INSERT INTO `car_goods` VALUES (1, '测试商品', 9000, '测试', '/static/upload/66973e65-bf7f-4199-9c2e-ead83a37a2af.jpg', '2020-04-03 12:25:59', '2020-06-24 13:12:43');
INSERT INTO `car_goods` VALUES (3, '显示屏', 1200, '车载显示屏', '/static/upload/1fc51a61-3c45-4afd-bcf4-14c4f3726739.jpg', '2020-06-03 14:31:52', '2020-06-07 22:03:31');
INSERT INTO `car_goods` VALUES (4, '车挂件', 50, '车内小挂件', '/static/upload/5e808a1c-ba57-4c5d-8687-453c0bbebd33.jpg', '2020-06-03 14:48:03', '2020-06-06 10:33:43');
INSERT INTO `car_goods` VALUES (5, '车轱辘儿', 500, '抓地性强，耐磨，花沟纹好，舒适性好，排水行好', 'http://myblogoss.aimezhao.online/1.jpg', '2020-06-03 21:06:06', '2020-06-03 21:06:06');
INSERT INTO `car_goods` VALUES (6, '工具11', 123, '车内小挂件', '/static/upload/5ecf3703-a03b-453f-ba46-62d086837eb4.jpg', '2020-06-24 13:12:30', '2020-06-24 13:12:30');
COMMIT;

-- ----------------------------
-- Table structure for car_user
-- ----------------------------
DROP TABLE IF EXISTS `car_user`;
CREATE TABLE `car_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of car_user
-- ----------------------------
BEGIN;
INSERT INTO `car_user` VALUES (1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '17317928268', 'admin@admin.com', '2020-02-20 21:17:06', '2020-02-20 21:17:11');
INSERT INTO `car_user` VALUES (4, 'zhangsan1234', '202cb962ac59075b964b07152d234b70', '17317928268', '758217673@qq.com', '2020-02-21 14:34:51', '2020-02-21 14:34:51');
INSERT INTO `car_user` VALUES (7, '18102040239', '52c69e3a57331081823331c4e69d3f2e', '13811111777', 'aimezyj@gmail.com', '2020-04-01 16:57:17', '2020-04-02 13:54:43');
INSERT INTO `car_user` VALUES (9, 'fnj50yoj', '52c69e3a57331081823331c4e69d3f2e', '13765654444', '7582176732@qq.com', '2020-04-03 12:25:59', '2020-04-03 12:25:59');
INSERT INTO `car_user` VALUES (11, 'user111', '074fd28eff0f5adea071694061739e55', '13838777127', '7582176732@qq.com', '2020-04-03 12:38:19', '2020-04-03 12:38:19');
INSERT INTO `car_user` VALUES (20, 'aaaa11', 'e10adc3949ba59abbe56e057f20f883e', '17317928268', 'admin@aime.com', '2020-04-09 17:06:36', '2020-04-09 17:06:36');
INSERT INTO `car_user` VALUES (21, 'daizeheng', 'c4ca4238a0b923820dcc509a6f75849b', '13681762963', '870426806@qq.com', '2020-04-16 12:56:43', '2020-04-16 12:56:43');
INSERT INTO `car_user` VALUES (29, '找找找111134', 'e10adc3949ba59abbe56e057f20f883e', '13838777127', 'aimezyj@gmail.com', '2020-06-02 15:56:32', '2020-06-03 15:02:10');
INSERT INTO `car_user` VALUES (30, 'daieheng', 'e10adc3949ba59abbe56e057f20f883e', '13681762963', '870426806@qq.com', '2020-06-05 09:27:50', '2020-06-05 09:27:50');
INSERT INTO `car_user` VALUES (31, 'zswh14yy1', 'e10adc3949ba59abbe56e057f20f883e', '13811111111', 'admain@aime.com', '2020-06-24 13:08:11', '2020-06-24 13:08:11');
INSERT INTO `car_user` VALUES (32, 'zswh14yy', 'e10adc3949ba59abbe56e057f20f883e', '17317928268', 'aimezyj@gmail.com', '2020-06-24 13:14:46', '2020-06-24 13:14:46');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
