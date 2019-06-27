/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : miaosha

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 27/06/2019 14:56:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `price` double(10, 0) NOT NULL DEFAULT 0,
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sales` int(11) NOT NULL DEFAULT 0,
  `img_url` varchar(10000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES (1, 'iphone', 7500, '好用的苹果', 5, 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3771865148,1743318913&fm=15&gp=0.jpg');
INSERT INTO `item` VALUES (2, 'iphone', 7500, '好用的苹果', 25, 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3771865148,1743318913&fm=15&gp=0.jpg');
INSERT INTO `item` VALUES (3, 'iphone', 7500, '好用的苹果', 9, 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3771865148,1743318913&fm=15&gp=0.jpg');
INSERT INTO `item` VALUES (4, 'iphone', 7500, '好用的苹果', 8, 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3771865148,1743318913&fm=15&gp=0.jpg');

-- ----------------------------
-- Table structure for item_stock
-- ----------------------------
DROP TABLE IF EXISTS `item_stock`;
CREATE TABLE `item_stock`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_stock
-- ----------------------------
INSERT INTO `item_stock` VALUES (1, 50, 1);
INSERT INTO `item_stock` VALUES (2, 34, 2);
INSERT INTO `item_stock` VALUES (3, 48, 3);
INSERT INTO `item_stock` VALUES (4, 49, 4);

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `itemPrice` double(10, 2) NOT NULL DEFAULT 0.00,
  `amount` int(11) NOT NULL,
  `orderPrice` double NOT NULL DEFAULT 0,
  `promo_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_info
-- ----------------------------
INSERT INTO `order_info` VALUES ('2019062600000000', 3, 4, 7500.00, 1, 7500, 0);
INSERT INTO `order_info` VALUES ('2019062600000100', 4, 2, 7500.00, 1, 7500, 0);
INSERT INTO `order_info` VALUES ('2019062600000200', 4, 3, 7500.00, 1, 7500, 0);
INSERT INTO `order_info` VALUES ('2019062600000300', 4, 3, 7500.00, 1, 7500, 0);
INSERT INTO `order_info` VALUES ('2019062610001000', 4, 2, 7500.00, 1, 7500, 0);
INSERT INTO `order_info` VALUES ('2019062700000400', 3, 2, 7500.00, 1, 7500, 0);
INSERT INTO `order_info` VALUES ('2019062700000500', 3, 2, 7500.00, 1, 7500, 0);
INSERT INTO `order_info` VALUES ('2019062700000600', 3, 2, 7500.00, 1, 7500, 0);
INSERT INTO `order_info` VALUES ('2019062700000700', 3, 2, 7500.00, 1, 7500, 0);
INSERT INTO `order_info` VALUES ('2019062700000800', 3, 2, 7500.00, 1, 7500, 0);
INSERT INTO `order_info` VALUES ('2019062700000900', 3, 2, 7500.00, 1, 7500, 0);
INSERT INTO `order_info` VALUES ('2019062700001000', 3, 2, 7500.00, 1, 7500, 0);
INSERT INTO `order_info` VALUES ('2019062700001100', 3, 2, 7500.00, 1, 7500, 0);
INSERT INTO `order_info` VALUES ('2019062700001200', 3, 2, 7500.00, 1, 7500, 0);
INSERT INTO `order_info` VALUES ('2019062700001300', 3, 2, 7000.00, 1, 7000, 1);
INSERT INTO `order_info` VALUES ('2019062700001400', 3, 2, 7000.00, 1, 7000, 1);
INSERT INTO `order_info` VALUES ('2019062700001500', 3, 2, 6000.00, 1, 6000, 1);
INSERT INTO `order_info` VALUES ('2019062700001600', 3, 2, 6000.00, 1, 6000, 1);
INSERT INTO `order_info` VALUES ('2019062700001700', 3, 2, 6000.00, 1, 6000, 1);

-- ----------------------------
-- Table structure for promo
-- ----------------------------
DROP TABLE IF EXISTS `promo`;
CREATE TABLE `promo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promo_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `start_date` datetime(0) NOT NULL,
  `item_id` int(11) NOT NULL DEFAULT 0,
  `promo_item_price` double(10, 2) NOT NULL DEFAULT 0.00,
  `end_date` datetime(0) NOT NULL DEFAULT '2018-01-01 12:12:12',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of promo
-- ----------------------------
INSERT INTO `promo` VALUES (1, 'iphone秒杀活动', '2019-06-27 13:44:21', 2, 6000.00, '2019-06-27 18:09:15');

-- ----------------------------
-- Table structure for sequence_info
-- ----------------------------
DROP TABLE IF EXISTS `sequence_info`;
CREATE TABLE `sequence_info`  (
  `name` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `current_value` int(50) NOT NULL DEFAULT 0,
  `step` int(50) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sequence_info
-- ----------------------------
INSERT INTO `sequence_info` VALUES ('order_info', 18, 1);

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `gender` tinyint(4) NOT NULL COMMENT '//1代表男性 2代表女性',
  `age` int(11) NOT NULL,
  `telphone` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `register_mode` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '//byphone ,bywechat,byalipay',
  `third_party_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `telphone_unique_index`(`telphone`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (1, '第一个用户', 1, 26, '182154124', 'byphone', NULL);
INSERT INTO `user_info` VALUES (3, '脾斯麦', 1, 26, '132123456', 'byphone', NULL);
INSERT INTO `user_info` VALUES (4, '测试2', 1, 25, '151123456', 'byphone', NULL);

-- ----------------------------
-- Table structure for user_password
-- ----------------------------
DROP TABLE IF EXISTS `user_password`;
CREATE TABLE `user_password`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `encrpt_password` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_password
-- ----------------------------
INSERT INTO `user_password` VALUES (1, '123456', 1);
INSERT INTO `user_password` VALUES (3, '4QrcOUm6Wau+VuBX8g+IPg==', 3);
INSERT INTO `user_password` VALUES (4, '4QrcOUm6Wau+VuBX8g+IPg==', 4);

SET FOREIGN_KEY_CHECKS = 1;
