-- ----------------------------
-- 字典详情初始化sql
-- Table structure for system_dictdetails
-- ----------------------------
-- DROP TABLE IF EXISTS `system_dictdetails`;
-- CREATE TABLE `system_dictdetails` (
--   `id` int(11) NOT NULL AUTO_INCREMENT,
--   `description` longtext,
--   `creator` varchar(255) DEFAULT NULL,
--   `modifier` varchar(255) DEFAULT NULL,
--   `update_datetime` datetime(6) DEFAULT NULL,
--   `create_datetime` datetime(6) DEFAULT NULL,
--   `dictLabel` varchar(64) NOT NULL,
--   `dictValue` varchar(256) NOT NULL,
--   `is_default` tinyint(1) NOT NULL,
--   `status` varchar(2) NOT NULL,
--   `sort` varchar(256) NOT NULL,
--   `remark` varchar(256) DEFAULT NULL,
--   `dict_data_id` int(11) NOT NULL,
--   PRIMARY KEY (`id`),
--   KEY `system_dictdetails_dict_data_id_0bfceb37_fk_system_dictdata_id` (`dict_data_id`),
--   CONSTRAINT `system_dictdetails_dict_data_id_0bfceb37_fk_system_dictdata_id` FOREIGN KEY (`dict_data_id`) REFERENCES `system_dictdata` (`id`)
-- ) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of system_dictdetails
-- ----------------------------
INSERT INTO `system_dictdetails` VALUES (1, '', 'admin', '2021-02-27 07:10:41.679229', '2021-02-27 06:28:44.246112', '男', '0', 0, '1', '1', '性别男', 1, 1);
INSERT INTO `system_dictdetails` VALUES (2, '', 'admin', '2021-02-27 06:29:33.556002', '2021-02-27 06:29:03.591400', '女', '1', 0, '1', '2', '性别女', 1, 1);
INSERT INTO `system_dictdetails` VALUES (3, '', 'admin', '2021-02-27 06:29:51.943789', '2021-02-27 06:29:17.544082', '未知', '2', 1, '1', '3', '性别未知', 1, 1);
INSERT INTO `system_dictdetails` VALUES (4, '', 'admin', '2021-02-27 07:10:27.513951', '2021-02-27 06:31:38.884136', '显示', '1', 1, '1', '1', '显示菜单', 1, 2);
INSERT INTO `system_dictdetails` VALUES (5, '', 'admin', '2021-02-27 07:10:30.824117', '2021-02-27 06:33:07.491136', '隐藏', '0', 0, '1', '2', '隐藏菜单', 1, 2);
INSERT INTO `system_dictdetails` VALUES (6, '', 'admin', '2021-02-27 07:00:47.233161', '2021-02-27 07:00:47.233220', '正常', '1', 1, '1', '1', '正常状态', 1, 3);
INSERT INTO `system_dictdetails` VALUES (7, '', 'admin', '2021-02-27 07:01:02.598169', '2021-02-27 07:01:02.598213', '停用', '0', 0, '1', '2', '停用状态', 1, 3);
INSERT INTO `system_dictdetails` VALUES (8, '', 'admin', '2021-02-27 07:02:03.014319', '2021-02-27 07:01:43.750881', '正常', '1', 1, '1', '1', '正常状态', 1, 4);
INSERT INTO `system_dictdetails` VALUES (9, '', 'admin', '2021-02-27 07:01:58.880996', '2021-02-27 07:01:58.881040', '暂停', '0', 0, '1', '2', '停用状态', 1, 4);
INSERT INTO `system_dictdetails` VALUES (10, '', 'admin', '2021-02-27 07:02:51.415658', '2021-02-27 07:02:51.415703', '默认', 'DEFAULT', 1, '1', '1', '默认分组', 1, 5);
INSERT INTO `system_dictdetails` VALUES (11, '', 'admin', '2021-02-27 07:03:13.560650', '2021-02-27 07:03:13.560696', '系统', 'SYSTEM', 0, '1', '2', '系统分组', 1, 5);
INSERT INTO `system_dictdetails` VALUES (12, '', 'admin', '2021-02-27 07:03:42.729915', '2021-02-27 07:03:42.729966', '是', 'Y', 1, '1', '1', '系统默认是', 1, 6);
INSERT INTO `system_dictdetails` VALUES (13, '', 'admin', '2021-02-27 07:04:01.389829', '2021-02-27 07:04:01.389872', '否', 'N', 0, '1', '2', '系统默认否', 1, 6);
INSERT INTO `system_dictdetails` VALUES (14, '', 'admin', '2021-02-27 07:04:25.094873', '2021-02-27 07:04:25.094917', '通知', '1', 1, '1', '1', '通知', 1, 7);
INSERT INTO `system_dictdetails` VALUES (15, '', 'admin', '2021-02-27 07:04:48.136899', '2021-02-27 07:04:48.136942', '公告', '2', 0, '1', '2', '公告', 1, 7);
INSERT INTO `system_dictdetails` VALUES (16, '', 'admin', '2021-02-27 07:05:19.801756', '2021-02-27 07:05:14.206563', '正常', '1', 1, '1', '1', '正常状态', 1, 8);
INSERT INTO `system_dictdetails` VALUES (17, '', 'admin', '2021-02-27 07:05:37.420621', '2021-02-27 07:05:37.420665', '关闭', '0', 0, '1', '2', '关闭状态', 1, 8);
INSERT INTO `system_dictdetails` VALUES (18, '', 'admin', '2021-02-27 07:06:46.397742', '2021-02-27 07:06:10.700351', '新增', '1', 0, '1', '1', '新增操作', 1, 9);
INSERT INTO `system_dictdetails` VALUES (19, '', 'admin', '2021-02-27 07:06:24.688730', '2021-02-27 07:06:24.688786', '修改', '2', 0, '1', '2', '修改操作', 1, 9);
INSERT INTO `system_dictdetails` VALUES (20, '', 'admin', '2021-02-27 07:06:43.320943', '2021-02-27 07:06:43.320988', '删除', '3', 0, '1', '3', '删除操作', 1, 9);
INSERT INTO `system_dictdetails` VALUES (21, '', 'admin', '2021-02-27 07:07:00.508951', '2021-02-27 07:07:00.508996', '授权', '4', 0, '1', '4', '授权操作', 1, 9);
INSERT INTO `system_dictdetails` VALUES (22, '', 'admin', '2021-02-27 07:07:38.550527', '2021-02-27 07:07:38.550573', '导出', '5', 0, '1', '5', '导出操作', 1, 9);
INSERT INTO `system_dictdetails` VALUES (23, '', 'admin', '2021-02-27 07:08:09.294696', '2021-02-27 07:08:09.294743', '导入', '6', 0, '1', '6', '导入操作', 1, 9);
INSERT INTO `system_dictdetails` VALUES (24, '', 'admin', '2021-02-27 07:08:32.640718', '2021-02-27 07:08:32.640763', '强退', '7', 0, '1', '7', '强退操作', 1, 9);
INSERT INTO `system_dictdetails` VALUES (25, '', 'admin', '2021-02-27 07:08:47.559833', '2021-02-27 07:08:47.559887', '生成', '8', 0, '1', '8', '生成操作', 1, 9);
INSERT INTO `system_dictdetails` VALUES (26, '', 'admin', '2021-02-27 07:09:13.410371', '2021-02-27 07:09:04.346547', '清空', '9', 0, '1', '9', '清空操作', 1, 9);
INSERT INTO `system_dictdetails` VALUES (27, '', 'admin', '2021-02-27 07:09:37.467839', '2021-02-27 07:09:37.467883', '正常', '1', 0, '1', '1', '正常状态', 1, 10);
INSERT INTO `system_dictdetails` VALUES (28, '', 'admin', '2021-02-27 07:10:17.235559', '2021-02-27 07:10:02.980623', '停用', '0', 0, '1', '2', '停用状态', 1, 10);
INSERT INTO `system_dictdetails` VALUES (29, '', 'admin', '2021-02-27 08:00:07.361327', '2021-02-27 08:00:07.361371', '目录', '0', 1, '1', '1', '目录', 1, 11);
INSERT INTO `system_dictdetails` VALUES (30, '', 'admin', '2021-02-27 08:00:27.832697', '2021-02-27 08:00:22.160349', '菜单', '1', 0, '1', '2', '菜单', 1, 11);
INSERT INTO `system_dictdetails` VALUES (31, '', 'admin', '2021-02-27 08:00:45.794325', '2021-02-27 08:00:45.794369', '按钮', '2', 0, '1', '3', '按钮', 1, 11);
INSERT INTO `system_dictdetails` VALUES (32, '', 'admin', '2021-02-27 08:02:22.957299', '2021-02-27 08:02:22.957364', 'GET', 'GET', 1, '1', '1', NULL, 1, 12);
INSERT INTO `system_dictdetails` VALUES (33, '', 'admin', '2021-02-27 08:02:37.650203', '2021-02-27 08:02:37.650291', 'POST', 'POST', 0, '1', '2', NULL, 1, 12);
INSERT INTO `system_dictdetails` VALUES (34, '', 'admin', '2021-02-27 08:02:56.731151', '2021-02-27 08:02:56.731262', 'PUT', 'PUT', 0, '1', '3', NULL, 1, 12);
INSERT INTO `system_dictdetails` VALUES (35, '', 'admin', '2021-02-27 08:03:19.639542', '2021-02-27 08:03:19.639611', 'PATCH', 'PATCH', 0, '1', '4', NULL, 1, 12);
INSERT INTO `system_dictdetails` VALUES (36, '', 'admin', '2021-02-27 08:03:31.746528', '2021-02-27 08:03:31.746574', 'DELETE', 'DELETE', 0, '1', '5', NULL, 1, 12);
INSERT INTO `system_dictdetails` VALUES (37, '', 'admin', '2021-02-27 08:03:41.277335', '2021-02-27 08:03:41.277383', 'HEAD', 'HEAD', 0, '0', '6', NULL, 1, 12);
INSERT INTO `system_dictdetails` VALUES (38, '', 'admin', '2021-02-27 08:03:50.891906', '2021-02-27 08:03:50.891950', 'OPTIONS', 'OPTIONS', 0, '0', '7', NULL, 1, 12);
INSERT INTO `system_dictdetails` VALUES (39, '', 'admin', '2021-02-27 08:04:00.460564', '2021-02-27 08:04:00.460610', 'TRACE', 'TRACE', 0, '0', '8', NULL, 1, 12);
