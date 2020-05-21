/*
 Navicat Premium Data Transfer

 Source Server         : mysql1
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : mapofplants

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 15/05/2020 17:15:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for connect
-- ----------------------------
DROP TABLE IF EXISTS `connect`;
CREATE TABLE `connect`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `idofplant` int(0) NOT NULL,
  `idofmap` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `plant_id`(`idofplant`) USING BTREE,
  INDEX `map_id`(`idofmap`) USING BTREE,
  CONSTRAINT `map_id` FOREIGN KEY (`idofmap`) REFERENCES `mapofschool` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `plant_id` FOREIGN KEY (`idofplant`) REFERENCES `plants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 576 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of connect
-- ----------------------------
INSERT INTO `connect` VALUES (1, 5, 1);
INSERT INTO `connect` VALUES (2, 7, 1);
INSERT INTO `connect` VALUES (3, 91, 1);
INSERT INTO `connect` VALUES (4, 96, 1);
INSERT INTO `connect` VALUES (5, 119, 1);
INSERT INTO `connect` VALUES (6, 127, 1);
INSERT INTO `connect` VALUES (7, 133, 1);
INSERT INTO `connect` VALUES (9, 166, 1);
INSERT INTO `connect` VALUES (10, 197, 1);
INSERT INTO `connect` VALUES (12, 205, 1);
INSERT INTO `connect` VALUES (16, 36, 2);
INSERT INTO `connect` VALUES (17, 51, 2);
INSERT INTO `connect` VALUES (18, 52, 2);
INSERT INTO `connect` VALUES (19, 92, 2);
INSERT INTO `connect` VALUES (20, 96, 2);
INSERT INTO `connect` VALUES (21, 97, 2);
INSERT INTO `connect` VALUES (22, 112, 2);
INSERT INTO `connect` VALUES (23, 155, 2);
INSERT INTO `connect` VALUES (25, 163, 2);
INSERT INTO `connect` VALUES (26, 166, 2);
INSERT INTO `connect` VALUES (28, 197, 2);
INSERT INTO `connect` VALUES (29, 205, 2);
INSERT INTO `connect` VALUES (30, 207, 2);
INSERT INTO `connect` VALUES (34, 3, 3);
INSERT INTO `connect` VALUES (35, 5, 3);
INSERT INTO `connect` VALUES (36, 7, 3);
INSERT INTO `connect` VALUES (37, 36, 3);
INSERT INTO `connect` VALUES (39, 51, 3);
INSERT INTO `connect` VALUES (40, 91, 3);
INSERT INTO `connect` VALUES (41, 92, 3);
INSERT INTO `connect` VALUES (42, 93, 3);
INSERT INTO `connect` VALUES (43, 95, 3);
INSERT INTO `connect` VALUES (44, 96, 3);
INSERT INTO `connect` VALUES (45, 97, 3);
INSERT INTO `connect` VALUES (46, 111, 3);
INSERT INTO `connect` VALUES (47, 114, 3);
INSERT INTO `connect` VALUES (48, 116, 3);
INSERT INTO `connect` VALUES (49, 119, 3);
INSERT INTO `connect` VALUES (50, 120, 3);
INSERT INTO `connect` VALUES (51, 124, 3);
INSERT INTO `connect` VALUES (52, 125, 3);
INSERT INTO `connect` VALUES (53, 126, 3);
INSERT INTO `connect` VALUES (54, 127, 3);
INSERT INTO `connect` VALUES (55, 128, 3);
INSERT INTO `connect` VALUES (56, 129, 3);
INSERT INTO `connect` VALUES (58, 133, 3);
INSERT INTO `connect` VALUES (61, 138, 3);
INSERT INTO `connect` VALUES (63, 142, 3);
INSERT INTO `connect` VALUES (64, 143, 3);
INSERT INTO `connect` VALUES (65, 144, 3);
INSERT INTO `connect` VALUES (66, 157, 3);
INSERT INTO `connect` VALUES (69, 162, 3);
INSERT INTO `connect` VALUES (70, 166, 3);
INSERT INTO `connect` VALUES (74, 197, 3);
INSERT INTO `connect` VALUES (75, 201, 3);
INSERT INTO `connect` VALUES (77, 203, 3);
INSERT INTO `connect` VALUES (78, 205, 3);
INSERT INTO `connect` VALUES (79, 207, 3);
INSERT INTO `connect` VALUES (85, 7, 4);
INSERT INTO `connect` VALUES (88, 35, 4);
INSERT INTO `connect` VALUES (89, 36, 4);
INSERT INTO `connect` VALUES (90, 97, 4);
INSERT INTO `connect` VALUES (91, 97, 4);
INSERT INTO `connect` VALUES (92, 114, 4);
INSERT INTO `connect` VALUES (93, 201, 4);
INSERT INTO `connect` VALUES (94, 203, 4);
INSERT INTO `connect` VALUES (95, 205, 4);
INSERT INTO `connect` VALUES (96, 206, 4);
INSERT INTO `connect` VALUES (99, 1, 5);
INSERT INTO `connect` VALUES (100, 19, 5);
INSERT INTO `connect` VALUES (101, 28, 5);
INSERT INTO `connect` VALUES (102, 35, 5);
INSERT INTO `connect` VALUES (103, 36, 5);
INSERT INTO `connect` VALUES (105, 93, 5);
INSERT INTO `connect` VALUES (106, 96, 5);
INSERT INTO `connect` VALUES (107, 97, 5);
INSERT INTO `connect` VALUES (108, 119, 5);
INSERT INTO `connect` VALUES (109, 124, 5);
INSERT INTO `connect` VALUES (110, 125, 5);
INSERT INTO `connect` VALUES (111, 133, 5);
INSERT INTO `connect` VALUES (114, 142, 5);
INSERT INTO `connect` VALUES (115, 143, 5);
INSERT INTO `connect` VALUES (116, 144, 5);
INSERT INTO `connect` VALUES (118, 155, 5);
INSERT INTO `connect` VALUES (119, 156, 5);
INSERT INTO `connect` VALUES (121, 163, 5);
INSERT INTO `connect` VALUES (124, 197, 5);
INSERT INTO `connect` VALUES (125, 201, 5);
INSERT INTO `connect` VALUES (126, 203, 5);
INSERT INTO `connect` VALUES (127, 205, 5);
INSERT INTO `connect` VALUES (134, 2, 6);
INSERT INTO `connect` VALUES (135, 7, 6);
INSERT INTO `connect` VALUES (136, 28, 6);
INSERT INTO `connect` VALUES (137, 35, 6);
INSERT INTO `connect` VALUES (138, 36, 6);
INSERT INTO `connect` VALUES (139, 92, 6);
INSERT INTO `connect` VALUES (140, 93, 6);
INSERT INTO `connect` VALUES (141, 95, 6);
INSERT INTO `connect` VALUES (142, 96, 6);
INSERT INTO `connect` VALUES (143, 97, 6);
INSERT INTO `connect` VALUES (144, 119, 6);
INSERT INTO `connect` VALUES (145, 123, 6);
INSERT INTO `connect` VALUES (146, 125, 6);
INSERT INTO `connect` VALUES (147, 127, 6);
INSERT INTO `connect` VALUES (148, 135, 6);
INSERT INTO `connect` VALUES (149, 142, 6);
INSERT INTO `connect` VALUES (150, 143, 6);
INSERT INTO `connect` VALUES (151, 144, 6);
INSERT INTO `connect` VALUES (152, 147, 6);
INSERT INTO `connect` VALUES (153, 155, 6);
INSERT INTO `connect` VALUES (157, 188, 6);
INSERT INTO `connect` VALUES (158, 197, 6);
INSERT INTO `connect` VALUES (159, 203, 6);
INSERT INTO `connect` VALUES (160, 205, 6);
INSERT INTO `connect` VALUES (161, 207, 6);
INSERT INTO `connect` VALUES (168, 2, 7);
INSERT INTO `connect` VALUES (169, 3, 7);
INSERT INTO `connect` VALUES (170, 5, 7);
INSERT INTO `connect` VALUES (171, 6, 7);
INSERT INTO `connect` VALUES (172, 19, 7);
INSERT INTO `connect` VALUES (173, 20, 7);
INSERT INTO `connect` VALUES (174, 35, 7);
INSERT INTO `connect` VALUES (175, 51, 7);
INSERT INTO `connect` VALUES (176, 87, 7);
INSERT INTO `connect` VALUES (178, 91, 7);
INSERT INTO `connect` VALUES (180, 95, 7);
INSERT INTO `connect` VALUES (181, 98, 7);
INSERT INTO `connect` VALUES (183, 125, 7);
INSERT INTO `connect` VALUES (184, 141, 7);
INSERT INTO `connect` VALUES (186, 160, 7);
INSERT INTO `connect` VALUES (187, 163, 7);
INSERT INTO `connect` VALUES (189, 188, 7);
INSERT INTO `connect` VALUES (191, 201, 7);
INSERT INTO `connect` VALUES (196, 1, 8);
INSERT INTO `connect` VALUES (197, 3, 8);
INSERT INTO `connect` VALUES (198, 7, 8);
INSERT INTO `connect` VALUES (200, 23, 8);
INSERT INTO `connect` VALUES (201, 28, 8);
INSERT INTO `connect` VALUES (203, 52, 8);
INSERT INTO `connect` VALUES (204, 91, 8);
INSERT INTO `connect` VALUES (205, 92, 8);
INSERT INTO `connect` VALUES (206, 93, 8);
INSERT INTO `connect` VALUES (207, 95, 8);
INSERT INTO `connect` VALUES (208, 96, 8);
INSERT INTO `connect` VALUES (209, 97, 8);
INSERT INTO `connect` VALUES (210, 112, 8);
INSERT INTO `connect` VALUES (211, 125, 8);
INSERT INTO `connect` VALUES (212, 126, 8);
INSERT INTO `connect` VALUES (213, 127, 8);
INSERT INTO `connect` VALUES (214, 128, 8);
INSERT INTO `connect` VALUES (215, 130, 8);
INSERT INTO `connect` VALUES (217, 133, 8);
INSERT INTO `connect` VALUES (219, 135, 8);
INSERT INTO `connect` VALUES (222, 138, 8);
INSERT INTO `connect` VALUES (223, 139, 8);
INSERT INTO `connect` VALUES (225, 141, 8);
INSERT INTO `connect` VALUES (226, 142, 8);
INSERT INTO `connect` VALUES (227, 143, 8);
INSERT INTO `connect` VALUES (228, 147, 8);
INSERT INTO `connect` VALUES (230, 157, 8);
INSERT INTO `connect` VALUES (233, 162, 8);
INSERT INTO `connect` VALUES (234, 163, 8);
INSERT INTO `connect` VALUES (236, 166, 8);
INSERT INTO `connect` VALUES (240, 197, 8);
INSERT INTO `connect` VALUES (242, 201, 8);
INSERT INTO `connect` VALUES (243, 203, 8);
INSERT INTO `connect` VALUES (244, 205, 8);
INSERT INTO `connect` VALUES (245, 207, 8);
INSERT INTO `connect` VALUES (249, 8, 9);
INSERT INTO `connect` VALUES (255, 17, 9);
INSERT INTO `connect` VALUES (256, 21, 9);
INSERT INTO `connect` VALUES (258, 24, 9);
INSERT INTO `connect` VALUES (259, 26, 9);
INSERT INTO `connect` VALUES (260, 29, 9);
INSERT INTO `connect` VALUES (261, 32, 9);
INSERT INTO `connect` VALUES (262, 34, 9);
INSERT INTO `connect` VALUES (264, 39, 9);
INSERT INTO `connect` VALUES (265, 40, 9);
INSERT INTO `connect` VALUES (267, 43, 9);
INSERT INTO `connect` VALUES (269, 45, 9);
INSERT INTO `connect` VALUES (270, 46, 9);
INSERT INTO `connect` VALUES (273, 49, 9);
INSERT INTO `connect` VALUES (275, 56, 9);
INSERT INTO `connect` VALUES (276, 57, 9);
INSERT INTO `connect` VALUES (277, 58, 9);
INSERT INTO `connect` VALUES (278, 59, 9);
INSERT INTO `connect` VALUES (279, 60, 9);
INSERT INTO `connect` VALUES (280, 61, 9);
INSERT INTO `connect` VALUES (282, 67, 9);
INSERT INTO `connect` VALUES (284, 70, 9);
INSERT INTO `connect` VALUES (285, 71, 9);
INSERT INTO `connect` VALUES (287, 73, 9);
INSERT INTO `connect` VALUES (288, 74, 9);
INSERT INTO `connect` VALUES (289, 75, 9);
INSERT INTO `connect` VALUES (290, 76, 9);
INSERT INTO `connect` VALUES (291, 77, 9);
INSERT INTO `connect` VALUES (292, 78, 9);
INSERT INTO `connect` VALUES (293, 79, 9);
INSERT INTO `connect` VALUES (294, 81, 9);
INSERT INTO `connect` VALUES (295, 82, 9);
INSERT INTO `connect` VALUES (296, 83, 9);
INSERT INTO `connect` VALUES (297, 84, 9);
INSERT INTO `connect` VALUES (299, 88, 9);
INSERT INTO `connect` VALUES (300, 99, 9);
INSERT INTO `connect` VALUES (301, 100, 9);
INSERT INTO `connect` VALUES (302, 102, 9);
INSERT INTO `connect` VALUES (304, 104, 9);
INSERT INTO `connect` VALUES (305, 105, 9);
INSERT INTO `connect` VALUES (306, 106, 9);
INSERT INTO `connect` VALUES (307, 107, 9);
INSERT INTO `connect` VALUES (308, 108, 9);
INSERT INTO `connect` VALUES (309, 109, 9);
INSERT INTO `connect` VALUES (310, 5, 10);
INSERT INTO `connect` VALUES (311, 6, 10);
INSERT INTO `connect` VALUES (312, 10, 10);
INSERT INTO `connect` VALUES (313, 19, 10);
INSERT INTO `connect` VALUES (315, 51, 10);
INSERT INTO `connect` VALUES (316, 80, 10);
INSERT INTO `connect` VALUES (317, 91, 10);
INSERT INTO `connect` VALUES (318, 92, 10);
INSERT INTO `connect` VALUES (319, 95, 10);
INSERT INTO `connect` VALUES (320, 96, 10);
INSERT INTO `connect` VALUES (321, 97, 10);
INSERT INTO `connect` VALUES (322, 112, 10);
INSERT INTO `connect` VALUES (323, 116, 10);
INSERT INTO `connect` VALUES (324, 119, 10);
INSERT INTO `connect` VALUES (325, 122, 10);
INSERT INTO `connect` VALUES (326, 124, 10);
INSERT INTO `connect` VALUES (327, 125, 10);
INSERT INTO `connect` VALUES (328, 127, 10);
INSERT INTO `connect` VALUES (329, 132, 10);
INSERT INTO `connect` VALUES (330, 133, 10);
INSERT INTO `connect` VALUES (331, 135, 10);
INSERT INTO `connect` VALUES (333, 138, 10);
INSERT INTO `connect` VALUES (335, 142, 10);
INSERT INTO `connect` VALUES (336, 143, 10);
INSERT INTO `connect` VALUES (337, 144, 10);
INSERT INTO `connect` VALUES (339, 155, 10);
INSERT INTO `connect` VALUES (340, 157, 10);
INSERT INTO `connect` VALUES (343, 162, 10);
INSERT INTO `connect` VALUES (344, 163, 10);
INSERT INTO `connect` VALUES (348, 201, 10);
INSERT INTO `connect` VALUES (349, 203, 10);
INSERT INTO `connect` VALUES (361, 203, 11);
INSERT INTO `connect` VALUES (362, 119, 11);
INSERT INTO `connect` VALUES (363, 143, 11);
INSERT INTO `connect` VALUES (364, 7, 11);
INSERT INTO `connect` VALUES (365, 207, 11);
INSERT INTO `connect` VALUES (366, 91, 11);
INSERT INTO `connect` VALUES (367, 51, 11);
INSERT INTO `connect` VALUES (368, 97, 11);
INSERT INTO `connect` VALUES (370, 28, 11);
INSERT INTO `connect` VALUES (372, 126, 11);
INSERT INTO `connect` VALUES (373, 142, 11);
INSERT INTO `connect` VALUES (374, 55, 11);
INSERT INTO `connect` VALUES (375, 138, 11);
INSERT INTO `connect` VALUES (377, 92, 11);
INSERT INTO `connect` VALUES (378, 125, 11);
INSERT INTO `connect` VALUES (379, 112, 11);
INSERT INTO `connect` VALUES (380, 166, 11);
INSERT INTO `connect` VALUES (381, 127, 11);
INSERT INTO `connect` VALUES (382, 116, 11);
INSERT INTO `connect` VALUES (383, 124, 11);
INSERT INTO `connect` VALUES (384, 93, 11);
INSERT INTO `connect` VALUES (385, 157, 11);
INSERT INTO `connect` VALUES (386, 201, 11);
INSERT INTO `connect` VALUES (387, 205, 11);
INSERT INTO `connect` VALUES (388, 133, 11);
INSERT INTO `connect` VALUES (391, 130, 11);
INSERT INTO `connect` VALUES (396, 144, 11);
INSERT INTO `connect` VALUES (397, 197, 11);
INSERT INTO `connect` VALUES (399, 95, 11);
INSERT INTO `connect` VALUES (401, 135, 11);
INSERT INTO `connect` VALUES (402, 141, 11);
INSERT INTO `connect` VALUES (404, 2, 11);
INSERT INTO `connect` VALUES (409, 36, 11);
INSERT INTO `connect` VALUES (410, 123, 11);
INSERT INTO `connect` VALUES (411, 122, 11);
INSERT INTO `connect` VALUES (412, 35, 11);
INSERT INTO `connect` VALUES (413, 113, 11);
INSERT INTO `connect` VALUES (415, 162, 11);
INSERT INTO `connect` VALUES (418, 144, 11);
INSERT INTO `connect` VALUES (419, 163, 11);
INSERT INTO `connect` VALUES (420, 4, 12);
INSERT INTO `connect` VALUES (422, 18, 12);
INSERT INTO `connect` VALUES (424, 35, 12);
INSERT INTO `connect` VALUES (425, 36, 12);
INSERT INTO `connect` VALUES (426, 62, 12);
INSERT INTO `connect` VALUES (427, 63, 12);
INSERT INTO `connect` VALUES (428, 64, 12);
INSERT INTO `connect` VALUES (429, 65, 12);
INSERT INTO `connect` VALUES (430, 68, 12);
INSERT INTO `connect` VALUES (431, 85, 12);
INSERT INTO `connect` VALUES (432, 89, 12);
INSERT INTO `connect` VALUES (433, 93, 12);
INSERT INTO `connect` VALUES (434, 96, 12);
INSERT INTO `connect` VALUES (435, 97, 12);
INSERT INTO `connect` VALUES (436, 98, 12);
INSERT INTO `connect` VALUES (437, 119, 12);
INSERT INTO `connect` VALUES (438, 124, 12);
INSERT INTO `connect` VALUES (439, 125, 12);
INSERT INTO `connect` VALUES (440, 135, 12);
INSERT INTO `connect` VALUES (441, 143, 12);
INSERT INTO `connect` VALUES (443, 197, 12);
INSERT INTO `connect` VALUES (444, 201, 12);
INSERT INTO `connect` VALUES (445, 203, 12);
INSERT INTO `connect` VALUES (446, 205, 12);
INSERT INTO `connect` VALUES (454, 1, 13);
INSERT INTO `connect` VALUES (455, 3, 13);
INSERT INTO `connect` VALUES (456, 5, 13);
INSERT INTO `connect` VALUES (457, 7, 13);
INSERT INTO `connect` VALUES (458, 10, 13);
INSERT INTO `connect` VALUES (459, 31, 13);
INSERT INTO `connect` VALUES (460, 35, 13);
INSERT INTO `connect` VALUES (461, 36, 13);
INSERT INTO `connect` VALUES (462, 38, 13);
INSERT INTO `connect` VALUES (463, 80, 13);
INSERT INTO `connect` VALUES (464, 91, 13);
INSERT INTO `connect` VALUES (465, 92, 13);
INSERT INTO `connect` VALUES (466, 93, 13);
INSERT INTO `connect` VALUES (467, 95, 13);
INSERT INTO `connect` VALUES (468, 96, 13);
INSERT INTO `connect` VALUES (469, 97, 13);
INSERT INTO `connect` VALUES (470, 111, 13);
INSERT INTO `connect` VALUES (471, 114, 13);
INSERT INTO `connect` VALUES (472, 119, 13);
INSERT INTO `connect` VALUES (473, 125, 13);
INSERT INTO `connect` VALUES (474, 126, 13);
INSERT INTO `connect` VALUES (475, 127, 13);
INSERT INTO `connect` VALUES (476, 129, 13);
INSERT INTO `connect` VALUES (477, 130, 13);
INSERT INTO `connect` VALUES (478, 132, 13);
INSERT INTO `connect` VALUES (480, 138, 13);
INSERT INTO `connect` VALUES (481, 143, 13);
INSERT INTO `connect` VALUES (482, 155, 13);
INSERT INTO `connect` VALUES (483, 157, 13);
INSERT INTO `connect` VALUES (485, 160, 13);
INSERT INTO `connect` VALUES (487, 162, 13);
INSERT INTO `connect` VALUES (488, 163, 13);
INSERT INTO `connect` VALUES (490, 166, 13);
INSERT INTO `connect` VALUES (495, 197, 13);
INSERT INTO `connect` VALUES (496, 201, 13);
INSERT INTO `connect` VALUES (497, 203, 13);
INSERT INTO `connect` VALUES (498, 205, 13);
INSERT INTO `connect` VALUES (499, 207, 13);
INSERT INTO `connect` VALUES (508, 7, 14);
INSERT INTO `connect` VALUES (509, 80, 14);
INSERT INTO `connect` VALUES (510, 95, 14);
INSERT INTO `connect` VALUES (511, 97, 14);
INSERT INTO `connect` VALUES (512, 111, 14);
INSERT INTO `connect` VALUES (513, 119, 14);
INSERT INTO `connect` VALUES (515, 162, 14);
INSERT INTO `connect` VALUES (516, 163, 14);
INSERT INTO `connect` VALUES (517, 197, 14);
INSERT INTO `connect` VALUES (518, 205, 14);
INSERT INTO `connect` VALUES (519, 207, 14);
INSERT INTO `connect` VALUES (523, 28, 15);
INSERT INTO `connect` VALUES (524, 33, 15);
INSERT INTO `connect` VALUES (525, 35, 15);
INSERT INTO `connect` VALUES (526, 36, 15);
INSERT INTO `connect` VALUES (527, 54, 15);
INSERT INTO `connect` VALUES (528, 97, 15);
INSERT INTO `connect` VALUES (529, 101, 15);
INSERT INTO `connect` VALUES (530, 112, 15);
INSERT INTO `connect` VALUES (531, 114, 15);
INSERT INTO `connect` VALUES (532, 119, 15);
INSERT INTO `connect` VALUES (533, 139, 15);
INSERT INTO `connect` VALUES (534, 142, 15);
INSERT INTO `connect` VALUES (535, 143, 15);
INSERT INTO `connect` VALUES (536, 144, 15);
INSERT INTO `connect` VALUES (537, 155, 15);
INSERT INTO `connect` VALUES (538, 157, 15);
INSERT INTO `connect` VALUES (539, 162, 15);
INSERT INTO `connect` VALUES (540, 163, 15);
INSERT INTO `connect` VALUES (544, 197, 15);
INSERT INTO `connect` VALUES (545, 198, 15);
INSERT INTO `connect` VALUES (546, 201, 15);
INSERT INTO `connect` VALUES (547, 203, 15);
INSERT INTO `connect` VALUES (548, 205, 15);
INSERT INTO `connect` VALUES (554, 1, 15);
INSERT INTO `connect` VALUES (564, 244, 13);
INSERT INTO `connect` VALUES (565, 244, 10);
INSERT INTO `connect` VALUES (566, 35, 9);
INSERT INTO `connect` VALUES (567, 38, 9);
INSERT INTO `connect` VALUES (568, 45, 3);
INSERT INTO `connect` VALUES (569, 36, 9);
INSERT INTO `connect` VALUES (570, 55, 9);

-- ----------------------------
-- Table structure for introduce
-- ----------------------------
DROP TABLE IF EXISTS `introduce`;
CREATE TABLE `introduce`  (
  `id` int(0) NOT NULL,
  `gaishu` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `xingtai` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `huanjing` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  CONSTRAINT `plant_id_introd` FOREIGN KEY (`id`) REFERENCES `plants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of introduce
-- ----------------------------
INSERT INTO `introduce` VALUES (1, '杜松（学名：Juniperus rigida S. et Z.）是柏科、刺柏属常绿灌木或小乔木，高达10米，树冠圆柱形，老时圆头形。大枝直立，小枝下垂。其叶为刺形条状、质坚硬、端尖，上面凹下成深槽，槽内有一条窄白粉带，背面有明显的纵脊。球果，熟时呈淡褐黄色或蓝黑色，被白粉。种子近卵形，顶端尖，有四条不显著的棱。\r\n分布于中国黑龙江、吉林、辽宁、内蒙古、河北北部、山西、陕西、甘肃及宁夏等省区。生于比较干燥的山地；在东北常分布在500米以下，在华北、西北地区则分布于1400-2200米地带。朝鲜、日本也有分布。\r\n木材坚硬，边材黄白色，心材淡褐色，纹理致密，耐腐力强。可作工艺品、雕刻品、家具、器具及农具等用材。可栽培作庭园树。果实入药，有利尿，发汗、驱风的效用。', '灌木或小乔木，高达10米；枝条直展，形成塔形或圆柱形的树冠，枝皮褐灰色，纵裂；小枝下垂，幼枝三棱形，无毛。\r\n叶三叶轮生，条状刺形，质厚，坚硬，长1.2-1.7厘米，宽约1毫米，上部渐窄，先端锐尖，上面凹下成深槽，槽内有1条窄白粉带，下面有明显的纵脊，横切面成内凹的\"V\"状三角形。\r\n雄球花椭圆状或近球状，长2-3毫米，药隔三角状宽卵形，先端尖，背面有纵脊。\r\n球果圆球形，径6-8毫米，成熟前紫褐色，熟时淡褐黑色或蓝黑色，常被白粉；种子近卵圆形，长约6毫米，顶端尖，有4条不显著的棱角。', '杜松是强阳性树种，耐荫、耐干旱、耐严寒、喜冷凉气候。深根性，对土壤的适应性强，耐干旱瘠薄土壤，能在岩缝种顽强生长，可以在海边干燥的岩缝间或沙砾地生长。');
INSERT INTO `introduce` VALUES (2, '沙地柏 即 叉子圆柏。 \r\n叉子圆柏（学名：Sabina vulgaris Antoine）是匍匐灌木。枝斜向伸展，鲜枝叶揉之有臭味，一年生枝柱形，交互对生或3叶轮生，先端刺尖，中部有矩圆状腺体，交互对生，先端钝或锐尖，背面中部有椭圆形或卵形腺体。雌雄异株，稀同株，雄球花椭圆形或矩圆形，雌球花曲垂或先期直立而后俯垂。球果生于向下弯曲的小枝顶端，熟时褐色或紫蓝色或黑色，三角状球形，有种子2-3粒，种子常为卵圆形，微扁，有纵脊与树脂槽。生于海拔1100-2800米地带的多石山坡，或生于针叶树或针叶树阔叶树混交林内，或生于砂丘上。耐旱性强，可作水土保持及固沙造林树种。分布于欧洲南部至中亚和中国西北部。模式标本采自欧洲南部。', '匍匐灌木，高不及1米，稀灌木或小乔木；枝密，斜上伸展，枝皮灰褐色，裂成薄片脱落；一年生枝的分枝皆为圆柱形，径约1毫米。叶二型：刺叶常生于幼一树上，稀在壮龄树上与鳞叶并存，常交互对生或兼有三叶交叉轮生，排列较密，向上斜展，长3-7毫米，先端刺尖，上面凹，下面拱圆，中部有长椭圆形或条形腺体；鳞叶交互对生，排列紧密或稍疏，斜方形或菱状卵形，长1-2.5毫米，先端微钝或急尖，背面中部有明显的椭圆形或卵形腺体。雌雄异株，稀同株；雄球花椭圆形或矩圆形，长2-3毫米，雄蕊5-7对，各具2-4花药，药隔钝三角形；雌球花曲垂或初期直立而随后俯垂。\r\n球果生于向下弯曲的小枝顶端，熟前蓝绿色，熟时褐色至紫蓝色或黑色，多少有白粉，具1-4 （-5）粒种子，多为2-3粒，形状各式，多为倒三角状球形，长5-8毫米，径5-9毫米；种子常为卵圆形，微扁，长4-5毫米，顶端钝或微尖，有纵脊与树脂槽。', '耐旱性强。一般分布在固定和半固定沙地上，经驯化后，在沙盖黄土丘陵地及水肥条件较好的土壤上生长良好。生长势旺，修剪后，能产生多发性侧枝，形成斜生丛状树形，在短期内形成整齐无缺的绿篱极有价值。根系发达，细根极多，10-60厘米的土层内形成纵横交错的根系网，萌芽力和萌蘖力强。能忍受风蚀沙埋，长期适应干旱的沙漠环境，是干旱、半干旱地区防风固沙和水土保持的优良树种。喜光，喜凉爽干燥的气候，耐寒、耐旱、耐瘠薄，对土壤要求不严，不耐涝。适应性强，生长较快，扦插宜活，栽培管理简单。');
INSERT INTO `introduce` VALUES (4, '玉竹（学名：Polygonatum odoratum (Mill.) Druce）是百合科、黄精属植物。状茎圆柱形，直径5-14毫米。茎高20-50厘米，具7-12叶；叶互生，椭圆形至卵状矩圆形，长5-12厘米，宽3-16厘米，先端尖，下面带灰白色，下面脉上平滑至呈乳头状粗糙；花序具1-4花，总花梗长1-1.5厘米，无苞片或有条状披针形苞片；花被黄绿色至白色，全长13-20毫米，花被筒较直，裂片长约3-4毫米；花丝丝状，近平滑至具乳头状突起，花药长约4毫米；子房长3-4毫米，花柱长10-14毫米；浆果蓝黑色，直径7-10毫米，具7-9颗种子。\r\n玉竹对环境条件适应性较强，对土壤条件要求不严，适宜生长在湿润、土层深厚、土壤疏松的地方；耐寒，忌强光直射；常生林下或山野阴坡，海拔500-3000米。\r\n玉竹以干燥根茎入药，味甘，性微寒，具有养阴润燥、生津止渴等功效，用于肺胃阴伤、燥热咳嗽、咽干口渴、内热消渴等症。玉竹还常被加工成饮片、保健食品、保健饮料和美容护肤品等产品。', '玉竹根状茎圆柱形，直径5-14毫米。茎高20-50厘米，具7-12叶。叶互生，椭圆形至卵状矩圆形，长5-12厘米，宽3-16厘米，先端尖，下面带灰白色，下面脉上平滑至呈乳头状粗糙。\r\n花序具1-4花（在栽培情况下，可多至8朵），总花梗（单花时为花梗）长1-1.5厘米，无苞片或有条状披针形苞片；花被黄绿色至白色，全长13-20毫米，花被筒较直，裂片长约3-4毫米；花丝丝状，近平滑至具乳头状突起，花药长约4毫米；子房长3-4毫米，花柱长10-14毫米。浆果蓝黑色，直径7-10毫米，具7-9颗种子。', '玉竹对环境条件适应性较强，对土壤条件要求不严，但涝洼、盐碱、粘土、沙石地类不宜生长。一般温度在10-15℃时根茎出苗，20-22℃时开花，22-25℃时地下根生长并增粗。玉竹适宜生长在湿润、土层深厚、土壤疏松的地方。缓山坡、低山丘陵的林下都可以种植。玉竹耐寒，忌强光直射。常生林下或山野阴坡，海拔500-3000米。');
INSERT INTO `introduce` VALUES (73, '', '', '');
INSERT INTO `introduce` VALUES (244, '紫花玉簪（学名：Hosta ventricosa （Salisb.） Stearn ）为百合科玉簪属的植物。分布于我国的华东、西南等地区，东北南部地区有少量分布，极具观赏价值和绿化功能。此外，全草有治疗胃痛、跌打损伤、蛇咬伤等功效。', '多年生草本，高达60～70厘米。根茎粗壮。单叶基生；柄长约25厘米；叶片卵形，长达16厘米，先端急尖，全缘或稍作波状，基部楔形，其两侧下延几达柄之基部，上面深绿色，有光泽，下面绿色，叶脉约7对，弧形，凸出而明显。花葶由叶丛中抽出，长约60厘米，花葶中部有叶状膜质苞片；总状花序，有短梗，长1厘米，梗基部有1斜卵形之苞片，绿色；花被6，淡紫色，钟形，长约1.7厘米，先端6裂，裂片成三角形；雄蕊6，花丝较花被稍长，药红紫色；子房无柄，长圆筒形，3室，花柱较花丝长，柱头头状。蒴果，筒形，两端尖，长约3厘米。种子黑色，有光泽。花期6月。果熟期8～9月。生于山坡林下的阴湿地区，亦有栽培。 　根状茎粗壮，簇生须根，叶基生成丛状，叶片多为卵形，长10—20厘米、宽6—15厘米，具有7对弧形脉，边缘平或微有波状，叶柄长10—20厘米，较应用于壮。花葶由叶丛中抽出，高50厘米以上。总状花序，顶生数花，花淡紫色，长4—5厘米，花期7月中旬至9月上旬，果期8—9月（结实量很少）。', '喜温暖、湿润性气候，喜阴，忌阳光长期直射，分蘖力和耐寒力极强，对土壤要求不严格，一般的土质均能良好地生长。4月上、中旬返青，9月下旬至10月初进入枯萎期，年生长 175—185天。 　分布与功用：分布于我国的华东、西南等地区，东北南部地区有少量分布，极具观赏价值和绿化功能。此外，全草有治疗胃痛、跌打损伤、蛇咬伤等功效。');

-- ----------------------------
-- Table structure for mapofschool
-- ----------------------------
DROP TABLE IF EXISTS `mapofschool`;
CREATE TABLE `mapofschool`  (
  `id` int(0) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `e-name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `gaishu` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mapofschool
-- ----------------------------
INSERT INTO `mapofschool` VALUES (1, '综合楼', 'Complex Building', NULL);
INSERT INTO `mapofschool` VALUES (2, '园艺学院', 'College of Horticulture', NULL);
INSERT INTO `mapofschool` VALUES (3, '明德广场', 'Matilda Square', NULL);
INSERT INTO `mapofschool` VALUES (4, '西南树林', 'Southwest Forest', NULL);
INSERT INTO `mapofschool` VALUES (5, '旧体育场', 'Old stadium', NULL);
INSERT INTO `mapofschool` VALUES (6, '新体育场', 'New stadium', NULL);
INSERT INTO `mapofschool` VALUES (7, '中药材学院', 'College of Chinese Medicinal Materials', NULL);
INSERT INTO `mapofschool` VALUES (8, '生活区', 'Living Area', NULL);
INSERT INTO `mapofschool` VALUES (9, '第二广场', 'Second Square', NULL);
INSERT INTO `mapofschool` VALUES (10, '图书馆', 'Library', NULL);
INSERT INTO `mapofschool` VALUES (11, '文科楼', 'Liberal Arts Building', NULL);
INSERT INTO `mapofschool` VALUES (12, '理科楼', 'Science Building', NULL);
INSERT INTO `mapofschool` VALUES (13, '主楼', 'Main building', NULL);
INSERT INTO `mapofschool` VALUES (14, '鲲鹏剧院', 'Kunpeng Theater', NULL);
INSERT INTO `mapofschool` VALUES (15, '吉农正门', 'Main entrance', NULL);

-- ----------------------------
-- Table structure for plants
-- ----------------------------
DROP TABLE IF EXISTS `plants`;
CREATE TABLE `plants`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sciname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `families` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `genera` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 248 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of plants
-- ----------------------------
INSERT INTO `plants` VALUES (1, '杜松', 'Juniperus rigida ', '柏科 ', '刺柏属 ');
INSERT INTO `plants` VALUES (2, '沙地柏', 'Sabina vulgaris', '柏科', '圆柏属');
INSERT INTO `plants` VALUES (3, '丹东桧', 'Sabina chinensis Cv．Dandong ', '柏科', '圆柏属');
INSERT INTO `plants` VALUES (4, '玉竹', 'Polygonatum odoratum （Mill.）Druce', '百合科', '黄精属');
INSERT INTO `plants` VALUES (5, '大花萱草', 'Hemerocallis middendorfii Trautv. et Mey. ', '百合科', '萱草属');
INSERT INTO `plants` VALUES (6, '黄花菜', 'Hemerocallis citrina Baroni', '百合科', '萱草属');
INSERT INTO `plants` VALUES (7, '紫萼', 'Hosta ventricosa (Salisb.) Stearn ', '百合科', '玉簪属');
INSERT INTO `plants` VALUES (8, '红皮云杉', 'Picea koraiensis Nakai', '松科', '云杉属');
INSERT INTO `plants` VALUES (10, '蓝花鼠尾草', 'Salvia farinaceaBenth', '唇形科', '鼠尾草属');
INSERT INTO `plants` VALUES (17, '卫矛', 'Euonymus alatus (Thunb.) Sieb', '卫矛科', '卫矛属');
INSERT INTO `plants` VALUES (18, '葎草', 'Humulus scandens (Lour.) Merr. ', '桑科', '葎草属');
INSERT INTO `plants` VALUES (19, '黄花草木犀', 'Melilotus officinalis (L.) Lam. ', '豆科 ', '草木樨属 ');
INSERT INTO `plants` VALUES (20, '紫花苜蓿', 'Medicago sativa L.', '豆科', '苜蓿属');
INSERT INTO `plants` VALUES (21, '樟子松', 'Pinus sylvestris L. var. mongholica Litv.', '松科', '松属');
INSERT INTO `plants` VALUES (23, '白车轴草', 'Trifolium repens L.', '豆科', '车轴草属');
INSERT INTO `plants` VALUES (24, '榆树', 'Ulmus pumila L.', '榆科', '榆属');
INSERT INTO `plants` VALUES (26, '光辉海棠', 'Malus、Chaenomeles', '蔷薇科', '苹果属、木瓜属');
INSERT INTO `plants` VALUES (28, '刺槐', 'Robinia pseudoacacia Linn.', '豆科', '刺槐属');
INSERT INTO `plants` VALUES (29, '梣叶槭', 'Acer negundo L.', '槭树科', '槭属');
INSERT INTO `plants` VALUES (31, '叶底珠', 'Securinega suffruticosa(Pall.)Rehd. ', '大戟科', '白饭树属');
INSERT INTO `plants` VALUES (32, '鸡树条荚蒾', 'Viburnum opulus Linn. var. calvescens', '忍冬科', '荚蒾属');
INSERT INTO `plants` VALUES (33, '蝙蝠葛', 'Menispermum dauricum DC ', '防己科', '蝙蝠葛属');
INSERT INTO `plants` VALUES (34, '银中杨', 'Populus alba \'Berolinensis\' L.', '杨柳科', '杨属');
INSERT INTO `plants` VALUES (35, '白桦', 'Betula platyphylla Suk.', '桦木科', '桦木属');
INSERT INTO `plants` VALUES (36, '核桃楸', 'Juglans mandshurica Maxim. ', '胡桃科', '胡桃属');
INSERT INTO `plants` VALUES (38, '东北山梅花', 'Philadelphus schrenkii Rupr. ', '虎耳草科', '山梅花属');
INSERT INTO `plants` VALUES (39, '毛樱桃', 'Cerasus tomentosa (Thunb.) Wall', '蔷薇科', '樱属');
INSERT INTO `plants` VALUES (40, '黄檗', 'Phellodendron amurense Rupr.', '芸香科', '黄檗属');
INSERT INTO `plants` VALUES (43, '水榆花楸', 'Sorbus alnifolia (Sieb. et Zucc.) K. Koch', '蔷薇科', '花楸属');
INSERT INTO `plants` VALUES (45, '大花水桠木', 'Hydrangea paniculata Sieb.var.grandiflora Sieb.', '虎耳草科 ', '绣球属 ');
INSERT INTO `plants` VALUES (46, '拧筋槭', 'Acer triflorum Komarov', '槭树科', '槭属');
INSERT INTO `plants` VALUES (49, '金银忍冬', 'Lonicera maackii (Rupr.) Maxim. ', '忍冬科', '忍冬属');
INSERT INTO `plants` VALUES (51, '费菜', 'Sedum aizoon L.', '景天科', '景天属');
INSERT INTO `plants` VALUES (52, '茼麻', 'Abutilon theophrasti Medic', '锦葵科', '苘麻属');
INSERT INTO `plants` VALUES (54, '早开堇菜', 'Viola prionantha ', '堇菜科', '堇菜属');
INSERT INTO `plants` VALUES (55, '接骨木', 'Sambucus williamsii Hance', '忍冬科', '接骨木属');
INSERT INTO `plants` VALUES (56, '假色槭', 'Acer pseudo-sieboldianum(Pax.)Komarov', '槭树科', '槭属');
INSERT INTO `plants` VALUES (57, '黑皮油松', 'Pinus tabulaeformis var.mukdensis Uyeki', '松科', '松属');
INSERT INTO `plants` VALUES (58, '长白忍冬', 'Lonicera ruprechtiana Regel', '忍冬科', '忍冬属 ');
INSERT INTO `plants` VALUES (59, '新疆杨', 'Populus bolleana Lauche ', '杨柳科', '杨属');
INSERT INTO `plants` VALUES (60, '花楸', 'Sorbus pohuashanensis', '蔷薇科', '花楸属');
INSERT INTO `plants` VALUES (61, '桃叶卫矛 ', 'Euonymus hamiltonianus Wall. Var. Yedoensis (Koch)', ' 卫 矛 科', '卫矛属');
INSERT INTO `plants` VALUES (62, '牛蒡', 'Arctium lappa', '菊科', '牛蒡属');
INSERT INTO `plants` VALUES (63, '蓍草', 'Achillea sibirca', '菊科', '蓍属');
INSERT INTO `plants` VALUES (64, '大籽蒿', 'Artemisia sieversiana Ehrhart ex Willd.', '菊科', '蒿属');
INSERT INTO `plants` VALUES (65, '黄花蒿', 'Artemisia annua Linn.', '菊科', '蒿属');
INSERT INTO `plants` VALUES (67, '早花忍冬', 'Lonicera praeflorens Batalin', '忍冬科', '忍冬属');
INSERT INTO `plants` VALUES (68, '铁杆蒿', 'Artemisia gmelinii', '菊科', '蒿属');
INSERT INTO `plants` VALUES (70, '皂荚', 'Gleditsia sinensis Lam.', '豆科', '皂荚属');
INSERT INTO `plants` VALUES (71, '旱柳', 'Salix matsudana Koidz. ', '杨柳科', '柳属');
INSERT INTO `plants` VALUES (73, '刺槐', 'Robinia pseudoacacia Linn.', '豆科', '刺槐属');
INSERT INTO `plants` VALUES (74, '裂叶榆', 'Ulmus laciniata (Trautv.) Mayr.', '榆科', '榆属');
INSERT INTO `plants` VALUES (75, '杉松冷杉', 'Abies holophylla Maxim', '松科', '冷杉属');
INSERT INTO `plants` VALUES (76, '海棠', 'Malus、Chaenomeles', '蔷薇科', '苹果属、木瓜属');
INSERT INTO `plants` VALUES (77, '紫穗槐', 'Amorpha fruticosa Linn.', '豆科', '紫穗槐属');
INSERT INTO `plants` VALUES (78, '牛至', 'Origanum vulgare L.', '唇形科', '牛至属');
INSERT INTO `plants` VALUES (79, '山杏', 'Armeniaca sibirica (L.) Lam.', '蔷薇科', '杏属');
INSERT INTO `plants` VALUES (80, '黑心金光菊', 'Rudbeckia hirta L.', '菊科', '金光菊属');
INSERT INTO `plants` VALUES (81, '金雀锦鸡儿', 'Caragana frutex (L. ) O. Koch', '豆科', '锦鸡儿属');
INSERT INTO `plants` VALUES (82, '山楂', 'Crataegus pinnatifida Bunge', '蔷薇科', '山楂属');
INSERT INTO `plants` VALUES (83, '鼠李', 'Rhamnus davurica Pall', '鼠李科', '鼠李属');
INSERT INTO `plants` VALUES (84, '山槐', 'Albizia kalkora', '豆科', '合欢属');
INSERT INTO `plants` VALUES (85, '藜', 'Chenopodium album L.', '藜科', '藜属');
INSERT INTO `plants` VALUES (87, '月见草', 'Oenothera biennis L.', '柳叶菜科', '月见草属 ');
INSERT INTO `plants` VALUES (88, '山杨', 'Populus davidiana', '杨柳科', '杨属 ');
INSERT INTO `plants` VALUES (89, '萝藦', 'Metaplexis japonica (Thunb.) Makino', '萝藦科', '萝藦属');
INSERT INTO `plants` VALUES (91, '小叶丁香', 'Syringa microphylla Diels ', '木犀科', '丁香属');
INSERT INTO `plants` VALUES (92, '暴马丁香', 'Syringa reticulata (Bl.)Hara var. Mandshurica (Maxim.) Hara (S. Amurensis Rupr.) ', '木犀科', '丁香属');
INSERT INTO `plants` VALUES (93, '紫丁香', 'Syringa oblata Lindl. ', '木犀科', '丁香属');
INSERT INTO `plants` VALUES (95, '东北连翘', 'Forsythia mandschurica Uyeki ', '木犀科', '连翘属');
INSERT INTO `plants` VALUES (96, '辽东水蜡树', 'Ligustrum obtusifolium Sieb.', '木犀科', '女贞属');
INSERT INTO `plants` VALUES (97, '水曲柳', 'Fraxinus mandshurica Rupr.', '木犀科', '梣属');
INSERT INTO `plants` VALUES (98, '天竺葵', 'Pelargonium hortorum Bailey', '牻牛儿苗科', '天竺葵属');
INSERT INTO `plants` VALUES (99, '南蛇藤', 'Celastrus orbiculatus Thunb', '卫矛科', '南蛇藤属');
INSERT INTO `plants` VALUES (100, '胡枝子', 'Lespedeza bicolor Turcz', '豆科', '胡枝子属');
INSERT INTO `plants` VALUES (101, '软枣猕猴桃', 'Actinidia arguta (Sieb. & Zucc) Planch.ex Miq. ', '猕猴桃科', '猕猴桃属');
INSERT INTO `plants` VALUES (102, '色木槭', 'Acer mono Maxim', '槭树科', '槭属');
INSERT INTO `plants` VALUES (104, '香杨', 'Populus koreana', '杨柳科', '杨属');
INSERT INTO `plants` VALUES (105, '茶条槭', 'Acer ginnala Maxim.', '槭树科', '槭属');
INSERT INTO `plants` VALUES (106, '大黄柳', 'Salix raddeana Laksch. ex Nas.', '杨柳科', '柳属');
INSERT INTO `plants` VALUES (107, '红松', 'Pinus koraiensis Sieb. et Zucc.', '松科', '松属');
INSERT INTO `plants` VALUES (108, '溲疏', 'Deutzia scabra Thunb', '虎耳草科', '溲疏属');
INSERT INTO `plants` VALUES (109, '千金榆', 'Carpinus cordata Bl.', '桦木科', '鹅耳枥属 ');
INSERT INTO `plants` VALUES (111, '地锦', 'Parthenocissus tricuspidata', '葡萄科', '地锦属');
INSERT INTO `plants` VALUES (112, '五叶地锦', 'Parthenocissus quinquefolia (L.) Planch', '葡萄科', '地锦属');
INSERT INTO `plants` VALUES (113, '蒙古栎', 'Quercus mongolica Fisch. ex Ledeb. ', '壳斗科', '栎属');
INSERT INTO `plants` VALUES (114, '珍珠梅', 'Sorbaria sorbifolia (L.) A. Br. ', '蔷薇科', '珍珠梅属');
INSERT INTO `plants` VALUES (116, '山荆子', 'Malus baccata (L.) Borkh.', '蔷薇科', '苹果属');
INSERT INTO `plants` VALUES (119, '榆叶梅', 'Amygdalus triloba ', '蔷薇科', '桃属');
INSERT INTO `plants` VALUES (120, '截叶榆叶梅', 'Prunus triloba var. truncata Kom', '蔷薇科', '李属');
INSERT INTO `plants` VALUES (122, '山桃稠李', 'Prunus maackii', '蔷薇科', '稠李属');
INSERT INTO `plants` VALUES (123, '稠李', 'Prunus padus L.', '蔷薇科', '稠李属');
INSERT INTO `plants` VALUES (124, '紫叶稠李', 'Padus virginiana ‘Canada Red’', '蔷薇科', '稠李属');
INSERT INTO `plants` VALUES (125, '东北杏', 'Prunus mandshurica (Maxim.) Koehne. ', '蔷薇科', '杏属');
INSERT INTO `plants` VALUES (126, '黄刺玫', 'Rosa xanthina Lindl. ', '蔷薇科', '蔷薇属');
INSERT INTO `plants` VALUES (127, '珍珠绣线菊', 'Spiraea thunbergii Bl. ', '蔷薇科', '绣线菊属');
INSERT INTO `plants` VALUES (128, '金山绣线菊', 'Spiraea japonica Gold Mound', '蔷薇科', '绣线菊属');
INSERT INTO `plants` VALUES (129, '毛果绣线菊', 'Spiraea trichocarpa Nakai. ', '蔷薇科', '绣线菊属');
INSERT INTO `plants` VALUES (130, '四季玫瑰', 'Rosa rugosa Thunb', '蔷薇科', '蔷薇属');
INSERT INTO `plants` VALUES (132, '山桃', 'Amygdalus davidiana (Carrière) de Vos ex Henry', '蔷薇科', '桃属');
INSERT INTO `plants` VALUES (133, '紫叶李', 'Prunus Cerasifera Ehrhar f. atropurpurea (Jacq.) Rehd.', '蔷薇科', '李属');
INSERT INTO `plants` VALUES (135, '海棠', 'Malus、Chaenomeles', '蔷薇科', '苹果属');
INSERT INTO `plants` VALUES (138, '花楸', 'Sorbus pohuashanensis', '蔷薇科', '花楸属');
INSERT INTO `plants` VALUES (139, '山楂', 'Crataegus pinnatifida Bunge', '蔷薇科', '山楂属');
INSERT INTO `plants` VALUES (141, '梣叶槭', 'Acer negundo L.', '槭树科', '槭属');
INSERT INTO `plants` VALUES (142, '茶条槭', 'Acer ginnala Maxim.', '槭树科', '槭属');
INSERT INTO `plants` VALUES (143, '梣叶槭', 'Acer negundo L. ', '槭树科', '槭属');
INSERT INTO `plants` VALUES (144, '色木槭', 'Acer mono Maxim.', '槭树科', '槭属');
INSERT INTO `plants` VALUES (147, '假色槭', 'Acer pseudo-sieboldianum(Pax.)Komarov ', '槭树科', '槭属');
INSERT INTO `plants` VALUES (155, '接骨木', 'Sambucus williamsii Hance', '忍冬科', '接骨木属');
INSERT INTO `plants` VALUES (156, '长白忍冬', 'Lonicera ruprechtiana Regel', '忍冬科', '忍冬属');
INSERT INTO `plants` VALUES (157, '金银忍冬', 'Lonicera maackii (Rupr.) Maxim.  ', '忍冬科', '忍冬属');
INSERT INTO `plants` VALUES (160, '樟子松', 'Pinus sylvestris L. var. mongholica Litv.', '松科', '松属');
INSERT INTO `plants` VALUES (162, '黑皮油松', 'Pinus tabulaeformis var.mukdensis Uyeki ', '松科', '松属');
INSERT INTO `plants` VALUES (163, '樟子松', 'Pinus sylvestris L. var. mongholica Litv. ', '松科', '松属');
INSERT INTO `plants` VALUES (166, '红松', 'Pinus koraiensis Sieb. et Zucc. ', '松科', '松属');
INSERT INTO `plants` VALUES (188, '卫矛', 'Euonymusalatus', '卫矛科', '卫矛属');
INSERT INTO `plants` VALUES (197, '榆树', 'Ulmus pumila L. ', '榆科', '榆属');
INSERT INTO `plants` VALUES (198, '裂叶榆', 'Ulmus laciniata (Trautv.) Mayr. ', '榆科', '榆属');
INSERT INTO `plants` VALUES (201, '黄檗', 'Phellodendron amurense Rupr. ', '芸香科', '黄檗属');
INSERT INTO `plants` VALUES (203, '银中杨', 'Populus alba \'Berolinensis\' L. ', '杨柳科', '杨属');
INSERT INTO `plants` VALUES (205, '旱柳', 'Salix matsudana Koidz.  ', '杨柳科', '柳属');
INSERT INTO `plants` VALUES (206, '大黄柳', 'Salix raddeana Laksch. ex Nas', '杨柳科', '柳属');
INSERT INTO `plants` VALUES (207, '山杨', 'Populus davidiana', '杨柳科', '杨属');
INSERT INTO `plants` VALUES (244, '紫花玉簪', 'Hosta ventricosa （Salisb.） Stearn', '百合科', '玉簪属');

SET FOREIGN_KEY_CHECKS = 1;
