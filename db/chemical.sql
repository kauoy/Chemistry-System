/*
 Navicat Premium Data Transfer

 Source Server         : test1
 Source Server Type    : MySQL
 Source Server Version : 80031 (8.0.31)
 Source Host           : localhost:3306
 Source Schema         : chemical

 Target Server Type    : MySQL
 Target Server Version : 80031 (8.0.31)
 File Encoding         : 65001

 Date: 29/04/2025 22:17:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for aboutus
-- ----------------------------
DROP TABLE IF EXISTS `aboutus`;
CREATE TABLE `aboutus`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '标题',
  `subtitle` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '副标题',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '内容',
  `picture1` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '图片1',
  `picture2` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '图片2',
  `picture3` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '图片3',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '关于我们' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of aboutus
-- ----------------------------
INSERT INTO `aboutus` VALUES (1, '2025-03-18 17:48:21', '关于我们', 'ABOUT US', '不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?\n你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。', 'upload/aboutus_picture1.jpg', 'upload/aboutus_picture2.jpg', 'upload/aboutus_picture3.jpg');

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `address` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '地址',
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '收货人',
  `phone` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '电话',
  `isdefault` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1744772142548 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '地址' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, '2025-03-18 17:48:21', 11, '宇宙银河系金星1号', '金某', '13823888881', '是');
INSERT INTO `address` VALUES (2, '2025-03-18 17:48:21', 12, '宇宙银河系木星1号', '木某', '13823888882', '是');
INSERT INTO `address` VALUES (3, '2025-03-18 17:48:21', 13, '宇宙银河系水星1号', '水某', '13823888883', '是');
INSERT INTO `address` VALUES (4, '2025-03-18 17:48:21', 14, '宇宙银河系火星1号', '火某', '13823888884', '是');
INSERT INTO `address` VALUES (5, '2025-03-18 17:48:21', 15, '宇宙银河系土星1号', '土某', '13823888885', '是');
INSERT INTO `address` VALUES (6, '2025-03-18 17:48:21', 16, '宇宙银河系月球1号', '月某', '13823888886', '是');
INSERT INTO `address` VALUES (7, '2025-03-18 17:48:21', 17, '宇宙银河系黑洞1号', '黑某', '13823888887', '是');
INSERT INTO `address` VALUES (8, '2025-03-18 17:48:21', 18, '湖南省株洲市天元区湖南工业大学', '地某', '13823888888', '是');
INSERT INTO `address` VALUES (1744772142547, '2025-04-16 10:55:42', 18, '湖南省邵阳市', '1', '18515621156', '否');

-- ----------------------------
-- Table structure for bangzhu
-- ----------------------------
DROP TABLE IF EXISTS `bangzhu`;
CREATE TABLE `bangzhu`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenti` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '问题',
  `fengmiantupian` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '封面图片',
  `bangzhuhuida` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '帮助回答',
  `fabushijian` date NULL DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '帮助' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bangzhu
-- ----------------------------
INSERT INTO `bangzhu` VALUES (61, '2025-03-18 17:48:20', '问题1', 'upload/bangzhu_fengmiantupian1.jpg,upload/bangzhu_fengmiantupian2.jpg,upload/bangzhu_fengmiantupian3.jpg', '帮助回答1', '2025-03-18');
INSERT INTO `bangzhu` VALUES (62, '2025-03-18 17:48:20', '问题2', 'upload/bangzhu_fengmiantupian2.jpg,upload/bangzhu_fengmiantupian3.jpg,upload/bangzhu_fengmiantupian4.jpg', '帮助回答2', '2025-03-18');
INSERT INTO `bangzhu` VALUES (63, '2025-03-18 17:48:20', '问题3', 'upload/bangzhu_fengmiantupian3.jpg,upload/bangzhu_fengmiantupian4.jpg,upload/bangzhu_fengmiantupian5.jpg', '帮助回答3', '2025-03-18');
INSERT INTO `bangzhu` VALUES (64, '2025-03-18 17:48:20', '问题4', 'upload/bangzhu_fengmiantupian4.jpg,upload/bangzhu_fengmiantupian5.jpg,upload/bangzhu_fengmiantupian6.jpg', '帮助回答4', '2025-03-18');
INSERT INTO `bangzhu` VALUES (65, '2025-03-18 17:48:20', '问题5', 'upload/bangzhu_fengmiantupian5.jpg,upload/bangzhu_fengmiantupian6.jpg,upload/bangzhu_fengmiantupian7.jpg', '帮助回答5', '2025-03-18');
INSERT INTO `bangzhu` VALUES (66, '2025-03-18 17:48:20', '问题6', 'upload/bangzhu_fengmiantupian6.jpg,upload/bangzhu_fengmiantupian7.jpg,upload/bangzhu_fengmiantupian8.jpg', '帮助回答6', '2025-03-18');
INSERT INTO `bangzhu` VALUES (67, '2025-03-18 17:48:20', '问题7', 'upload/bangzhu_fengmiantupian7.jpg,upload/bangzhu_fengmiantupian8.jpg,upload/bangzhu_fengmiantupian9.jpg', '帮助回答7', '2025-03-18');
INSERT INTO `bangzhu` VALUES (68, '2025-03-18 17:48:20', '问题8', 'upload/bangzhu_fengmiantupian8.jpg,upload/bangzhu_fengmiantupian9.jpg,upload/bangzhu_fengmiantupian10.jpg', '帮助回答8', '2025-03-18');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT 'remenshangpin' COMMENT '化工品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '化工品id',
  `goodname` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '化工品名称',
  `picture` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` float NULL DEFAULT NULL COMMENT '单价',
  `discountprice` float NULL DEFAULT NULL COMMENT '会员价',
  `zhanghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商户名称',
  `goodtype` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '化工品类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1745907629619 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '购物车表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (1745850746194, '2025-04-28 22:32:26', 'remenshangpin', 18, 4, '磷酸三钠 ', 'upload/1745837909231.png', 15, 6500, 0, 'wanhua001', '有机化工原料');
INSERT INTO `cart` VALUES (1745850753850, '2025-04-28 22:32:32', 'remenshangpin', 18, 5, '酒石酸 ', 'upload/1745838036807.png', 1, 15000, 0, 'basf002', '食品添加剂');
INSERT INTO `cart` VALUES (1745850843038, '2025-04-28 22:34:02', 'remenshangpin', 18, 2, '氢氧化钠', 'upload/1745837202187.png', 20, 3200, 0, 'dow001', '无机化工原料');
INSERT INTO `cart` VALUES (1745907629618, '2025-04-29 14:20:29', 'remenshangpin', 18, 1745853433255, '木瓜蛋白酶', 'upload/1745853391355.png', 1, 1300, 0, 'yuanye', '食品添加剂');

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `adminid` bigint NULL DEFAULT NULL COMMENT '管理员id',
  `ask` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '提问',
  `reply` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '回复',
  `isreply` int NULL DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1745928030156 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '联系我们' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of chat
-- ----------------------------
INSERT INTO `chat` VALUES (71, '2025-03-18 17:48:20', 1, 1, '提问1', '回复1', 0);
INSERT INTO `chat` VALUES (72, '2025-03-18 17:48:20', 2, 2, '提问2', '回复2', 2);
INSERT INTO `chat` VALUES (73, '2025-03-18 17:48:20', 3, 3, '提问3', '回复3', 3);
INSERT INTO `chat` VALUES (74, '2025-03-18 17:48:20', 4, 4, '提问4', '回复4', 4);
INSERT INTO `chat` VALUES (75, '2025-03-18 17:48:20', 5, 5, '提问5', '回复5', 5);
INSERT INTO `chat` VALUES (76, '2025-03-18 17:48:20', 6, 6, '提问6', '回复6', 6);
INSERT INTO `chat` VALUES (77, '2025-03-18 17:48:20', 7, 7, '提问7', '回复7', 7);
INSERT INTO `chat` VALUES (78, '2025-03-18 17:48:20', 8, 8, '提问8', '回复8', 8);
INSERT INTO `chat` VALUES (1681552434453, '2025-03-18 17:53:53', 1, 18, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1681552546614, '2025-03-18 17:55:46', 1, 18, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1743239983912, '2025-03-29 17:19:43', 1, 18, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1743240122007, '2025-03-29 17:22:01', 18, 18, NULL, '您好，在线客服很高兴为您服务！', 0);
INSERT INTO `chat` VALUES (1743240126607, '2025-03-29 17:22:05', 18, NULL, 'j', NULL, 0);
INSERT INTO `chat` VALUES (1743240132390, '2025-03-29 17:22:11', 18, 18, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1743240136514, '2025-03-29 17:22:16', 18, NULL, 'hhh', NULL, 0);
INSERT INTO `chat` VALUES (1743240137770, '2025-03-29 17:22:17', 18, 18, NULL, '主人，小搏还不够聪明，无法理解您的意思！', 0);
INSERT INTO `chat` VALUES (1743240146802, '2025-03-29 17:22:26', 18, NULL, '购物车', NULL, 0);
INSERT INTO `chat` VALUES (1743240147644, '2025-03-29 17:22:27', 18, 18, NULL, '主人，小搏还不够聪明，无法理解您的意思！', 0);
INSERT INTO `chat` VALUES (1743240583933, '2025-03-29 17:29:43', 18, NULL, '问题1', NULL, 0);
INSERT INTO `chat` VALUES (1743240585071, '2025-03-29 17:29:44', 18, 18, NULL, '主人，小搏还不够聪明，无法理解您的意思！', 0);
INSERT INTO `chat` VALUES (1743240588564, '2025-03-29 17:29:48', 18, 18, NULL, '您好，在线客服很高兴为您服务！', 0);
INSERT INTO `chat` VALUES (1743240593182, '2025-03-29 17:29:53', 18, NULL, '问题1', NULL, 0);
INSERT INTO `chat` VALUES (1743318610722, '2025-03-30 15:10:09', 1, 18, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1743318676783, '2025-03-30 15:11:16', 18, 18, NULL, '您好，在线客服很高兴为您服务！', 0);
INSERT INTO `chat` VALUES (1743318894640, '2025-03-30 15:14:54', 21, 18, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1743319038174, '2025-03-30 15:17:17', 21, 18, NULL, '您好，在线客服很高兴为您服务！', 0);
INSERT INTO `chat` VALUES (1743319227287, '2025-03-30 15:20:26', 18, 18, NULL, '您好，在线客服很高兴为您服务！', 0);
INSERT INTO `chat` VALUES (1743319235593, '2025-03-30 15:20:35', 18, NULL, '提问', NULL, 0);
INSERT INTO `chat` VALUES (1743319334191, '2025-03-30 15:22:13', 21, 18, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1744772103274, '2025-04-16 10:55:02', 1, 18, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', NULL);
INSERT INTO `chat` VALUES (1744772855238, '2025-04-16 11:07:34', 21, 18, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1744772884470, '2025-04-16 11:08:04', 18, 18, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1744772886890, '2025-04-16 11:08:06', 18, 18, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1744772976341, '2025-04-16 11:09:36', 21, 18, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', NULL);
INSERT INTO `chat` VALUES (1745830814969, '2025-04-28 17:00:20', 11, NULL, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1745830873278, '2025-04-28 17:01:18', 11, 11, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1745830879760, '2025-04-28 17:01:25', 11, 11, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1745830922823, '2025-04-28 17:02:08', 11, 11, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1745830958799, '2025-04-28 17:02:45', 11, 11, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1745831922197, '2025-04-28 17:18:48', 11, 11, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1745832344583, '2025-04-28 17:25:50', 11, 11, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', NULL);
INSERT INTO `chat` VALUES (1745851241812, '2025-04-28 22:40:41', 18, 18, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1745851245075, '2025-04-28 22:40:44', 18, 18, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1745851449291, '2025-04-28 22:44:08', 18, 18, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1745851989777, '2025-04-28 22:53:08', 18, 18, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1745852342870, '2025-04-28 22:59:02', 18, 18, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1745852456048, '2025-04-28 23:00:55', 18, 18, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1745852529753, '2025-04-28 23:02:09', 18, 18, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1745852622618, '2025-04-28 23:03:41', 18, 18, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1745852659800, '2025-04-28 23:04:19', 18, 18, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1745852724091, '2025-04-28 23:05:23', 18, 18, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1745852786720, '2025-04-28 23:06:25', 18, 18, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1745852868727, '2025-04-28 23:07:48', 18, NULL, '', NULL, 0);
INSERT INTO `chat` VALUES (1745852870229, '2025-04-28 23:07:49', 18, 18, NULL, '主人，小搏还不够聪明，无法理解您的意思！', 0);
INSERT INTO `chat` VALUES (1745852876184, '2025-04-28 23:07:56', 18, 18, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1745853438488, '2025-04-28 23:17:17', 18, 18, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1745853607058, '2025-04-28 23:20:06', 18, 18, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1745853927076, '2025-04-28 23:25:27', 18, 18, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1745906268782, '2025-04-29 13:57:48', 18, 18, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1745906602379, '2025-04-29 14:03:22', 18, 18, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1745928030155, '2025-04-29 20:00:29', 18, 18, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', NULL);

-- ----------------------------
-- Table structure for chathelper
-- ----------------------------
DROP TABLE IF EXISTS `chathelper`;
CREATE TABLE `chathelper`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ask` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '提问',
  `reply` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 89 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '聊天助手表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of chathelper
-- ----------------------------
INSERT INTO `chathelper` VALUES (81, '2025-03-18 17:48:20', '提问1', '回复1');
INSERT INTO `chathelper` VALUES (82, '2025-03-18 17:48:21', '提问2', '回复2');
INSERT INTO `chathelper` VALUES (83, '2025-03-18 17:48:21', '提问3', '回复3');
INSERT INTO `chathelper` VALUES (84, '2025-03-18 17:48:21', '提问4', '回复4');
INSERT INTO `chathelper` VALUES (85, '2025-03-18 17:48:21', '提问5', '回复5');
INSERT INTO `chathelper` VALUES (86, '2025-03-18 17:48:21', '提问6', '回复6');
INSERT INTO `chathelper` VALUES (87, '2025-03-18 17:48:21', '提问7', '回复7');
INSERT INTO `chathelper` VALUES (88, '2025-03-18 17:48:21', '提问8', '回复8');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '配置文件' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'upload/1745837397352.png');
INSERT INTO `config` VALUES (2, 'picture2', 'upload/1745837356334.png');
INSERT INTO `config` VALUES (3, 'picture3', 'upload/1745837320594.jpg');

-- ----------------------------
-- Table structure for discussremenshangpin
-- ----------------------------
DROP TABLE IF EXISTS `discussremenshangpin`;
CREATE TABLE `discussremenshangpin`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `avatarurl` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '头像',
  `nickname` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '化工品评论表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of discussremenshangpin
-- ----------------------------

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '留言人id',
  `username` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '头像',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '留言内容',
  `cpicture` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '留言图片',
  `reply` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '回复内容',
  `rpicture` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '回复图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1745852687854 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '留言交流' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of messages
-- ----------------------------
INSERT INTO `messages` VALUES (1743318666016, '2025-03-30 15:11:05', 18, '1', 'upload/1742349634707.jpg', '怎么充值？可以用那些软件？', '', '充值功能在个人中心的余额-充值。充值可以使用微信、支付宝、银行卡等渠道。充值成功后直接购买就可以了亲。', NULL);
INSERT INTO `messages` VALUES (1745852481777, '2025-04-28 23:01:21', 18, 'chenwei', 'upload/1745848876587.png', '如何购买？', NULL, '化工品详情页面可以直接购买。也可以选择加入购物车后购买。', NULL);
INSERT INTO `messages` VALUES (1745852570955, '2025-04-28 23:02:50', 18, 'chenwei', 'upload/1745848876587.png', '为什么有的页面没有价格波动', NULL, '化工品还没有更改过价格，商家更改价格后会更新价格波动图的。', NULL);
INSERT INTO `messages` VALUES (1745852687853, '2025-04-28 23:04:47', 18, 'chenwei', 'upload/1745848876587.png', '购买过了，体验很好，下次还在这里买', NULL, '好的，谢谢亲的好评', NULL);

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '标题',
  `introduction` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '简介',
  `picture` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '图片',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 139 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '商城资讯' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (131, '2025-03-18 17:48:21', 'FDA 计划弃用动物实验，昭衍新药跌停，传统 CRO 何去何从？', '美国时间 4 月 10 日，美国食品药品监督管理局（FDA）官网发布重磅政策调整，计划逐步取消单克隆抗体疗法及其他药物研发中动物实验的强制性要求。这一政策不仅重构了全球新药开发的评估体系，更对中国以实验动物服务为核心竞争力的CRO提出了转型升级的迫切要求，在打破传统业务模式的同时，也为行业技术迭代创造了战略契机。\n', 'upload/1745852109277.png', '<p>美国时间 4 月 10 日，美国食品药品监督管理局（FDA）官网发布重磅政策调整，计划逐步取消单克隆抗体疗法及其他药物研发中动物实验的强制性要求。这一政策不仅重构了全球新药开发的评估体系，更对中国以实验动物服务为核心竞争力的CRO提出了转型升级的迫切要求，在打破传统业务模式的同时，也为行业技术迭代创造了战略契机。</p><p>冰火两重天：AI 医药与传统 CRO 的股价异动</p><p><br></p><p>Guide View</p><p><br></p><p>政策发布后，市场反应呈现出鲜明的两极分化态势。4 月 11 日收盘数据显示，AI 医药概念股迎来狂欢，晶泰控股（02228.HK）上涨 7.39%，成都先导（688222.SH）涨幅达 5.87%，贝瑞基因更是强势涨停。美股市场上，Certara、Schrodinger 等 AI 医药开发概念股同样表现亮眼，部分个股涨幅高达 20%。</p><p><br></p><p>这一涨势印证了业内观点 ——FDA 政策虽针对美国药企，但全球药物研发格局都将受其影响，AI 技术在医药领域的应用前景愈发被市场看好。</p><p><br></p><p>与之形成强烈反差的是传统 CRO 企业的股价寒冬。以昭衍新药（603127.SH）、查尔斯河（CRL）为代表的企业，因高度依赖动物实验业务，股价遭受重创。政策发布当日，全球 CRO 龙头查尔斯河股价暴跌 28%，Inotiv 更是狂泻 50%。4月11日，昭衍新药在 A 股市场也以 9.98% 的跌幅收盘。</p><p><br></p><p>作为国内药物非临床安全性评价领域的头部企业，昭衍新药 2024 年药物非临床研究服务营收达 19.17 亿元，占总营收近 95%。然而，市场竞争加剧已导致该项业务同比下降 16.96%，此次政策冲击无疑让其处境雪上加霜。</p><p><br></p><p>回溯企业发展历程，成立于 1995 年的昭衍新药，凭借药物安全性评价业务起家，长期深耕临床前 CRO 领域。据华安证券2023年10月研报，2018 - 2023 年上半年，其临床前 CRO 业务平均占比近 98%。</p><p><br></p><p>作为药物研发外包机构，昭衍新药本身无权决定制药公司的研发手段，新政直接影响的是药品开发决策的制药公司和创新药公司。不过，其过度依赖动物实验的业务结构，使其在行业变革中面临更高的转型压力。</p><p><br></p><p>面对股价闪崩，昭衍新药回应称，股价波动与 FDA 公告相关，但公司认为实际影响有限。其理由主要有两点：一方面，该政策虽已推行数年，但落地进程缓慢；另一方面，在毒理测试环节，AI 和类器官技术尚未成熟，难以完全取代试验猴。</p><p><br></p><p>事实上，昭衍新药早有布局，持续跟进 AI 和类器官技术，但这些新业务能否助力其维持行业龙头地位仍未可知。尽管已着手布局新方向，但技术成熟度、市场接受度等因素，都为其未来发展蒙上阴影。</p><p><br></p><p>FDA 新规冲击下 CRO 行业价值逻辑的重构危机</p><p><br></p><p>Guide View</p><p><br></p><p>在 CRO 行业发展进程中，实验猴资源一度是企业核心竞争力的关键要素。在新药研发热潮中，猴价飙升，头部 CRO 企业纷纷着手布局猴源储备。</p><p><br></p><p>2020 年，药明康德收购广东春盛生物，一举锁定 2 万余只食蟹猴，为大分子药物与细胞疗法的临床前研究筑牢根基。2021 年，康龙化成收购中科灵瑞（湛江）等企业，整合近 1 万只实验猴资源，高效覆盖华南地区研发需求。同年，益诺思生物收购黄山猴场，自有实验猴存栏量达 2930 只，凭借猴场资源与 GLP 资质，迅速提升市场占有率。</p><p><br></p><p>这些企业通过并购或入股上游供应企业，意图锁定实验猴原材料成本，强化自身业务竞争力。</p><p><br></p><p>然而，行业局势瞬息万变。随着市场泡沫渐消，国内猴价回归理性，如实验用猴中用量最大的品种食蟹猴已经跌破10万元/只（2022年最高接近19万元/只）。</p><p><br></p><p>这一价格波动直观反映在企业财报中，昭衍新药 2024 年因生物资产公允价值变动，承受了 1.14 亿的净损失。</p><p><br></p><p>除了昭衍新药，美迪西的临床前研究业务也曾成绩斐然，规模一度逼近 10 亿级别，涵盖药效学、药代动力学、毒理研究等服务。但当下，这部分业务陷入萎缩困境。2021 - 2023 年，相关营收数据从 5.54 亿元增长至 9.24 亿元后，又滑落至 7.34 亿元。2024 年上半年，营收仅为 2.6 亿元。这一业绩滑坡，正是行业需求结构转变以及企业难以灵活应对实验猴相关成本风险的体现。</p><p><br></p><p>由于实验猴从培育到符合实验标准需历经数年，且实验猴培育存在诸多不确定性，诸如繁殖率不稳定、疾病防控难度大等，使得企业在预估饲养规模时，如同在迷雾中摸索，难以精准决策。</p><p><br></p><p>更严峻的是，FDA 逐步取消实验动物要求的新规，正给 CRO 行业价值逻辑带来颠覆性冲击。倘若未来药企普遍摒弃实验动物进行药品开发，此前 CRO 企业的囤猴行为将成为沉重负担，进一步拖累企业业绩。</p><p><br></p><p>在此情形下，CRO 企业急需将发展重心向可替代的非动物模型研究转移，以此顺应行业价值逻辑的深刻变革，在新的竞争格局中谋得生机。</p><p><br></p><p>动物实验替代方案的蓬勃发展</p><p><br></p><p>Guide View</p><p><br></p><p>在生物医学研究与药物开发领域，动物实验长期占据重要地位。但随着科技发展与伦理观念进步，寻求替代方案成为行业共识。</p><p><br></p><p>2022 年，FDA 颁布的《FDA 现代化法案 2.0》，率先为减少动物实验使用指明方向。而最新政策更精准锚定智能计算模型、类器官与器官芯片、跨物种数据整合三大创新路径，为替代方案的发展绘制清晰蓝图。</p><p><br></p><p>底层技术的突破性进展，为替代方案的探索提供了有力支撑。信息技术的革新、测序技术的精进、机器学习算法的优化以及细胞培育技术的成熟，共同构筑起技术基石，使得 AI 模拟试验、类器官和器官芯片等前沿领域成为科研焦点。</p><p><br></p><p>众多企业已率先行动并收获成果：Certara 借助深度学习算法与大数据挖掘技术，成功压缩化合物筛选耗时；赛诺菲凭借器官芯片获取的数据，顺利推动补体 C1s 抗体进入临床试验阶段，既节省 200 万美元灵长类动物实验开支，又缩短 1.5 年研发周期；查尔斯河实验室积极拥抱变革，通过投资虚拟对照组项目与 AI 技术合作，助力减少动物实验的使用。</p><p><br></p><p>近期，国内企业加速布局非动物实验技术：4月11日，昭衍新药表示正积极推进类器官研究，以期实现体外替代动物实验；4月8日，药康生物计划投入2亿元建设AI驱动的多模态临床前研究平台，预计2030年完工。此外，康龙化成、益诺思等公司也在探索类器官和器官芯片技术，但目前处于发展初期。</p><p><br></p><p>国际大药企的深度参与，更是为替代方案的发展注入强劲动力。强生、默克、阿斯利康等 20 余家跨国企业，通过产品采购、技术合作授权、资本投资等多元方式，深度介入类器官和器官芯片领域。罗氏2023年成立人类生物学研究所（IHB），专注类器官等人类模型系统研究，这一举措极大提振了行业信心，激发了更多企业的投资热情，推动该领域发展进入快车道。</p><p><br></p><p>动物实验替代方案面临的重重挑战</p><p><br></p><p>Guide View</p><p><br></p><p>尽管替代方案在技术层面不断取得突破，但距离完全取代动物实验，仍存在诸多难以逾越的障碍。技术层面，类器官芯片等替代方案的可靠性和全面性备受质疑。</p><p><br></p><p>国内 CRO 行业从业者透露，FDA 接收的类器官实验数据多为企业自主提交的小规模研究成果，缺乏系统性和权威性。而且，类器官数据与临床数据、动物实验数据之间的关联性尚未得到充分验证，由于缺乏系统研究和统计分析，导致相关技术在实际应用中的进展缓慢。</p><p><br></p><p>体外实验与动物实验之间的等效性认证也存在缺失，科学依据的充分性存疑。以单抗药物为例，仅依靠体外实验和 AI 风险评估，难以准确评估药物的免疫原性；而经抗体偶联药物（ADC）修饰的药物，结构更为复杂，使用类器官芯片进行研究时，面临更多不确定性。</p><p><br></p><p>政策与现实层面，替代方案的全面推广也面临诸多困境。虽然 FDA 积极推进动物实验替代计划，但完全摒弃动物实验仍为时尚早。回顾 2022 年的 FDA 现代化法案 2.0，其虽放宽动物实验强制要求，但并未完全废除，而是拓展了细胞实验、器官芯片等多种选择。</p><p><br></p><p>此次新政虽加快替代进程，但从政策表述可知，实现完全替代是一个长期目标。</p><p><br></p><p>此外，FDA 自身面临人员短缺难题，特朗普政府时期减少 4500 名员工，导致专业人才流失、经验断层，前 FDA 专员 David Kessler 曾警示这将威胁患者安全，在此背景下推进动物实验替代工作，技术实施难度显著增加。</p><p><br></p><p>美国生物医学研究协会（NABR）明确指出，当前生物医学研究和药物开发领域，尚无能够完全替代动物模型的方案。NABR 虽认可 AI、类器官等创新技术，但强调动物试验遵循 “替代、减少、优化” 原则，在保障药物安全有效性方面具有不可替代性。</p><p><br></p><p>NABR 主席 Matthew Bailey 指出，AI 虽能提升研究效率，但其依赖现有数据，未知因素可能给患者带来风险，其替代整体生物体的应用场景需谨慎验证。</p><p><br></p><p>从国内政策环境来看，2021年11月，国家药监局药品评审中心（CDE）发布与基因治疗、细胞治疗相关的指导原则，首次将类器官列入基因治疗及针对基因修饰细胞治疗产品的验证指南当中。</p><p><br></p><p>但在替代方案成熟之前，药企出于临床失败代价远高于现有 CRO 费用的考量，不会轻易放弃动物实验。</p><p><br></p><p>这表明，零动物实验时代的到来需要漫长过程，监管部门与企业需持续投入技术研发，积累丰富临床数据，充分证明替代方案在毒性预测等关键指标上超越动物实验，才能推动动物实验替代方案的广泛应用与全面普及。</p><p><br></p><p>参考来源：</p><p><br></p><p>[1]公司官网/网络新闻</p><p><br></p><p>[2]界面新闻</p><p><br></p><p>[3]财联社</p><p><br></p><p>[4]拇指药略</p><p><br></p><p>[5]医麦客</p><p><br></p><p>[6]每日经济新闻</p><p><br></p><p>[7]氨基观察</p><p><br></p><p>[8]医药经济报</p><p>本文转自[盖德化工网],原文：http://news.china.guidechem.com/2025/04/15/518822.html</p>');
INSERT INTO `news` VALUES (132, '2025-03-18 17:48:21', '线粒体应激调控干细胞命运的“线粒体遇见”新模式被发现', '中国科学院广州生物医药与健康研究院刘兴国团队与广州医科大学应仲富团队等发现，线粒体未折叠蛋白反应（UPRmt）在多能干细胞命运中通过c-Jun调控组蛋白乙酰化，进而影响间充质-上皮转化（MET）的新模式（mtMET）。这一模式的缩写MET是“遇见”的过去式，因此科研人员将这一新模式称为“线粒体遇见”。该研究证明了UPRmt通过增强上皮-间充质转化促进肿瘤迁移和侵袭，发现了肿瘤治疗的潜在新靶点，并扩展了线粒体反向调控细胞核并调控细胞命运的研究领域。', 'upload/1745852062998.png', '<p>中国科学院广州生物医药与健康研究院刘兴国团队与广州医科大学应仲富团队等发现，线粒体未折叠蛋白反应（UPRmt）在多能干细胞命运中通过c-Jun调控组蛋白乙酰化，进而影响间充质-上皮转化（MET）的新模式（mtMET）。这一模式的缩写MET是“遇见”的过去式，因此科研人员将这一新模式称为“线粒体遇见”。该研究证明了UPRmt通过增强上皮-间充质转化促进肿瘤迁移和侵袭，发现了肿瘤治疗的潜在新靶点，并扩展了线粒体反向调控细胞核并调控细胞命运的研究领域。</p><p><br></p><p>UPRmt是重要的线粒体到核的反向调控途径。线粒体蛋白稳态失衡、活性氧升高、线粒体和核基因表达不平衡或线粒体功能障碍均能够激活UPRmt。激活可以启动由细胞核编码的线粒体热休克蛋白和蛋白酶等基因群转录活化程序，促进线粒体功能在应激反应中的维持。在线虫中，UPRmt可以延长寿命；而在哺乳动物细胞中，UPRmt在干细胞命运决定和发育中的作用尚未得到研究。</p><p><br></p><p>研究全面检测多能性的不同状态，即获得、退出以及二细胞期-着床前-着床后的状态转换中UPRmt的变化规律。结果表明，多能性获得、退出时，?UPRmt发生显著变化。其中，UPRmt在多能性获得早期阶段短暂激活，随后逐渐减弱。研究发现，c-Myc是UPRmt激活的关键因子。c-Myc过表达能够增加UPRmt的标志物Hsp60表达，而其他转录因子则无类似效果。进一步，研究显示，在多能性的获得中UPRmt的激活抑制MET过程。同时，检测发现，哺乳动物早期分化和肿瘤中UPRmt同样发挥了调控MET的作用。UPRmt的激活可以增强癌细胞的迁移和侵袭能力。</p><p><br></p><p>在机制方面，研究筛选获得UPRmt反向调控通路中的全新关键因子c-Jun。c-Jun是原癌基因，能够抑制多能性获得，而UPRmt激活则促进c-Jun表达。c-Jun通过转录调控，上调乙酰辅酶A代谢酶表达，从而降低乙酰辅酶A水平。进一步，由于乙酰辅酶A与组蛋白乙酰化相关，研究发现，UPRmt激活减少组蛋白的乙酰化特别是H3K9乙酰化水平。研究还发现，UPRmt激活减少H3K9Ac与上皮样相关基因启动子区域的结合。H3K9Ac水平降低，使H3K9Ac与上皮样相关基因的结合减少并抑制上皮样相关基因的表达，从而抑制MET。通过补充乙酰辅酶A的前体物质，可恢复H3K9Ac的水平，并恢复MET相关基因的表达水平。</p><p><br></p><p>上述研究揭示了在多能干细胞命运调控中UPRmt通过c-Jun降低乙酰辅酶A水平，减少组蛋白乙酰化，进而抑制MET的新通路。这种线粒体调控MET的模式也存在于早期分化和肿瘤领域，是具有广泛性的生物作用模式。</p><p><br></p><p>近期，相关研究成果以The mitochondrial unfolded protein response inhibits pluripotency acquisition and mesenchymal-to-epithelial transition in somatic cell reprogramming为题，发表在《自然-代谢》（Nature Metabolism）上。研究工作得到国家重点研发计划、国家自然科学基金、中国科学院相关项目等的支持。</p><p>本文转自[盖德化工网],原文：http://news.china.guidechem.com/2025/04/16/518829.html</p>');
INSERT INTO `news` VALUES (133, '2025-03-18 17:48:21', '科学家揭示细菌感染新规律并开发力学抗菌新策略', '上皮细胞层作为人体抵御外界感染的首道防线，在维持身体状态和抵抗感染时形状与结构不断变化，细菌会识别器官组织几何特性破坏其保护作用并扩散感染，但组织器官几何特性调控细菌感染的机制尚未完全明晰。中国科学院深圳先进技术研究院黄术强团队联合中国农业大学朱奎团队、北京大学黄建永团队，开展跨学科研究，揭示了组织形态特征调控细菌感染的新规律，并提出基于力敏感离子通道蛋白 Piezo1 的抗菌策略。\n研究发现，细菌感染受宿主组织力学特性精准控制，多种病原菌在上皮单层的感染呈 “边际效应”，即细胞层越紧密，边缘越易被细菌侵袭，且与细胞种类、培养条件无关，打破了细菌随机分布的传统观点。同时，细胞牵引力与细菌感染协同，细胞层边缘高牵引力区域易被入侵。而力敏感性离子通道蛋白 Piezo1 在细菌入侵时会聚集到感染部位形成囊泡，将牵引力转化为生化信号，促使细菌在边缘聚集感染 。\n基于此，团队提出 “力学导航抗菌” 双效策略。一是将 Piezo1 作为抗菌靶点，抑制其表达和激活可降低感染组织细菌载量；二是构建仿生 3D 肠道芯片，发现消化道细菌在隐窝结构富集躲避抗菌制剂，进而开发 “细菌替身” 纳米递药系统，模拟耐药菌表面特征，装载抗生素精准靶向感染位点，提升抗菌药物在隐窝的局部浓度，提高对耐药菌感染的疗效。4 月 21 日，该研究成果发表于《细胞》杂志，为应对耐药菌感染提供了新范式。', 'upload/1745851929419.png', '<p>上皮细胞层是人体抵御外界感染的“第一道防线”。在维持身体正常状态、保护屏障和抵抗感染的过程中，上皮细胞层的形状和结构不断发生变化。研究发现，细菌能够通过识别器官组织的几何特性以破坏细胞层的保护作用并引发感染扩散。虽然解析组织器官几何特性调控细菌感染的具体机制对开发新型抗感染疗法具有重要意义，但这一科学问题尚未得到充分揭示。</p><p><br></p><p>中国科学院深圳先进技术研究院研究员黄术强团队与中国农业大学教授朱奎团队、北京大学研究员黄建永团队合作，通过跨学科协同创新，从“器官几何结构特征-细胞力信号转导-病原菌感染”互作机制出发，首次揭示组织形态特征调控细菌感染的新规律。同时，团队提出了基于力敏感离子通道蛋白Piezo1的抗菌策略，为抗菌药物提质增效、降低毒副作用和指导合理用药提供了潜在方案，具有临床应用前景。</p><p><br></p><p>该团队通过结合微生物学、力学生物学与生物医学工程等学科交叉研究发现，细菌感染并非随机发生，而是受到宿主组织力学特性的精准控制。通过构建不同组织形态的上皮细胞层模型，探讨病原菌与其互作的时空动态过程，团队揭示了多种病原菌上皮单层中的空间感染规律并非传统认为的随机分布，而是呈现出明显的“边际效应”。该感染模式与细胞层的致密程度直接相关——结构越紧密的细胞层，其边缘区域越易被细菌侵袭，且这一规律不受细胞种类或培养条件影响。这打破了传统的细菌随机分布观点，表明不同组织形态对细菌感染的空间分布具有重要调控作用。</p><p><br></p><p>进一步，该团队通过力学分析模型发现，在上皮细胞层中，细胞牵引力与细菌感染具有高度协同性，高牵引力的细胞边缘区域更易被细菌入侵。这犹如橡皮筋拉伸时两端受力最大，细胞层边缘因几何限制产生的“强拉力”成为细菌攻击的“热点区域”，为剖析细菌感染的空间选择性提供了新视角。</p><p><br></p><p>在此基础上，该团队“锁定”了关键蛋白——力敏感性离子通道蛋白Piezo1的作用：当细菌开始入侵时，这种能够感知牵引力的蛋白会像磁铁一样聚集到感染部位，形成特殊的囊泡结构。这些囊泡如同“信号放大器”，将细胞受到的牵引力转化为“生化信号”，促使更多细菌在边缘区域聚集感染。</p><p><br></p><p>这一发现揭示了力学因素“指挥”细菌攻击位置的精细调控，并提出了全新治疗方向——通过干扰细胞的力学感应系统，可能开发出阻止细菌精准定位感染部位的新型药物策略。</p><p><br></p><p>该团队基于上述“力学感应开关”——Piezo1蛋白调控细菌感染的核心发现，创新性提出“力学导航抗菌”双效策略。第一步靶向力学信号源头，尝试将Piezo1作为抗菌靶点，并发现抑制Piezo1的表达和激活均能明显降低感染组织中的细菌载量。第二步构建“仿生战场”，建立仿生3D肠道芯片精准复现肠道隐窝结构，发现消化道细菌倾向于在隐窝结构中富集，以在感染过程中隐匿在胞质中躲避抗菌制剂的杀伤作用，使传统药物难以有效渗透。</p><p><br></p><p>为此，该团队开发了靶向隐窝结构的“细菌替身”纳米递药系统。就像“特洛伊木马”一般，这些纳米颗粒外壳模拟耐药菌的表面特征，内核装载抗生素。该药物递送系统能够在物理空间上精准靶向感染位点，实现药物的空间精准递送，并可以提升抗菌药物在隐窝结构的局部浓度，提高对耐药菌感染的疗效。这种“断其信号源+精准送弹药”的力学导航疗法，为应对耐药菌感染提供了增效减毒的新范式。</p><p><br></p><p>4月21日，相关研究成果发表在《细胞》（Cell）上。</p><p>本文转自[盖德化工网],原文：http://news.china.guidechem.com/2025/04/23/518882.html</p>');
INSERT INTO `news` VALUES (134, '2025-03-18 17:48:21', '科研人员筛选发现赖氨酸靶向共价抑制剂', '中国科学院上海药物研究所陆晓杰课题组联合复旦大学周璐课题组、浙江大学医学院附属第二医院肿瘤研究所 / 浙江大学转化医学研究院孙毅课题组，创新地将基于活性的蛋白质组分析（ABPP）数据与共价 DNA 编码化合物库（CoDEL）技术相结合，借助赖氨酸反应性蛋白质组学数据指导 CoDEL 筛选，成功发现了结构新颖、反应机制多样的赖氨酸靶向共价抑制剂。这一成果意义重大，不仅拓展了共价靶向策略的靶标适用范围，还为共价抑制剂的理性设计开辟了新路径。\n共价药物是现代药物研发的重要方向，赖氨酸作为共价结合位点比半胱氨酸更具优势，能拓宽潜在靶标范围。近年来基于结构的药物设计虽推动了赖氨酸靶向共价抑制剂开发，但因依赖已知配体结构，在新靶点或难成药靶点应用受限。CoDEL 技术是共价药物开发的关键工具，陆晓杰课题组此前已借此发现半胱氨酸、酪氨酸靶向共价抑制剂，然而针对赖氨酸的系统化 CoDEL 筛选平台缺失，且赖氨酸在人类蛋白质组分布广泛，随机筛选效率低。\n此次研究团队整合基于化合物和基于弹头的 ABPP 数据，构建了含高反应性且可配体化赖氨酸位点的蛋白质数据集，助力筛选靶标的合理选择；引入 8 个不同反应机制的赖氨酸靶向共价弹头，合成包含 1070 万个化合物的 CoDELs，筛选出针对 PGAM1、BRD 家族蛋白和 UBE2N 的抑制剂。其中化合物 1、4、9 分别展现出独特的作用机制，尤其是化合物 9 为调节 UBE2N 介导的泛素化途径提供新机制。\n4 月 13 日，相关成果发表于《德国应用化学》，该研究得到国家自然科学基金、国家重点研发计划及上海市和浙江省相关项目支持。', 'upload/1745851858937.png', '<p>中国科学院上海药物研究所陆晓杰课题组联合复旦大学周璐课题组、浙江大学医学院附属第二医院肿瘤研究所/浙江大学转化医学研究院孙毅课题组，将基于活性的蛋白质组分析（ABPP）数据与共价DNA编码化合物库（CoDEL）技术相结合，利用赖氨酸反应性蛋白质组学数据指导CoDEL筛选，发现了结构新颖、反应机制多样的赖氨酸靶向共价抑制剂。这一方法不仅扩展了共价靶向策略的靶标适用范围，而且为共价抑制剂的理性设计提供了新思路。</p><p><br></p><p>共价药物通过与特定氨基酸残基形成共价键，实现对靶标蛋白的持久调控，是现代药物研发中的重要方向。相较于半胱氨酸靶向策略，赖氨酸作为共价结合位点能够克服半胱氨酸的丰度限制，拓宽潜在靶标的选择范围。近年来，基于结构的药物设计推动了赖氨酸靶向共价抑制剂开发。但是，该方法对已知配体结构的依赖限制了其在新靶点或难成药靶点中的应用。</p><p><br></p><p>CoDEL技术正逐步发展为共价药物开发的关键工具。陆晓杰课题组等将该技术应用于半胱氨酸靶向共价抑制剂的发现，针对BTK、JAK3、PIN1及SARS-CoV-2非结构蛋白等靶标发现了具有全新结构的共价苗头化合物。进而，陆晓杰课题组合作开发了ABPP-CoDEL联用策略，发现了一系列酪氨酸靶向的共价抑制剂。然而，目前仍缺乏专门针对赖氨酸的系统化CoDEL筛选平台。同时，由于赖氨酸在人类蛋白质组中分布广泛，随机靶标筛选效率较低。</p><p><br></p><p>该团队通过整合基于化合物和基于弹头的ABPP数据，构建了包含高反应性且可配体化赖氨酸位点的蛋白质数据集，为筛选靶标的合理选择提供了支持。进一步，团队引入8个具有不同反应机制的赖氨酸靶向共价弹头，合成了包含1070万个化合物的CoDELs。共价筛选结果发现了针对PGAM1、BRD家族蛋白和UBE2N的赖氨酸靶向共价抑制剂。其中，化合物1是PGAM1的活性光共价配体，化合物4与BRD家族蛋白溴结构域中未被探索的位点形成可逆共价键。值得注意的是，化合物9能够不可逆地与UBE2N结合，诱导UBE2N/UBE2V2复合物的构象变化，破坏泛素链的形成并干扰其下游功能活性，为调节UBE2N介导的泛素化途径提供了新机制。</p><p><br></p><p>上述研究通过整合蛋白质组学数据和共价DEL技术，为赖氨酸靶向共价抑制剂的发现提供了高效筛选平台。</p><p><br></p><p>4月13日，相关研究成果以Proteome-Wide Data Guides the Discovery of Lysine-Targeting Covalent Inhibitors Using DNA-Encoded Chemical Libraries为题，发表在《德国应用化学》上。研究工作得到国家自然科学基金、国家重点研发计划以及上海市和浙江省相关项目的支持。</p><p>原文链接：</p>');
INSERT INTO `news` VALUES (135, '2025-03-18 17:48:21', '地球磁尾高速电子流研究获进展 ', '高速等离子体流在地球磁层、太阳风等环境中广泛存在，是能量和物质传输的主要途径。地球磁尾作为太阳风 - 磁层耦合关键区域，其物质和能量向近地空间输运引发空间天气爆发性过程，磁场重联加速产生的高速离子流是磁尾等离子体和磁能输运的主要媒介，此前人们对高速离子流已有较全面认识，但对等离子体中电子在磁尾的整体性加速过程、分布特征和作用尚不清楚。2015年美国航空航天局发射磁层多尺度任务卫星，能提供高精度电子三维相空间观测数据。中国科学院国家空间科学中心研究团队联合国内外机构科研人员，基于该卫星磁尾探测数据，对地球磁尾高速电子流进行系统性研究。研究发现磁尾高速电子流空间分布呈晨昏不对称性，约70%事例在地球昏侧，且与磁场重联相关；在磁尾不同区域，高速电子流相对当地磁场运动特征不同，重联过程是其形成的主要机制。该研究获得高速电子流统计特征，揭示其与重联的密切联系，加深了对无碰撞等离子体环境中电子动理学过程的认识，研究成果发表在AGU Advances上并被Eos报道，研究得到多个机构支持。 ', 'upload/1745851771271.png', '<p>高速等离子体流作为能量和物质传输的主要途径，广泛存在于地球磁层、太阳风和行星等离子体环境中。地球磁尾作为太阳风-磁层耦合的关键区域，其储存的物质和能量向近地空间输运是引发空间天气爆发性过程的主要原因。在这个过程中，磁场重联加速产生的高速离子流是磁尾等离子体和磁能输运的主要媒介。此前的卫星观测和数值模拟已对高速离子流的产生、演化和作用开展了大量研究，形成了较为全面的认识。然而，关于等离子体中另一个主要粒子——电子，其在磁尾中的整体性加速过程、分布特征和作用尚不清楚。</p><p><br></p><p>2015年3月，美国航空航天局发射了磁层多尺度任务卫星任务。该任务由4颗完全相同的卫星组成，以正四面体位形飞行，并携带多台高精度探测载荷，能够提供极高精度的电子三维相空间观测数据，实现了空间中电子尺度物理过程的精细探测。</p><p><br></p><p>基于磁层多尺度任务卫星的磁尾探测数据，中国科学院国家空间科学中心研究团队联合瑞典空间物理研究所、南方科技大学等国内外研究机构的科研人员，对地球磁尾的高速电子流开展了系统性搜寻，剖析了其参数统计特征、磁尾空间分布规律、晨昏不对称性和与重联的关联性。</p><p><br></p><p>研究发现，磁尾高速电子流空间分布呈现显著的晨昏不对称性特征，其中约70%的事例分布在地球昏侧，这一特征与磁尾重联相关的结构和物理过程的空间分布特征一致，说明磁尾高速电子流与磁场重联相关。高速电子流可以广泛地在磁尾的等离子体片、等离子体片边界层和尾瓣区中观测到，但不同区域中高速电子流相对当地磁场的运动特征呈现显著差异。在等离子体片内，高速电子流可沿着当地磁场任意方向运动，而在等离子体片边界层和尾瓣区中，高速电子流主要沿着当地磁场运动。这与重联电流片和分离线中电子主要过程相对应，表明重联过程是高速电子流形成的主要机制。</p><p><br></p><p>该研究获得了地球磁尾高速电子流的统计特征，揭示了其与重联的密切联系，加深了科研人员对无碰撞等离子体环境中电子动理学过程的认识。</p><p><br></p><p>相关研究成果以High-speed electron flows in the Earth magnetotail为题，发表在AGU Advances上。同时，这一成果作为亮点研究被AGU新闻期刊Eos报道。研究工作得到国家航天局、科学技术部、国家自然科学基金委员会、中国科学院等的支持。</p><p>原文链接：<a href=\"https://www.cas.cn/syky/202504/t20250418_5064699.shtml\" rel=\"noopener noreferrer\" target=\"_blank\">地球磁尾高速电子流研究获进展----中国科学院</a></p>');
INSERT INTO `news` VALUES (136, '2025-03-18 17:48:21', '皮质下母源复合体SCMC调控早期胚胎表观重编程新机制获揭示 ', '卵母细胞 - 胚胎转变是哺乳动物胚胎着床前发育的关键过程，涉及表观修饰重编程等重要事件，母源物质发挥关键作用，但相关研究曾因材料和技术受限进展缓慢。皮质下母源复合体 SCMC 由 10 多种母源蛋白构成，其相关组分突变在小鼠中影响胚胎发育，在人类中与多种生殖障碍相关，成为研究热点，但缺乏其调控细胞核内表观修饰事件的分子机制解释。近期，中国科学院动物研究所李磊团队联合多团队在《自然 - 结构与分子生物学》发表成果，揭示 SCMC 组分 KHDC3 通过维持表观调控因子 SPIN1 的胞质定位，确保小鼠卵母细胞 - 胚胎转变过程中 H3K4me3 重编程和合子基因组激活正常进行。研究通过整合免疫沉淀 - 质谱数据鉴定出 SPIN1，经生物化学实验、构建蛋白结构模型、基因敲除小鼠模型、多种测序技术等深入探究，发现母源 KHDC3 缺失会使 SPIN1 异常入核，损害胚胎发育及 H3K4me3 重编程，分子机制是阻碍去甲基化酶对 H3K4me3 的识别，阻断二者结合可部分挽救胚胎发育缺陷。该研究阐明了 SCMC 调控早期胚胎发育的新机制，为剖析母源 - 合子转换的表观遗传调控机制提供新视角，也为人类 SCMC 突变导致生殖疾病的研究提供理论参考 ，研究工作得到国家自然科学基金和国家重点研发计划等支持。', 'upload/1745851661940.png', '<p>卵母细胞-胚胎转变是哺乳动物胚胎着床前发育的关键过程，标志着胚胎调控机制从依赖母源物质向依赖胚胎物质的转换，包括表观修饰重编程与合子基因组激活等特异生理事件在此期间发生。例如，受精后DNA甲基化大规模擦除和印记区特定维持；H3K4me3和H3K27me3等组蛋白修饰在小鼠合子基因组激活发生的2-cell晚期从非经典向经典模式的转变等。一般认为，卵母细胞储存的母源物质在卵母细胞-胚胎转变过程中发挥关键作用。受研究材料和技术制约，相关领域长期进展缓慢。近期发展的微量测序和人工智能等技术为相关领域发展带来契机。2008年首次报道的卵母细胞和早期胚胎特异性表达的皮质下母源复合体SCMC，为揭示卵母细胞-胚胎转变过程的分子机制提供了工具。</p><p><br></p><p>SCMC由核心组分和非核心组分KHDC3等10多种高丰度表达的母源蛋白共同构成，主要定位于胞质并富集于皮质区。小鼠SCMC相关组分的母源敲除影响卵母细胞-胚胎转变过程并导致胚胎发育延迟或停滞于卵裂期。在人类中，SCMC相关基因突变与多种生殖障碍高度相关，包括受精失败、早期胚胎停育、复发性流产及葡萄胎等。SCMC已成为哺乳动物早期胚胎母源调控和人类女性生殖医学研究的热点和新方向。近期的SCMC研究取得进展，中国科学院动物研究所李磊团队联合四川大学华西第二医院邓东团队，利用冷冻电镜技术解析小鼠和人类SCMC核心复合体（SCMCcore）的三维结构，并揭示SCMC通过稳定14-3-3蛋白调控小鼠早期胚胎的细胞周期。这为理解hSCMC突变导致胚胎发育停滞等女性生殖疾病的发病机制提供了线索。值得注意的是，大量病例报道人类SCMC组分突变导致早期胚胎或卵母细胞母源印记区域DNA甲基化的异常，提示SCMC参与表观修饰调控。然而，对于胞质定位的SCMC如何调控细胞核内表观修饰事件这一科学问题，仍缺乏明确的分子机制解释。</p><p><br></p><p>4月17日，李磊团队联合广州医科大学附属第三医院高征团队、清华大学颉伟团队、四川大学华西第二医院邓东团队等，在《自然-结构与分子生物学》（Nature Structural &amp; Molecular Biology）上发表了题为The subcortical maternal complex safeguards mouse oocyte-to-embryo transition by preventing nuclear entry of SPIN1的研究成果。该研究揭示SCMC组分KHDC3通过维持表观调控因子SPIN1的胞质定位，确保小鼠卵母细胞-胚胎转变过程中H3K4me3重编程和合子基因组激活正常进行。这不仅阐明了SCMC调控早期胚胎发育的新机制，凸显了母源蛋白的定位改变在胚胎表观修饰重塑等生物学事件中的意义，也为人类SCMC突变导致生殖疾病的研究提供了理论参考。</p><p><br></p><p>该研究通过整合多组mSCMC免疫沉淀-质谱数据，鉴定出SCMC复合物的新成员SPIN1。已有研究表明，SPIN1在普通细胞系中主要定位于细胞核，并与H3K4me3修饰高度结合调控基因表达，但在小鼠卵母细胞和早期胚胎中该蛋白主要呈现胞质定位。研究通过系统的生物化学实验，证实这种定位模式是由SPIN1与KHDC3的C端无序区直接相互作用实现的。结合Alphafold3的蛋白结构预测，研究重建了SCMCcore- KHDC3/SPIN1的蛋白结构模型，揭示了该复合物的分子互作基础。</p><p><br></p><p>该研究借助基因敲除小鼠模型发现，在母源KHDC3缺失以及SCMCcore敲除的卵母细胞和早期胚胎中SPIN1表达水平显著下调，并伴随其异常核定位。免疫荧光染色证实，异常入核的SPIN1可与H3K4me3结合共定位于染色体上。研究通过显微注射技术，在受精卵中表达带有核定位信号的SPIN1，模拟SPIN1的异常入核现象，并发现该过程以剂量依赖的方式损害胚胎发育及H3K4me3重编程。利用STAR ChIP-seq等测序技术，研究在过表达入核SPIN1和KHDC3母源敲除的晚期2-cell胚胎中，进一步观察到明显的H3K4me3重编程受阻。分子机制上，SPIN1与H3K4me3的高亲和力结合阻碍KDM5B去甲基化酶对H3K4me3的识别，从而干扰正常的组蛋白去甲基化。更重要的是，使用抑制剂阻断SPIN1与H3K4me3的结合能够部分挽救KHDC3缺失胚胎的发育缺陷。</p><p><br></p><p>该研究发现，胞质定位的KHDC3通过调控具有表观修饰调控功能的SPIN1定位，在卵母细胞-胚胎转变过程中发挥“分子门控”作用，确保H3K4me3重编程和合子基因组激活正常进行。这为剖析母源-合子转换的表观遗传调控机制提供了新视角。</p><p><br></p><p>研究工作得到国家自然科学基金和国家重点研发计划等的支持。</p><p>原文链接：<a href=\"https://www.cas.cn/syky/202504/t20250422_5065104.shtml\" rel=\"noopener noreferrer\" target=\"_blank\">皮质下母源复合体SCMC调控早期胚胎表观重编程新机制获揭示----中国科学院</a></p>');
INSERT INTO `news` VALUES (137, '2025-03-18 17:48:21', '不出海就出局：中国生物制药出海新时代开启，CXO全球化布局加速 ', '两会聚焦中国双抗全球成果，恒瑞、联邦等药企与海外巨头的重磅合作，似平地惊雷，宣告中国生物药强势融入全球创新体系。与此同时，CXO 企业也在全球化布局的赛道上疾驰。这不仅是行业发展的关键抉择，更是关乎企业生死存亡的必由之路。\n本文转自[盖德化工网],原文：http://news.china.guidechem.com/2025/04/24/518891.html', 'upload/1745851438335.png', '<p>在全球医药版图急剧变迁的当下，一场关乎中国制药命运的宏大出海征程正澎湃开启！两会聚焦中国双抗全球成果，恒瑞、联邦等药企与海外巨头的重磅合作，似平地惊雷，宣告中国生物药强势融入全球创新体系。与此同时，CXO 企业也在全球化布局的赛道上疾驰。这不仅是行业发展的关键抉择，更是关乎企业生死存亡的必由之路。</p><p>两会对中国双抗全球成果的聚焦，以及恒瑞医药、联邦制药与海外巨头的高额技术授权合作，标志着中国生物药融入全球医药创新体系的进程已势不可挡。在政策鼓励 “走出去” 参与全球竞争的背景下，“出海” 不仅成为行业发展的核心战略，也促使企业构建各具特色的全球化布局。</p><p><br></p><p>目前，中国生物药企形成四种主要出海模式。</p><p><br></p><p>自主出海要求企业独立完成海外研发、临床、生产及商业化全流程，百济神州是其中典范。其替雷利珠单抗已在欧美多国获批上市，并通过自建商业化团队与本地化供应，实现了自主出海的成功实践。</p><p><br></p><p>License - out 模式下，企业将自主研发药物的海外权益授权给跨国药企，以首付款、里程碑付款和销售分成获取收益，自身不直接参与海外运营。2023 年，License - out 数量首次超过 License - in，2024 年更是达到 45 件。其中，ADC 赛道尤为亮眼，默沙东与科伦博泰的合作便是典型案例，推动了 ADC 交易热潮。</p><p><br></p><p>NewCo 模式由本土创新药企与海外资本合作成立新公司，前者提供潜力药物管线，后者注入资金与资源，专注单一药物的海外全周期开发。这种模式兼具资金回笼快、风险分散、资源集中等优势，能够有效锁定远期权益。</p><p><br></p><p>并购则为中国 Biotech 企业开辟了全球化捷径。通过被跨国药企收购，企业不仅能快速获得资金，还可借助买方的全球资源网络提升估值与股东回报，实现技术互补。例如，阿斯利康收购亘喜生物获取 CAR - T 技术平台，诺华收购信瑞诺巩固在 lgA 肾病领域的布局。</p><p>随着与全球药企技术授权合作的常态化，中国创新药的技术实力已获得国际认可，在单抗、双抗等多个领域正从追赶者向引领者转变。</p><p><br></p><p>不过，各细分赛道仍面临挑战：多肽药物受产能、技术创新和品牌认知度制约；核酸药物尚处起步阶段，虽交易规模未来可期，但目前仍需探索；细胞与基因治疗领域虽有西达基奥仑赛等成功案例，但严格监管、技术与专利壁垒亟待突破。</p><p><br></p><p>2025 年将成为中国生物药从战略布局转向深耕全球市场的关键转折点。</p><p><br></p><p>CXO企业的全球化布局</p><p><br></p><p>Guide View</p><p><br></p><p>在技术能力迭代与 “出海” 意愿驱动下，中国生物药上下游产业链企业纷纷将 “出海” 作为重要战略，寻求增量市场。</p><p><br></p><p>众多依托中国市场的 CDMO 加速海外布局，为中国创新药进入海外市场提供 “渠道” 支撑，同时 CDMO 自身也需应对地缘政治风险，推动营收多元化。</p><p><br></p><p>2020 - 2023 年，中国生物药 CDMO 企业海外营收占比始终超 50%，2023 年药明康德、博腾股份、凯莱英、康龙化成等CXO领军企业的境外营收占比达 80% 左右，凸显海外市场在其业务中的核心地位。</p><p>中国生物药 CDMO 以全球化视野，通过自建和外延并购双路径设立海外研发生产基地。</p><p><br></p><p>药明康德作为 CXO 龙头，近年来加速全球设施建设。2024 年年报显示，公司持续投入瑞士库威基地，使口服制剂产能翻倍；推进美国米德尔顿基地建设，计划 2026 年末运营；2024 年 5 月，新加坡研发及生产基地开工，一期预计 2027 年投入运营。</p><p><br></p><p>药明生物推行 “全球双厂” 战略，构建覆盖全产业链的 CRDMO 平台，拥有 4 个研究中心、8 个开发中心及 9 个生产基地。在美国，扩建马萨诸塞州伍斯特基地（MFG11），建成后产能达 3.6 万升，新泽西州克兰伯里临床生产基地已运营；海外还布局爱尔兰、德国基地，新加坡基地在建。</p><p><br></p><p>在亚洲，新加坡 CRDMO 中心将成为服务亚太及全球市场的重要基地，其生产基地产能规划 120,000L，有扩展至 240,000L 的潜力。</p><p><br></p><p>在欧洲，爱尔兰生物基地三个生产设施获 HPRA 的 GMP 认证，2024 年启动商业化生产。</p><p><br></p><p>药明生物未来总规划产能近 50 万升，海外产能占 40%，为全球客户提供一流解决方案。</p><p><br></p><p>九洲药业拟通过新加坡子公司在德国、日本设立全资孙公司，建设 CRO 服务平台，分别投资约 950 万美元和 4200 万美元。其日本、德国研发中心已运营，美国中试车间扩建完成，还持续推进原料药生产基地并购。</p><p><br></p><p>凯莱英取得前辉瑞英国 Sandwich Site，完成首个欧洲研发生产基地布局。</p><p><br></p><p>药石科技的美国宾州 West Chester 研发中心自 2023 年运营后，已承接多个 GMP 项目。</p><p><br></p><p>博腾股份在美国新泽西设结晶和制剂研发场地，在斯洛文尼亚建 API 工艺开发及生产基地。</p><p><br></p><p>普洛药业于美国波士顿设立 CDMO 研发中心。</p><p><br></p><p>中国 CXO 企业密集的海外布局，是全球化经济推力与地缘政治 “倒逼” 的必然结果。在全球化浪潮下，国际化扩张需求迫切；而美国贸易保护主义加剧、《生物安全法案》等事件，促使企业加速 “走出去”，拓展新兴市场，增强抵御外部风险能力，主动适应国际市场变局。</p><p><br></p><p>欧美风高浪急，新兴市场成“新锚点”</p><p><br></p><p>Guide View</p><p><br></p><p>欧美市场：机遇与挑战并存</p><p><br></p><p>在全球医药产业的大棋局中，CXO 企业的战略布局调整正深刻影响着行业的走向。</p><p><br></p><p>美国，作为全球最大的药品市场，以及欧洲，全球第二大药品市场，均是中国 CXO 企业出海的关键目标地。不过，长期以来，相较于北美市场，欧洲市场由于 CXO 服务需求小且分散，加之理念保守、华人圈层渗透率低等因素，国内 CXO 企业对其兴趣一直不高。但近年来，情况有所转变。</p><p><br></p><p>从头部公司的财报数据来看，药明康德 2024 年年报显示，美国市场收入 250.2 亿元，占总收入 64%，剔除新冠商业化项目同比增长 7.7%，欧洲市场收入 52.3 亿元，同比增长 14.4%；</p>');
INSERT INTO `news` VALUES (138, '2025-03-18 17:48:21', '权威发布丨云南省人民政府令第231号——《云南省可制毒化学品管理规定》 ', '《云南省可制毒化学品管理规定》已经2024年9月3日第十四届云南省人民政府第39次常务会议审议通过，现予公布，自2024年11月1日起施行。\n本文转自[盖德化工网],原文：http://news.china.guidechem.com/2025/04/21/518864.html', 'upload/1745851232247.png', '<p>云南省人民政府令</p><p><br></p><p>第231号</p><p><br></p><p>《云南省可制毒化学品管理规定》已经2024年9月3日第十四届云南省人民政府第39次常务会议审议通过，现予公布，自2024年11月1日起施行。</p><p><br></p><p>省 长 王予波</p><p><br></p><p>2024年9月19日</p><p><br></p><p>云南省可制毒化学品管理规定</p><p><br></p><p>第一条 为加强可制毒化学品管理，防止可制毒化学品被用于制造毒品，保护公民身心健康，维护公共安全，根据《中华人民共和国禁毒法》、《云南省禁毒条例》等法律法规，结合本省实际，制定本规定。</p><p><br></p><p>第二条 本省行政区域内可制毒化学品生产、经营、购买、运输、寄递、使用及其监督管理等活动，适用本规定。</p><p><br></p><p>可制毒化学品属于药品、危险化学品、易制爆危险化学品的，应当同时遵守法律、法规和规章对药品、危险化学品、易制爆危险化学品的相关规定。</p><p><br></p><p>第三条 可制毒化学品实行品种目录管理制度，具体品种由本规定附件列示。</p><p><br></p><p>可制毒化学品的品种实行动态调整，由省级公安机关会同药品监管、应急管理等部门提出方案，报省人民政府批准公布。</p><p><br></p><p>第四条 鼓励向公安机关及有关部门举报可制毒化学品违法行为。接到举报的部门应当为举报者保密。举报属实的，应当给予奖励。</p><p><br></p><p>第五条 县级以上人民政府负责本行政区域内可制毒化学品的监督管理工作，建立工作机制，督促有关部门依法履行职责。</p><p><br></p><p>第六条 公安机关依法对可制毒化学品的品种、数量、流向、用途等进行监督管理。</p><p><br></p><p>应急管理部门依法对属于危险化学品的可制毒化学品生产、经营单位安全生产进行监督管理。</p><p><br></p><p>市场监管部门依法对可制毒化学品产品质量及其标识进行监督管理。</p><p><br></p><p>生态环境部门依法对申报废弃的属于危险化学品的可制毒化学品无害化处置进行监督管理。</p><p><br></p><p>交通运输部门依法对可制毒化学品运输进行监督管理。</p><p><br></p><p>药品监管部门依法对药品类可制毒化学品中的原料药及其单方制剂进行监督管理。</p><p><br></p><p>邮政管理部门依法对可制毒化学品的寄递服务进行监督管理。</p><p><br></p><p>其他有关部门依法履行监督管理职责。</p><p><br></p><p>第七条 生产、经营、购买、运输、寄递、使用、储存、销毁可制毒化学品的单位，应当建立内部管理制度，如实记录可制毒化学品的品种、数量、流向、用途等信息，采取必要的防范措施，防止可制毒化学品流入制毒渠道。</p><p><br></p><p>第八条 有关部门应当加强可制毒化学品信息管理，实现信息互通共享。</p><p><br></p><p>第九条 有下列情形之一的，县级以上公安机关可以会同有关部门开展可制毒化学品管理联合执法：</p><p><br></p><p>（一）涉及两个以上行政执法部门管理职责的；</p><p><br></p><p>（二）涉及不同行政执法部门、区域或者层级之间管理职责衔接的；</p><p><br></p><p>（三）不同行政执法部门对同一检查对象实施的不同行政检查，可以同时一次性开展的。</p><p><br></p><p>第十条 生产、经营可制毒化学品的单位应当向所在地县级公安机关提供下列信息：</p><p><br></p><p>（一）单位名称、地址、相关许可证、营业执照；</p><p><br></p><p>（二）法定代表人以及经营管理人相关信息；</p><p><br></p><p>（三）品种、数量、流向；</p><p><br></p><p>（四）储存地点；</p><p><br></p><p>（五）其他需要提供的信息。</p><p><br></p><p>生产、经营可制毒化学品的单位应当在上述信息变更之日起30日内，通过云南警方微信公众号提交相关信息。</p><p><br></p><p>生产、经营可制毒化学品的单位转产、停产、停业或者解散的，应当通过云南警方微信公众号提交品种、数量、储存地点等信息。</p><p><br></p><p>第十一条 可制毒化学品包装标识应当符合《中华人民共和国产品质量法》相关规定。禁止改变、损毁、更换包装标识。</p><p><br></p><p>第十二条 经营可制毒化学品的单位应当建立台账资料，出具销售凭证。销售凭证应当载明下列信息：</p><p><br></p><p>（一）购买方名称、地址、联系方式；</p><p><br></p><p>（二）品种、数量、用途；</p><p><br></p><p>（三）收货方名称、地址；</p><p><br></p><p>（四）其他应当载明的信息。</p><p><br></p><p>销售凭证包括销售发票、收据等原件或者电子信息。台账资料和销售凭证保存期限不得少于2年。</p><p><br></p><p>第十三条 出卖、购买可制毒化学品应当通过云南警方微信公众号如实提交品种、数量、用途等信息。</p><p><br></p><p>第十四条 运输可制毒化学品的托运方与承运方应当签订运输合同，合同应当载明品种、数量、流向、用途等信息。</p><p><br></p><p>承运方应当核验运输物品，并通过云南警方微信公众号提交前款信息，发现物品与信息不符的不得承运。</p><p><br></p><p>禁止在运输物品中夹藏可制毒化学品。</p><p><br></p><p>第十五条 运输可制毒化学品的承运方应当全程携带销售凭证、运输合同等材料。</p><p><br></p><p>第十六条 寄递可制毒化学品的，寄件人应当如实提供交寄物品通用名称、化学名称、数量、用途、收件人等信息。禁止在交寄物品中夹藏可制毒化学品。</p><p><br></p><p>邮政企业、快递企业应当依法验视用户交寄的物品，并对寄件人身份和物品信息进行查验、登记。寄件人拒绝验视、查验和登记的，邮政企业、快递企业不得提供服务，并及时报告公安机关。</p><p><br></p><p>第十七条 使用可制毒化学品的教学、科研、医疗、测试检测等单位应当建立内部管理、使用台账和出入库登记等制度。</p><p><br></p><p>使用台账和出入库登记应当如实记录使用的品种、数量、日期、用途以及库存等情况。台账和出入库登记资料保存期限不得少于2年。</p><p><br></p><p>第十八条 储存可制毒化学品应当有专门仓库、场地或者储存室，并建立可制毒化学品出入库台账，如实记录出入库品种、数量、日期等情况。台账资料保存期限不得少于2年。</p><p><br></p><p>第十九条 禁止丢弃可制毒化学品。</p><p>可制毒化学品丢失、被盗、被抢的，应当立即报告公安机关。</p><p><br></p><p>第二十条 对依法查获或者无主可制毒化学品，应当在有关部门的监督下，区别可制毒化学品的不同情况进行保管、回收，或者依照环境保护法律、行政法规有关规定，由有资质的单位在生态环境部门的监督下销毁。销毁所需费用由同级人民政府予以保障。</p><p><br></p><p>第二十一条 公安机关应当对进入本省的可制毒化学品的出卖方、购买方、品种、数量、流向、用途等信息的真实性进行核查。</p><p><br></p><p>单位、个人应当配合公安机关开展核查，并提供相关证明材料。</p><p>禁止品名不符、去向不明、用途存疑的可制毒化学品进入本省。</p><p><br></p><p>第二十二条 根据国务院有关部门授权，边境地区县级以上公安机关可以与有关国家或者地区的执法机关开展执法合作，对经本省出口毗邻国家的可制毒化学品进行核查。</p><p><br></p><p>第二十三条 违反本规定的行为，法律、法规有处罚规定的，从其规定；构成犯罪的，依法追究刑事责任。</p><p><br></p><p>第二十四条 行政部门工作人员在可制毒化学品监督管理中滥用职权、玩忽职守、徇私舞弊的，由有权部门依法给予处分；构成犯罪的，依法追究刑事责任。</p><p><br></p><p>第二十五条 违反本规定第二十一条，无法证明可制毒化学品合法流向和实际用途的，由公安机关予以劝返，并通报来源地有关部门。</p><p><br></p><p>第二十六条 违反本规定，有下列情形之一，由县级以上公安机关责令限期改正；拒不改正或者逾期未改正的，对单位处1000元以上5000元以下罚款，对直接负责的主管人员以及其他直接责任人员予以警告：</p><p><br></p><p>（一）违反本规定第十条，生产、经营可制毒化学品的单位未提供相关信息的；</p><p><br></p><p>（二）违反本规定第十二条，经营可制毒化学品的单位出具的销售凭证未载明相关信息的；</p><p><br></p><p>（三）违反本规定第十五条，承运方未携带销售凭证的；</p><p><br></p><p>（四）违反本规定第十六条第一款，寄件人在交寄物品中夹藏不属于危险化学品的可制毒化学品的。</p><p><br></p><p>第二十七条 违反本规定，有下列情形之一，由县级以上公安机关责令限期改正，对直接负责的主管人员以及其他直接责任人员予以警告；拒不改正或者逾期未改正的，对单位处5000元以上1万元以下罚款，对直接负责的主管人员以及其他直接责任人员处500元以上2000元以下罚款：</p><p><br></p><p>（一）违反本规定第十条，生产、经营可制毒化学品的单位提供虚假信息的；</p><p><br></p><p>（二）违反本规定第十二条，经营可制毒化学品的单位拒绝提供销售凭证或者提供虚假销售凭证的；</p><p><br></p><p>（三）违反本规定第十三条，出卖、购买可制毒化学品未提供相关信息或者提供虚假信息的；</p><p><br></p><p>（四）违反本规定第十四条第三款，在运输物品中夹藏不属于危险化学品的可制毒化学品的。</p><p><br></p><p>第二十八条 违反本规定第十一条可制毒化学品包装标识规定的，由县级以上市场监管部门依法进行处理。</p><p><br></p><p>第二十九条 违反本规定第十四条第一款的，由县级以上交通运输部门依法进行处理。</p><p><br></p><p>第三十条 违反本规定第十六条第二款的，由县级以上邮政管理部门依法进行处理。</p><p><br></p><p><br></p><p><br></p><p>第三十一条 本规定自2024年11月1日起施行。</p><p>本文转自[盖德化工网],原文：http://news.china.guidechem.com/2025/04/21/518864.html</p>');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT 'remenshangpin' COMMENT '化工品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '化工品id',
  `goodname` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '化工品名称',
  `picture` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '化工品图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT 0 COMMENT '价格',
  `discountprice` float NULL DEFAULT 0 COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT 0 COMMENT '总价格',
  `discounttotal` float NULL DEFAULT 0 COMMENT '折扣总价格',
  `type` int NULL DEFAULT 1 COMMENT '支付类型',
  `status` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '状态',
  `address` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '收货人',
  `remark` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  `logistics` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '物流',
  `zhanghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商户名称',
  `goodtype` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '化工品类型',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `orderid`(`orderid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1745907635125 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '订单' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1743240434740, '2025-03-29 17:27:14', '2025329172714702', 'remenshangpin', 18, 42, '化工品名称2', 'upload/1742311583321.webp', 10, 99.9, 99.9, 999, 999, 1, '已退款', '湖南省株洲市天元区湖南工业大学', '13823888888', '地某', '', NULL, '账号2', '化工品分类2');
INSERT INTO `orders` VALUES (1743318707363, '2025-03-30 15:11:47', '2025330151147250', 'remenshangpin', 18, 42, '化工品名称2', 'upload/1742311583321.webp', 2, 99.9, 99.9, 199.8, 199.8, 1, '已退款', '湖南省株洲市天元区湖南工业大学', '13823888888', '地某', '', NULL, '账号2', '化工品分类2');
INSERT INTO `orders` VALUES (1743318707886, '2025-03-30 15:11:47', '2025330151147251', 'remenshangpin', 18, 48, '化工品名称8', 'upload/1742311660052.webp', 1, 99.9, 99.9, 99.9, 99.9, 1, '已退款', '湖南省株洲市天元区湖南工业大学', '13823888888', '地某', '', NULL, '账号8', '化工品分类8');
INSERT INTO `orders` VALUES (1743318918965, '2025-03-30 15:15:18', '2025330151518147', 'remenshangpin', 18, 41, '化工品名称1', 'upload/1742311572076.webp', 1, 99.9, 99.9, 99.9, 99.9, 1, '已退款', '湖南省株洲市天元区湖南工业大学', '13823888888', '地某', '', NULL, '账号1', '化工品分类1');
INSERT INTO `orders` VALUES (1743319206757, '2025-03-30 15:20:06', '202533015206594', 'remenshangpin', 18, 41, '化工品名称1', 'upload/1742311572076.webp', 1, 99.9, 99.9, 99.9, 99.9, 1, '已退款', '湖南省株洲市天元区湖南工业大学', '13823888888', '地某', '', NULL, '账号1', '化工品分类1');
INSERT INTO `orders` VALUES (1744772708664, '2025-04-16 11:05:08', '20254161158431', 'remenshangpin', 18, 41, '化工品名称1', 'upload/1742311572076.webp', 2, 99.9, 99.9, 199.8, 199.8, 1, '已退款', '湖南省株洲市天元区湖南工业大学', '13823888888', '地某', '', NULL, '账号1', '化工品分类1');
INSERT INTO `orders` VALUES (1744772878439, '2025-04-16 11:07:57', '202541611757672', 'remenshangpin', 18, 41, '化工品名称1', 'upload/1742311572076.webp', 1, 99.9, 99.9, 99.9, 99.9, 1, '已完成', '湖南省株洲市天元区湖南工业大学', '13823888888', '地某', '', NULL, '账号1', '化工品分类1');
INSERT INTO `orders` VALUES (1745850803844, '2025-04-28 22:33:23', '2025428223323744', 'remenshangpin', 18, 1, '工业级硫酸', 'upload/1745836789979.png', 1, 3000, 3000, 3000, 3000, 1, '已支付', '湖南省株洲市天元区湖南工业大学', '13823888888', '地某', '', NULL, 'basf001', '无机化工原料');
INSERT INTO `orders` VALUES (1745850804201, '2025-04-28 22:33:23', '2025428223323745', 'remenshangpin', 18, 3, '甲醇', 'upload/1745837510771.png', 5, 2800, 2800, 14000, 14000, 1, '已支付', '湖南省株洲市天元区湖南工业大学', '13823888888', '地某', '', NULL, 'sinopec001', '有机化工原料');
INSERT INTO `orders` VALUES (1745850824953, '2025-04-28 22:33:44', '2025428223344843', 'remenshangpin', 18, 4, '磷酸三钠 ', 'upload/1745837909231.png', 15, 6500, 6500, 97500, 97500, 1, '未支付', '湖南省株洲市天元区湖南工业大学', '13823888888', '地某', '', NULL, 'wanhua001', '有机化工原料');
INSERT INTO `orders` VALUES (1745850866167, '2025-04-28 22:34:26', '2025428223426137', 'remenshangpin', 18, 3, '甲醇', 'upload/1745837510771.png', 10, 2800, 2800, 28000, 28000, 1, '已退款', '湖南省株洲市天元区湖南工业大学', '13823888888', '地某', '', NULL, 'sinopec001', '有机化工原料');
INSERT INTO `orders` VALUES (1745850866876, '2025-04-28 22:34:26', '2025428223426138', 'remenshangpin', 18, 5, '酒石酸 ', 'upload/1745838036807.png', 1, 15000, 15000, 15000, 15000, 1, '未支付', '湖南省株洲市天元区湖南工业大学', '13823888888', '地某', '', NULL, 'basf002', '食品添加剂');
INSERT INTO `orders` VALUES (1745853471616, '2025-04-28 23:17:50', '2025428231750913', 'remenshangpin', 18, 1745853433255, '木瓜蛋白酶', 'upload/1745853391355.png', 5, 1200, 1200, 6000, 6000, 1, '已发货', '湖南省株洲市天元区湖南工业大学', '13823888888', '地某', '', NULL, 'yuanye', '食品添加剂');
INSERT INTO `orders` VALUES (1745853680934, '2025-04-28 23:21:20', '2025428232120791', 'remenshangpin', 18, 1745853433255, '木瓜蛋白酶', 'upload/1745853391355.png', 200, 1300, 1300, 260000, 260000, 1, '已发货', '湖南省株洲市天元区湖南工业大学', '13823888888', '地某', '', NULL, 'yuanye', '食品添加剂');
INSERT INTO `orders` VALUES (1745907635124, '2025-04-29 14:20:34', '2025429142034467', 'remenshangpin', 18, 1745853433255, '木瓜蛋白酶', 'upload/1745853391355.png', 1, 1300, 1300, 1300, 1300, 1, '已完成', '湖南省株洲市天元区湖南工业大学', '13823888888', '地某', '', NULL, 'yuanye', '食品添加剂');

-- ----------------------------
-- Table structure for remenshangpin
-- ----------------------------
DROP TABLE IF EXISTS `remenshangpin`;
CREATE TABLE `remenshangpin`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '化工品名称',
  `shangpinfenlei` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '化工品分类',
  `tupian` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '图片',
  `pinpai` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '品牌',
  `zhanghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '账号',
  `shangjiaxingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商家姓名',
  `shangjiariqi` date NULL DEFAULT NULL COMMENT '上架日期',
  `shangpinxiangqing` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '化工品详情',
  `onelimittimes` int NULL DEFAULT NULL COMMENT '单限',
  `alllimittimes` int NULL DEFAULT NULL COMMENT '库存',
  `clicktime` datetime NULL DEFAULT NULL COMMENT '最近点击时间',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1745853433256 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '化工品' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of remenshangpin
-- ----------------------------
INSERT INTO `remenshangpin` VALUES (1, '2025-04-28 17:16:02', '工业级硫酸', '无机化工原料', 'upload/1745836789979.png', '巴斯夫', 'basf001', '张经理', '2024-03-18', '<p>工业级硫酸，浓度98%，用于化工生产</p>', 100, 4999, '2025-04-29 14:18:31', 3000);
INSERT INTO `remenshangpin` VALUES (2, '2025-04-28 17:16:02', '氢氧化钠', '无机化工原料', 'upload/1745837202187.png', '陶氏化学', 'dow001', '李经理', '2024-03-18', '<p>工业级氢氧化钠，纯度99%，用于化工生产</p>', 50, 2980, '2025-04-28 22:34:26', 3200);
INSERT INTO `remenshangpin` VALUES (3, '2025-04-28 17:16:02', '甲醇', '有机化工原料', 'upload/1745837510771.png', '中石化', 'sinopec001', '王经理', '2024-03-18', '<p><a href=\"https://china.guidechem.com/344622/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">甲醇</a>（Methanol）又称“木醇”，其是一种有机化合物，也是结构最为简单的饱和一元醇。外观为无色、透明、易燃、易挥发的有毒液体。误饮5～10毫升能双目失明，大量饮用会导致死亡。甲醇常温下对金属无腐蚀性（铅、铝除外），略有酒精气味。相对密度0.792(20/4℃)，熔点-97.8℃，沸点64.5℃，闪点12.22℃，自燃点463.89℃，蒸气密度1.11，蒸气压13.33KPa(100mmHg 21.2℃)，蒸气与空气混合物爆炸极限6～36.5 %（体积比），能与水、乙醇、乙醚、苯、酮、卤代烃和许多其他有机溶剂相混溶。 通常用作溶剂、防霜剂(antifreeze)、燃料或中和剂。</p><p>理化性质甲醇最早从干馏木材的蒸出液中分离得到，故又称木醇或木精。甲醇绝大多数是以酯或醚的形式存在于自然界中，只有某些树叶或果实内含有少量的游离甲醇。 甲醇为可燃的无色有毒液体；纯产品略带乙醇的气味，粗产品刺鼻难闻；溶于水、乙醇、乙醚、丙酮、苯和其他有机溶剂，与饱和烃较少相溶；与水不能形成共沸物。 甲醇具有易燃易爆性，在贮存和运输过程中应防止日光照射、渗漏、撞击和滚动，库温不应超过30℃，不能与氧化剂共贮混运。使用操作人员应有个人防护用品，特别注意对眼睛的防护。</p>', 200, 7995, '2025-04-29 14:21:14', 2800);
INSERT INTO `remenshangpin` VALUES (4, '2025-04-28 17:16:02', '磷酸三钠 ', '有机化工原料', 'upload/1745837909231.png', '郎成化工', 'wanhua001', '赵经理', '2024-03-18', '<p class=\"ql-align-center\"><span style=\"color: rgb(136, 136, 136);\">型号：</span>磷酸三钠</p><p class=\"ql-align-center\"><span style=\"color: rgb(136, 136, 136);\">品牌：</span>郎成化工</p><p class=\"ql-align-center\"><span style=\"color: rgb(136, 136, 136);\">货号：</span>25-12425</p><p class=\"ql-align-center\"><span style=\"color: rgb(136, 136, 136);\">英文名称：</span>trisodium phosphate</p><p class=\"ql-align-center\"><span style=\"color: rgb(136, 136, 136);\">纯度：</span>98%</p><p class=\"ql-align-center\"><span style=\"color: rgb(136, 136, 136);\">CAS编号：</span>&nbsp;<a href=\"https://china.guidechem.com/365499/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(68, 68, 68);\">15475-67-9</a></p><p class=\"ql-align-center\"><span style=\"color: rgb(136, 136, 136);\">执行质量标准：</span>国标</p><p class=\"ql-align-center\"><span style=\"color: rgb(136, 136, 136);\">EINECS编号：</span>231-509-8</p><p class=\"ql-align-center\"><span style=\"color: rgb(136, 136, 136);\">厂家（产地）：</span>山东</p><p class=\"ql-align-center\"><span style=\"color: rgb(136, 136, 136);\">外观：</span>白色结晶粉末</p><p class=\"ql-align-center\"><span style=\"color: rgb(136, 136, 136);\">别名：</span>无水磷酸钠</p><p class=\"ql-align-center\"><span style=\"color: rgb(136, 136, 136);\">分子式：</span>Na3PO4</p><p class=\"ql-align-center\"><span style=\"color: rgb(136, 136, 136);\">包装规格：</span>25公斤/袋</p>', 100, 3985, '2025-04-28 22:34:13', 6500);
INSERT INTO `remenshangpin` VALUES (5, '2025-04-28 17:16:02', '酒石酸 ', '食品添加剂', 'upload/1745838036807.png', '巴斯夫', 'basf002', '张经理', '2024-03-18', '<h2><strong>产品参数</strong></h2><p>【产品名称】：酒石酸 </p><p>【产品规格】：25Kg/袋</p><p>【产品外观】: 白色晶体 </p><p>【CAS号】：87-69-4</p><p>【产品用途】：L(+)-酒石酸广泛用作饮料和其他食品的酸味剂，用于葡萄酒、软饮料、糖果、面包、某些胶状甜品。主要作为酸味剂、拆分剂和制药原料；用作生化试剂、掩蔽剂及啤酒发泡剂，也用于鞣革工业。</p>', 50, 1999, '2025-04-28 22:34:26', 15000);
INSERT INTO `remenshangpin` VALUES (6, '2025-04-28 17:16:02', '硬脂酸', '日用化学品', 'upload/1745840108073.png', '道康宁', 'dowcorning001', '刘经理', '2024-03-18', '<h2><strong>产品详情</strong></h2><p>【EINECS编号】：<span style=\"color: rgb(68, 68, 68);\">266-928-5</span></p><p>【别名】：<span style=\"color: rgb(68, 68, 68);\">十八酸</span></p><p>【英文名称】：stearic acid</p><p>【分子式】：<span style=\"color: rgb(68, 68, 68);\">C18H36O2</span></p><p>【纯度】：99%</p><p>【包装规格】：25公斤/袋</p><p>【货号】：<span style=\"color: rgb(68, 68, 68);\">硬脂酸</span></p><p>【有效物质含量】：99</p><p>【型号】：<span style=\"color: rgb(68, 68, 68);\">硬脂酸</span></p><p>【品牌】：郎成化工</p><p>【CAS编号】：57-11-4</p><p>【用途】：<span style=\"color: rgb(68, 68, 68);\">广泛应用于食品、化妆品、药品、塑料和橡胶工业以及蜡烛制造等领域</span></p><p><br></p><p><br></p>', 20, 1000, '2025-04-28 20:04:09', 35000);
INSERT INTO `remenshangpin` VALUES (7, '2025-04-28 17:16:02', '聚乙烯', '石油化工产品', 'upload/1745840528296.png', '中石化', 'sinopec002', '王经理', '2024-03-18', '<p>高密度聚乙烯，用于塑料制品生产</p>', 1000, 50000, '2025-04-28 20:04:14', 8500);
INSERT INTO `remenshangpin` VALUES (8, '2025-04-28 17:16:02', '聚丙烯', '石油化工产品', 'upload/1745840599361.png', '中石油', 'cnpc001', '李经理', '2024-03-18', '<p>工业级聚丙烯，用于塑料制品生产</p>', 1000, 50000, '2025-04-28 20:04:38', 8200);
INSERT INTO `remenshangpin` VALUES (9, '2025-04-28 17:16:02', '甘氨酸', '医药中间体', 'upload/1745840824056.png', '上海源叶生物科技有限公司', 'dupont001', '陈经理', '2024-03-18', '<ul><li>介绍：</li><li>&nbsp;&nbsp;用作生化试剂。氨基乙酸也可以用于化学镀镍溶液中，或用作电镀添加剂。</li><li>熔点： 240°C</li><li>沸点： 233°C</li><li>外观： 白色结晶粉末</li><li>溶解性： Souble&nbsp;&nbsp;in&nbsp;&nbsp;H2O</li><li>储存条件： RT</li><li>注意：部分产品我司仅能提供部分信息，我司不保证所提供信息的权威性，仅供客户参考交流研究之用。</li></ul><p><br></p>', 100, 5000, '2025-04-28 20:04:24', 18000);
INSERT INTO `remenshangpin` VALUES (10, '2025-04-28 17:16:02', '氧化铁红', '涂料及染料', 'upload/1745841161937.png', '巴斯夫', 'basf003', '张经理', '2024-03-18', '<h2><strong>产品详情</strong></h2><p><br></p><p>【别名 】氧化铁;三氧化二铁</p><p>【英文名】 Iron oxides</p><p>【分子式】 Fe2O3</p><p>【分子量 】159.69</p><p>【CAS号】 1332-37-2</p><p>【EINECS号】 215-570-8</p><p>【熔点】1565℃</p><p>【沸点 】3414℃&amp;nbsp;&lt;br&gt;</p><p>【闪点 】230 °F</p><p>【密度 】5.24g/cm</p><p>【外观】 红棕色粉末</p><p>【水溶性】不溶于水</p><p><br></p><p>应用：</p><ol><li>氧化铁红Iron Oxide Red颜料在各类混凝土中预制件和建筑制品材料作为颜料或着色剂,直接调入水泥中应用</li><li>氧化铁颜料Iron Oxide Red适用于各种涂料着色和保护物质,包括水性内外墙涂料、粉末涂料等</li><li>氧化铁颜料Iron Oxide Red适用于塑料制品的着色</li><li>此外氧化铁颜料还可以用于各类化妆品、纸张、皮革的着色。</li></ol><h2><br></h2>', 50, 2000, '2025-04-28 20:10:20', 12000);
INSERT INTO `remenshangpin` VALUES (11, '2025-04-28 17:16:02', '尿素', '农药及化肥', 'upload/1745841330018.png', '中化集团', 'sinochem001', '周经理', '2024-03-18', '<p class=\"ql-align-justify\">【分子量】60.06</p><p class=\"ql-align-justify\">【分子式】CH<sub>4</sub>N<sub>2</sub>O</p><p class=\"ql-align-justify\">【CAS号】<a href=\"https://www.medchemexpress.cn/cas/57-13-6.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(106, 75, 146);\"><strong>57-13-6</strong></a></p><p class=\"ql-align-justify\">【性状】固体</p><p class=\"ql-align-justify\">【颜色】White to off-white</p><p class=\"ql-align-justify\">【中文名称】尿素</p><ul><li>结构分类<a href=\"https://www.medchemexpress.cn/NaturalProducts/others.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 21, 21);\">Others</a></li><li>初始来源<a href=\"https://www.medchemexpress.cn/NaturalProducts/microorganisms.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 21, 21);\">微生物</a></li><li>&nbsp;<a href=\"https://www.medchemexpress.cn/NaturalProducts/endogenous-metabolites.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 21, 21);\">内源性代谢物</a></li></ul><p class=\"ql-align-justify\"><br></p>', 1000, 100000, '2025-04-28 20:04:29', 2200);
INSERT INTO `remenshangpin` VALUES (12, '2025-04-28 17:16:02', '磷酸二铵', '农药及化肥', 'upload/1745841421062.png', 'W&Y依莱普克斯（沈阳）化学工业有限公司', 'yuntianhua001', '吴经理', '2024-03-18', '<p><span style=\"color: rgb(136, 136, 136);\">型号：</span>工业级</p><p><span style=\"color: rgb(136, 136, 136);\">品牌：</span>依梯埃</p><p><span style=\"color: rgb(136, 136, 136);\">英文名称：</span>Ammonium phosphate dibasic</p><p><span style=\"color: rgb(136, 136, 136);\">纯度：</span>98%</p><p><span style=\"color: rgb(136, 136, 136);\">CAS编号：</span>&nbsp;<a href=\"https://china.guidechem.com/15562/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(68, 68, 68);\">7783-28-0</a></p><p><span style=\"color: rgb(136, 136, 136);\">执行质量标准：</span>国标</p><p><span style=\"color: rgb(136, 136, 136);\">EINECS编号：</span>231-987-8</p><p><span style=\"color: rgb(136, 136, 136);\">厂家（产地）：</span>四川</p><p><span style=\"color: rgb(136, 136, 136);\">别名：</span>磷酸氢二铵</p><p><span style=\"color: rgb(136, 136, 136);\">外观：</span>白色结晶粉末</p><p><span style=\"color: rgb(136, 136, 136);\">分子式：</span>H9N2O4P</p><p><br></p><p><span style=\"color: rgb(68, 68, 68);\">公司简介</span></p><p>	W&amp;Y依莱普克斯（沈阳）化学工业有限公司是一家专业从事化工原料销售的化工公司，公司坐落于沈阳近海经济区，采用 先进的自动化办公系统，拥有 的智能化办公环境。本公司自成立之日起，便致力于成为 专业化, 具竞争力的化工公司，以先进的经营管理模式并结合现代营销理念，服务于*各地的客户。目前，公司拥有多名化工领域 以及职业经理人组成的高技术优秀团队，专注于化工市场的营销与开拓。本公司成立了采购部门，销售部门，广告宣传部门，质量监督部门，售后服务部门，物流部门等几大部门，各大部门互相配合，为广大客户提供服务。公司经营的化学原料种类丰富，产品涉及的行业范围广泛，化学原料产品涉及工业类,食品类,医药类,日化类,试剂类等几大类,能为各个行业的客户提供全方位的服务，让您足不出户，即可享受到采购高品质化学原料产品的五 服务。欢迎广大客户到我公司参观指导，我们希望与全国的客户建立起商业关系。我们坚信如果贵公司选择了我们，我们将是您 好的商业合作伙伴。</p>', 1000, 100000, '2025-04-28 19:56:44', 7000);
INSERT INTO `remenshangpin` VALUES (13, '2025-04-28 17:16:02', '对乙酰氨基酚', '医药中间体', 'upload/1745842357611.png', '恒瑞医药', 'hengrui001', '孙经理', '2024-03-18', '<p>中文别名:&nbsp;对乙酰氨基酚&nbsp;、乙酰氨基酚、扑热息痛 、退热净 、 醋氨酚 、对醋氨酚 、索密痛 、乙酰氨基苯酚 、二醋洛尔。</p><p>英文名称: 4-Acetamido phenol 、paracetamol或acetaminophen。</p><p>英文别名:Acetamino phen、4-Hydroxyacetanilide 、APAP、 p-Hydroxyacetanilide 、Paracetamol (Acetaminophen)。</p><p>质量标准: BP\\USP 。</p><p>含 量: 99%-101%。</p><p>CAS 号: 103-90-2 。</p><p>分 子 式: C8H9NO2 。</p><p>分子量: 151.16 。</p><p>物化性质: 白色结晶粉末,无味,溶于热水,醚,氯仿等。</p>', 50, 2000, '2025-04-28 20:11:22', 45000);
INSERT INTO `remenshangpin` VALUES (14, '2025-04-28 17:16:02', '阿司匹林', '医药中间体', 'upload/1745842428289.png', '拜耳', 'bayer001', '钱经理', '2024-03-18', '<p>中文名称:阿司匹林</p><p>中文别名:醋柳酸</p><p>CAS No:50-78-2</p><p>EINECS号:200-064-1</p><p>分子式:C9H8O4</p><p>沸点:140 C</p><p>闪光点:250℃</p><p>密度:1.35</p><p>外观白色 至灰白色结晶粉末</p><p>用途:产品是应用最早,最广和最普通<strong><s>解热镇痛药抗风湿</s></strong>药。具有<strong><s>解热</s></strong>、<strong><s>镇痛</s></strong>、<strong><s>抗炎</s></strong>、<strong><s>抗风湿</s></strong>和<strong><s>抗血小板聚集</s></strong>等多方面的<strong><s>药理作用</s></strong>,发挥药效迅速,药效稳定,超剂量易于诊断和处理,很少发生<strong><s>过敏反应</s></strong>。常用于<strong><s>感冒发热</s></strong>,<strong><s>头痛</s></strong>、<strong><s>神经痛关节痛</s></strong>、<strong><s>肌肉痛</s></strong>、<strong><s>风湿</s></strong>热、急性内湿性<strong><s>关节炎</s></strong>、<strong><s>类风湿性关节炎</s></strong>及<strong><s>牙痛</s></strong>等。是《国家基本药物目录》列入的品种..</p><p>安全说明:S26;S36/37/39</p><p>危险品运输编号:UN 1851</p>', 50, 2000, '2025-04-28 20:14:59', 37000);
INSERT INTO `remenshangpin` VALUES (15, '2025-04-28 17:16:02', '一水柠檬酸', '食品添加剂', 'upload/1745842593756.png', '嘉吉', 'cargill001', '郑经理', '2024-03-18', '<p>中文名称:一水柠檬酸</p><p>中文别名:枸橼酸</p><p>CAS No:5949-29-1</p><p>EINECS号:611-842-9</p><p>规格：10元/kg</p><p>分子式:C6H10O8</p><p>沸点:56 °C760 mm Hg(lit.)</p><p>闪光点:1 °F</p><p>折射率:n20/D 1.359(lit.)</p><p>密度:0.791 g/mL at 25 °C(lit.)</p><p>外观白色晶体或粉末</p><p>用途:主要用作食品的酸味剂,也用于制备医药清凉剂、洗涤剂用添加剂等;检定铋、亚硝酸盐、氧和水,测定铝、铜、汞、镍、氧和钍、用作多价螯合剂,除去微量金属,配制缓冲溶液,测定血钾。;</p><p>安全说明:9-16-26-37/39-36/37/39-36</p><p>危险品运输编号:UN 1090 3/PG 2</p>', 100, 5000, '2025-04-28 22:16:48', 500);
INSERT INTO `remenshangpin` VALUES (16, '2025-04-28 17:16:02', '山梨酸钾', '食品添加剂', 'upload/1745846518842.png', '帝斯曼', 'dsm001', '冯经理', '2024-03-18', '<p>食品级山梨酸钾，用于食品防腐</p><p>纯度：99%</p><p>用途：抗氧化剂</p><p>品牌：郯润</p><p>分子式：C6H7KO2</p><p>型号：帝斯曼</p>', 50, 2000, '2025-04-28 21:20:49', 12000);
INSERT INTO `remenshangpin` VALUES (17, '2025-04-28 17:16:02', '十二烷基苯磺酸钠', '日用化学品', 'upload/1745846573243.png', '宝洁', 'pg001', '杨经理', '2024-03-18', '<p>工业级十二烷基苯磺酸钠，用于洗涤剂生产</p><p>品名:十二烷基苯磺酸钠用途:</p><p>1、压敏胶聚合用高效乳化分散剂，用量 1%-0.1% 。</p><p>2、高级清洗剂、去污剂、高级洗涤剂主要原料，可赋予洁白的色泽，高效的去污、油和抗静电能力。 </p><p>3、纺织油剂中抗静电兼净洗效果的主要添加剂。</p><p>4、涤纶基材、片基的优良抗静电剂，尤其是涤纶基电影、摄影胶片的高效抗别名直链烷基苯磺酸钠;烷基苯磺酸钠;SABS</p>', 100, 5000, '2025-04-28 21:22:07', 9500);
INSERT INTO `remenshangpin` VALUES (18, '2025-04-28 17:16:02', '甘油', '日用化学品', 'upload/1745846785167.png', '南通润丰石油化工有限公司', 'unilever001', '朱经理', '2024-03-18', '<p>工业级甘油，用于化妆品生产</p><p>中文名称:甘油 </p><p>中文别名:丙三醇; 三羟基丙烷; 毛甘油; 1,2,3-丙三醇 </p><p>英文名称:Glycerin </p><p>英文别名:1,2,3-propanetriol; 1,2,3-Trihydroxypropane </p><p>CAS号:56-81-5 </p><p>EINECS号:200-289-5 </p><p>分子式:C3H8O3 </p><p>分子量:92.0938 </p><p>密度:1.303g/cm3</p><p>用途:用作基本有机化工原料,广泛用于医药、食品、日用化学、纺织、造纸、油漆等行业</p><p><br></p>', 50, 2000, '2025-04-28 21:25:16', 12600);
INSERT INTO `remenshangpin` VALUES (1745853433255, '2025-04-28 23:17:12', '木瓜蛋白酶', '食品添加剂', 'upload/1745853391355.png', '上海源叶科技有限公司', 'yuanye', '上海源叶科技有限公司', '2025-04-28', '<p>【酶活定义】： 1g 固体酶（或 1mL 液体酶），在温度 37℃、pH7.0 条件下，1min 水解酪蛋白底物产生相当于 1µg 酪 氨酸的酶量，为 1 个酶活力单位，以“U/g( 或 U/mL)”表示。</p><p>【分子量】：21000～23000</p><p>【最适温度】：37~60℃&nbsp;</p><p>【最适pH】：5.5~7.5</p><p>【性状】：为乳白色至微黄色粉末</p><p>【成分】：木瓜蛋白酶，葡萄糖</p><p>【外观】： 白色至米黄色粉末</p><p>【储存条件】： 2-8℃</p><p>【用途】： 一种能水解多肽、酰胺和酯的酶。其分子由212残基的折叠多肽键组成。微有吸湿性。对光敏感。不完全的溶于水和甘油，几乎不溶于多数有机溶剂。酶反应：裂解Arg-、Lys-、Phe-、X氨基酸。模型底物为苯甲酰精氨酸乙酯(BAEE)、N-苯甲酰-L-精氨酸对硝基苯胺(N-α-Bz-L-Arg-4-NA）、苄氧羰酰缬氨酰甘氨酰精氨酸对硝基苯胺(Chromozym TRY)。激活剂有半胱氨酸(Cys)、谷胱甘肽(GSH)、EDTA、还原剂、氰化物。抑制剂有汞(Hg2+)、其他重金属、碘乙酸、N-对基顺丁烯二</p><ul><li>注意：部分产品我司仅能提供部分信息，我司不保证所提供信息的权威性，仅供客户参考交流研究之用。</li></ul>', 200, 5616, '2025-04-29 14:20:34', 1300);

-- ----------------------------
-- Table structure for shangjia
-- ----------------------------
DROP TABLE IF EXISTS `shangjia`;
CREATE TABLE `shangjia`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '账号',
  `mima` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `shangjiaxingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '商家姓名',
  `xingbie` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '性别',
  `touxiang` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '头像',
  `youxiang` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `lianxidianhua` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `money` float NULL DEFAULT 0 COMMENT '余额',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `zhanghao`(`zhanghao` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '商家' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of shangjia
-- ----------------------------
INSERT INTO `shangjia` VALUES (21, '2025-03-18 17:48:20', 'disiman', '12345678', '帝斯曼', '女', 'upload/1745848549998.png', '242722125@qq.com', '13333425312', 200);
INSERT INTO `shangjia` VALUES (22, '2025-03-18 17:48:20', 'yilai', '12345678', '依莱普克斯', '女', 'upload/1745848468946.png', '773890002@qq.com', '13823888882', 200);
INSERT INTO `shangjia` VALUES (23, '2025-03-18 17:48:20', 'hengrui', '12345678', '恒瑞医药', '男', 'upload/1745848376717.png', '773890003@qq.com', '13823888883', 200);
INSERT INTO `shangjia` VALUES (24, '2025-03-18 17:48:20', 'reform', '123456787', 'Reform', '男', 'upload/1745848266303.png', '68745004@qq.com', '18645723741', 200);
INSERT INTO `shangjia` VALUES (25, '2025-03-18 17:48:20', 'yuanye', '12345678', '上海源叶有限公司', '男', 'upload/1745848198256.png', '7584005@qq.com', '11481515152', 200);
INSERT INTO `shangjia` VALUES (26, '2025-03-18 17:48:20', 'langcheng', '12345678', '朗程化工', '男', 'upload/1745847312419.png', '773890006@qq.com', '13823888886', 200);
INSERT INTO `shangjia` VALUES (27, '2025-03-18 17:48:20', 'basf', '123456', 'BASF', '男', 'upload/1745847217849.png', '652202147@qq.com', '13514614582', 200);
INSERT INTO `shangjia` VALUES (28, '2025-03-18 17:48:20', 'zhongshihua', '12345678', '中石化', '男', 'upload/1745847145476.png', '1862536@qq.com', '13821856215', 200);

-- ----------------------------
-- Table structure for shangpin_price_history
-- ----------------------------
DROP TABLE IF EXISTS `shangpin_price_history`;
CREATE TABLE `shangpin_price_history`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpinid` bigint NULL DEFAULT NULL COMMENT '商品ID',
  `price` float NULL DEFAULT NULL COMMENT '价格',
  `username` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `addtime` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_shangpinid`(`shangpinid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1745853536263 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '商品价格历史' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of shangpin_price_history
-- ----------------------------
INSERT INTO `shangpin_price_history` VALUES (1745830866394, 41, 120, 'admin', '2025-04-25 17:01:06');
INSERT INTO `shangpin_price_history` VALUES (1745830897054, 41, 99, 'admin', '2025-04-26 17:01:37');
INSERT INTO `shangpin_price_history` VALUES (1745830905334, 41, 90, 'admin', '2025-04-27 17:01:45');
INSERT INTO `shangpin_price_history` VALUES (1745830920409, 41, 120, 'admin', '2025-04-28 17:02:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920410, 1, 100, 'admin', '2025-01-01 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920411, 1, 105, 'admin', '2025-01-15 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920412, 1, 110, 'admin', '2025-02-01 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920413, 1, 108, 'admin', '2025-02-15 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920414, 1, 115, 'admin', '2025-03-01 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920415, 2, 200, 'admin', '2025-01-01 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920416, 2, 210, 'admin', '2025-01-15 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920417, 2, 205, 'admin', '2025-02-01 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920418, 2, 215, 'admin', '2025-02-15 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920419, 2, 220, 'admin', '2025-03-01 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920420, 3, 150, 'admin', '2025-01-01 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920421, 3, 155, 'admin', '2025-01-15 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920422, 3, 160, 'admin', '2025-02-01 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920423, 3, 165, 'admin', '2025-02-15 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920424, 3, 170, 'admin', '2025-03-01 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920425, 4, 300, 'admin', '2025-01-01 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920426, 4, 310, 'admin', '2025-01-15 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920427, 4, 315, 'admin', '2025-02-01 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920428, 4, 320, 'admin', '2025-02-15 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920429, 4, 325, 'admin', '2025-03-01 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920430, 5, 250, 'admin', '2025-01-01 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920431, 5, 255, 'admin', '2025-01-15 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920432, 5, 260, 'admin', '2025-02-01 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920433, 5, 265, 'admin', '2025-02-15 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920434, 5, 270, 'admin', '2025-03-01 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745836826534, 1, 3000, 'admin', '2025-04-28 18:40:26');
INSERT INTO `shangpin_price_history` VALUES (1745841476785, 12, 7000, 'admin', '2025-04-28 19:57:57');
INSERT INTO `shangpin_price_history` VALUES (1745841905769, 10, 11000, 'admin', '2025-04-28 20:05:06');
INSERT INTO `shangpin_price_history` VALUES (1745842214576, 10, 12000, 'admin', '2025-04-28 20:10:14');
INSERT INTO `shangpin_price_history` VALUES (1745842495069, 14, 37000, 'admin', '2025-04-28 20:14:55');
INSERT INTO `shangpin_price_history` VALUES (1745842661805, 15, 500, 'admin', '2025-04-28 20:17:42');
INSERT INTO `shangpin_price_history` VALUES (1745846996101, 18, 12600, 'admin', '2025-04-28 21:29:56');
INSERT INTO `shangpin_price_history` VALUES (1745853432890, 1745853433255, 1200, 'yuanye', '2025-03-01 23:17:13');
INSERT INTO `shangpin_price_history` VALUES (1745853520729, 1745853433255, 1100, 'yuanye', '2025-04-01 23:18:41');
INSERT INTO `shangpin_price_history` VALUES (1745853536262, 1745853433255, 1300, 'yuanye', '2025-04-05 23:18:56');

-- ----------------------------
-- Table structure for shangpinfenlei
-- ----------------------------
DROP TABLE IF EXISTS `shangpinfenlei`;
CREATE TABLE `shangpinfenlei`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '化工品分类',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `shangpinfenlei`(`shangpinfenlei` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '化工品分类' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of shangpinfenlei
-- ----------------------------
INSERT INTO `shangpinfenlei` VALUES (39, '2025-04-28 17:15:53', '无机化工原料');
INSERT INTO `shangpinfenlei` VALUES (40, '2025-04-28 17:15:53', '有机化工原料');
INSERT INTO `shangpinfenlei` VALUES (41, '2025-04-28 17:15:53', '精细化工品');
INSERT INTO `shangpinfenlei` VALUES (42, '2025-04-28 17:15:53', '石油化工产品');
INSERT INTO `shangpinfenlei` VALUES (43, '2025-04-28 17:15:53', '塑料及橡胶制品');
INSERT INTO `shangpinfenlei` VALUES (44, '2025-04-28 17:15:53', '涂料及染料');
INSERT INTO `shangpinfenlei` VALUES (45, '2025-04-28 17:15:53', '农药及化肥');
INSERT INTO `shangpinfenlei` VALUES (46, '2025-04-28 17:15:53', '医药中间体');
INSERT INTO `shangpinfenlei` VALUES (47, '2025-04-28 17:15:53', '食品添加剂');
INSERT INTO `shangpinfenlei` VALUES (48, '2025-04-28 17:15:53', '日用化学品');

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint NULL DEFAULT NULL COMMENT '化工品id',
  `tablename` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '表名',
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '名称',
  `picture` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '图片',
  `type` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '收藏表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of storeup
-- ----------------------------

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = 'token表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 1, 'admin', 'users', '管理员', 'ly0ctn418jsfydyr3gg0c75l48c5hofq', '2025-03-18 17:52:34', '2025-04-29 15:03:11');
INSERT INTO `token` VALUES (2, 18, '1', 'yonghu', '用户', '3ja5feulpt5766d1b2so7mz3vu70a3m2', '2025-03-18 17:53:53', '2025-04-29 21:00:29');
INSERT INTO `token` VALUES (3, 21, '账号1', 'shangjia', '商家', 'bjsckeu87281hfk36jy4k2h2yfl8wxq2', '2025-03-29 23:15:14', '2025-04-16 12:08:57');
INSERT INTO `token` VALUES (4, 11, '用户名1', 'yonghu', '用户', 'hxsc5l6thbcw8y3trob3z5kej3razke4', '2025-04-28 16:56:04', '2025-04-28 17:55:58');
INSERT INTO `token` VALUES (5, 26, 'langcheng', 'shangjia', '商家', 'gglllito81myzt0bh1ppsw584bm1d5ba', '2025-04-28 23:09:42', '2025-04-29 00:09:42');
INSERT INTO `token` VALUES (6, 25, 'yuanye', 'shangjia', '商家', '60ggulkk0ecl6bbtkhnn9edgz3qrr4zo', '2025-04-28 23:12:10', '2025-04-29 15:04:42');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'admin', '管理员', '2025-03-18 17:48:21');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
  `mima` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `xingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '姓名',
  `touxiang` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '头像',
  `xingbie` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '性别',
  `youxiang` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `shouji` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '手机',
  `money` float NULL DEFAULT 0 COMMENT '余额',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `yonghuming`(`yonghuming` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (11, '2025-03-18 17:48:20', 'wuhaiyuan', '12345678', '吴海媛', 'upload/1745849533638.png', '女', '1496551521@qq.com', '18563552496', 200);
INSERT INTO `yonghu` VALUES (12, '2025-03-18 17:48:20', 'shotaro', '12345678', 'shotaro', 'upload/1745849507517.png', '女', '773890002@qq.com', '13823888882', 200);
INSERT INTO `yonghu` VALUES (13, '2025-03-18 17:48:20', 'wushiwen', '12345678', '吴是温', 'upload/1745849449673.png', '男', '415821403@qq.com', '19856245628', 200);
INSERT INTO `yonghu` VALUES (14, '2025-03-18 17:48:20', 'luochengjin', '12345678', '罗成金', 'upload/1745849605243.png', '女', '48654014@qq.com', '16598741265', 200);
INSERT INTO `yonghu` VALUES (15, '2025-03-18 17:48:20', 'limufu', '12345678', '李沐芙', 'upload/1745849213196.png', '女', '773890005@qq.com', '13823888885', 200);
INSERT INTO `yonghu` VALUES (16, '2025-03-18 17:48:20', 'chenlai', '12345678', '陈莱', 'upload/1745849179533.png', '男', '773890006@qq.com', '13823888886', 200);
INSERT INTO `yonghu` VALUES (17, '2025-03-18 17:48:20', 'wangjiajia', '12345678', '王佳佳', 'upload/1745848931986.png', '女', '773890007@qq.com', '13823888887', 200);
INSERT INTO `yonghu` VALUES (18, '2025-03-18 17:48:20', 'chenwei', '12345678', '陈威', 'upload/1745848876587.png', '女', '773890008@qq.com', '13823888888', 631511);

-- ----------------------------
-- Table structure for youqinglianjie
-- ----------------------------
DROP TABLE IF EXISTS `youqinglianjie`;
CREATE TABLE `youqinglianjie`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyemingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '企业名称',
  `tupian` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '图片',
  `lianjiewangzhi` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '链接网址',
  `lianxidianhua` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '友情链接' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of youqinglianjie
-- ----------------------------
INSERT INTO `youqinglianjie` VALUES (51, '2025-03-18 17:48:20', '恒瑞医药', 'upload/1745850539793.png', 'https://www.hengrui.com/', '13823888881');
INSERT INTO `youqinglianjie` VALUES (52, '2025-03-18 17:48:20', '上海源叶有限公司', 'upload/1745850495942.png', 'https://www.shyuanye.com/', '13823888882');
INSERT INTO `youqinglianjie` VALUES (53, '2025-03-18 17:48:20', '阿里巴巴原材料', 'upload/1745850365833.png', 'https://yl.1688.com/', '13823888883');
INSERT INTO `youqinglianjie` VALUES (54, '2025-03-18 17:48:20', 'CAS号查询', 'upload/1745850281984.png', 'http://www.ichemistry.cn/', '13823888884');
INSERT INTO `youqinglianjie` VALUES (55, '2025-03-18 17:48:20', '盖德化工', 'upload/1745850194121.png', 'https://china.guidechem.com/', '13823888885');
INSERT INTO `youqinglianjie` VALUES (56, '2025-03-18 17:48:20', '中石化', 'upload/1745849966284.png', 'http://www.sinopec.com/index.shtml', '13823888886');
INSERT INTO `youqinglianjie` VALUES (57, '2025-03-18 17:48:20', '依莱普克斯', 'upload/1745849802722.png', 'http://www.wzeti.com/', '13823888887');
INSERT INTO `youqinglianjie` VALUES (58, '2025-03-18 17:48:20', '润丰', 'upload/1745849877328.png', 'http://www.91reform.com/about.html', '13862969866');

SET FOREIGN_KEY_CHECKS = 1;
