/*
 Navicat Premium Data Transfer

 Source Server         : yjs
 Source Server Type    : MySQL
 Source Server Version : 80024
 Source Host           : localhost:3306
 Source Schema         : yun

 Target Server Type    : MySQL
 Target Server Version : 80024
 File Encoding         : 65001

 Date: 26/05/2022 17:36:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `sex` varchar(20) DEFAULT NULL,
  `hobby` varchar(255) DEFAULT NULL,
  `indro` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `email`, `phone`, `address`, `create_time`, `sex`, `hobby`, `indro`) VALUES (1, 'shl', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `email`, `phone`, `address`, `create_time`, `sex`, `hobby`, `indro`) VALUES (6, 'hdhsdk', NULL, '函调', '收拾收', 'ssss', 'ssss', '2022-05-25 23:43:49', '男', NULL, NULL);
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `email`, `phone`, `address`, `create_time`, `sex`, `hobby`, `indro`) VALUES (7, 'zhu', '123', '猪八戒', '1111@qq.com', '11112221', 'gaolaozhuang', NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `email`, `phone`, `address`, `create_time`, `sex`, `hobby`, `indro`) VALUES (12, 'www', '123', '你猜猜', '11111111111@19.com', NULL, NULL, '2022-05-25 18:36:01', NULL, NULL, NULL);
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `email`, `phone`, `address`, `create_time`, `sex`, `hobby`, `indro`) VALUES (16, 'wq', NULL, 'n', NULL, NULL, NULL, '2022-05-25 23:43:56', NULL, NULL, NULL);
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `email`, `phone`, `address`, `create_time`, `sex`, `hobby`, `indro`) VALUES (18, 'Jackwang', 'wjk', NULL, NULL, NULL, NULL, '2022-05-25 18:19:37', NULL, NULL, NULL);
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `email`, `phone`, `address`, `create_time`, `sex`, `hobby`, `indro`) VALUES (19, 'wangyuan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `email`, `phone`, `address`, `create_time`, `sex`, `hobby`, `indro`) VALUES (20, 'lhc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `email`, `phone`, `address`, `create_time`, `sex`, `hobby`, `indro`) VALUES (22, 'q', NULL, 'wq', 'q', 'a', 'w', NULL, 'female', NULL, NULL);
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `email`, `phone`, `address`, `create_time`, `sex`, `hobby`, `indro`) VALUES (23, 'xiaolili', NULL, '小丽丽', 'wjbcw@16.com', '18882773811', '武汉大学', NULL, 'female', NULL, NULL);
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `email`, `phone`, `address`, `create_time`, `sex`, `hobby`, `indro`) VALUES (24, '阿道夫次', NULL, '点都德', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `email`, `phone`, `address`, `create_time`, `sex`, `hobby`, `indro`) VALUES (25, 'qq', 'qq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `email`, `phone`, `address`, `create_time`, `sex`, `hobby`, `indro`) VALUES (26, 'hhhl', '111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `email`, `phone`, `address`, `create_time`, `sex`, `hobby`, `indro`) VALUES (27, 'hhh', 'q', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `email`, `phone`, `address`, `create_time`, `sex`, `hobby`, `indro`) VALUES (28, 'adc', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `email`, `phone`, `address`, `create_time`, `sex`, `hobby`, `indro`) VALUES (29, '11', '1111', '你说你', NULL, NULL, NULL, '2022-05-26 00:35:53', NULL, NULL, NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
