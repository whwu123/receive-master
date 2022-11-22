/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50736
Source Host           : localhost:3306
Source Database       : ry

Target Server Type    : MYSQL
Target Server Version : 50736
File Encoding         : 65001

Date: 2022-05-29 11:43:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for claim
-- ----------------------------
DROP TABLE IF EXISTS `claim`;
CREATE TABLE `claim` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `remark` text,
  `city_id` bigint(32) DEFAULT NULL,
  `city_name` varchar(255) DEFAULT NULL,
  `area_id` bigint(32) DEFAULT NULL,
  `area_name` varchar(255) DEFAULT NULL,
  `school_id` bigint(32) DEFAULT NULL,
  `school_name` varchar(255) DEFAULT NULL,
  `school_grade` varchar(255) DEFAULT NULL,
  `school_grade_name` varchar(255) DEFAULT NULL,
  `school_class` bigint(32) DEFAULT NULL,
  `school_class_name` varchar(255) DEFAULT NULL,
  `stu_card` varchar(255) DEFAULT NULL,
  `stu_name` varchar(255) DEFAULT NULL,
  `stu_sex` int(11) DEFAULT NULL,
  `parents_name` varchar(255) DEFAULT NULL,
  `parents_card` varchar(255) DEFAULT NULL,
  `parents_call` varchar(255) DEFAULT NULL,
  `pay_money` decimal(10,0) DEFAULT NULL,
  `pay_serial` varchar(255) DEFAULT NULL,
  `claim_type` int(11) DEFAULT NULL,
  `claim_money` decimal(10,0) DEFAULT NULL,
  `claim_person_id` bigint(32) DEFAULT NULL,
  `evolev_state` int(11) DEFAULT NULL,
  `finish_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of claim
-- ----------------------------
INSERT INTO `claim` VALUES ('15', 'admin', '2022-05-09 10:43:15', 'admin', '2022-05-09 11:19:44', null, '0', '发生结束', null, '怀化分公司', null, '鹤城区', null, '锦溪小学', null, '一年级', null, '101班', '431221199202011010', '测试', '0', '测试家长', '431221199202011010', '18665022235', '70', '4312211992020110104312211', '1', '2000', '31', '3', '2022-05-09 11:00:00');
INSERT INTO `claim` VALUES ('17', 'admin', '2022-05-25 14:39:45', 'admin', '2022-05-25 14:41:31', null, '0', '按按', null, '测试', null, '市直', null, '测试', null, '一年级', null, '1班', '431221199202011010', '伍春晖', '0', '伍春晖', '431221199202011010', '1865022235', '70', '43122119920201101045445', '1', '2000', '28', '3', '2022-05-24 14:40:16');

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作 sub主子表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES ('31', 'n_income', '收入管理', 'n_income_sources', 'ni_id', 'NIncome', 'sub', 'com.ruoyi.system', 'system', 'income', '收入管理', 'wuchunhui', '0', '/', '{\"parentMenuId\":\"2043\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"湘N管理\",\"treeCode\":\"\"}', 'admin', '2022-05-16 11:02:55', '', '2022-05-16 11:23:33', '');
INSERT INTO `gen_table` VALUES ('32', 'n_income_sources', '收入信息管理', '', null, 'NIncomeSources', 'crud', 'com.ruoyi.system', 'system', 'sources', '收入信息管理', 'wuchunhui', '0', '/', '{\"parentMenuId\":\"2062\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"收入管理\",\"treeCode\":\"\"}', 'admin', '2022-05-16 11:02:55', '', '2022-05-16 11:10:59', '');
INSERT INTO `gen_table` VALUES ('33', 'n_expend', '支出管理', '', null, 'NExpend', 'crud', 'com.ruoyi.system', 'system', 'expend', '支出管理', 'wuchunhui', '0', '/', '{\"parentMenuId\":\"2043\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"湘N管理\",\"treeCode\":\"\"}', 'admin', '2022-05-16 15:22:41', '', '2022-05-16 15:23:43', '');
INSERT INTO `gen_table` VALUES ('34', 'hbd_salesman', '营销员管理', '', null, 'HbdSalesman', 'crud', 'com.ruoyi.system', 'system', 'salesman', '人员管理', 'wuchunhui', '0', '/', '{\"parentMenuId\":\"2074\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"营销员管理\",\"treeCode\":\"\"}', 'admin', '2022-05-19 15:16:55', '', '2022-05-19 15:33:22', '');
INSERT INTO `gen_table` VALUES ('35', 'hbd_salesman_messqges', '营销员信息表', '', null, 'HbdSalesmanMessqges', 'crud', 'com.ruoyi.system', 'system', 'messqges', '信息管理', 'wuchunhui', '0', '/', '{\"parentMenuId\":\"2074\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"营销员管理\",\"treeCode\":\"\"}', 'admin', '2022-05-20 09:31:49', '', '2022-05-20 10:06:26', '');

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=386 DEFAULT CHARSET=utf8mb4 COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES ('326', '31', 'id', '主键ID', 'bigint(20)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2022-05-16 11:02:55', null, '2022-05-16 11:23:33');
INSERT INTO `gen_table_column` VALUES ('327', '31', 'create_by', '创建用户', 'varchar(255)', 'String', 'createBy', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '2', 'admin', '2022-05-16 11:02:55', null, '2022-05-16 11:23:33');
INSERT INTO `gen_table_column` VALUES ('328', '31', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, null, null, 'EQ', 'datetime', '', '3', 'admin', '2022-05-16 11:02:55', null, '2022-05-16 11:23:33');
INSERT INTO `gen_table_column` VALUES ('329', '31', 'update_by', '更新用户', 'varchar(255)', 'String', 'updateBy', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '4', 'admin', '2022-05-16 11:02:55', null, '2022-05-16 11:23:33');
INSERT INTO `gen_table_column` VALUES ('330', '31', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', null, '1', '1', null, null, 'EQ', 'datetime', '', '5', 'admin', '2022-05-16 11:02:55', null, '2022-05-16 11:23:33');
INSERT INTO `gen_table_column` VALUES ('331', '31', 'ni_title', '名称', 'varchar(255)', 'String', 'niTitle', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2022-05-16 11:02:55', null, '2022-05-16 11:23:33');
INSERT INTO `gen_table_column` VALUES ('332', '31', 'ni_type', '类型', 'varchar(255)', 'String', 'niType', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', '', '8', 'admin', '2022-05-16 11:02:55', null, '2022-05-16 11:23:33');
INSERT INTO `gen_table_column` VALUES ('333', '31', 'ni_status', '状态', 'int(11)', 'Long', 'niStatus', '0', '0', null, '1', '1', '1', '1', 'EQ', 'radio', 'data_state', '9', 'admin', '2022-05-16 11:02:55', null, '2022-05-16 11:23:33');
INSERT INTO `gen_table_column` VALUES ('334', '31', 'remark', '备注', 'text', 'String', 'remark', '0', '0', null, '1', '1', '1', null, 'EQ', 'textarea', '', '10', 'admin', '2022-05-16 11:02:55', null, '2022-05-16 11:23:33');
INSERT INTO `gen_table_column` VALUES ('335', '32', 'id', '主键ID', 'bigint(20)', 'Long', 'id', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2022-05-16 11:02:55', null, '2022-05-16 11:10:59');
INSERT INTO `gen_table_column` VALUES ('336', '32', 'create_by', '创建用户', 'varchar(255)', 'String', 'createBy', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '2', 'admin', '2022-05-16 11:02:55', null, '2022-05-16 11:10:59');
INSERT INTO `gen_table_column` VALUES ('337', '32', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, null, null, 'EQ', 'datetime', '', '3', 'admin', '2022-05-16 11:02:55', null, '2022-05-16 11:10:59');
INSERT INTO `gen_table_column` VALUES ('338', '32', 'update_by', '更新用户', 'varchar(255)', 'String', 'updateBy', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '4', 'admin', '2022-05-16 11:02:55', null, '2022-05-16 11:10:59');
INSERT INTO `gen_table_column` VALUES ('339', '32', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', null, '1', '1', null, null, 'EQ', 'datetime', '', '5', 'admin', '2022-05-16 11:02:55', null, '2022-05-16 11:10:59');
INSERT INTO `gen_table_column` VALUES ('340', '32', 'nis_name', '名称', 'varchar(255)', 'String', 'nisName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '6', 'admin', '2022-05-16 11:02:55', null, '2022-05-16 11:10:59');
INSERT INTO `gen_table_column` VALUES ('341', '32', 'nis_money', '金额', 'decimal(10,0)', 'Long', 'nisMoney', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '7', 'admin', '2022-05-16 11:02:55', null, '2022-05-16 11:10:59');
INSERT INTO `gen_table_column` VALUES ('342', '32', 'nis_type', '类型', 'varchar(255)', 'String', 'nisType', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '8', 'admin', '2022-05-16 11:02:55', null, '2022-05-16 11:10:59');
INSERT INTO `gen_table_column` VALUES ('343', '32', 'nis_status', '状态', 'int(11)', 'Long', 'nisStatus', '0', '0', null, '1', '1', '1', '1', 'EQ', 'radio', 'data_state', '9', 'admin', '2022-05-16 11:02:55', null, '2022-05-16 11:10:59');
INSERT INTO `gen_table_column` VALUES ('344', '32', 'remark', '备注', 'text', 'String', 'remark', '0', '0', null, '1', '1', '1', null, 'EQ', 'textarea', '', '10', 'admin', '2022-05-16 11:02:55', null, '2022-05-16 11:10:59');
INSERT INTO `gen_table_column` VALUES ('345', '32', 'ni_id', '主表ID', 'bigint(20)', 'Long', 'niId', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '11', 'admin', '2022-05-16 11:02:55', null, '2022-05-16 11:10:59');
INSERT INTO `gen_table_column` VALUES ('346', '31', 'ni_surplus', '结余', 'decimal(10,0)', 'Long', 'niSurplus', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '7', '', '2022-05-16 11:22:41', null, '2022-05-16 11:23:33');
INSERT INTO `gen_table_column` VALUES ('347', '33', 'id', '主键ID', 'bigint(20)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2022-05-16 15:22:41', null, '2022-05-16 15:23:43');
INSERT INTO `gen_table_column` VALUES ('348', '33', 'create_by', '创建用户', 'varchar(255)', 'String', 'createBy', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '2', 'admin', '2022-05-16 15:22:41', null, '2022-05-16 15:23:43');
INSERT INTO `gen_table_column` VALUES ('349', '33', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, null, null, 'EQ', 'datetime', '', '3', 'admin', '2022-05-16 15:22:41', null, '2022-05-16 15:23:43');
INSERT INTO `gen_table_column` VALUES ('350', '33', 'update_by', '更新用户', 'varchar(255)', 'String', 'updateBy', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '4', 'admin', '2022-05-16 15:22:41', null, '2022-05-16 15:23:43');
INSERT INTO `gen_table_column` VALUES ('351', '33', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', null, '1', '1', null, null, 'EQ', 'datetime', '', '5', 'admin', '2022-05-16 15:22:41', null, '2022-05-16 15:23:43');
INSERT INTO `gen_table_column` VALUES ('352', '33', 'ne_title', '名称', 'varchar(255)', 'String', 'neTitle', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2022-05-16 15:22:41', null, '2022-05-16 15:23:43');
INSERT INTO `gen_table_column` VALUES ('353', '33', 'ne_money', '金额', 'decimal(10,0)', 'Long', 'neMoney', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '7', 'admin', '2022-05-16 15:22:41', null, '2022-05-16 15:23:43');
INSERT INTO `gen_table_column` VALUES ('354', '33', 'ne_type', '类型', 'varchar(255)', 'String', 'neType', '0', '0', null, '1', '1', '1', null, 'EQ', 'select', '', '8', 'admin', '2022-05-16 15:22:41', null, '2022-05-16 15:23:43');
INSERT INTO `gen_table_column` VALUES ('355', '33', 'ne_status', '状态', 'int(11)', 'Long', 'neStatus', '0', '0', null, '1', '1', '1', '1', 'EQ', 'radio', '', '9', 'admin', '2022-05-16 15:22:41', null, '2022-05-16 15:23:43');
INSERT INTO `gen_table_column` VALUES ('356', '33', 'ne_last_surplus', '上一期结余', 'decimal(10,0)', 'Long', 'neLastSurplus', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '10', 'admin', '2022-05-16 15:22:41', null, '2022-05-16 15:23:43');
INSERT INTO `gen_table_column` VALUES ('357', '33', 'ne_content', '内容', 'text', 'String', 'neContent', '0', '0', null, '1', '1', '1', null, 'EQ', 'summernote', '', '11', 'admin', '2022-05-16 15:22:41', null, '2022-05-16 15:23:43');
INSERT INTO `gen_table_column` VALUES ('358', '33', 'remark', '备注', 'varchar(255)', 'String', 'remark', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '12', 'admin', '2022-05-16 15:22:41', null, '2022-05-16 15:23:43');
INSERT INTO `gen_table_column` VALUES ('359', '34', 'id', '主键ID', 'bigint(20)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2022-05-19 15:16:55', null, '2022-05-19 15:33:22');
INSERT INTO `gen_table_column` VALUES ('360', '34', 'create_by', '创建用户', 'varchar(255)', 'String', 'createBy', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '2', 'admin', '2022-05-19 15:16:55', null, '2022-05-19 15:33:22');
INSERT INTO `gen_table_column` VALUES ('361', '34', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, null, null, 'EQ', 'datetime', '', '3', 'admin', '2022-05-19 15:16:55', null, '2022-05-19 15:33:22');
INSERT INTO `gen_table_column` VALUES ('362', '34', 'update_by', '更新用户', 'varchar(255)', 'String', 'updateBy', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '4', 'admin', '2022-05-19 15:16:55', null, '2022-05-19 15:33:22');
INSERT INTO `gen_table_column` VALUES ('363', '34', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', null, '1', '1', null, null, 'EQ', 'datetime', '', '5', 'admin', '2022-05-19 15:16:55', null, '2022-05-19 15:33:22');
INSERT INTO `gen_table_column` VALUES ('364', '34', 's_name', '姓名', 'varchar(255)', 'String', 'sName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '6', 'admin', '2022-05-19 15:16:55', null, '2022-05-19 15:33:22');
INSERT INTO `gen_table_column` VALUES ('365', '34', 's_card', '身份证', 'varchar(255)', 'String', 'sCard', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '7', 'admin', '2022-05-19 15:16:55', null, '2022-05-19 15:33:22');
INSERT INTO `gen_table_column` VALUES ('366', '34', 's_sex', '性别', 'int(11)', 'Long', 'sSex', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', 'sys_user_sex', '8', 'admin', '2022-05-19 15:16:55', null, '2022-05-19 15:33:22');
INSERT INTO `gen_table_column` VALUES ('367', '34', 'state', '状态', 'int(11)', 'Long', 'state', '0', '0', null, '1', '1', '1', '1', 'EQ', 'radio', 'data_state', '9', 'admin', '2022-05-19 15:16:55', null, '2022-05-19 15:33:22');
INSERT INTO `gen_table_column` VALUES ('368', '34', 'remark', '备注', 'text', 'String', 'remark', '0', '0', null, '1', '1', null, null, 'EQ', 'textarea', '', '10', 'admin', '2022-05-19 15:16:55', null, '2022-05-19 15:33:22');
INSERT INTO `gen_table_column` VALUES ('369', '34', 'bank_card', '银行卡号', 'varchar(100)', 'String', 'bankCard', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '11', 'admin', '2022-05-19 15:16:55', null, '2022-05-19 15:33:22');
INSERT INTO `gen_table_column` VALUES ('370', '34', 'opening_bank', '开户行', 'varchar(100)', 'String', 'openingBank', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '12', 'admin', '2022-05-19 15:16:55', null, '2022-05-19 15:33:22');
INSERT INTO `gen_table_column` VALUES ('371', '34', 'address', '地址', 'varchar(255)', 'String', 'address', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '13', 'admin', '2022-05-19 15:16:55', null, '2022-05-19 15:33:22');
INSERT INTO `gen_table_column` VALUES ('372', '34', 'phone', '联系方式', 'varchar(255)', 'String', 'phone', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '14', 'admin', '2022-05-19 15:16:55', null, '2022-05-19 15:33:22');
INSERT INTO `gen_table_column` VALUES ('373', '34', 'balance', '卡内余额', 'double', 'Double', 'balance', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '15', 'admin', '2022-05-19 15:16:55', null, '2022-05-19 15:33:22');
INSERT INTO `gen_table_column` VALUES ('374', '34', 'referrer', '推荐人', 'varchar(255)', 'String', 'referrer', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '16', '', '2022-05-19 15:19:04', null, '2022-05-19 15:33:22');
INSERT INTO `gen_table_column` VALUES ('375', '35', 'id', '主键ID', 'bigint(20)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2022-05-20 09:31:49', null, '2022-05-20 10:06:26');
INSERT INTO `gen_table_column` VALUES ('376', '35', 'create_by', '创建用户', 'varchar(255)', 'String', 'createBy', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '2', 'admin', '2022-05-20 09:31:49', null, '2022-05-20 10:06:26');
INSERT INTO `gen_table_column` VALUES ('377', '35', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, null, null, 'EQ', 'datetime', '', '3', 'admin', '2022-05-20 09:31:49', null, '2022-05-20 10:06:26');
INSERT INTO `gen_table_column` VALUES ('378', '35', 'update_by', '更新用户', 'varchar(255)', 'String', 'updateBy', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '4', 'admin', '2022-05-20 09:31:49', null, '2022-05-20 10:06:26');
INSERT INTO `gen_table_column` VALUES ('379', '35', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', null, '1', '1', null, null, 'EQ', 'datetime', '', '5', 'admin', '2022-05-20 09:31:49', null, '2022-05-20 10:06:26');
INSERT INTO `gen_table_column` VALUES ('380', '35', 'sm_type', '类型', 'int(11)', 'Long', 'smType', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', 'money_type', '6', 'admin', '2022-05-20 09:31:49', null, '2022-05-20 10:06:26');
INSERT INTO `gen_table_column` VALUES ('381', '35', 'sm_money', '金额', 'double', 'Double', 'smMoney', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '7', 'admin', '2022-05-20 09:31:49', null, '2022-05-20 10:06:26');
INSERT INTO `gen_table_column` VALUES ('382', '35', 'state', '状态', 'int(11)', 'Long', 'state', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', 'data_state', '8', 'admin', '2022-05-20 09:31:49', null, '2022-05-20 10:06:26');
INSERT INTO `gen_table_column` VALUES ('383', '35', 'salesman_id', '营销员Id', 'bigint(20)', 'Long', 'salesmanId', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '10', 'admin', '2022-05-20 09:31:49', null, '2022-05-20 10:06:26');
INSERT INTO `gen_table_column` VALUES ('384', '35', 'remark', '备注', 'text', 'String', 'remark', '0', '0', null, '1', '1', '1', null, 'EQ', 'textarea', '', '11', 'admin', '2022-05-20 09:31:49', null, '2022-05-20 10:06:26');
INSERT INTO `gen_table_column` VALUES ('385', '35', 'salesman_name', '营销员姓名', 'varchar(50)', 'String', 'salesmanName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '9', '', '2022-05-20 10:05:39', null, '2022-05-20 10:06:26');

-- ----------------------------
-- Table structure for hbd_salesman
-- ----------------------------
DROP TABLE IF EXISTS `hbd_salesman`;
CREATE TABLE `hbd_salesman` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `s_name` varchar(255) DEFAULT NULL,
  `s_card` varchar(255) DEFAULT NULL,
  `s_sex` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `remark` text,
  `bank_card` varchar(100) DEFAULT NULL,
  `opening_bank` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `balance` decimal(12,2) DEFAULT NULL,
  `referrer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of hbd_salesman
-- ----------------------------
INSERT INTO `hbd_salesman` VALUES ('24', null, '2022-05-19 16:39:35', null, '2022-05-20 10:49:54', '伍元龙', '433001197109033019', '0', '0', '', '6217995670010020478', '中国邮政储蓄银行', '湖南省中方县桐木镇街上', '13257458892', '93.90', '伍春晖');
INSERT INTO `hbd_salesman` VALUES ('25', null, '2022-05-19 16:39:56', null, '2022-05-20 10:34:29', '伍小龙', '43300119681104301X', '0', '0', '', '', '中国邮政储蓄银行', '桐木镇街上', '13204921922', '38.79', '伍春晖');
INSERT INTO `hbd_salesman` VALUES ('26', null, '2022-05-19 16:40:36', null, '2022-05-20 10:34:44', '郑春连', '433027196002085821', '1', '0', '', '', '中国邮政储蓄银行', '湖南省怀化市鹤城区狮子岩路7号3栋3单元1号', '18128185023', '94.40', '伍春晖');
INSERT INTO `hbd_salesman` VALUES ('27', null, '2022-05-19 16:41:08', null, '2022-05-20 10:34:57', '郑光玉', '433001196503213021', '1', '0', '', '', '中方县农村信用社', '湖南省中方县桐木镇桐木村轿子岩组', '13272260260', '32.01', '伍春晖');
INSERT INTO `hbd_salesman` VALUES ('28', null, '2022-05-19 16:41:40', null, '2022-05-20 10:35:10', '伍成龙', '433001196602063014', '0', '0', '', '6013827505000770772', '中国银行', '湖南省中方县桐木镇桐木村轿子岩组', '13117458121', '11283.85', '伍春晖');

-- ----------------------------
-- Table structure for hbd_salesman_messqges
-- ----------------------------
DROP TABLE IF EXISTS `hbd_salesman_messqges`;
CREATE TABLE `hbd_salesman_messqges` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `sm_type` int(11) DEFAULT NULL,
  `sm_money` double DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `salesman_name` varchar(50) DEFAULT NULL,
  `salesman_id` bigint(20) DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of hbd_salesman_messqges
-- ----------------------------

-- ----------------------------
-- Table structure for insurance_company
-- ----------------------------
DROP TABLE IF EXISTS `insurance_company`;
CREATE TABLE `insurance_company` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `company_type` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `state` int(11) unsigned zerofill DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of insurance_company
-- ----------------------------
INSERT INTO `insurance_company` VALUES ('2', 'admin', '2022-05-05 00:00:00', 'admin', '2022-05-07 10:13:37', '中国人寿怀化分公司', '0', '2', '00000000000', '');
INSERT INTO `insurance_company` VALUES ('7', 'admin', '2022-05-06 14:57:48', 'admin', '2022-05-07 10:12:28', '吉祥人寿怀化中心支公司', '0', '3', '00000000000', '');
INSERT INTO `insurance_company` VALUES ('10', 'admin', '2022-05-07 09:38:49', 'admin', '2022-05-07 10:13:26', '人保财险怀化市分公司', '1', '7', '00000000000', '');
INSERT INTO `insurance_company` VALUES ('11', 'admin', '2022-05-07 09:39:13', 'admin', '2022-05-07 10:13:57', '人寿财险怀化市中心支公司', '1', '4', '00000000000', '');
INSERT INTO `insurance_company` VALUES ('12', 'admin', '2022-05-07 09:39:34', 'admin', '2022-05-07 10:12:38', '人民人寿怀化中心支公司', '0', '5', '00000000000', '');
INSERT INTO `insurance_company` VALUES ('14', 'admin', '2022-05-07 09:51:56', 'admin', '2022-05-07 10:11:56', '平安财险怀化中心支公司', '1', '10', '00000000000', '');
INSERT INTO `insurance_company` VALUES ('15', 'admin', '2022-05-07 10:00:20', 'admin', '2022-05-07 10:13:46', '中华联合财险怀化中心支公司', '1', '6', '00000000000', '');
INSERT INTO `insurance_company` VALUES ('16', 'admin', '2022-05-07 10:00:33', 'admin', '2022-05-07 10:12:20', '大地财险怀化中心支公司', '1', '7', '00000000000', '');
INSERT INTO `insurance_company` VALUES ('17', 'admin', '2022-05-07 10:08:17', 'admin', '2022-05-07 10:12:09', '太平洋财险怀化中心支公司', '1', '1', '00000000000', '');

-- ----------------------------
-- Table structure for insurance_company_person
-- ----------------------------
DROP TABLE IF EXISTS `insurance_company_person`;
CREATE TABLE `insurance_company_person` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `company_id` bigint(32) DEFAULT NULL,
  `person_name` varchar(32) DEFAULT NULL,
  `person_phone` varchar(32) DEFAULT NULL,
  `person_sex` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `state` int(11) unsigned zerofill DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`id`),
  KEY `insurance_company_person_ibfk_1` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of insurance_company_person
-- ----------------------------
INSERT INTO `insurance_company_person` VALUES ('10', 'admin', '2022-05-07 10:15:10', null, null, '14', '汪丽萍', '13874569897', '1', '1', '00000000000', '');
INSERT INTO `insurance_company_person` VALUES ('11', 'admin', '2022-05-07 10:15:55', null, null, '14', '曾子伦', '15115196222', '0', '2', '00000000000', '');
INSERT INTO `insurance_company_person` VALUES ('12', 'admin', '2022-05-07 10:16:09', null, null, '17', '曾莉', '18574551658', '1', '3', '00000000000', '');
INSERT INTO `insurance_company_person` VALUES ('13', 'admin', '2022-05-07 10:16:22', null, null, '17', '李晶心', '13874442271', '1', '4', '00000000000', '');
INSERT INTO `insurance_company_person` VALUES ('14', 'admin', '2022-05-07 10:16:51', null, null, '17', '杨经理', '18907458199', '0', '5', '00000000000', '');
INSERT INTO `insurance_company_person` VALUES ('15', 'admin', '2022-05-07 10:17:05', null, null, '16', '陈杰飞', '13349612663', '0', '6', '00000000000', '');
INSERT INTO `insurance_company_person` VALUES ('16', 'admin', '2022-05-07 10:17:43', null, null, '16', '侯乔英', '15874593011', '1', '7', '00000000000', '');
INSERT INTO `insurance_company_person` VALUES ('17', 'admin', '2022-05-07 10:17:56', null, null, '16', '熊志远', '18244846056', '0', '8', '00000000000', '');
INSERT INTO `insurance_company_person` VALUES ('18', 'admin', '2022-05-07 10:18:09', null, null, '7', '张致金', '19118504631', '0', '9', '00000000000', '');
INSERT INTO `insurance_company_person` VALUES ('19', 'admin', '2022-05-07 10:18:26', null, null, '7', '向启花', '13319651058', '1', '10', '00000000000', '');
INSERT INTO `insurance_company_person` VALUES ('20', 'admin', '2022-05-07 10:19:14', null, null, '7', '补建琪', '18007459077', '1', '11', '00000000000', '');
INSERT INTO `insurance_company_person` VALUES ('21', 'admin', '2022-05-07 10:19:36', null, null, '12', '瞿水英', '19152156768', '1', '12', '00000000000', '');
INSERT INTO `insurance_company_person` VALUES ('22', 'admin', '2022-05-07 10:19:50', null, null, '12', '吴丽娇', '17670408800', '1', '13', '00000000000', '');
INSERT INTO `insurance_company_person` VALUES ('23', 'admin', '2022-05-07 10:20:11', null, null, '11', '赵婷', '18897475810', '1', '14', '00000000000', '');
INSERT INTO `insurance_company_person` VALUES ('24', 'admin', '2022-05-07 10:20:25', null, null, '10', '石卓', '18774566271', '0', '15', '00000000000', '');
INSERT INTO `insurance_company_person` VALUES ('25', 'admin', '2022-05-07 10:20:37', null, null, '10', '李绪文', '18574576925', '0', '16', '00000000000', '');
INSERT INTO `insurance_company_person` VALUES ('26', 'admin', '2022-05-07 10:20:58', null, null, '2', '王星懿', '15974049176', '1', '17', '00000000000', '');
INSERT INTO `insurance_company_person` VALUES ('27', 'admin', '2022-05-07 10:21:11', null, null, '2', '何景明', '15874564686', '0', '18', '00000000000', '');
INSERT INTO `insurance_company_person` VALUES ('28', 'admin', '2022-05-07 10:21:25', null, null, '2', '黄立新', '15574551081', '0', '19', '00000000000', '');
INSERT INTO `insurance_company_person` VALUES ('29', 'admin', '2022-05-07 10:21:41', null, null, '2', '瞿丹', '19976849515', '1', '20', '00000000000', '');
INSERT INTO `insurance_company_person` VALUES ('30', 'admin', '2022-05-07 10:21:59', null, null, '2', '周丽', '15115177513', '1', '21', '00000000000', '');
INSERT INTO `insurance_company_person` VALUES ('31', 'admin', '2022-05-07 10:22:13', null, null, '15', '金叶', '15574519389', '0', '22', '00000000000', '');
INSERT INTO `insurance_company_person` VALUES ('32', 'admin', '2022-05-07 10:22:24', null, null, '15', '周鑫荣', '15717457876', '0', '23', '00000000000', '');

-- ----------------------------
-- Table structure for n_expend
-- ----------------------------
DROP TABLE IF EXISTS `n_expend`;
CREATE TABLE `n_expend` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `ne_title` varchar(255) DEFAULT NULL,
  `ne_money` decimal(10,0) DEFAULT NULL,
  `ne_type` varchar(255) DEFAULT NULL,
  `ne_status` int(11) DEFAULT NULL,
  `ne_last_surplus` decimal(10,0) DEFAULT NULL,
  `ne_content` text,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of n_expend
-- ----------------------------
INSERT INTO `n_expend` VALUES ('22', null, '2022-05-16 15:42:25', null, null, '测试一下', '73', null, null, '273', '测试', '');

-- ----------------------------
-- Table structure for n_income
-- ----------------------------
DROP TABLE IF EXISTS `n_income`;
CREATE TABLE `n_income` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `ni_title` varchar(255) DEFAULT NULL,
  `ni_surplus` decimal(10,0) DEFAULT NULL,
  `ni_type` varchar(255) DEFAULT NULL,
  `ni_status` int(11) DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of n_income
-- ----------------------------
INSERT INTO `n_income` VALUES ('5', 'admin', '2022-05-16 11:41:29', 'admin', '2022-05-16 15:41:56', '20220516剩余', '273', null, '0', '');

-- ----------------------------
-- Table structure for n_income_sources
-- ----------------------------
DROP TABLE IF EXISTS `n_income_sources`;
CREATE TABLE `n_income_sources` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `nis_name` varchar(255) DEFAULT NULL,
  `nis_money` decimal(10,0) DEFAULT NULL,
  `nis_type` varchar(255) DEFAULT NULL,
  `nis_status` int(11) DEFAULT NULL,
  `remark` text,
  `ni_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `n_income_sources_ibfk_1` (`ni_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of n_income_sources
-- ----------------------------

-- ----------------------------
-- Table structure for n_person
-- ----------------------------
DROP TABLE IF EXISTS `n_person`;
CREATE TABLE `n_person` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `n_name` varchar(255) DEFAULT NULL,
  `n_age` varchar(255) DEFAULT NULL,
  `n_phone` varchar(255) DEFAULT NULL,
  `n_number` int(11) DEFAULT NULL,
  `n_sex` int(11) DEFAULT NULL,
  `n_weight` double DEFAULT NULL,
  `n_height` double DEFAULT NULL,
  `n_status` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of n_person
-- ----------------------------
INSERT INTO `n_person` VALUES ('2', null, '2022-05-16 09:45:15', null, null, '丁荣华', '', '', '5', '0', '62', '170', '0', '');
INSERT INTO `n_person` VALUES ('3', null, '2022-05-16 09:46:35', null, null, '王仕琪', '', '', '11', '0', '67', '175', '0', '');
INSERT INTO `n_person` VALUES ('4', null, '2022-05-16 09:47:33', null, null, '杨恒', '', '', '13', '0', '76', '175', '0', '');
INSERT INTO `n_person` VALUES ('5', null, '2022-05-16 09:48:23', null, null, '倪文斌', '', '', '8', '0', '62', '180', '0', '');
INSERT INTO `n_person` VALUES ('6', null, '2022-05-16 09:49:34', null, null, '李政霖', '', '', '0', '0', null, null, '0', '');
INSERT INTO `n_person` VALUES ('7', null, '2022-05-16 09:49:58', null, null, '向建武', '', '', '7', '0', null, null, '0', '');
INSERT INTO `n_person` VALUES ('8', null, '2022-05-16 09:50:20', null, null, '韦方亮', '', '', '25', '0', null, null, '0', '');
INSERT INTO `n_person` VALUES ('9', null, '2022-05-16 09:50:50', null, null, '唐蕾', '', '19174690778', null, '0', null, null, '0', '');
INSERT INTO `n_person` VALUES ('10', null, '2022-05-16 09:51:11', null, null, '刘建平', '', '', '6', '0', null, null, '0', '');
INSERT INTO `n_person` VALUES ('11', null, '2022-05-16 09:51:34', null, null, '章其', '', '', '19', '0', null, null, '0', '');
INSERT INTO `n_person` VALUES ('12', null, '2022-05-16 09:51:51', null, null, '王勇', '', '', '10', '0', null, null, '0', '');
INSERT INTO `n_person` VALUES ('13', null, '2022-05-16 09:52:05', null, null, '肖俊', '', '', null, '0', null, null, '0', '');
INSERT INTO `n_person` VALUES ('14', null, '2022-05-16 09:54:05', null, null, '周俞明', '', '', null, '0', null, null, '0', '');
INSERT INTO `n_person` VALUES ('15', null, '2022-05-16 09:54:29', null, null, '杨帆', '', '', '24', '0', null, null, '0', '');
INSERT INTO `n_person` VALUES ('16', null, '2022-05-16 09:54:44', null, null, '蔡众', '', '', '3', '0', null, null, '0', '');
INSERT INTO `n_person` VALUES ('17', null, '2022-05-16 09:55:26', null, null, '杨盛', '', '', '32', '0', null, null, '0', '');
INSERT INTO `n_person` VALUES ('20', null, '2022-05-16 11:15:29', null, null, '伍春晖', '', '', '1', '0', '178', '83', '0', '');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Blob类型的触发器表';

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='日历信息表';

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Cron类型的触发器表';

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint(13) NOT NULL COMMENT '触发的时间',
  `sched_time` bigint(13) NOT NULL COMMENT '定时器制定的时间',
  `priority` int(11) NOT NULL COMMENT '优先级',
  `state` varchar(16) NOT NULL COMMENT '状态',
  `job_name` varchar(200) DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='已触发的触发器表';

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) NOT NULL COMMENT '任务组名',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='任务详细信息表';

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='存储的悲观锁信息表';

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='暂停的触发器表';

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint(13) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(13) NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='调度器状态表';

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint(7) NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint(12) NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint(10) NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='简单触发器的信息表';

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int(11) DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int(11) DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint(20) DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint(20) DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='同步机制的行锁表';

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint(13) DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint(13) DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int(11) DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) NOT NULL COMMENT '触发器的类型',
  `start_time` bigint(13) NOT NULL COMMENT '开始时间',
  `end_time` bigint(13) DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint(2) DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='触发器详细信息表';

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for school
-- ----------------------------
DROP TABLE IF EXISTS `school`;
CREATE TABLE `school` (
  `id` bigint(20) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `school_name` varchar(255) DEFAULT NULL,
  `school_type` int(11) DEFAULT NULL,
  `is_public` int(11) DEFAULT NULL,
  `branch_dept_id` int(11) DEFAULT NULL,
  `county_dept_id` int(11) DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of school
-- ----------------------------
INSERT INTO `school` VALUES ('24282', null, null, null, null, '锦溪小学', '2', '0', '426', '440', '0', null);
INSERT INTO `school` VALUES ('24286', null, null, null, null, '宏宇小学', '2', '0', '426', '440', '0', null);
INSERT INTO `school` VALUES ('24287', null, null, null, null, '实验小学', '2', '0', '426', '440', '0', null);
INSERT INTO `school` VALUES ('24288', null, null, null, null, '怀铁一小', '2', '0', '426', '440', '0', null);
INSERT INTO `school` VALUES ('24290', null, null, null, null, '宏宇中学', '3', '0', '426', '440', '0', null);
INSERT INTO `school` VALUES ('24291', null, null, null, null, '实验中学', '3', '0', '426', '440', '0', null);
INSERT INTO `school` VALUES ('24292', null, null, null, null, '武陵中学', '3', '0', '426', '440', '0', null);
INSERT INTO `school` VALUES ('24293', null, null, null, null, '怀铁二中', '3', '0', '426', '440', '0', null);
INSERT INTO `school` VALUES ('24297', null, null, null, null, '市幼儿园', '1', '0', '426', '440', '0', null);
INSERT INTO `school` VALUES ('24336', null, null, null, null, '怀化三中', '3', '0', '426', '440', '0', null);
INSERT INTO `school` VALUES ('24338', null, null, null, null, '怀铁一中', '3', '0', '426', '440', '0', null);
INSERT INTO `school` VALUES ('24339', null, null, null, null, '湖天中学', '3', '0', '426', '440', '0', null);
INSERT INTO `school` VALUES ('24801', null, null, null, null, '鹤城区第二幼儿园', '1', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('24860', null, null, null, null, '第一中学', '3', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('24861', null, null, null, null, '第五中学', '3', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('24862', null, null, null, null, '旅游学校', '4', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('24863', null, null, null, null, '第二中学', '3', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('24864', null, null, null, null, '第四中学', '3', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('24865', null, null, null, null, '顺天路中学', '3', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('24866', null, null, null, null, '迎丰中学', '3', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('24867', null, null, null, null, '河西中学', '3', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('24869', null, null, null, null, '黄金坳中学', '3', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('24871', null, null, null, null, '正清路中学', '3', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('24872', null, null, null, null, '城南学校', '8', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('24873', null, null, null, null, '集贤学校', '8', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('24874', null, null, null, null, '象形学校', '8', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('24875', null, null, null, null, '东晟学校', '8', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('24876', null, null, null, null, '黄岩学校', '8', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('24877', null, null, null, null, '鹤城区幼儿园', '1', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('24878', null, null, null, null, '鹤城区幼儿园花背分园', '1', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('24882', null, null, null, null, '黄金坳中心幼儿园', '1', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('24883', null, null, null, null, '盈口乡中心幼儿园', '1', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('24884', null, null, null, null, '黄岩中心幼儿园', '1', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('24885', null, null, null, null, '贺家田中心幼儿园', '1', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('24886', null, null, null, null, '河西小学', '2', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('24891', null, null, null, null, '鹤翔学校', '2', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('24892', null, null, null, null, '鹤翔学校北校区', '2', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('24893', null, null, null, null, '舞水小学', '2', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('24894', null, null, null, null, '舞水西校区', '2', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('24895', null, null, null, null, '跃进路小学', '2', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('24896', null, null, null, null, '人民路小学', '2', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('24897', null, null, null, null, '华都小学', '2', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('24898', null, null, null, null, '欧城小学', '2', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('24899', null, null, null, null, '大汉小学', '2', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('24900', null, null, null, null, '碧桂园小学', '2', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('24901', null, null, null, null, '红星路小学', '2', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('24902', null, null, null, null, '钟秀学校', '2', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('24903', null, null, null, null, '太平桥小学', '2', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('24904', null, null, null, null, '锦园路小学', '2', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('24905', null, null, null, null, '公园路小学', '2', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('24906', null, null, null, null, '湖天桥小学', '2', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('24907', null, null, null, null, '正清路小学', '2', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('24909', null, null, null, null, '城东小学', '2', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('24916', null, null, null, null, '坨院学校', '2', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('24917', null, null, null, null, '芙蓉学校', '2', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('24919', null, null, null, null, '黄金坳小学', '2', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('24925', null, null, null, null, '芦坪小学', '2', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('24932', null, null, null, null, '凉亭坳学校', '8', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('24937', null, null, null, null, '贺家田学校', '2', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('25143', null, null, null, null, '沅陵县教师新村幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25146', null, null, null, null, '沅陵县安吉乐幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25147', null, null, null, null, '沅陵县紫云名城幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25149', null, null, null, null, '沅陵县囝囡幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25150', null, null, null, null, '沅陵县育新幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25151', null, null, null, null, '沅陵县子规国学幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25153', null, null, null, null, '沅陵县天宁幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25155', null, null, null, null, '沅陵县银河幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25156', null, null, null, null, '沅陵县城区幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25157', null, null, null, null, '沅陵县品龙幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25158', null, null, null, null, '沅陵县萌萌幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25160', null, null, null, null, '沅陵县名都幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25161', null, null, null, null, '沅陵县启明星幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25163', null, null, null, null, '沅陵县龙泉幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25164', null, null, null, null, '沅陵县昱鑫幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25165', null, null, null, null, '沅陵县金贝贝幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25168', null, null, null, null, '沅陵县晨光幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25169', null, null, null, null, '沅陵县童话世界幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25170', null, null, null, null, '沅陵县小星星幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25171', null, null, null, null, '沅陵县城南幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25172', null, null, null, null, '沅陵县囿团幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25173', null, null, null, null, '沅陵县江南幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25177', null, null, null, null, '沅陵县欣博艺幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25179', null, null, null, null, '沅陵县小博士幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25180', null, null, null, null, '沅陵县小叮当幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25181', null, null, null, null, '沅陵县酉乐幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25182', null, null, null, null, '沅陵县小天鹅幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25183', null, null, null, null, '沅陵县小金豆幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25185', null, null, null, null, '沅陵县希望幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25186', null, null, null, null, '沅陵县阳光宝贝幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25187', null, null, null, null, '沅陵县青苗幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25189', null, null, null, null, '沅陵县小圣人幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25190', null, null, null, null, '沅陵县喜洋洋幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25192', null, null, null, null, '沅陵县小莲花幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25193', null, null, null, null, '沅陵县晨露幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25194', null, null, null, null, '沅陵县乐苗幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25195', null, null, null, null, '沅陵县明星幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25201', null, null, null, null, '沅陵县小太阳幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25203', null, null, null, null, '沅陵县小天使幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25204', null, null, null, null, '沅陵县小精灵幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25205', null, null, null, null, '沅陵县兴华幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25207', null, null, null, null, '沅陵县好孩子幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25208', null, null, null, null, '沅陵县慧珍幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25209', null, null, null, null, '沅陵县春雨幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25210', null, null, null, null, '沅陵县快乐宝贝幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25211', null, null, null, null, '沅陵县雏鹰幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25213', null, null, null, null, '沅陵县艳艳幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25215', null, null, null, null, '沅陵县童乐幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25219', null, null, null, null, '沅陵县小金星幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25221', null, null, null, null, '沅陵县未来星幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25222', null, null, null, null, '沅陵县春苗幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25223', null, null, null, null, '沅陵县娟娟幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25224', null, null, null, null, '沅陵县玉清幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25225', null, null, null, null, '沅陵县新星幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25226', null, null, null, null, '沅陵县春蕾幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25227', null, null, null, null, '沅陵县红苹果幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25231', null, null, null, null, '沅陵县金苹果幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25232', null, null, null, null, '沅陵县新苑幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25233', null, null, null, null, '沅陵县红太阳幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25234', null, null, null, null, '沅陵县楠星幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25235', null, null, null, null, '沅陵县七彩虹幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25236', null, null, null, null, '沅陵县心蕊幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25237', null, null, null, null, '沅陵县聪明泉幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25240', null, null, null, null, '大合坪九校', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25244', null, null, null, null, '火场九校', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25247', null, null, null, null, '坳坪九校', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25249', null, null, null, null, '丑溪口九校', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25250', null, null, null, null, '洞溪九校', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25251', null, null, null, null, '杜家坪九校', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25253', null, null, null, null, '高坪九校', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25255', null, null, null, null, '柳林汊小学', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25257', null, null, null, null, '清水坪九校', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25258', null, null, null, null, '五强溪镇中心小学', '2', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25262', null, null, null, null, '蚕忙九校', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25263', null, null, null, null, '陈家滩九校', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25264', null, null, null, null, '二酉苗族乡中心小学', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25265', null, null, null, null, '虎溪学校', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25266', null, null, null, null, '落坪九校', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25267', null, null, null, null, '麻溪铺九校', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25269', null, null, null, null, '楠木铺九校', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25270', null, null, null, null, '沅陵县第七中学', '3', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25271', null, null, null, null, '清浪九校', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25272', null, null, null, null, '沅陵县沅陵镇太常九年一贯制学校', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25273', null, null, null, null, '沅陵镇太常栗坡小学', '2', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25274', null, null, null, null, '渭溪九校', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25283', null, null, null, null, '张家滩九校', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25286', null, null, null, null, '长界九校', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25287', null, null, null, null, '黄壤坪九校', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25288', null, null, null, null, '凉水井中心小学', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25290', null, null, null, null, '明溪口芙蓉学校', '3', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25291', null, null, null, null, '七甲坪镇九校', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25293', null, null, null, null, '借母溪乡筒车坪九校', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25294', null, null, null, null, '沅陵县第六中学', '3', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25295', null, null, null, null, '筲箕湾镇中心小学', '2', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25306', null, null, null, null, '沅陵三中', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25308', null, null, null, null, '二酉苗族乡中学', '3', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25309', null, null, null, null, '落鹤坪小学', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25310', null, null, null, null, '太安幼儿园', '1', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25311', null, null, null, null, '沅陵县幼儿园', '1', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25312', null, null, null, null, '凉水井中学', '3', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25313', null, null, null, null, '张家坪九校', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25316', null, null, null, null, '荷花池小学', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25317', null, null, null, null, '鹤鸣山小学', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25318', null, null, null, null, '沅陵县职业中等专业学校', '3', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25319', null, null, null, null, '溪子口小学', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25320', null, null, null, null, '沅陵一中', '3', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25321', null, null, null, null, '沅陵二中', '3', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25322', null, null, null, null, '思源实验学校', '3', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('25323', null, null, null, null, '凤鸣学校', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('28381', null, null, null, null, '马底驿九校', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('28382', null, null, null, null, '竹园九校', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('28384', null, null, null, null, '舒溪口九校', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('28385', null, null, null, null, '棋坪九校', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('28386', null, null, null, null, '明溪口九校', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('28387', null, null, null, null, '筲箕湾镇中学', '3', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('28388', null, null, null, null, '用坪九校', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('28389', null, null, null, null, '官庄小学', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('28390', null, null, null, null, '金山学校', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('28391', null, null, null, null, '荔枝溪小学', '2', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('28392', null, null, null, null, '深溪口九校', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('28393', null, null, null, null, '北溶九校', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('28394', null, null, null, null, '七甲溪九校', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('28395', null, null, null, null, '肖家桥九校', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('28396', null, null, null, null, '军大坪九校', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('28397', null, null, null, null, '枫香坪九校', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('28398', null, null, null, null, '楠木小学', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('28399', null, null, null, null, '白田小学', '2', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('28402', null, null, null, null, '池坪九校', '8', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('29404', null, null, null, null, '鹤城区幼儿园区政府分园', '1', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('29405', null, null, null, null, '金时中学', '3', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('29408', null, null, null, null, '鹤城区第三幼儿园', '1', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('29415', null, null, null, null, '沅陵特校', '7', '0', '426', '430', '0', null);
INSERT INTO `school` VALUES ('30135', null, null, null, null, '鹤城区第二幼儿园金海分园', '1', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('30173', null, null, null, null, '沅陵县三之三幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('30174', null, null, null, null, '沅陵县红飞幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('30175', null, null, null, null, '沅陵县向日葵幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('30176', null, null, null, null, '沅陵县红缨御鑫城幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('30177', null, null, null, null, '沅陵县鑫都幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('30178', null, null, null, null, '沅陵县大风车幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('30179', null, null, null, null, '沅陵县金色摇篮幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('30180', null, null, null, null, '沅陵县滨江幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('30181', null, null, null, null, '沅陵县龙兴幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('30182', null, null, null, null, '沅陵县爱上幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('30183', null, null, null, null, '沅陵县金鹰幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('30184', null, null, null, null, '沅陵县蓝天幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('30185', null, null, null, null, '沅陵县酉缘幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('30186', null, null, null, null, '沅陵县公馆幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('30574', null, null, null, null, '沅陵县朝阳幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('30575', null, null, null, null, '沅陵县慧灵幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('30576', null, null, null, null, '沅陵县育英幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('30577', null, null, null, null, '沅陵县铭扬幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('30578', null, null, null, null, '沅陵县小福娃幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('30579', null, null, null, null, '沅陵县宇宙幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('30580', null, null, null, null, '沅陵县阳光乐幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('30582', null, null, null, null, '沅陵县小红帽幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('30583', null, null, null, null, '沅陵县晶晶幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('30584', null, null, null, null, '沅陵县玲华幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('30585', null, null, null, null, '沅陵县大拇指幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('30586', null, null, null, null, '沅陵县银银幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('30587', null, null, null, null, '沅陵县霞光幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('30588', null, null, null, null, '沅陵县福音幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('30589', null, null, null, null, '沅陵县新希望幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('30590', null, null, null, null, '沅陵县宝宝乐幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('30591', null, null, null, null, '沅陵县玲玲幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('30592', null, null, null, null, '沅陵县和平幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('30593', null, null, null, null, '沅陵县八方幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('30594', null, null, null, null, '沅陵县乐园幼儿园（大合坪九校幼儿园）', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('30595', null, null, null, null, '沅陵县金色阳光幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('30596', null, null, null, null, '沅陵县向阳幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('30923', null, null, null, null, '沅陵县麻溪铺九校幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('31191', null, null, null, '2022-05-19 16:30:11', '市幼儿园湖天分园', '1', '0', '426', '440', '0', '2');
INSERT INTO `school` VALUES ('31488', null, null, null, null, '沅陵县金山幼儿园', '1', '1', '426', '430', '0', null);
INSERT INTO `school` VALUES ('31579', null, null, null, null, '鹤城小学', '2', '0', '426', '428', '0', null);
INSERT INTO `school` VALUES ('31581', null, null, null, null, '鹤城中学', '3', '0', '426', '428', '0', null);

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2022-05-05 10:41:35', '', null, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES ('2', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2022-05-05 10:41:35', '', null, '初始化密码 123456');
INSERT INTO `sys_config` VALUES ('3', '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2022-05-05 10:41:35', '', null, '深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue');
INSERT INTO `sys_config` VALUES ('4', '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2022-05-05 10:41:35', '', null, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES ('5', '用户管理-密码字符范围', 'sys.account.chrtype', '0', 'Y', 'admin', '2022-05-05 10:41:35', '', null, '默认任意字符范围，0任意（密码可以输入任意字符），1数字（密码只能为0-9数字），2英文字母（密码只能为a-z和A-Z字母），3字母和数字（密码必须包含字母，数字）,4字母数字和特殊字符（目前支持的特殊字符包括：~!@#$%^&*()-=_+）');
INSERT INTO `sys_config` VALUES ('6', '用户管理-初始密码修改策略', 'sys.account.initPasswordModify', '0', 'Y', 'admin', '2022-05-05 10:41:35', '', null, '0：初始密码修改策略关闭，没有任何提示，1：提醒用户，如果未修改初始密码，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES ('7', '用户管理-账号密码更新周期', 'sys.account.passwordValidateDays', '0', 'Y', 'admin', '2022-05-05 10:41:35', '', null, '密码更新周期（填写数字，数据初始化值为0不限制，若修改必须为大于0小于365的正整数），如果超过这个周期登录系统时，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES ('8', '主框架页-菜单导航显示风格', 'sys.index.menuStyle', 'default', 'Y', 'admin', '2022-05-05 10:41:35', '', null, '菜单导航显示风格（default为左侧导航菜单，topnav为顶部导航菜单）');
INSERT INTO `sys_config` VALUES ('9', '主框架页-是否开启页脚', 'sys.index.footer', 'true', 'Y', 'admin', '2022-05-05 10:41:35', '', null, '是否开启底部页脚显示（true显示，false隐藏）');
INSERT INTO `sys_config` VALUES ('10', '主框架页-是否开启页签', 'sys.index.tagsView', 'true', 'Y', 'admin', '2022-05-05 10:41:35', '', null, '是否开启菜单多页签显示（true显示，false隐藏）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=442 DEFAULT CHARSET=utf8mb4 COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('100', '0', '0', '若依科技', '0', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-05-05 10:41:30', '', null);
INSERT INTO `sys_dept` VALUES ('101', '100', '0,100', '测试总公司', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-05-05 10:41:30', 'admin', '2022-05-05 14:08:37');
INSERT INTO `sys_dept` VALUES ('102', '100', '0,100', '长沙分公司', '2', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2022-05-05 10:41:31', '', null);
INSERT INTO `sys_dept` VALUES ('103', '101', '0,100,101', '研发部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-05-05 10:41:31', '', null);
INSERT INTO `sys_dept` VALUES ('104', '101', '0,100,101', '市场部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-05-05 10:41:31', '', null);
INSERT INTO `sys_dept` VALUES ('105', '101', '0,100,101', '测试部门', '3', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-05-05 10:41:31', '', null);
INSERT INTO `sys_dept` VALUES ('106', '101', '0,100,101', '财务部门', '4', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-05-05 10:41:31', '', null);
INSERT INTO `sys_dept` VALUES ('107', '101', '0,100,101', '运维部门', '5', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-05-05 10:41:31', '', null);
INSERT INTO `sys_dept` VALUES ('108', '102', '0,100,102', '市场部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2022-05-05 10:41:31', '', null);
INSERT INTO `sys_dept` VALUES ('109', '102', '0,100,102', '财务部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2022-05-05 10:41:31', '', null);
INSERT INTO `sys_dept` VALUES ('426', '100', '0,100', '怀化分公司', '3', null, null, null, '0', '0', 'admin', '2022-05-05 14:04:21', '', null);
INSERT INTO `sys_dept` VALUES ('428', '426', '0,100,426', '鹤城区', '2', null, null, null, '0', '0', 'admin', '2022-05-05 14:04:37', '', null);
INSERT INTO `sys_dept` VALUES ('430', '426', '0,100,426', '沅陵县', '3', null, null, null, '0', '0', 'admin', '2022-05-05 14:04:44', '', null);
INSERT INTO `sys_dept` VALUES ('440', '426', '0,100,426', '市辖区', '1', null, null, null, '0', '0', 'admin', '2022-05-05 14:04:32', '', null);
INSERT INTO `sys_dept` VALUES ('441', '101', '0,100,101', '客服部门', '6', null, null, null, '0', '0', 'admin', '2022-05-20 10:38:29', '', null);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('1', '1', '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2022-05-05 10:41:34', '', null, '性别男');
INSERT INTO `sys_dict_data` VALUES ('2', '2', '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-05-05 10:41:34', '', null, '性别女');
INSERT INTO `sys_dict_data` VALUES ('3', '3', '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-05-05 10:41:34', '', null, '性别未知');
INSERT INTO `sys_dict_data` VALUES ('4', '1', '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2022-05-05 10:41:34', '', null, '显示菜单');
INSERT INTO `sys_dict_data` VALUES ('5', '2', '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2022-05-05 10:41:34', '', null, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES ('6', '1', '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2022-05-05 10:41:34', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('7', '2', '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2022-05-05 10:41:34', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('8', '1', '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2022-05-05 10:41:34', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('9', '2', '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2022-05-05 10:41:34', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('10', '1', '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2022-05-05 10:41:34', '', null, '默认分组');
INSERT INTO `sys_dict_data` VALUES ('11', '2', '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2022-05-05 10:41:34', '', null, '系统分组');
INSERT INTO `sys_dict_data` VALUES ('12', '1', '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2022-05-05 10:41:34', '', null, '系统默认是');
INSERT INTO `sys_dict_data` VALUES ('13', '2', '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2022-05-05 10:41:34', '', null, '系统默认否');
INSERT INTO `sys_dict_data` VALUES ('14', '1', '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2022-05-05 10:41:34', '', null, '通知');
INSERT INTO `sys_dict_data` VALUES ('15', '2', '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2022-05-05 10:41:34', '', null, '公告');
INSERT INTO `sys_dict_data` VALUES ('16', '1', '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2022-05-05 10:41:34', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('17', '2', '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2022-05-05 10:41:34', '', null, '关闭状态');
INSERT INTO `sys_dict_data` VALUES ('18', '99', '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-05-05 10:41:34', '', null, '其他操作');
INSERT INTO `sys_dict_data` VALUES ('19', '1', '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-05-05 10:41:34', '', null, '新增操作');
INSERT INTO `sys_dict_data` VALUES ('20', '2', '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-05-05 10:41:34', '', null, '修改操作');
INSERT INTO `sys_dict_data` VALUES ('21', '3', '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-05-05 10:41:34', '', null, '删除操作');
INSERT INTO `sys_dict_data` VALUES ('22', '4', '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2022-05-05 10:41:34', '', null, '授权操作');
INSERT INTO `sys_dict_data` VALUES ('23', '5', '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-05-05 10:41:34', '', null, '导出操作');
INSERT INTO `sys_dict_data` VALUES ('24', '6', '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-05-05 10:41:34', '', null, '导入操作');
INSERT INTO `sys_dict_data` VALUES ('25', '7', '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-05-05 10:41:34', '', null, '强退操作');
INSERT INTO `sys_dict_data` VALUES ('26', '8', '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-05-05 10:41:34', '', null, '生成操作');
INSERT INTO `sys_dict_data` VALUES ('27', '9', '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-05-05 10:41:35', '', null, '清空操作');
INSERT INTO `sys_dict_data` VALUES ('28', '1', '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2022-05-05 10:41:35', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('29', '2', '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2022-05-05 10:41:35', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('100', '1', '幼儿园小', '1', 'grade', null, null, 'Y', '0', 'admin', '2022-05-05 14:07:18', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('101', '2', '幼儿园中', '2', 'grade', null, null, 'Y', '0', 'admin', '2022-05-05 14:07:31', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('102', '3', '幼儿园大', '3', 'grade', null, null, 'Y', '0', 'admin', '2022-05-05 14:07:39', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('103', '4', '一年级', '4', 'grade', null, null, 'Y', '0', 'admin', '2022-05-05 14:07:58', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('104', '1', '正常', '0', 'data_state', '', 'success', 'Y', '0', 'admin', '2022-05-06 14:32:59', 'admin', '2022-05-07 08:54:03', '');
INSERT INTO `sys_dict_data` VALUES ('105', '2', '失效', '1', 'data_state', '', 'danger', 'N', '0', 'admin', '2022-05-06 14:33:08', 'admin', '2022-05-07 08:54:08', '');
INSERT INTO `sys_dict_data` VALUES ('106', '1', '财险', '1', 'insurance_company', '', 'primary', 'Y', '0', 'admin', '2022-05-06 15:24:19', 'admin', '2022-05-06 15:24:24', '');
INSERT INTO `sys_dict_data` VALUES ('107', '2', '寿险', '0', 'insurance_company', '', 'warning', 'Y', '0', 'admin', '2022-05-06 15:24:38', 'admin', '2022-05-06 15:24:42', '');
INSERT INTO `sys_dict_data` VALUES ('108', '1', '待分发', '1', 'evolve_state', '', 'warning', 'Y', '0', 'admin', '2022-05-07 11:20:10', 'admin', '2022-05-07 11:20:18', '');
INSERT INTO `sys_dict_data` VALUES ('109', '2', '进展中', '2', 'evolve_state', '', 'danger', 'Y', '0', 'admin', '2022-05-07 11:20:35', 'admin', '2022-05-07 11:21:06', '');
INSERT INTO `sys_dict_data` VALUES ('110', '3', '已完成', '3', 'evolve_state', null, 'success', 'Y', '0', 'admin', '2022-05-07 11:21:18', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('111', '1', '学生平安保险', '1', 'claim_type', null, 'default', 'Y', '0', 'admin', '2022-05-07 14:01:26', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('112', '2', '交通意外、重大疾病险', '2', 'claim_type', null, 'default', 'N', '0', 'admin', '2022-05-07 14:01:52', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('113', '3', '监护人责任险', '3', 'claim_type', null, 'default', 'N', '0', 'admin', '2022-05-07 14:02:13', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('114', '0', '暂无', '0', 'claim_type', null, 'default', 'Y', '0', 'admin', '2022-05-07 14:26:41', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('115', '1', '公立', '0', 'is_public', '', 'success', 'Y', '0', 'admin', '2022-05-13 10:31:10', 'admin', '2022-05-13 10:46:10', '');
INSERT INTO `sys_dict_data` VALUES ('116', '2', '私立', '1', 'is_public', '', 'info', 'N', '0', 'admin', '2022-05-13 10:31:18', 'admin', '2022-05-13 10:46:13', '');
INSERT INTO `sys_dict_data` VALUES ('117', '1', '存钱', '1', 'money_type', '', 'info', 'Y', '0', 'admin', '2022-05-20 09:33:52', 'admin', '2022-05-20 09:34:12', '');
INSERT INTO `sys_dict_data` VALUES ('118', '2', '取钱', '2', 'money_type', null, 'success', 'Y', '0', 'admin', '2022-05-20 09:34:03', '', null, null);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('1', '用户性别', 'sys_user_sex', '0', 'admin', '2022-05-05 10:41:34', '', null, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES ('2', '菜单状态', 'sys_show_hide', '0', 'admin', '2022-05-05 10:41:34', '', null, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES ('3', '系统开关', 'sys_normal_disable', '0', 'admin', '2022-05-05 10:41:34', '', null, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES ('4', '任务状态', 'sys_job_status', '0', 'admin', '2022-05-05 10:41:34', '', null, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES ('5', '任务分组', 'sys_job_group', '0', 'admin', '2022-05-05 10:41:34', '', null, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES ('6', '系统是否', 'sys_yes_no', '0', 'admin', '2022-05-05 10:41:34', '', null, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES ('7', '通知类型', 'sys_notice_type', '0', 'admin', '2022-05-05 10:41:34', '', null, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES ('8', '通知状态', 'sys_notice_status', '0', 'admin', '2022-05-05 10:41:34', '', null, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES ('9', '操作类型', 'sys_oper_type', '0', 'admin', '2022-05-05 10:41:34', '', null, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES ('10', '系统状态', 'sys_common_status', '0', 'admin', '2022-05-05 10:41:34', '', null, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES ('100', '年级管理', 'grade', '0', 'admin', '2022-05-05 14:07:02', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('101', '数据状态', 'data_state', '0', 'admin', '2022-05-06 14:32:42', '', null, '0 正常，1停用');
INSERT INTO `sys_dict_type` VALUES ('102', '保险公司类型', 'insurance_company', '0', 'admin', '2022-05-06 15:23:58', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('103', '理赔进展状态', 'evolve_state', '0', 'admin', '2022-05-07 11:19:31', '', null, '理赔进展状态');
INSERT INTO `sys_dict_type` VALUES ('104', '理赔类型', 'claim_type', '0', 'admin', '2022-05-07 14:01:11', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('105', '学校公立状态', 'is_public', '0', 'admin', '2022-05-13 10:30:42', 'admin', '2022-05-13 10:32:05', '学校公立状态列表');
INSERT INTO `sys_dict_type` VALUES ('106', '营销员存取类型', 'money_type', '0', 'admin', '2022-05-20 09:33:23', 'admin', '2022-05-20 09:33:36', '存取钱类型');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES ('1', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2022-05-05 10:41:35', '', null, '');
INSERT INTO `sys_job` VALUES ('2', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2022-05-05 10:41:35', '', null, '');
INSERT INTO `sys_job` VALUES ('3', '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2022-05-05 10:41:35', '', null, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=311 DEFAULT CHARSET=utf8mb4 COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES ('100', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-05 10:43:39');
INSERT INTO `sys_logininfor` VALUES ('101', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-05-05 10:48:04');
INSERT INTO `sys_logininfor` VALUES ('102', 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-05 10:48:09');
INSERT INTO `sys_logininfor` VALUES ('103', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-05 11:11:15');
INSERT INTO `sys_logininfor` VALUES ('104', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-05 11:12:23');
INSERT INTO `sys_logininfor` VALUES ('105', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-05 11:16:11');
INSERT INTO `sys_logininfor` VALUES ('106', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-05-05 11:19:14');
INSERT INTO `sys_logininfor` VALUES ('107', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-05 11:19:15');
INSERT INTO `sys_logininfor` VALUES ('108', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-05 11:19:42');
INSERT INTO `sys_logininfor` VALUES ('109', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-05 11:19:52');
INSERT INTO `sys_logininfor` VALUES ('110', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-05 13:33:41');
INSERT INTO `sys_logininfor` VALUES ('111', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-05 13:43:49');
INSERT INTO `sys_logininfor` VALUES ('112', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-05-05 13:44:46');
INSERT INTO `sys_logininfor` VALUES ('113', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-05 13:44:47');
INSERT INTO `sys_logininfor` VALUES ('114', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-05 13:45:53');
INSERT INTO `sys_logininfor` VALUES ('115', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-05-05 13:46:03');
INSERT INTO `sys_logininfor` VALUES ('116', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-05 13:46:04');
INSERT INTO `sys_logininfor` VALUES ('117', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-05 13:50:20');
INSERT INTO `sys_logininfor` VALUES ('118', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-05 13:51:06');
INSERT INTO `sys_logininfor` VALUES ('119', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-05 13:52:14');
INSERT INTO `sys_logininfor` VALUES ('120', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-05 14:22:30');
INSERT INTO `sys_logininfor` VALUES ('121', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-05 15:00:23');
INSERT INTO `sys_logininfor` VALUES ('122', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-05 15:00:32');
INSERT INTO `sys_logininfor` VALUES ('123', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-05 15:05:58');
INSERT INTO `sys_logininfor` VALUES ('124', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-05 15:08:07');
INSERT INTO `sys_logininfor` VALUES ('125', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-05 15:14:11');
INSERT INTO `sys_logininfor` VALUES ('126', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-05 15:21:18');
INSERT INTO `sys_logininfor` VALUES ('127', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-05 15:26:09');
INSERT INTO `sys_logininfor` VALUES ('128', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-05 15:28:34');
INSERT INTO `sys_logininfor` VALUES ('129', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-05 15:30:40');
INSERT INTO `sys_logininfor` VALUES ('130', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-05 15:32:38');
INSERT INTO `sys_logininfor` VALUES ('131', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-05 15:34:09');
INSERT INTO `sys_logininfor` VALUES ('132', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-05 15:39:04');
INSERT INTO `sys_logininfor` VALUES ('133', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-05 15:40:25');
INSERT INTO `sys_logininfor` VALUES ('134', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-05 15:48:05');
INSERT INTO `sys_logininfor` VALUES ('135', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-05 15:54:53');
INSERT INTO `sys_logininfor` VALUES ('136', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-06 14:11:12');
INSERT INTO `sys_logininfor` VALUES ('137', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-06 14:24:06');
INSERT INTO `sys_logininfor` VALUES ('138', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-06 14:29:15');
INSERT INTO `sys_logininfor` VALUES ('139', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-06 14:35:00');
INSERT INTO `sys_logininfor` VALUES ('140', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-06 15:06:12');
INSERT INTO `sys_logininfor` VALUES ('141', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-06 15:12:38');
INSERT INTO `sys_logininfor` VALUES ('142', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-06 15:19:27');
INSERT INTO `sys_logininfor` VALUES ('143', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-06 15:34:58');
INSERT INTO `sys_logininfor` VALUES ('144', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-06 15:48:23');
INSERT INTO `sys_logininfor` VALUES ('145', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-06 15:54:53');
INSERT INTO `sys_logininfor` VALUES ('146', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-06 15:58:00');
INSERT INTO `sys_logininfor` VALUES ('147', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-06 16:18:15');
INSERT INTO `sys_logininfor` VALUES ('148', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-06 16:24:40');
INSERT INTO `sys_logininfor` VALUES ('149', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-06 16:41:39');
INSERT INTO `sys_logininfor` VALUES ('150', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-06 16:44:54');
INSERT INTO `sys_logininfor` VALUES ('151', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-06 16:47:03');
INSERT INTO `sys_logininfor` VALUES ('152', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-06 16:48:08');
INSERT INTO `sys_logininfor` VALUES ('153', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-06 16:52:41');
INSERT INTO `sys_logininfor` VALUES ('154', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 08:46:18');
INSERT INTO `sys_logininfor` VALUES ('155', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 09:12:59');
INSERT INTO `sys_logininfor` VALUES ('156', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 09:18:04');
INSERT INTO `sys_logininfor` VALUES ('157', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 09:21:07');
INSERT INTO `sys_logininfor` VALUES ('158', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-05-07 09:25:06');
INSERT INTO `sys_logininfor` VALUES ('159', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 09:25:07');
INSERT INTO `sys_logininfor` VALUES ('160', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 09:27:39');
INSERT INTO `sys_logininfor` VALUES ('161', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 09:30:12');
INSERT INTO `sys_logininfor` VALUES ('162', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 09:30:37');
INSERT INTO `sys_logininfor` VALUES ('163', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 09:31:10');
INSERT INTO `sys_logininfor` VALUES ('164', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 09:43:06');
INSERT INTO `sys_logininfor` VALUES ('165', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 09:47:22');
INSERT INTO `sys_logininfor` VALUES ('166', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 09:50:55');
INSERT INTO `sys_logininfor` VALUES ('167', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 09:55:32');
INSERT INTO `sys_logininfor` VALUES ('168', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 09:58:51');
INSERT INTO `sys_logininfor` VALUES ('169', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 10:04:18');
INSERT INTO `sys_logininfor` VALUES ('170', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 10:05:49');
INSERT INTO `sys_logininfor` VALUES ('171', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 10:06:25');
INSERT INTO `sys_logininfor` VALUES ('172', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-05-07 10:42:42');
INSERT INTO `sys_logininfor` VALUES ('173', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 10:42:43');
INSERT INTO `sys_logininfor` VALUES ('174', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-05-07 10:48:17');
INSERT INTO `sys_logininfor` VALUES ('175', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 10:48:18');
INSERT INTO `sys_logininfor` VALUES ('176', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 12:07:31');
INSERT INTO `sys_logininfor` VALUES ('177', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 12:10:45');
INSERT INTO `sys_logininfor` VALUES ('178', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 13:54:11');
INSERT INTO `sys_logininfor` VALUES ('179', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 14:09:25');
INSERT INTO `sys_logininfor` VALUES ('180', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 14:40:15');
INSERT INTO `sys_logininfor` VALUES ('181', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 14:41:07');
INSERT INTO `sys_logininfor` VALUES ('182', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 14:42:22');
INSERT INTO `sys_logininfor` VALUES ('183', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 15:07:09');
INSERT INTO `sys_logininfor` VALUES ('184', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 15:08:00');
INSERT INTO `sys_logininfor` VALUES ('185', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 15:09:42');
INSERT INTO `sys_logininfor` VALUES ('186', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 15:35:01');
INSERT INTO `sys_logininfor` VALUES ('187', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 15:38:55');
INSERT INTO `sys_logininfor` VALUES ('188', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 15:40:31');
INSERT INTO `sys_logininfor` VALUES ('189', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 15:42:29');
INSERT INTO `sys_logininfor` VALUES ('190', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 15:44:29');
INSERT INTO `sys_logininfor` VALUES ('191', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 15:46:45');
INSERT INTO `sys_logininfor` VALUES ('192', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 15:48:38');
INSERT INTO `sys_logininfor` VALUES ('193', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 15:54:42');
INSERT INTO `sys_logininfor` VALUES ('194', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 16:05:04');
INSERT INTO `sys_logininfor` VALUES ('195', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 16:11:35');
INSERT INTO `sys_logininfor` VALUES ('196', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 16:13:50');
INSERT INTO `sys_logininfor` VALUES ('197', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 16:16:55');
INSERT INTO `sys_logininfor` VALUES ('198', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-05-07 16:19:38');
INSERT INTO `sys_logininfor` VALUES ('199', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 16:19:38');
INSERT INTO `sys_logininfor` VALUES ('200', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 16:21:55');
INSERT INTO `sys_logininfor` VALUES ('201', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 16:22:45');
INSERT INTO `sys_logininfor` VALUES ('202', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 16:35:47');
INSERT INTO `sys_logininfor` VALUES ('203', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 16:40:02');
INSERT INTO `sys_logininfor` VALUES ('204', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-05-07 16:40:34');
INSERT INTO `sys_logininfor` VALUES ('205', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 16:40:35');
INSERT INTO `sys_logininfor` VALUES ('206', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-07 16:47:28');
INSERT INTO `sys_logininfor` VALUES ('207', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-09 09:24:42');
INSERT INTO `sys_logininfor` VALUES ('208', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-09 09:45:04');
INSERT INTO `sys_logininfor` VALUES ('209', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-09 09:49:22');
INSERT INTO `sys_logininfor` VALUES ('210', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-09 09:50:44');
INSERT INTO `sys_logininfor` VALUES ('211', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-09 10:01:22');
INSERT INTO `sys_logininfor` VALUES ('212', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-09 10:05:09');
INSERT INTO `sys_logininfor` VALUES ('213', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-09 10:09:15');
INSERT INTO `sys_logininfor` VALUES ('214', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-09 10:09:22');
INSERT INTO `sys_logininfor` VALUES ('215', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-09 10:09:58');
INSERT INTO `sys_logininfor` VALUES ('216', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-09 10:10:41');
INSERT INTO `sys_logininfor` VALUES ('217', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-09 10:11:56');
INSERT INTO `sys_logininfor` VALUES ('218', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-09 10:13:06');
INSERT INTO `sys_logininfor` VALUES ('219', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-09 10:13:10');
INSERT INTO `sys_logininfor` VALUES ('220', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-09 10:25:36');
INSERT INTO `sys_logininfor` VALUES ('221', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-09 10:30:28');
INSERT INTO `sys_logininfor` VALUES ('222', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-09 10:44:13');
INSERT INTO `sys_logininfor` VALUES ('223', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-09 10:45:54');
INSERT INTO `sys_logininfor` VALUES ('224', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-09 10:48:41');
INSERT INTO `sys_logininfor` VALUES ('225', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-09 10:57:34');
INSERT INTO `sys_logininfor` VALUES ('226', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-09 10:59:40');
INSERT INTO `sys_logininfor` VALUES ('227', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-09 11:07:59');
INSERT INTO `sys_logininfor` VALUES ('228', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-13 09:32:53');
INSERT INTO `sys_logininfor` VALUES ('229', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-13 10:26:35');
INSERT INTO `sys_logininfor` VALUES ('230', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-13 10:43:44');
INSERT INTO `sys_logininfor` VALUES ('231', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-13 11:01:31');
INSERT INTO `sys_logininfor` VALUES ('232', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-13 11:03:29');
INSERT INTO `sys_logininfor` VALUES ('233', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-13 11:03:55');
INSERT INTO `sys_logininfor` VALUES ('234', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-13 11:18:33');
INSERT INTO `sys_logininfor` VALUES ('235', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-16 09:31:36');
INSERT INTO `sys_logininfor` VALUES ('236', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-16 09:36:36');
INSERT INTO `sys_logininfor` VALUES ('237', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-16 09:41:54');
INSERT INTO `sys_logininfor` VALUES ('238', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-16 09:53:27');
INSERT INTO `sys_logininfor` VALUES ('239', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-16 10:20:01');
INSERT INTO `sys_logininfor` VALUES ('240', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-05-16 10:23:14');
INSERT INTO `sys_logininfor` VALUES ('241', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-16 10:23:14');
INSERT INTO `sys_logininfor` VALUES ('242', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-16 10:23:51');
INSERT INTO `sys_logininfor` VALUES ('243', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-16 10:26:48');
INSERT INTO `sys_logininfor` VALUES ('244', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-16 10:36:59');
INSERT INTO `sys_logininfor` VALUES ('245', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-16 10:43:45');
INSERT INTO `sys_logininfor` VALUES ('246', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-16 10:56:20');
INSERT INTO `sys_logininfor` VALUES ('247', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-16 11:01:29');
INSERT INTO `sys_logininfor` VALUES ('248', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-16 11:08:14');
INSERT INTO `sys_logininfor` VALUES ('249', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-16 11:25:10');
INSERT INTO `sys_logininfor` VALUES ('250', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-16 11:29:11');
INSERT INTO `sys_logininfor` VALUES ('251', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-16 11:33:57');
INSERT INTO `sys_logininfor` VALUES ('252', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-16 11:36:57');
INSERT INTO `sys_logininfor` VALUES ('253', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-16 11:38:17');
INSERT INTO `sys_logininfor` VALUES ('254', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-16 11:41:11');
INSERT INTO `sys_logininfor` VALUES ('255', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-16 14:06:59');
INSERT INTO `sys_logininfor` VALUES ('256', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-16 14:20:48');
INSERT INTO `sys_logininfor` VALUES ('257', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-16 14:23:29');
INSERT INTO `sys_logininfor` VALUES ('258', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-16 14:27:07');
INSERT INTO `sys_logininfor` VALUES ('259', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-16 15:22:36');
INSERT INTO `sys_logininfor` VALUES ('260', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-16 15:36:14');
INSERT INTO `sys_logininfor` VALUES ('261', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-19 09:20:17');
INSERT INTO `sys_logininfor` VALUES ('262', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-19 15:16:42');
INSERT INTO `sys_logininfor` VALUES ('263', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-19 15:32:27');
INSERT INTO `sys_logininfor` VALUES ('264', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-19 15:42:33');
INSERT INTO `sys_logininfor` VALUES ('265', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-19 16:02:58');
INSERT INTO `sys_logininfor` VALUES ('266', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-19 16:10:40');
INSERT INTO `sys_logininfor` VALUES ('267', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-19 16:21:39');
INSERT INTO `sys_logininfor` VALUES ('268', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-19 16:29:00');
INSERT INTO `sys_logininfor` VALUES ('269', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-19 16:30:51');
INSERT INTO `sys_logininfor` VALUES ('270', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-19 16:34:16');
INSERT INTO `sys_logininfor` VALUES ('271', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-19 16:37:51');
INSERT INTO `sys_logininfor` VALUES ('272', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-20 09:31:43');
INSERT INTO `sys_logininfor` VALUES ('273', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-20 09:40:04');
INSERT INTO `sys_logininfor` VALUES ('274', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-20 09:54:33');
INSERT INTO `sys_logininfor` VALUES ('275', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-20 09:55:57');
INSERT INTO `sys_logininfor` VALUES ('276', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-20 09:57:26');
INSERT INTO `sys_logininfor` VALUES ('277', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-20 10:01:29');
INSERT INTO `sys_logininfor` VALUES ('278', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-20 10:03:55');
INSERT INTO `sys_logininfor` VALUES ('279', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-20 10:08:52');
INSERT INTO `sys_logininfor` VALUES ('280', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-20 10:09:45');
INSERT INTO `sys_logininfor` VALUES ('281', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-20 10:10:26');
INSERT INTO `sys_logininfor` VALUES ('282', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-20 10:19:43');
INSERT INTO `sys_logininfor` VALUES ('283', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-20 10:20:54');
INSERT INTO `sys_logininfor` VALUES ('284', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-20 10:26:47');
INSERT INTO `sys_logininfor` VALUES ('285', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-20 10:28:52');
INSERT INTO `sys_logininfor` VALUES ('286', 'hbd01', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '密码输入错误1次', '2022-05-20 10:38:53');
INSERT INTO `sys_logininfor` VALUES ('287', 'hbd01', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '密码输入错误2次', '2022-05-20 10:38:56');
INSERT INTO `sys_logininfor` VALUES ('288', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-20 10:39:00');
INSERT INTO `sys_logininfor` VALUES ('289', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-05-20 10:39:10');
INSERT INTO `sys_logininfor` VALUES ('290', 'hbd01', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-20 10:39:15');
INSERT INTO `sys_logininfor` VALUES ('291', 'hbd01', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-20 10:42:05');
INSERT INTO `sys_logininfor` VALUES ('292', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-20 10:42:36');
INSERT INTO `sys_logininfor` VALUES ('293', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-05-20 10:43:38');
INSERT INTO `sys_logininfor` VALUES ('294', 'hbd02', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-20 10:43:42');
INSERT INTO `sys_logininfor` VALUES ('295', 'hbd01', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-05-20 10:44:16');
INSERT INTO `sys_logininfor` VALUES ('296', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-20 10:44:17');
INSERT INTO `sys_logininfor` VALUES ('297', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-20 10:45:17');
INSERT INTO `sys_logininfor` VALUES ('298', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-05-20 10:45:20');
INSERT INTO `sys_logininfor` VALUES ('299', 'hbd02', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-20 10:45:25');
INSERT INTO `sys_logininfor` VALUES ('300', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-20 11:04:51');
INSERT INTO `sys_logininfor` VALUES ('301', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-20 11:07:03');
INSERT INTO `sys_logininfor` VALUES ('302', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-25 14:38:43');
INSERT INTO `sys_logininfor` VALUES ('303', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-25 16:39:20');
INSERT INTO `sys_logininfor` VALUES ('304', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-27 14:30:52');
INSERT INTO `sys_logininfor` VALUES ('305', 'admin', '192.168.2.4', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-27 14:32:01');
INSERT INTO `sys_logininfor` VALUES ('306', 'admin', '192.168.2.100', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2022-05-27 14:32:41');
INSERT INTO `sys_logininfor` VALUES ('307', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-29 10:02:19');
INSERT INTO `sys_logininfor` VALUES ('308', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-29 10:06:55');
INSERT INTO `sys_logininfor` VALUES ('309', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-29 10:13:51');
INSERT INTO `sys_logininfor` VALUES ('310', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-29 11:41:22');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `url` varchar(200) DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `is_refresh` char(1) DEFAULT '1' COMMENT '是否刷新（0刷新 1不刷新）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2088 DEFAULT CHARSET=utf8mb4 COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', '1', '#', '', 'M', '0', '1', '', 'fa fa-gear', 'admin', '2022-05-05 10:41:31', '', null, '系统管理目录');
INSERT INTO `sys_menu` VALUES ('2', '系统监控', '0', '2', '#', '', 'M', '0', '1', '', 'fa fa-video-camera', 'admin', '2022-05-05 10:41:31', '', null, '系统监控目录');
INSERT INTO `sys_menu` VALUES ('3', '系统工具', '0', '3', '#', '', 'M', '0', '1', '', 'fa fa-bars', 'admin', '2022-05-05 10:41:31', '', null, '系统工具目录');
INSERT INTO `sys_menu` VALUES ('4', '若依官网', '0', '4', 'http://ruoyi.vip', 'menuBlank', 'C', '1', '1', '', 'fa fa-location-arrow', 'admin', '2022-05-05 10:41:31', 'admin', '2022-05-05 11:20:53', '若依官网地址');
INSERT INTO `sys_menu` VALUES ('100', '用户管理', '1', '1', '/system/user', '', 'C', '0', '1', 'system:user:view', 'fa fa-user-o', 'admin', '2022-05-05 10:41:31', '', null, '用户管理菜单');
INSERT INTO `sys_menu` VALUES ('101', '角色管理', '1', '2', '/system/role', '', 'C', '0', '1', 'system:role:view', 'fa fa-user-secret', 'admin', '2022-05-05 10:41:31', '', null, '角色管理菜单');
INSERT INTO `sys_menu` VALUES ('102', '菜单管理', '1', '3', '/system/menu', '', 'C', '0', '1', 'system:menu:view', 'fa fa-th-list', 'admin', '2022-05-05 10:41:31', '', null, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES ('103', '部门管理', '1', '4', '/system/dept', '', 'C', '0', '1', 'system:dept:view', 'fa fa-outdent', 'admin', '2022-05-05 10:41:31', '', null, '部门管理菜单');
INSERT INTO `sys_menu` VALUES ('104', '岗位管理', '1', '5', '/system/post', '', 'C', '0', '1', 'system:post:view', 'fa fa-address-card-o', 'admin', '2022-05-05 10:41:31', '', null, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES ('105', '字典管理', '1', '6', '/system/dict', '', 'C', '0', '1', 'system:dict:view', 'fa fa-bookmark-o', 'admin', '2022-05-05 10:41:31', '', null, '字典管理菜单');
INSERT INTO `sys_menu` VALUES ('106', '参数设置', '1', '7', '/system/config', '', 'C', '0', '1', 'system:config:view', 'fa fa-sun-o', 'admin', '2022-05-05 10:41:31', '', null, '参数设置菜单');
INSERT INTO `sys_menu` VALUES ('107', '通知公告', '1', '8', '/system/notice', '', 'C', '0', '1', 'system:notice:view', 'fa fa-bullhorn', 'admin', '2022-05-05 10:41:31', '', null, '通知公告菜单');
INSERT INTO `sys_menu` VALUES ('108', '日志管理', '1', '9', '#', '', 'M', '0', '1', '', 'fa fa-pencil-square-o', 'admin', '2022-05-05 10:41:31', '', null, '日志管理菜单');
INSERT INTO `sys_menu` VALUES ('109', '在线用户', '2', '1', '/monitor/online', '', 'C', '0', '1', 'monitor:online:view', 'fa fa-user-circle', 'admin', '2022-05-05 10:41:31', '', null, '在线用户菜单');
INSERT INTO `sys_menu` VALUES ('110', '定时任务', '2', '2', '/monitor/job', '', 'C', '0', '1', 'monitor:job:view', 'fa fa-tasks', 'admin', '2022-05-05 10:41:31', '', null, '定时任务菜单');
INSERT INTO `sys_menu` VALUES ('111', '数据监控', '2', '3', '/monitor/data', '', 'C', '0', '1', 'monitor:data:view', 'fa fa-bug', 'admin', '2022-05-05 10:41:31', '', null, '数据监控菜单');
INSERT INTO `sys_menu` VALUES ('112', '服务监控', '2', '4', '/monitor/server', '', 'C', '0', '1', 'monitor:server:view', 'fa fa-server', 'admin', '2022-05-05 10:41:31', '', null, '服务监控菜单');
INSERT INTO `sys_menu` VALUES ('113', '缓存监控', '2', '5', '/monitor/cache', '', 'C', '0', '1', 'monitor:cache:view', 'fa fa-cube', 'admin', '2022-05-05 10:41:31', '', null, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES ('114', '表单构建', '3', '1', '/tool/build', '', 'C', '0', '1', 'tool:build:view', 'fa fa-wpforms', 'admin', '2022-05-05 10:41:31', '', null, '表单构建菜单');
INSERT INTO `sys_menu` VALUES ('115', '代码生成', '3', '2', '/tool/gen', '', 'C', '0', '1', 'tool:gen:view', 'fa fa-code', 'admin', '2022-05-05 10:41:31', '', null, '代码生成菜单');
INSERT INTO `sys_menu` VALUES ('116', '系统接口', '3', '3', '/tool/swagger', '', 'C', '0', '1', 'tool:swagger:view', 'fa fa-gg', 'admin', '2022-05-05 10:41:31', '', null, '系统接口菜单');
INSERT INTO `sys_menu` VALUES ('500', '操作日志', '108', '1', '/monitor/operlog', '', 'C', '0', '1', 'monitor:operlog:view', 'fa fa-address-book', 'admin', '2022-05-05 10:41:31', '', null, '操作日志菜单');
INSERT INTO `sys_menu` VALUES ('501', '登录日志', '108', '2', '/monitor/logininfor', '', 'C', '0', '1', 'monitor:logininfor:view', 'fa fa-file-image-o', 'admin', '2022-05-05 10:41:31', '', null, '登录日志菜单');
INSERT INTO `sys_menu` VALUES ('1000', '用户查询', '100', '1', '#', '', 'F', '0', '1', 'system:user:list', '#', 'admin', '2022-05-05 10:41:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1001', '用户新增', '100', '2', '#', '', 'F', '0', '1', 'system:user:add', '#', 'admin', '2022-05-05 10:41:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1002', '用户修改', '100', '3', '#', '', 'F', '0', '1', 'system:user:edit', '#', 'admin', '2022-05-05 10:41:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1003', '用户删除', '100', '4', '#', '', 'F', '0', '1', 'system:user:remove', '#', 'admin', '2022-05-05 10:41:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1004', '用户导出', '100', '5', '#', '', 'F', '0', '1', 'system:user:export', '#', 'admin', '2022-05-05 10:41:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1005', '用户导入', '100', '6', '#', '', 'F', '0', '1', 'system:user:import', '#', 'admin', '2022-05-05 10:41:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1006', '重置密码', '100', '7', '#', '', 'F', '0', '1', 'system:user:resetPwd', '#', 'admin', '2022-05-05 10:41:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1007', '角色查询', '101', '1', '#', '', 'F', '0', '1', 'system:role:list', '#', 'admin', '2022-05-05 10:41:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1008', '角色新增', '101', '2', '#', '', 'F', '0', '1', 'system:role:add', '#', 'admin', '2022-05-05 10:41:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1009', '角色修改', '101', '3', '#', '', 'F', '0', '1', 'system:role:edit', '#', 'admin', '2022-05-05 10:41:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1010', '角色删除', '101', '4', '#', '', 'F', '0', '1', 'system:role:remove', '#', 'admin', '2022-05-05 10:41:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1011', '角色导出', '101', '5', '#', '', 'F', '0', '1', 'system:role:export', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1012', '菜单查询', '102', '1', '#', '', 'F', '0', '1', 'system:menu:list', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1013', '菜单新增', '102', '2', '#', '', 'F', '0', '1', 'system:menu:add', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1014', '菜单修改', '102', '3', '#', '', 'F', '0', '1', 'system:menu:edit', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1015', '菜单删除', '102', '4', '#', '', 'F', '0', '1', 'system:menu:remove', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1016', '部门查询', '103', '1', '#', '', 'F', '0', '1', 'system:dept:list', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1017', '部门新增', '103', '2', '#', '', 'F', '0', '1', 'system:dept:add', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1018', '部门修改', '103', '3', '#', '', 'F', '0', '1', 'system:dept:edit', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1019', '部门删除', '103', '4', '#', '', 'F', '0', '1', 'system:dept:remove', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1020', '岗位查询', '104', '1', '#', '', 'F', '0', '1', 'system:post:list', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1021', '岗位新增', '104', '2', '#', '', 'F', '0', '1', 'system:post:add', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1022', '岗位修改', '104', '3', '#', '', 'F', '0', '1', 'system:post:edit', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1023', '岗位删除', '104', '4', '#', '', 'F', '0', '1', 'system:post:remove', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1024', '岗位导出', '104', '5', '#', '', 'F', '0', '1', 'system:post:export', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1025', '字典查询', '105', '1', '#', '', 'F', '0', '1', 'system:dict:list', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1026', '字典新增', '105', '2', '#', '', 'F', '0', '1', 'system:dict:add', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1027', '字典修改', '105', '3', '#', '', 'F', '0', '1', 'system:dict:edit', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1028', '字典删除', '105', '4', '#', '', 'F', '0', '1', 'system:dict:remove', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1029', '字典导出', '105', '5', '#', '', 'F', '0', '1', 'system:dict:export', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1030', '参数查询', '106', '1', '#', '', 'F', '0', '1', 'system:config:list', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1031', '参数新增', '106', '2', '#', '', 'F', '0', '1', 'system:config:add', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1032', '参数修改', '106', '3', '#', '', 'F', '0', '1', 'system:config:edit', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1033', '参数删除', '106', '4', '#', '', 'F', '0', '1', 'system:config:remove', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1034', '参数导出', '106', '5', '#', '', 'F', '0', '1', 'system:config:export', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1035', '公告查询', '107', '1', '#', '', 'F', '0', '1', 'system:notice:list', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1036', '公告新增', '107', '2', '#', '', 'F', '0', '1', 'system:notice:add', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1037', '公告修改', '107', '3', '#', '', 'F', '0', '1', 'system:notice:edit', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1038', '公告删除', '107', '4', '#', '', 'F', '0', '1', 'system:notice:remove', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1039', '操作查询', '500', '1', '#', '', 'F', '0', '1', 'monitor:operlog:list', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1040', '操作删除', '500', '2', '#', '', 'F', '0', '1', 'monitor:operlog:remove', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1041', '详细信息', '500', '3', '#', '', 'F', '0', '1', 'monitor:operlog:detail', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1042', '日志导出', '500', '4', '#', '', 'F', '0', '1', 'monitor:operlog:export', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1043', '登录查询', '501', '1', '#', '', 'F', '0', '1', 'monitor:logininfor:list', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1044', '登录删除', '501', '2', '#', '', 'F', '0', '1', 'monitor:logininfor:remove', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1045', '日志导出', '501', '3', '#', '', 'F', '0', '1', 'monitor:logininfor:export', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1046', '账户解锁', '501', '4', '#', '', 'F', '0', '1', 'monitor:logininfor:unlock', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1047', '在线查询', '109', '1', '#', '', 'F', '0', '1', 'monitor:online:list', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1048', '批量强退', '109', '2', '#', '', 'F', '0', '1', 'monitor:online:batchForceLogout', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1049', '单条强退', '109', '3', '#', '', 'F', '0', '1', 'monitor:online:forceLogout', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1050', '任务查询', '110', '1', '#', '', 'F', '0', '1', 'monitor:job:list', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1051', '任务新增', '110', '2', '#', '', 'F', '0', '1', 'monitor:job:add', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1052', '任务修改', '110', '3', '#', '', 'F', '0', '1', 'monitor:job:edit', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1053', '任务删除', '110', '4', '#', '', 'F', '0', '1', 'monitor:job:remove', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1054', '状态修改', '110', '5', '#', '', 'F', '0', '1', 'monitor:job:changeStatus', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1055', '任务详细', '110', '6', '#', '', 'F', '0', '1', 'monitor:job:detail', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1056', '任务导出', '110', '7', '#', '', 'F', '0', '1', 'monitor:job:export', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1057', '生成查询', '115', '1', '#', '', 'F', '0', '1', 'tool:gen:list', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1058', '生成修改', '115', '2', '#', '', 'F', '0', '1', 'tool:gen:edit', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1059', '生成删除', '115', '3', '#', '', 'F', '0', '1', 'tool:gen:remove', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1060', '预览代码', '115', '4', '#', '', 'F', '0', '1', 'tool:gen:preview', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1061', '生成代码', '115', '5', '#', '', 'F', '0', '1', 'tool:gen:code', '#', 'admin', '2022-05-05 10:41:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('2000', '保险公司管理', '0', '5', '#', 'menuItem', 'M', '0', '1', '', 'fa fa-calendar-o', 'admin', '2022-05-05 13:35:11', 'admin', '2022-05-06 14:12:00', '');
INSERT INTO `sys_menu` VALUES ('2016', '公司管理', '2000', '1', '/system/company', '', 'C', '0', '1', 'system:company:view', '#', 'admin', '2022-05-06 15:28:09', '', null, '公司管理菜单');
INSERT INTO `sys_menu` VALUES ('2017', '公司管理查询', '2016', '1', '#', '', 'F', '0', '1', 'system:company:list', '#', 'admin', '2022-05-06 15:28:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('2018', '公司管理新增', '2016', '2', '#', '', 'F', '0', '1', 'system:company:add', '#', 'admin', '2022-05-06 15:28:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('2019', '公司管理修改', '2016', '3', '#', '', 'F', '0', '1', 'system:company:edit', '#', 'admin', '2022-05-06 15:28:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('2020', '公司管理删除', '2016', '4', '#', '', 'F', '0', '1', 'system:company:remove', '#', 'admin', '2022-05-06 15:28:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('2021', '公司管理导出', '2016', '5', '#', '', 'F', '0', '1', 'system:company:export', '#', 'admin', '2022-05-06 15:28:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('2022', '人员管理', '2000', '1', '/system/person', 'menuItem', 'C', '0', '1', 'system:person:view', '#', 'admin', '2022-05-06 16:14:23', 'admin', '2022-05-06 16:32:10', '保险公司人员管理菜单');
INSERT INTO `sys_menu` VALUES ('2023', '保险公司人员管理查询', '2022', '1', '#', '', 'F', '0', '1', 'system:person:list', '#', 'admin', '2022-05-06 16:14:23', '', null, '');
INSERT INTO `sys_menu` VALUES ('2024', '保险公司人员管理新增', '2022', '2', '#', '', 'F', '0', '1', 'system:person:add', '#', 'admin', '2022-05-06 16:14:23', '', null, '');
INSERT INTO `sys_menu` VALUES ('2025', '保险公司人员管理修改', '2022', '3', '#', '', 'F', '0', '1', 'system:person:edit', '#', 'admin', '2022-05-06 16:14:23', '', null, '');
INSERT INTO `sys_menu` VALUES ('2026', '保险公司人员管理删除', '2022', '4', '#', '', 'F', '0', '1', 'system:person:remove', '#', 'admin', '2022-05-06 16:14:23', '', null, '');
INSERT INTO `sys_menu` VALUES ('2027', '保险公司人员管理导出', '2022', '5', '#', '', 'F', '0', '1', 'system:person:export', '#', 'admin', '2022-05-06 16:14:23', '', null, '');
INSERT INTO `sys_menu` VALUES ('2028', '理赔管理', '0', '6', '#', 'menuItem', 'M', '0', '1', null, 'fa fa-handshake-o', 'admin', '2022-05-07 10:48:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('2029', '理赔信息', '2028', '1', '/system/claim', 'menuItem', 'C', '0', '1', 'system:claim:view', '#', 'admin', '2022-05-07 14:03:42', 'admin', '2022-05-07 14:09:39', '信息管理菜单');
INSERT INTO `sys_menu` VALUES ('2030', '信息管理查询', '2029', '1', '#', '', 'F', '0', '1', 'system:claim:list', '#', 'admin', '2022-05-07 14:03:42', '', null, '');
INSERT INTO `sys_menu` VALUES ('2031', '信息管理新增', '2029', '2', '#', '', 'F', '0', '1', 'system:claim:add', '#', 'admin', '2022-05-07 14:03:42', '', null, '');
INSERT INTO `sys_menu` VALUES ('2032', '信息管理修改', '2029', '3', '#', '', 'F', '0', '1', 'system:claim:edit', '#', 'admin', '2022-05-07 14:03:42', '', null, '');
INSERT INTO `sys_menu` VALUES ('2033', '信息管理删除', '2029', '4', '#', '', 'F', '0', '1', 'system:claim:remove', '#', 'admin', '2022-05-07 14:03:42', '', null, '');
INSERT INTO `sys_menu` VALUES ('2034', '信息管理导出', '2029', '5', '#', '', 'F', '0', '1', 'system:claim:export', '#', 'admin', '2022-05-07 14:03:42', '', null, '');
INSERT INTO `sys_menu` VALUES ('2035', '详情信息', '2029', '6', '#', 'menuItem', 'F', '0', '1', 'system:claim:detail', '#', 'admin', '2022-05-07 16:19:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('2036', '基础数据管理', '0', '7', '#', 'menuItem', 'M', '0', '1', '', 'fa fa-laptop', 'admin', '2022-05-13 10:29:28', 'admin', '2022-05-13 10:46:52', '');
INSERT INTO `sys_menu` VALUES ('2037', '学校管理', '2036', '1', '/system/school', '', 'C', '0', '1', 'system:school:view', '#', 'admin', '2022-05-13 10:39:23', '', null, '学校管理菜单');
INSERT INTO `sys_menu` VALUES ('2038', '学校管理查询', '2037', '1', '#', '', 'F', '0', '1', 'system:school:list', '#', 'admin', '2022-05-13 10:39:23', '', null, '');
INSERT INTO `sys_menu` VALUES ('2039', '学校管理新增', '2037', '2', '#', '', 'F', '0', '1', 'system:school:add', '#', 'admin', '2022-05-13 10:39:23', '', null, '');
INSERT INTO `sys_menu` VALUES ('2040', '学校管理修改', '2037', '3', '#', '', 'F', '0', '1', 'system:school:edit', '#', 'admin', '2022-05-13 10:39:23', '', null, '');
INSERT INTO `sys_menu` VALUES ('2041', '学校管理删除', '2037', '4', '#', '', 'F', '0', '1', 'system:school:remove', '#', 'admin', '2022-05-13 10:39:23', '', null, '');
INSERT INTO `sys_menu` VALUES ('2042', '学校管理导出', '2037', '5', '#', '', 'F', '0', '1', 'system:school:export', '#', 'admin', '2022-05-13 10:39:23', '', null, '');
INSERT INTO `sys_menu` VALUES ('2043', '湘N管理', '0', '99', '#', 'menuItem', 'M', '0', '1', null, 'fa fa-archive', 'admin', '2022-05-16 09:32:10', '', null, '');
INSERT INTO `sys_menu` VALUES ('2050', '队员管理', '2043', '1', '/system/nperson', '', 'C', '0', '1', 'system:nperson:view', '#', 'admin', '2022-05-16 09:38:09', '', null, '队员管理菜单');
INSERT INTO `sys_menu` VALUES ('2051', '队员管理查询', '2050', '1', '#', '', 'F', '0', '1', 'system:nperson:list', '#', 'admin', '2022-05-16 09:38:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('2052', '队员管理新增', '2050', '2', '#', '', 'F', '0', '1', 'system:nperson:add', '#', 'admin', '2022-05-16 09:38:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('2053', '队员管理修改', '2050', '3', '#', '', 'F', '0', '1', 'system:nperson:edit', '#', 'admin', '2022-05-16 09:38:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('2054', '队员管理删除', '2050', '4', '#', '', 'F', '0', '1', 'system:nperson:remove', '#', 'admin', '2022-05-16 09:38:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('2055', '队员管理导出', '2050', '5', '#', '', 'F', '0', '1', 'system:nperson:export', '#', 'admin', '2022-05-16 09:38:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('2062', '收入管理', '2043', '1', '/system/income', '', 'C', '0', '1', 'system:income:view', '#', 'admin', '2022-05-16 11:05:12', '', null, '收入管理菜单');
INSERT INTO `sys_menu` VALUES ('2063', '收入管理查询', '2062', '1', '#', '', 'F', '0', '1', 'system:income:list', '#', 'admin', '2022-05-16 11:05:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('2064', '收入管理新增', '2062', '2', '#', '', 'F', '0', '1', 'system:income:add', '#', 'admin', '2022-05-16 11:05:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('2065', '收入管理修改', '2062', '3', '#', '', 'F', '0', '1', 'system:income:edit', '#', 'admin', '2022-05-16 11:05:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('2066', '收入管理删除', '2062', '4', '#', '', 'F', '0', '1', 'system:income:remove', '#', 'admin', '2022-05-16 11:05:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('2067', '收入管理导出', '2062', '5', '#', '', 'F', '0', '1', 'system:income:export', '#', 'admin', '2022-05-16 11:05:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('2068', '支出管理', '2043', '1', '/system/expend', '', 'C', '0', '1', 'system:expend:view', '#', 'admin', '2022-05-16 15:25:13', '', null, '支出管理菜单');
INSERT INTO `sys_menu` VALUES ('2069', '支出管理查询', '2068', '1', '#', '', 'F', '0', '1', 'system:expend:list', '#', 'admin', '2022-05-16 15:25:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('2070', '支出管理新增', '2068', '2', '#', '', 'F', '0', '1', 'system:expend:add', '#', 'admin', '2022-05-16 15:25:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('2071', '支出管理修改', '2068', '3', '#', '', 'F', '0', '1', 'system:expend:edit', '#', 'admin', '2022-05-16 15:25:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('2072', '支出管理删除', '2068', '4', '#', '', 'F', '0', '1', 'system:expend:remove', '#', 'admin', '2022-05-16 15:25:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('2073', '支出管理导出', '2068', '5', '#', '', 'F', '0', '1', 'system:expend:export', '#', 'admin', '2022-05-16 15:25:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('2074', '营销员管理', '0', '8', '#', 'menuItem', 'M', '0', '1', null, 'fa fa-address-book-o', 'admin', '2022-05-19 15:22:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('2075', '人员管理', '2074', '1', '/system/salesman', '', 'C', '0', '1', 'system:salesman:view', '#', 'admin', '2022-05-19 15:24:24', '', null, '人员管理菜单');
INSERT INTO `sys_menu` VALUES ('2076', '人员管理查询', '2075', '1', '#', '', 'F', '0', '1', 'system:salesman:list', '#', 'admin', '2022-05-19 15:24:24', '', null, '');
INSERT INTO `sys_menu` VALUES ('2077', '人员管理新增', '2075', '2', '#', '', 'F', '0', '1', 'system:salesman:add', '#', 'admin', '2022-05-19 15:24:24', '', null, '');
INSERT INTO `sys_menu` VALUES ('2078', '人员管理修改', '2075', '3', '#', '', 'F', '0', '1', 'system:salesman:edit', '#', 'admin', '2022-05-19 15:24:24', '', null, '');
INSERT INTO `sys_menu` VALUES ('2079', '人员管理删除', '2075', '4', '#', '', 'F', '0', '1', 'system:salesman:remove', '#', 'admin', '2022-05-19 15:24:24', '', null, '');
INSERT INTO `sys_menu` VALUES ('2080', '人员管理导出', '2075', '5', '#', '', 'F', '0', '1', 'system:salesman:export', '#', 'admin', '2022-05-19 15:24:24', '', null, '');
INSERT INTO `sys_menu` VALUES ('2081', '信息管理', '2074', '1', '/system/messqges', '', 'C', '0', '1', 'system:messqges:view', '#', 'admin', '2022-05-20 09:36:20', '', null, '信息管理菜单');
INSERT INTO `sys_menu` VALUES ('2082', '信息管理查询', '2081', '1', '#', '', 'F', '0', '1', 'system:messqges:list', '#', 'admin', '2022-05-20 09:36:20', '', null, '');
INSERT INTO `sys_menu` VALUES ('2083', '信息管理新增', '2081', '2', '#', '', 'F', '0', '1', 'system:messqges:add', '#', 'admin', '2022-05-20 09:36:20', '', null, '');
INSERT INTO `sys_menu` VALUES ('2084', '信息管理修改', '2081', '3', '#', '', 'F', '0', '1', 'system:messqges:edit', '#', 'admin', '2022-05-20 09:36:20', '', null, '');
INSERT INTO `sys_menu` VALUES ('2085', '信息管理删除', '2081', '4', '#', '', 'F', '0', '1', 'system:messqges:remove', '#', 'admin', '2022-05-20 09:36:20', '', null, '');
INSERT INTO `sys_menu` VALUES ('2086', '信息管理导出', '2081', '5', '#', '', 'F', '0', '1', 'system:messqges:export', '#', 'admin', '2022-05-20 09:36:20', '', null, '');
INSERT INTO `sys_menu` VALUES ('2087', '存钱', '2075', '6', '#', 'menuItem', 'F', '0', '1', 'system:hhSalesman:deposit', '#', 'admin', '2022-05-20 10:40:48', '', null, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) DEFAULT NULL COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('1', '温馨提醒：2018-07-01 若依新版本发布啦', '2', '新版本内容', '0', 'admin', '2022-05-05 10:41:35', '', null, '管理员');
INSERT INTO `sys_notice` VALUES ('2', '维护通知：2018-07-01 若依系统凌晨维护', '1', '维护内容', '0', 'admin', '2022-05-05 10:41:35', '', null, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=505 DEFAULT CHARSET=utf8mb4 COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES ('82', '字典类型', '9', 'com.ruoyi.web.controller.system.SysDictTypeController.refreshCache()', 'GET', '1', 'admin', '研发部门', '/system/dict/refreshCache', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-06 15:59:00');
INSERT INTO `sys_oper_log` VALUES ('83', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"insurance_company_person\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-06 16:09:33');
INSERT INTO `sys_oper_log` VALUES ('84', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"4\"],\"tableName\":[\"insurance_company_person\"],\"tableComment\":[\"保险公司人员表\"],\"className\":[\"InsuranceCompanyPerson\"],\"functionAuthor\":[\"wuchunhui\"],\"remark\":[\"保险公司人员表\"],\"columns[0].columnId\":[\"31\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"32\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"创建用户\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"createBy\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"33\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"BETWEEN\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"34\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"更新用户\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"updateBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"35\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"更新时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updateTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"36\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"公司外键ID\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"companyId\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].d', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-06 16:13:05');
INSERT INTO `sys_oper_log` VALUES ('85', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/system/menu/remove/2003', '127.0.0.1', '内网IP', '2003', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-06 16:13:11');
INSERT INTO `sys_oper_log` VALUES ('86', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"4\"],\"tableName\":[\"insurance_company_person\"],\"tableComment\":[\"保险公司人员表\"],\"className\":[\"InsuranceCompanyPerson\"],\"functionAuthor\":[\"wuchunhui\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"31\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"32\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"创建用户\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"createBy\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"33\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"BETWEEN\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"34\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"更新用户\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"updateBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"35\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"更新时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updateTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"36\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"公司外键ID\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"companyId\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-06 16:13:50');
INSERT INTO `sys_oper_log` VALUES ('87', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发部门', '/tool/gen/download/insurance_company_person', '127.0.0.1', '内网IP', '\"insurance_company_person\"', null, '0', null, '2022-05-06 16:13:52');
INSERT INTO `sys_oper_log` VALUES ('88', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发部门', '/tool/gen/download/insurance_company_person', '127.0.0.1', '内网IP', '\"insurance_company_person\"', null, '0', null, '2022-05-06 16:22:53');
INSERT INTO `sys_oper_log` VALUES ('89', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"4\"],\"tableName\":[\"insurance_company_person\"],\"tableComment\":[\"保险公司人员表\"],\"className\":[\"InsuranceCompanyPerson\"],\"functionAuthor\":[\"wuchunhui\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"31\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"32\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"创建用户\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"createBy\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"33\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"BETWEEN\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"34\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"更新用户\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"updateBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"35\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"更新时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updateTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"36\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"公司外键ID\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"companyId\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-06 16:26:38');
INSERT INTO `sys_oper_log` VALUES ('90', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', '研发部门', '/tool/gen/synchDb/insurance_company_person', '127.0.0.1', '内网IP', '\"insurance_company_person\"', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-06 16:29:19');
INSERT INTO `sys_oper_log` VALUES ('91', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"4\"],\"tableName\":[\"insurance_company_person\"],\"tableComment\":[\"保险公司人员表\"],\"className\":[\"InsuranceCompanyPerson\"],\"functionAuthor\":[\"wuchunhui\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"31\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"32\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"createBy\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"33\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"34\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"updateBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"35\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updateTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"36\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"companyId\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"37\"],\"columns[6].sort\":[\"7\"],\"columns[6].columnCommen', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-06 16:30:10');
INSERT INTO `sys_oper_log` VALUES ('92', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"4\"],\"tableName\":[\"insurance_company_person\"],\"tableComment\":[\"保险公司人员表\"],\"className\":[\"InsuranceCompanyPerson\"],\"functionAuthor\":[\"wuchunhui\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"31\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"32\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"创建用户\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"createBy\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"33\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"34\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"更新用户\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"updateBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"35\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"更新时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updateTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"36\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"公司名称\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"companyId\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"37\"],\"columns[6].sort\":[\"7\"],', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-06 16:31:30');
INSERT INTO `sys_oper_log` VALUES ('93', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2022\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"公司人员管理\"],\"url\":[\"/system/person\"],\"target\":[\"menuItem\"],\"perms\":[\"system:person:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-06 16:32:04');
INSERT INTO `sys_oper_log` VALUES ('94', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2022\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"人员管理\"],\"url\":[\"/system/person\"],\"target\":[\"menuItem\"],\"perms\":[\"system:person:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-06 16:32:10');
INSERT INTO `sys_oper_log` VALUES ('95', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"4\"],\"tableName\":[\"insurance_company_person\"],\"tableComment\":[\"保险公司人员表\"],\"className\":[\"InsuranceCompanyPerson\"],\"functionAuthor\":[\"wuchunhui\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"31\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"32\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"创建用户\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"createBy\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"33\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"34\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"更新用户\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"updateBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"35\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"更新时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updateTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"36\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"公司名称\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"companyId\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"select\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"37\"],\"columns[6].sort\":[\"7\"]', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-06 16:32:53');
INSERT INTO `sys_oper_log` VALUES ('96', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"4\"],\"tableName\":[\"insurance_company_person\"],\"tableComment\":[\"保险公司人员表\"],\"className\":[\"InsuranceCompanyPerson\"],\"functionAuthor\":[\"wuchunhui\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"31\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"32\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"创建用户\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"createBy\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"33\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"34\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"更新用户\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"updateBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"35\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"更新时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updateTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"36\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"公司名称\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"companyId\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"select\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"37\"],\"columns[6].sort\":[\"7\"]', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-06 16:34:39');
INSERT INTO `sys_oper_log` VALUES ('97', '保险公司人员管理', '1', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/person/add', '127.0.0.1', '内网IP', '{\"companyId\":[\"1\"],\"personName\":[\"伍春晖\"],\"personPhone\":[\"18665022235\"],\"personSex\":[\"0\"],\"sort\":[\"1\"],\"state\":[\"0\"],\"remark\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 08:46:50');
INSERT INTO `sys_oper_log` VALUES ('98', '保险公司人员管理', '1', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/person/add', '127.0.0.1', '内网IP', '{\"companyId\":[\"7\"],\"personName\":[\"测试1\"],\"personPhone\":[\"18665022235\"],\"personSex\":[\"0\"],\"sort\":[\"2\"],\"state\":[\"0\"],\"remark\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 08:47:09');
INSERT INTO `sys_oper_log` VALUES ('99', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"104\"],\"dictLabel\":[\"正常\"],\"dictValue\":[\"0\"],\"dictType\":[\"data_state\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 08:54:03');
INSERT INTO `sys_oper_log` VALUES ('100', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"105\"],\"dictLabel\":[\"失效\"],\"dictValue\":[\"1\"],\"dictType\":[\"data_state\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"danger\"],\"isDefault\":[\"N\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 08:54:08');
INSERT INTO `sys_oper_log` VALUES ('101', '保险公司人员管理', '1', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/person/add', '127.0.0.1', '内网IP', '{\"companyId\":[\"\"],\"personName\":[\"\"],\"personPhone\":[\"\"],\"personSex\":[\"0\"],\"sort\":[\"\"],\"state\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 08:58:02');
INSERT INTO `sys_oper_log` VALUES ('102', '保险公司人员管理', '3', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.remove()', 'POST', '1', 'admin', '研发部门', '/system/person/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 08:58:05');
INSERT INTO `sys_oper_log` VALUES ('103', '保险公司人员管理', '1', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/person/add', '127.0.0.1', '内网IP', '{\"companyId\":[\"\"],\"personName\":[\"2\"],\"personPhone\":[\"2\"],\"personSex\":[\"0\"],\"sort\":[\"\"],\"state\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 08:58:33');
INSERT INTO `sys_oper_log` VALUES ('104', '保险公司人员管理', '3', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.remove()', 'POST', '1', 'admin', '研发部门', '/system/person/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"4\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 08:58:35');
INSERT INTO `sys_oper_log` VALUES ('105', '保险公司人员管理', '1', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/person/add', '127.0.0.1', '内网IP', '{\"companyId\":[\"2\"],\"personName\":[\"测试3\"],\"personPhone\":[\"18665022236\"],\"personSex\":[\"0\"],\"sort\":[\"3\"],\"state\":[\"0\"],\"remark\":[\"34\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 09:14:27');
INSERT INTO `sys_oper_log` VALUES ('106', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"4\"],\"tableName\":[\"insurance_company_person\"],\"tableComment\":[\"保险公司人员表\"],\"className\":[\"InsuranceCompanyPerson\"],\"functionAuthor\":[\"wuchunhui\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"31\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"32\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"创建用户\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"createBy\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"33\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"34\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"更新用户\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"updateBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"35\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"更新时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updateTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"36\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"公司名称\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"companyId\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"select\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"37\"],\"columns[6].sort\":[\"7\"]', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 09:23:25');
INSERT INTO `sys_oper_log` VALUES ('107', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"4\"],\"tableName\":[\"insurance_company_person\"],\"tableComment\":[\"保险公司人员表\"],\"className\":[\"InsuranceCompanyPerson\"],\"functionAuthor\":[\"wuchunhui\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"31\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"32\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"创建用户\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"createBy\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"33\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"34\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"更新用户\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"updateBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"35\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"更新时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updateTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"36\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"公司名称\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"companyId\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"select\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"37\"],\"columns[6].sort\":[\"7\"]', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 09:24:00');
INSERT INTO `sys_oper_log` VALUES ('108', '保险公司人员管理', '2', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/person/edit', '127.0.0.1', '内网IP', '{\"id\":[\"5\"],\"insuranceCompany.id\":[\"5\"],\"insuranceCompany.companyName\":[\"中国人民财产保险股份有限公司\"],\"personName\":[\"测试3\"],\"personPhone\":[\"18665022236\"],\"personSex\":[\"0\"],\"sort\":[\"3\"],\"state\":[\"1\"],\"remark\":[\"34\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 09:24:20');
INSERT INTO `sys_oper_log` VALUES ('109', '保险公司人员管理', '2', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/person/edit', '127.0.0.1', '内网IP', '{\"id\":[\"5\"],\"insuranceCompany.id\":[\"\"],\"insuranceCompany.companyName\":[\"\"],\"personName\":[\"测试3\"],\"personPhone\":[\"18665022236\"],\"personSex\":[\"0\"],\"sort\":[\"3\"],\"state\":[\"0\"],\"remark\":[\"34\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 09:24:26');
INSERT INTO `sys_oper_log` VALUES ('110', '保险公司人员管理', '2', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/person/edit', '127.0.0.1', '内网IP', '{\"id\":[\"5\"],\"insuranceCompany.id\":[\"\"],\"insuranceCompany.companyName\":[\"\"],\"personName\":[\"测试3\"],\"personPhone\":[\"18665022236\"],\"personSex\":[\"0\"],\"sort\":[\"3\"],\"state\":[\"1\"],\"remark\":[\"34\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 09:25:16');
INSERT INTO `sys_oper_log` VALUES ('111', '保险公司人员管理', '2', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/person/edit', '127.0.0.1', '内网IP', '{\"id\":[\"5\"],\"insuranceCompany.id\":[\"2\"],\"insuranceCompany.companyName\":[\"中国人寿保险股份有限公司\"],\"personName\":[\"测试3\"],\"personPhone\":[\"18665022236\"],\"personSex\":[\"0\"],\"sort\":[\"3\"],\"state\":[\"0\"],\"remark\":[\"34\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 09:27:47');
INSERT INTO `sys_oper_log` VALUES ('112', '保险公司人员管理', '2', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/person/edit', '127.0.0.1', '内网IP', '{\"id\":[\"5\"],\"insuranceCompany.id\":[\"2\"],\"insuranceCompany.companyName\":[\"中国人寿保险股份有限公司\"],\"personName\":[\"测试3\"],\"personPhone\":[\"18665022236\"],\"personSex\":[\"0\"],\"sort\":[\"3\"],\"state\":[\"1\"],\"remark\":[\"34\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 09:27:52');
INSERT INTO `sys_oper_log` VALUES ('113', '保险公司人员管理', '5', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.export()', 'POST', '1', 'admin', '研发部门', '/system/person/export', '127.0.0.1', '内网IP', '{\"companyId\":[\"\"],\"personName\":[\"\"],\"personPhone\":[\"\"],\"personSex\":[\"\"],\"sort\":[\"\"],\"state\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\"msg\":\"410553bf-b89b-4f10-9c71-1985ac48b7a5_保险公司人员管理数据.xlsx\",\"code\":0}', '0', null, '2022-05-07 09:28:18');
INSERT INTO `sys_oper_log` VALUES ('114', '保险公司人员管理', '5', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.export()', 'POST', '1', 'admin', '研发部门', '/system/person/export', '127.0.0.1', '内网IP', '{\"companyId\":[\"\"],\"personName\":[\"\"],\"personPhone\":[\"\"],\"personSex\":[\"\"],\"sort\":[\"\"],\"state\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\"msg\":\"636c788a-ebb6-4bf0-96c7-3fa3cfdedc30_保险公司人员管理数据.xlsx\",\"code\":0}', '0', null, '2022-05-07 09:31:14');
INSERT INTO `sys_oper_log` VALUES ('115', '保险公司人员管理', '3', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.remove()', 'POST', '1', 'admin', '研发部门', '/system/person/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 09:36:56');
INSERT INTO `sys_oper_log` VALUES ('116', '公司管理', '1', 'com.ruoyi.web.controller.system.InsuranceCompanyController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/company/add', '127.0.0.1', '内网IP', '{\"companyName\":[\"中国人民财产保险股份有限公司\"],\"companyType\":[\"1\"],\"sort\":[\"7\"],\"state\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 09:38:49');
INSERT INTO `sys_oper_log` VALUES ('117', '公司管理', '1', 'com.ruoyi.web.controller.system.InsuranceCompanyController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/company/add', '127.0.0.1', '内网IP', '{\"companyName\":[\"中国人寿财产保险股份有限公司\"],\"companyType\":[\"1\"],\"sort\":[\"8\"],\"state\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 09:39:12');
INSERT INTO `sys_oper_log` VALUES ('118', '公司管理', '1', 'com.ruoyi.web.controller.system.InsuranceCompanyController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/company/add', '127.0.0.1', '内网IP', '{\"companyName\":[\"中国人民人寿保险股份有限公司\"],\"companyType\":[\"1\"],\"sort\":[\"9\"],\"state\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 09:39:33');
INSERT INTO `sys_oper_log` VALUES ('119', '公司管理', '2', 'com.ruoyi.web.controller.system.InsuranceCompanyController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/company/edit', '127.0.0.1', '内网IP', '{\"id\":[\"11\"],\"companyName\":[\"中国人寿财产保险股份有限公司\"],\"companyType\":[\"0\"],\"sort\":[\"8\"],\"state\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 09:39:48');
INSERT INTO `sys_oper_log` VALUES ('120', '公司管理', '2', 'com.ruoyi.web.controller.system.InsuranceCompanyController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/company/edit', '127.0.0.1', '内网IP', '{\"id\":[\"12\"],\"companyName\":[\"中国人民人寿保险股份有限公司\"],\"companyType\":[\"0\"],\"sort\":[\"9\"],\"state\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 09:39:53');
INSERT INTO `sys_oper_log` VALUES ('121', '公司管理', '1', 'com.ruoyi.web.controller.system.InsuranceCompanyController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/company/add', '127.0.0.1', '内网IP', '{\"companyName\":[\"测试\"],\"companyType\":[\"1\"],\"sort\":[\"12\"],\"state\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 09:43:15');
INSERT INTO `sys_oper_log` VALUES ('122', '公司管理', '2', 'com.ruoyi.web.controller.system.InsuranceCompanyController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/company/edit', '127.0.0.1', '内网IP', '{\"id\":[\"13\"],\"companyName\":[\"测试\"],\"companyType\":[\"1\"],\"sort\":[\"12\"],\"state\":[\"0\"],\"remark\":[\"多带点\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 09:43:22');
INSERT INTO `sys_oper_log` VALUES ('123', '公司管理', '3', 'com.ruoyi.web.controller.system.InsuranceCompanyController.remove()', 'POST', '1', 'admin', '研发部门', '/system/company/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"13\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 09:43:28');
INSERT INTO `sys_oper_log` VALUES ('124', '保险公司人员管理', '1', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/person/add', '127.0.0.1', '内网IP', '{\"companyId\":[\"12\"],\"personName\":[\"阿发\"],\"personPhone\":[\"18665022236\"],\"personSex\":[\"0\"],\"sort\":[\"1\"],\"state\":[\"0\"],\"remark\":[\"123\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 09:43:56');
INSERT INTO `sys_oper_log` VALUES ('125', '保险公司人员管理', '2', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/person/edit', '127.0.0.1', '内网IP', '{\"id\":[\"6\"],\"insuranceCompany.id\":[\"1\"],\"insuranceCompany.companyName\":[\"中华联合财产保险股份有限公司\"],\"personName\":[\"阿发\"],\"personPhone\":[\"18665022236\"],\"personSex\":[\"0\"],\"sort\":[\"1\"],\"state\":[\"0\"],\"remark\":[\"123\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 09:44:23');
INSERT INTO `sys_oper_log` VALUES ('126', '保险公司人员管理', '2', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/person/edit', '127.0.0.1', '内网IP', '{\"id\":[\"6\"],\"insuranceCompany.id\":[\"12\"],\"insuranceCompany.companyName\":[\"中国人民人寿保险股份有限公司\"],\"personName\":[\"阿发\"],\"personPhone\":[\"18665022238\"],\"personSex\":[\"1\"],\"sort\":[\"99\"],\"state\":[\"1\"],\"remark\":[\"99\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 09:47:36');
INSERT INTO `sys_oper_log` VALUES ('127', '保险公司人员管理', '2', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/person/edit', '127.0.0.1', '内网IP', '{\"id\":[\"6\"],\"insuranceCompany.id\":[\"12\"],\"insuranceCompany.companyName\":[\"中国人民人寿保险股份有限公司\"],\"personName\":[\"阿发2\"],\"personPhone\":[\"18665022238\"],\"personSex\":[\"1\"],\"sort\":[\"99\"],\"state\":[\"1\"],\"remark\":[\"99\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 09:47:46');
INSERT INTO `sys_oper_log` VALUES ('128', '保险公司人员管理', '1', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/person/add', '127.0.0.1', '内网IP', '{\"companyId\":[\"11\"],\"personName\":[\"洒洒水\"],\"personPhone\":[\"18665022235\"],\"personSex\":[\"0\"],\"sort\":[\"2\"],\"state\":[\"0\"],\"remark\":[\"21\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 09:48:34');
INSERT INTO `sys_oper_log` VALUES ('129', '保险公司人员管理', '2', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/person/edit', '127.0.0.1', '内网IP', '{\"id\":[\"7\"],\"insuranceCompany.id\":[\"2\"],\"insuranceCompany.companyName\":[\"中国人寿保险股份有限公司\"],\"personName\":[\"洒洒水\"],\"personPhone\":[\"18665022235\"],\"personSex\":[\"0\"],\"sort\":[\"2\"],\"state\":[\"0\"],\"remark\":[\"21\"]}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot delete or update a parent row: a foreign key constraint fails (`ry`.`insurance_company_person`, CONSTRAINT `insurance_company_person_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `insurance_company` (`id`))\r\n### The error may exist in file [D:\\ideaProjects\\RuoYi-master\\ruoyi-system\\target\\classes\\mapper\\system\\InsuranceCompanyPersonMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.InsuranceCompanyPersonMapper.deleteInsuranceCompanyById-Inline\r\n### The error occurred while setting parameters\r\n### SQL: delete from insurance_company where id = ?\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot delete or update a parent row: a foreign key constraint fails (`ry`.`insurance_company_person`, CONSTRAINT `insurance_company_person_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `insurance_company` (`id`))\n; Cannot delete or update a parent row: a foreign key constraint fails (`ry`.`insurance_company_person`, CONSTRAINT `insurance_company_person_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `insurance_company` (`id`)); nested exception is java.sql.SQLIntegrityConstraintViolationException: Cannot delete or update a parent row: a foreign key constraint fails (`ry`.`insurance_company_person`, CONSTRAINT `insurance_company_person_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `insurance_company` (`id`))', '2022-05-07 09:48:40');
INSERT INTO `sys_oper_log` VALUES ('130', '保险公司人员管理', '2', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/person/edit', '127.0.0.1', '内网IP', '{\"id\":[\"6\"],\"insuranceCompany.id\":[\"9\"],\"insuranceCompany.companyName\":[\"中国太平洋财产保险股份有限公司\"],\"personName\":[\"阿发2\"],\"personPhone\":[\"18665022238\"],\"personSex\":[\"1\"],\"sort\":[\"99\"],\"state\":[\"1\"],\"remark\":[\"99\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 09:48:51');
INSERT INTO `sys_oper_log` VALUES ('131', '公司管理', '1', 'com.ruoyi.web.controller.system.InsuranceCompanyController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/company/add', '127.0.0.1', '内网IP', '{\"companyName\":[\"中国平安财产保险股份有限公司\"],\"companyType\":[\"1\"],\"sort\":[\"10\"],\"state\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 09:51:55');
INSERT INTO `sys_oper_log` VALUES ('132', '保险公司人员管理', '1', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/person/add', '127.0.0.1', '内网IP', '{\"companyId\":[\"14\"],\"personName\":[\"测试\"],\"personPhone\":[\"1\"],\"personSex\":[\"0\"],\"sort\":[\"1\"],\"state\":[\"0\"],\"remark\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 09:52:20');
INSERT INTO `sys_oper_log` VALUES ('133', '保险公司人员管理', '1', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/person/add', '127.0.0.1', '内网IP', '{\"companyId\":[\"12\"],\"personName\":[\"2\"],\"personPhone\":[\"2\"],\"personSex\":[\"0\"],\"sort\":[\"2\"],\"state\":[\"0\"],\"remark\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 09:52:39');
INSERT INTO `sys_oper_log` VALUES ('134', '公司管理', '5', 'com.ruoyi.web.controller.system.InsuranceCompanyController.export()', 'POST', '1', 'admin', '研发部门', '/system/company/export', '127.0.0.1', '内网IP', '{\"companyName\":[\"\"],\"companyType\":[\"\"],\"state\":[\"\"],\"params[beginCreateTime]\":[\"\"],\"params[endCreateTime]\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\"msg\":\"2003b689-078c-4939-8f7b-e8a7935cbd5c_公司管理数据.xlsx\",\"code\":0}', '0', null, '2022-05-07 09:52:58');
INSERT INTO `sys_oper_log` VALUES ('135', '保险公司人员管理', '2', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/person/edit', '127.0.0.1', '内网IP', '{\"id\":[\"9\"],\"insuranceCompany.id\":[\"1\"],\"insuranceCompany.companyName\":[\"中华联合财产保险股份有限公司\"],\"personName\":[\"2\"],\"personPhone\":[\"2\"],\"personSex\":[\"0\"],\"sort\":[\"2\"],\"state\":[\"0\"],\"remark\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 09:53:51');
INSERT INTO `sys_oper_log` VALUES ('136', '保险公司人员管理', '2', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/person/edit', '127.0.0.1', '内网IP', '{\"id\":[\"8\"],\"insuranceCompany.id\":[\"1\"],\"insuranceCompany.companyName\":[\"中华联合财产保险股份有限公司\"],\"personName\":[\"测试\"],\"personPhone\":[\"1\"],\"personSex\":[\"0\"],\"sort\":[\"1\"],\"state\":[\"0\"],\"remark\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 09:56:12');
INSERT INTO `sys_oper_log` VALUES ('137', '保险公司人员管理', '2', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/person/edit', '127.0.0.1', '内网IP', '{\"id\":[\"9\"],\"insuranceCompany.id\":[\"14\"],\"insuranceCompany.companyName\":[\"中国平安财产保险股份有限公司\"],\"personName\":[\"2\"],\"personPhone\":[\"2\"],\"personSex\":[\"0\"],\"sort\":[\"2\"],\"state\":[\"0\"],\"remark\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 09:59:12');
INSERT INTO `sys_oper_log` VALUES ('138', '保险公司人员管理', '2', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/person/edit', '127.0.0.1', '内网IP', '{\"id\":[\"9\"],\"insuranceCompany.id\":[\"2\"],\"insuranceCompany.companyName\":[\"中国人寿保险股份有限公司\"],\"personName\":[\"2\"],\"personPhone\":[\"2\"],\"personSex\":[\"0\"],\"sort\":[\"2\"],\"state\":[\"0\"],\"remark\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 09:59:17');
INSERT INTO `sys_oper_log` VALUES ('139', '保险公司人员管理', '3', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.remove()', 'POST', '1', 'admin', '研发部门', '/system/person/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"8,9\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 09:59:22');
INSERT INTO `sys_oper_log` VALUES ('140', '公司管理', '1', 'com.ruoyi.web.controller.system.InsuranceCompanyController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/company/add', '127.0.0.1', '内网IP', '{\"companyName\":[\"中华联合财产保险股份有限公司\"],\"companyType\":[\"1\"],\"sort\":[\"6\"],\"state\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 10:00:19');
INSERT INTO `sys_oper_log` VALUES ('141', '公司管理', '1', 'com.ruoyi.web.controller.system.InsuranceCompanyController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/company/add', '127.0.0.1', '内网IP', '{\"companyName\":[\"中国大地财产保险股份有限公司\"],\"companyType\":[\"1\"],\"sort\":[\"7\"],\"state\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 10:00:32');
INSERT INTO `sys_oper_log` VALUES ('142', '公司管理', '3', 'com.ruoyi.web.controller.system.InsuranceCompanyController.remove()', 'POST', '1', 'admin', '研发部门', '/system/company/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 10:07:04');
INSERT INTO `sys_oper_log` VALUES ('143', '公司管理', '1', 'com.ruoyi.web.controller.system.InsuranceCompanyController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/company/add', '127.0.0.1', '内网IP', '{\"companyName\":[\"中国太平洋财产保险股份有限公司\"],\"companyType\":[\"1\"],\"sort\":[\"1\"],\"state\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 10:08:17');
INSERT INTO `sys_oper_log` VALUES ('144', '公司管理', '2', 'com.ruoyi.web.controller.system.InsuranceCompanyController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/company/edit', '127.0.0.1', '内网IP', '{\"id\":[\"14\"],\"companyName\":[\"平安财险怀化中心支公司\"],\"companyType\":[\"1\"],\"sort\":[\"10\"],\"state\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 10:11:55');
INSERT INTO `sys_oper_log` VALUES ('145', '公司管理', '2', 'com.ruoyi.web.controller.system.InsuranceCompanyController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/company/edit', '127.0.0.1', '内网IP', '{\"id\":[\"17\"],\"companyName\":[\"太平洋财险怀化中心支公司\"],\"companyType\":[\"1\"],\"sort\":[\"1\"],\"state\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 10:12:08');
INSERT INTO `sys_oper_log` VALUES ('146', '公司管理', '2', 'com.ruoyi.web.controller.system.InsuranceCompanyController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/company/edit', '127.0.0.1', '内网IP', '{\"id\":[\"16\"],\"companyName\":[\"大地财险怀化中心支公司\"],\"companyType\":[\"1\"],\"sort\":[\"7\"],\"state\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 10:12:20');
INSERT INTO `sys_oper_log` VALUES ('147', '公司管理', '2', 'com.ruoyi.web.controller.system.InsuranceCompanyController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/company/edit', '127.0.0.1', '内网IP', '{\"id\":[\"7\"],\"companyName\":[\"吉祥人寿怀化中心支公司\"],\"companyType\":[\"0\"],\"sort\":[\"3\"],\"state\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 10:12:28');
INSERT INTO `sys_oper_log` VALUES ('148', '公司管理', '2', 'com.ruoyi.web.controller.system.InsuranceCompanyController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/company/edit', '127.0.0.1', '内网IP', '{\"id\":[\"12\"],\"companyName\":[\"人民人寿怀化中心支公司\"],\"companyType\":[\"0\"],\"sort\":[\"5\"],\"state\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 10:12:37');
INSERT INTO `sys_oper_log` VALUES ('149', '公司管理', '2', 'com.ruoyi.web.controller.system.InsuranceCompanyController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/company/edit', '127.0.0.1', '内网IP', '{\"id\":[\"11\"],\"companyName\":[\"人寿财险怀化市中心支公司\"],\"companyType\":[\"0\"],\"sort\":[\"4\"],\"state\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 10:13:08');
INSERT INTO `sys_oper_log` VALUES ('150', '公司管理', '2', 'com.ruoyi.web.controller.system.InsuranceCompanyController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/company/edit', '127.0.0.1', '内网IP', '{\"id\":[\"10\"],\"companyName\":[\"人保财险怀化市分公司\"],\"companyType\":[\"1\"],\"sort\":[\"7\"],\"state\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 10:13:25');
INSERT INTO `sys_oper_log` VALUES ('151', '公司管理', '2', 'com.ruoyi.web.controller.system.InsuranceCompanyController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/company/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"companyName\":[\"中国人寿怀化分公司\"],\"companyType\":[\"0\"],\"sort\":[\"2\"],\"state\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 10:13:37');
INSERT INTO `sys_oper_log` VALUES ('152', '公司管理', '2', 'com.ruoyi.web.controller.system.InsuranceCompanyController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/company/edit', '127.0.0.1', '内网IP', '{\"id\":[\"15\"],\"companyName\":[\"中华联合财险怀化中心支公司\"],\"companyType\":[\"1\"],\"sort\":[\"6\"],\"state\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 10:13:46');
INSERT INTO `sys_oper_log` VALUES ('153', '公司管理', '2', 'com.ruoyi.web.controller.system.InsuranceCompanyController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/company/edit', '127.0.0.1', '内网IP', '{\"id\":[\"11\"],\"companyName\":[\"人寿财险怀化市中心支公司\"],\"companyType\":[\"1\"],\"sort\":[\"4\"],\"state\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 10:13:57');
INSERT INTO `sys_oper_log` VALUES ('154', '保险公司人员管理', '1', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/person/add', '127.0.0.1', '内网IP', '{\"companyId\":[\"14\"],\"personName\":[\"汪丽萍\"],\"personPhone\":[\"13874569897\"],\"personSex\":[\"1\"],\"sort\":[\"1\"],\"state\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 10:15:10');
INSERT INTO `sys_oper_log` VALUES ('155', '保险公司人员管理', '1', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/person/add', '127.0.0.1', '内网IP', '{\"companyId\":[\"14\"],\"personName\":[\"曾子伦\"],\"personPhone\":[\"15115196222\"],\"personSex\":[\"0\"],\"sort\":[\"2\"],\"state\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 10:15:55');
INSERT INTO `sys_oper_log` VALUES ('156', '保险公司人员管理', '1', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/person/add', '127.0.0.1', '内网IP', '{\"companyId\":[\"17\"],\"personName\":[\"曾莉\"],\"personPhone\":[\"18574551658\"],\"personSex\":[\"1\"],\"sort\":[\"3\"],\"state\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 10:16:09');
INSERT INTO `sys_oper_log` VALUES ('157', '保险公司人员管理', '1', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/person/add', '127.0.0.1', '内网IP', '{\"companyId\":[\"17\"],\"personName\":[\"李晶心\"],\"personPhone\":[\"13874442271\"],\"personSex\":[\"1\"],\"sort\":[\"4\"],\"state\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 10:16:22');
INSERT INTO `sys_oper_log` VALUES ('158', '保险公司人员管理', '1', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/person/add', '127.0.0.1', '内网IP', '{\"companyId\":[\"17\"],\"personName\":[\"杨经理\"],\"personPhone\":[\"18907458199\\t \"],\"personSex\":[\"0\"],\"sort\":[\"5\"],\"state\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 10:16:50');
INSERT INTO `sys_oper_log` VALUES ('159', '保险公司人员管理', '1', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/person/add', '127.0.0.1', '内网IP', '{\"companyId\":[\"16\"],\"personName\":[\"陈杰飞\"],\"personPhone\":[\"13349612663\"],\"personSex\":[\"0\"],\"sort\":[\"6\"],\"state\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 10:17:05');
INSERT INTO `sys_oper_log` VALUES ('160', '保险公司人员管理', '1', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/person/add', '127.0.0.1', '内网IP', '{\"companyId\":[\"16\"],\"personName\":[\"侯乔英\"],\"personPhone\":[\"15874593011\"],\"personSex\":[\"1\"],\"sort\":[\"7\"],\"state\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 10:17:42');
INSERT INTO `sys_oper_log` VALUES ('161', '保险公司人员管理', '1', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/person/add', '127.0.0.1', '内网IP', '{\"companyId\":[\"16\"],\"personName\":[\"熊志远\"],\"personPhone\":[\"18244846056\"],\"personSex\":[\"0\"],\"sort\":[\"8\"],\"state\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 10:17:56');
INSERT INTO `sys_oper_log` VALUES ('162', '保险公司人员管理', '1', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/person/add', '127.0.0.1', '内网IP', '{\"companyId\":[\"7\"],\"personName\":[\"张致金\"],\"personPhone\":[\"19118504631\"],\"personSex\":[\"0\"],\"sort\":[\"9\"],\"state\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 10:18:08');
INSERT INTO `sys_oper_log` VALUES ('163', '保险公司人员管理', '1', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/person/add', '127.0.0.1', '内网IP', '{\"companyId\":[\"7\"],\"personName\":[\"向启花\"],\"personPhone\":[\"13319651058\"],\"personSex\":[\"1\"],\"sort\":[\"10\"],\"state\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 10:18:25');
INSERT INTO `sys_oper_log` VALUES ('164', '保险公司人员管理', '1', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/person/add', '127.0.0.1', '内网IP', '{\"companyId\":[\"7\"],\"personName\":[\"补建琪\"],\"personPhone\":[\"18007459077\"],\"personSex\":[\"1\"],\"sort\":[\"11\"],\"state\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 10:19:13');
INSERT INTO `sys_oper_log` VALUES ('165', '保险公司人员管理', '1', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/person/add', '127.0.0.1', '内网IP', '{\"companyId\":[\"12\"],\"personName\":[\"瞿水英\\t\"],\"personPhone\":[\"19152156768\"],\"personSex\":[\"1\"],\"sort\":[\"12\"],\"state\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 10:19:36');
INSERT INTO `sys_oper_log` VALUES ('166', '保险公司人员管理', '1', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/person/add', '127.0.0.1', '内网IP', '{\"companyId\":[\"12\"],\"personName\":[\"吴丽娇\"],\"personPhone\":[\"17670408800\"],\"personSex\":[\"1\"],\"sort\":[\"13\"],\"state\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 10:19:50');
INSERT INTO `sys_oper_log` VALUES ('167', '保险公司人员管理', '1', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/person/add', '127.0.0.1', '内网IP', '{\"companyId\":[\"11\"],\"personName\":[\"赵婷\"],\"personPhone\":[\"18897475810\"],\"personSex\":[\"1\"],\"sort\":[\"14\"],\"state\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 10:20:10');
INSERT INTO `sys_oper_log` VALUES ('168', '保险公司人员管理', '1', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/person/add', '127.0.0.1', '内网IP', '{\"companyId\":[\"10\"],\"personName\":[\"石卓\"],\"personPhone\":[\"18774566271\"],\"personSex\":[\"0\"],\"sort\":[\"15\"],\"state\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 10:20:24');
INSERT INTO `sys_oper_log` VALUES ('169', '保险公司人员管理', '1', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/person/add', '127.0.0.1', '内网IP', '{\"companyId\":[\"10\"],\"personName\":[\"李绪文\"],\"personPhone\":[\"18574576925\"],\"personSex\":[\"0\"],\"sort\":[\"16\"],\"state\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 10:20:37');
INSERT INTO `sys_oper_log` VALUES ('170', '保险公司人员管理', '1', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/person/add', '127.0.0.1', '内网IP', '{\"companyId\":[\"2\"],\"personName\":[\"王星懿\"],\"personPhone\":[\"15974049176\"],\"personSex\":[\"1\"],\"sort\":[\"17\"],\"state\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 10:20:57');
INSERT INTO `sys_oper_log` VALUES ('171', '保险公司人员管理', '1', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/person/add', '127.0.0.1', '内网IP', '{\"companyId\":[\"2\"],\"personName\":[\"何景明\"],\"personPhone\":[\"15874564686\"],\"personSex\":[\"0\"],\"sort\":[\"18\"],\"state\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 10:21:10');
INSERT INTO `sys_oper_log` VALUES ('172', '保险公司人员管理', '1', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/person/add', '127.0.0.1', '内网IP', '{\"companyId\":[\"2\"],\"personName\":[\"黄立新\"],\"personPhone\":[\"15574551081\"],\"personSex\":[\"0\"],\"sort\":[\"19\"],\"state\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 10:21:24');
INSERT INTO `sys_oper_log` VALUES ('173', '保险公司人员管理', '1', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/person/add', '127.0.0.1', '内网IP', '{\"companyId\":[\"2\"],\"personName\":[\"瞿丹\"],\"personPhone\":[\"19976849515\"],\"personSex\":[\"1\"],\"sort\":[\"20\"],\"state\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 10:21:41');
INSERT INTO `sys_oper_log` VALUES ('174', '保险公司人员管理', '1', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/person/add', '127.0.0.1', '内网IP', '{\"companyId\":[\"2\"],\"personName\":[\"周丽\"],\"personPhone\":[\"15115177513\"],\"personSex\":[\"1\"],\"sort\":[\"21\"],\"state\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 10:21:59');
INSERT INTO `sys_oper_log` VALUES ('175', '保险公司人员管理', '1', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/person/add', '127.0.0.1', '内网IP', '{\"companyId\":[\"15\"],\"personName\":[\"金叶\"],\"personPhone\":[\"15574519389\"],\"personSex\":[\"0\"],\"sort\":[\"22\"],\"state\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 10:22:13');
INSERT INTO `sys_oper_log` VALUES ('176', '保险公司人员管理', '1', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/person/add', '127.0.0.1', '内网IP', '{\"companyId\":[\"15\"],\"personName\":[\"周鑫荣\"],\"personPhone\":[\"15717457876\"],\"personSex\":[\"0\"],\"sort\":[\"23\"],\"state\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 10:22:24');
INSERT INTO `sys_oper_log` VALUES ('177', '保险公司人员管理', '5', 'com.ruoyi.web.controller.system.InsuranceCompanyPersonController.export()', 'POST', '1', 'admin', '研发部门', '/system/person/export', '127.0.0.1', '内网IP', '{\"companyId\":[\"\"],\"personName\":[\"\"],\"personPhone\":[\"\"],\"personSex\":[\"\"],\"sort\":[\"\"],\"state\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\"msg\":\"9360bfc0-0a0d-46bc-afcb-3699d9b8c384_保险公司人员管理数据.xlsx\",\"code\":0}', '0', null, '2022-05-07 10:22:36');
INSERT INTO `sys_oper_log` VALUES ('178', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"理赔管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"6\"],\"icon\":[\"fa fa-handshake-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 10:48:12');
INSERT INTO `sys_oper_log` VALUES ('179', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"理赔进展状态\"],\"dictType\":[\"evolve_state\"],\"status\":[\"0\"],\"remark\":[\"理赔进展状态\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 11:19:31');
INSERT INTO `sys_oper_log` VALUES ('180', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"待分发\"],\"dictValue\":[\"1\"],\"dictType\":[\"evolve_state\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 11:20:10');
INSERT INTO `sys_oper_log` VALUES ('181', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"108\"],\"dictLabel\":[\"待分发\"],\"dictValue\":[\"1\"],\"dictType\":[\"evolve_state\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"warning\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 11:20:18');
INSERT INTO `sys_oper_log` VALUES ('182', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"已分发\"],\"dictValue\":[\"2\"],\"dictType\":[\"evolve_state\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 11:20:35');
INSERT INTO `sys_oper_log` VALUES ('183', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"109\"],\"dictLabel\":[\"进展中\"],\"dictValue\":[\"2\"],\"dictType\":[\"evolve_state\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 11:20:50');
INSERT INTO `sys_oper_log` VALUES ('184', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"109\"],\"dictLabel\":[\"进展中\"],\"dictValue\":[\"2\"],\"dictType\":[\"evolve_state\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 11:21:02');
INSERT INTO `sys_oper_log` VALUES ('185', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"109\"],\"dictLabel\":[\"进展中\"],\"dictValue\":[\"2\"],\"dictType\":[\"evolve_state\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"danger\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 11:21:07');
INSERT INTO `sys_oper_log` VALUES ('186', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"已完成\"],\"dictValue\":[\"3\"],\"dictType\":[\"evolve_state\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 11:21:18');
INSERT INTO `sys_oper_log` VALUES ('187', '个人信息', '2', 'com.ruoyi.web.controller.system.SysProfileController.updateAvatar()', 'POST', '1', 'admin', '研发部门', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 12:10:05');
INSERT INTO `sys_oper_log` VALUES ('188', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"claim\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 13:54:24');
INSERT INTO `sys_oper_log` VALUES ('189', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"5\"],\"tableName\":[\"claim\"],\"tableComment\":[\"理赔表\"],\"className\":[\"Claim\"],\"functionAuthor\":[\"wuchunhui\"],\"remark\":[\"理赔表\"],\"columns[0].columnId\":[\"43\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"44\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"创建用户\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"createBy\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"45\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"46\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"更新用户\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"updateBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"47\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"更新时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updateTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"48\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"排序\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"sort\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"49\"],\"columns[6].sort\":[\"7\"],\"columns[6].columnComment\":[\"状态\"],\"columns[6', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 13:57:55');
INSERT INTO `sys_oper_log` VALUES ('190', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"5\"],\"tableName\":[\"claim\"],\"tableComment\":[\"理赔表\"],\"className\":[\"Claim\"],\"functionAuthor\":[\"wuchunhui\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"43\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"44\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"创建用户\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"createBy\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"45\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"BETWEEN\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"46\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"更新用户\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"updateBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"47\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"更新时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updateTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"48\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"排序\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"sort\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"49\"],\"columns[6].sort\":[\"7\"],\"columns[6].columnComment\":[\"状态\"],\"column', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 14:00:36');
INSERT INTO `sys_oper_log` VALUES ('191', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"理赔类型\"],\"dictType\":[\"claim_type\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 14:01:11');
INSERT INTO `sys_oper_log` VALUES ('192', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"学生平安保险\"],\"dictValue\":[\"1\"],\"dictType\":[\"claim_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 14:01:26');
INSERT INTO `sys_oper_log` VALUES ('193', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"交通意外、重大疾病险\"],\"dictValue\":[\"2\"],\"dictType\":[\"claim_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"default\"],\"isDefault\":[\"N\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 14:01:52');
INSERT INTO `sys_oper_log` VALUES ('194', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"监护人责任险\"],\"dictValue\":[\"3\"],\"dictType\":[\"claim_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"default\"],\"isDefault\":[\"N\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 14:02:13');
INSERT INTO `sys_oper_log` VALUES ('195', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"5\"],\"tableName\":[\"claim\"],\"tableComment\":[\"理赔表\"],\"className\":[\"Claim\"],\"functionAuthor\":[\"wuchunhui\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"43\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"44\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"创建用户\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"createBy\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"45\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"BETWEEN\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"46\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"更新用户\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"updateBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"47\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"更新时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updateTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"48\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"排序\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"sort\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"49\"],\"columns[6].sort\":[\"7\"],\"columns[6].columnComment\":[\"状态\"],\"column', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 14:02:44');
INSERT INTO `sys_oper_log` VALUES ('196', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发部门', '/tool/gen/download/claim', '127.0.0.1', '内网IP', '\"claim\"', null, '0', null, '2022-05-07 14:02:47');
INSERT INTO `sys_oper_log` VALUES ('197', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发部门', '/tool/gen/download/claim', '127.0.0.1', '内网IP', '\"claim\"', null, '0', null, '2022-05-07 14:03:09');
INSERT INTO `sys_oper_log` VALUES ('198', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2029\"],\"parentId\":[\"2028\"],\"menuType\":[\"C\"],\"menuName\":[\"理赔信息\"],\"url\":[\"/system/claim\"],\"target\":[\"menuItem\"],\"perms\":[\"system:claim:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 14:09:40');
INSERT INTO `sys_oper_log` VALUES ('199', '信息管理', '1', 'com.ruoyi.web.controller.system.ClaimController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/claim/add', '127.0.0.1', '内网IP', '{\"sort\":[\"1\"],\"state\":[\"0\"],\"remark\":[\"1\"],\"cityId\":[\"440\"],\"cityName\":[\"怀化市分公司\"],\"areaId\":[\"420\"],\"areaName\":[\"鹤城区\"],\"schoolId\":[\"44\"],\"schoolName\":[\"怀化三中\"],\"schoolGrade\":[\"2\"],\"schoolGradeName\":[\"初一\"],\"schoolClass\":[\"23\"],\"schoolClassName\":[\"2001班\"],\"stuCard\":[\"431221199202011010\"],\"stuName\":[\"伍春晖\"],\"stuSex\":[\"0\"],\"parentsName\":[\"伍春晖\"],\"parentsCard\":[\"431221199202011010\"],\"parentsCall\":[\"18665022235\"],\"payMoney\":[\"70\"],\"paySerial\":[\"2021564676164861546135484\"],\"claimType\":[\"1\"],\"claimMoney\":[\"\"],\"claimPersonId\":[\"\"],\"evolevState\":[\"\"],\"finishTime\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 14:22:54');
INSERT INTO `sys_oper_log` VALUES ('200', '信息管理', '2', 'com.ruoyi.web.controller.system.ClaimController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/claim/edit', '127.0.0.1', '内网IP', '{\"id\":[\"14\"],\"sort\":[\"1\"],\"state\":[\"0\"],\"remark\":[\"1\"],\"cityId\":[\"440\"],\"cityName\":[\"怀化市分公司\"],\"areaId\":[\"420\"],\"areaName\":[\"鹤城区\"],\"schoolId\":[\"44\"],\"schoolName\":[\"怀化三中\"],\"schoolGrade\":[\"2\"],\"schoolGradeName\":[\"初一\"],\"schoolClass\":[\"23\"],\"schoolClassName\":[\"2001班\"],\"stuCard\":[\"431221199202011010\"],\"stuName\":[\"伍春晖\"],\"stuSex\":[\"0\"],\"parentsName\":[\"伍春晖\"],\"parentsCard\":[\"431221199202011010\"],\"parentsCall\":[\"18665022235\"],\"payMoney\":[\"70\"],\"paySerial\":[\"202203108190075303500120064\"],\"claimType\":[\"1\"],\"claimMoney\":[\"\"],\"claimPersonId\":[\"\"],\"evolevState\":[\"\"],\"finishTime\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 14:23:25');
INSERT INTO `sys_oper_log` VALUES ('201', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"暂无\"],\"dictValue\":[\"0\"],\"dictType\":[\"claim_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"0\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 14:26:41');
INSERT INTO `sys_oper_log` VALUES ('202', '信息管理', '2', 'com.ruoyi.web.controller.system.ClaimController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/claim/edit', '127.0.0.1', '内网IP', '{\"id\":[\"14\"],\"sort\":[\"1\"],\"state\":[\"0\"],\"remark\":[\"1\"],\"cityId\":[\"440\"],\"cityName\":[\"怀化市分公司\"],\"areaId\":[\"420\"],\"areaName\":[\"鹤城区\"],\"schoolId\":[\"44\"],\"schoolName\":[\"怀化三中\"],\"schoolGrade\":[\"2\"],\"schoolGradeName\":[\"初一\"],\"schoolClass\":[\"23\"],\"schoolClassName\":[\"2001班\"],\"stuCard\":[\"431221199202011010\"],\"stuName\":[\"伍春晖\"],\"stuSex\":[\"0\"],\"parentsName\":[\"伍春晖\"],\"parentsCard\":[\"431221199202011010\"],\"parentsCall\":[\"18665022235\"],\"payMoney\":[\"70\"],\"paySerial\":[\"202203108190075303500120064\"],\"claimType\":[\"0\"],\"claimMoney\":[\"\"],\"claimPersonId\":[\"\"],\"evolevState\":[\"\"],\"finishTime\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 14:26:59');
INSERT INTO `sys_oper_log` VALUES ('203', '信息管理', '2', 'com.ruoyi.web.controller.system.ClaimController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/claim/edit', '127.0.0.1', '内网IP', '{\"id\":[\"14\"],\"companyId\":[\"2\"],\"claimPersonId\":[\"29\"],\"evolevState\":[\"2\"],\"remark\":[\"已发送给保险公司理赔专员\"],\"areaName\":[\"鹤城区\"],\"schoolName\":[\"怀化三中\"],\"schoolGradeName\":[\"初一\"],\"schoolClassName\":[\"2001班\"],\"stuCard\":[\"431221199202011010\"],\"stuName\":[\"伍春晖\"],\"stuSex\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 15:13:49');
INSERT INTO `sys_oper_log` VALUES ('204', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"5\"],\"tableName\":[\"claim\"],\"tableComment\":[\"理赔表\"],\"className\":[\"Claim\"],\"functionAuthor\":[\"wuchunhui\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"43\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"44\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"创建用户\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"createBy\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"45\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"BETWEEN\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"46\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"更新用户\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"updateBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"47\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"更新时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updateTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"48\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"排序\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"sort\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"49\"],\"columns[6].sort\":[\"7\"],\"columns[6].columnComment\":[\"状态\"],\"column', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 15:51:44');
INSERT INTO `sys_oper_log` VALUES ('205', '信息管理', '2', 'com.ruoyi.web.controller.system.ClaimController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/claim/edit', '127.0.0.1', '内网IP', '{\"id\":[\"14\"],\"state\":[\"0\"],\"remark\":[\"已发送给保险公司理赔专员\"],\"cityName\":[\"怀化市分公司\"],\"areaName\":[\"鹤城区\"],\"schoolName\":[\"怀化三中\"],\"schoolGradeName\":[\"初一\"],\"schoolClassName\":[\"2001班\"],\"stuCard\":[\"431221199202011010\"],\"stuName\":[\"伍春晖\"],\"stuSex\":[\"0\"],\"parentsName\":[\"伍春晖\"],\"parentsCard\":[\"431221199202011010\"],\"parentsCall\":[\"18665022235\"],\"payMoney\":[\"70\"],\"paySerial\":[\"202203108190075303500120064\"],\"claimType\":[\"0\"],\"claimMoney\":[\"\"],\"claimPersonId\":[\"\"],\"evolevState\":[\"2\"],\"finishTime\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 16:08:14');
INSERT INTO `sys_oper_log` VALUES ('206', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2029\"],\"menuType\":[\"F\"],\"menuName\":[\"详情信息\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"system:claim:detail\"],\"orderNum\":[\"6\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-07 16:19:31');
INSERT INTO `sys_oper_log` VALUES ('207', '信息管理', '2', 'com.ruoyi.web.controller.system.ClaimController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/claim/edit', '127.0.0.1', '内网IP', '{\"id\":[\"14\"],\"insuranceCompanyPerson.insuranceCompany.id\":[\"2\"],\"insuranceCompanyPerson.insuranceCompany.companyName\":[\"中国人寿怀化分公司\"],\"insuranceCompanyPerson.id\":[\"29\"],\"insuranceCompanyPerson.personName\":[\"瞿丹\"],\"evolevState\":[\"1\"],\"remark\":[\"已发送给保险公司理赔专员\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-09 09:40:41');
INSERT INTO `sys_oper_log` VALUES ('208', '信息管理', '2', 'com.ruoyi.web.controller.system.ClaimController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/claim/edit', '127.0.0.1', '内网IP', '{\"id\":[\"14\"],\"insuranceCompanyPerson.insuranceCompany.id\":[\"2\"],\"insuranceCompanyPerson.insuranceCompany.companyName\":[\"中国人寿怀化分公司\"],\"insuranceCompanyPerson.id\":[\"29\"],\"insuranceCompanyPerson.personName\":[\"瞿丹\"],\"evolevState\":[\"2\"],\"remark\":[\"已发送给保险公司理赔专员\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-09 09:40:45');
INSERT INTO `sys_oper_log` VALUES ('209', '信息管理完成', '2', 'com.ruoyi.web.controller.system.ClaimController.finishClaim()', 'POST', '1', 'admin', '研发部门', '/system/claim/finishClaim', '127.0.0.1', '内网IP', '{\"id\":[\"14\"],\"insuranceCompanyPerson.insuranceCompany.id\":[\"2\"],\"insuranceCompanyPerson.id\":[\"29\"],\"evolevState\":[\"3\"],\"claimType\":[\"1\"],\"claimMoney\":[\"2000\"],\"remark\":[\"已发送给保险公司理赔专员，已经完成理赔流程\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-09 09:49:46');
INSERT INTO `sys_oper_log` VALUES ('210', '信息管理', '5', 'com.ruoyi.web.controller.system.ClaimController.export()', 'POST', '1', 'admin', '研发部门', '/system/claim/export', '127.0.0.1', '内网IP', '{\"areaName\":[\"\"],\"schoolName\":[\"\"],\"stuName\":[\"\"],\"stuCard\":[\"\"],\"paySerial\":[\"\"],\"state\":[\"\"],\"claimType\":[\"\"],\"evolevState\":[\"\"],\"params[beginFinishTime]\":[\"\"],\"params[endFinishTime]\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\"msg\":\"32fdc52e-e388-4736-8049-26cc61e51444_信息管理数据.xlsx\",\"code\":0}', '0', null, '2022-05-09 09:57:54');
INSERT INTO `sys_oper_log` VALUES ('211', '信息管理', '5', 'com.ruoyi.web.controller.system.ClaimController.export()', 'POST', '1', 'admin', '研发部门', '/system/claim/export', '127.0.0.1', '内网IP', '{\"areaName\":[\"\"],\"schoolName\":[\"\"],\"stuName\":[\"\"],\"stuCard\":[\"\"],\"paySerial\":[\"\"],\"state\":[\"\"],\"claimType\":[\"\"],\"evolevState\":[\"\"],\"params[beginFinishTime]\":[\"\"],\"params[endFinishTime]\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\"msg\":\"88298558-6638-4b91-b98a-8649d40fda43_信息管理数据.xlsx\",\"code\":0}', '0', null, '2022-05-09 10:05:15');
INSERT INTO `sys_oper_log` VALUES ('212', '信息管理', '5', 'com.ruoyi.web.controller.system.ClaimController.export()', 'POST', '1', 'admin', '研发部门', '/system/claim/export', '127.0.0.1', '内网IP', '{\"areaName\":[\"\"],\"schoolName\":[\"\"],\"stuName\":[\"\"],\"stuCard\":[\"\"],\"paySerial\":[\"\"],\"state\":[\"\"],\"claimType\":[\"\"],\"evolevState\":[\"\"],\"params[beginFinishTime]\":[\"\"],\"params[endFinishTime]\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\"msg\":\"247e70fc-92bc-4687-a2e0-670d389978e4_信息管理数据.xlsx\",\"code\":0}', '0', null, '2022-05-09 10:10:01');
INSERT INTO `sys_oper_log` VALUES ('213', '信息管理', '5', 'com.ruoyi.web.controller.system.ClaimController.export()', 'POST', '1', 'admin', '研发部门', '/system/claim/export', '127.0.0.1', '内网IP', '{\"areaName\":[\"\"],\"schoolName\":[\"\"],\"stuName\":[\"\"],\"stuCard\":[\"\"],\"paySerial\":[\"\"],\"state\":[\"\"],\"claimType\":[\"\"],\"evolevState\":[\"\"],\"params[beginFinishTime]\":[\"\"],\"params[endFinishTime]\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\"msg\":\"9c7ab21c-8fc3-469a-b836-d00514198f15_信息管理数据.xlsx\",\"code\":0}', '0', null, '2022-05-09 10:11:59');
INSERT INTO `sys_oper_log` VALUES ('214', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"5\"],\"tableName\":[\"claim\"],\"tableComment\":[\"理赔表\"],\"className\":[\"Claim\"],\"functionAuthor\":[\"wuchunhui\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"43\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"44\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"创建用户\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"createBy\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"45\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"BETWEEN\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"46\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"更新用户\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"updateBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"47\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"更新时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updateTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"48\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"排序\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"sort\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"49\"],\"columns[6].sort\":[\"7\"],\"columns[6].columnComment\":[\"状态\"],\"column', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-09 10:26:20');
INSERT INTO `sys_oper_log` VALUES ('215', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"5\"],\"tableName\":[\"claim\"],\"tableComment\":[\"理赔表\"],\"className\":[\"Claim\"],\"functionAuthor\":[\"wuchunhui\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"43\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"44\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"创建用户\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"createBy\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"45\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"BETWEEN\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"46\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"更新用户\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"updateBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"47\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"更新时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updateTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"48\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"排序\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"sort\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"49\"],\"columns[6].sort\":[\"7\"],\"columns[6].columnComment\":[\"状态\"],\"column', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-09 10:26:40');
INSERT INTO `sys_oper_log` VALUES ('216', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"5\"],\"tableName\":[\"claim\"],\"tableComment\":[\"理赔表\"],\"className\":[\"Claim\"],\"functionAuthor\":[\"wuchunhui\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"43\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"44\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"创建用户\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"createBy\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"45\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"BETWEEN\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"46\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"更新用户\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"updateBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"47\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"更新时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updateTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"48\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"排序\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"sort\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"49\"],\"columns[6].sort\":[\"7\"],\"columns[6].columnComment\":[\"状态\"],\"column', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-09 10:27:53');
INSERT INTO `sys_oper_log` VALUES ('217', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"5\"],\"tableName\":[\"claim\"],\"tableComment\":[\"理赔表\"],\"className\":[\"Claim\"],\"functionAuthor\":[\"wuchunhui\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"43\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"44\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"创建用户\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"createBy\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"45\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"BETWEEN\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"46\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"更新用户\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"updateBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"47\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"更新时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updateTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"48\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"排序\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"sort\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"49\"],\"columns[6].sort\":[\"7\"],\"columns[6].columnComment\":[\"状态\"],\"column', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-09 10:29:09');
INSERT INTO `sys_oper_log` VALUES ('218', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"5\"],\"tableName\":[\"claim\"],\"tableComment\":[\"理赔表\"],\"className\":[\"Claim\"],\"functionAuthor\":[\"wuchunhui\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"43\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"44\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"创建用户\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"createBy\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"45\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"BETWEEN\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"46\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"更新用户\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"updateBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"47\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"更新时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updateTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"48\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"排序\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"sort\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"49\"],\"columns[6].sort\":[\"7\"],\"columns[6].columnComment\":[\"状态\"],\"column', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-09 10:29:16');
INSERT INTO `sys_oper_log` VALUES ('219', '信息管理', '2', 'com.ruoyi.web.controller.system.ClaimController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/claim/edit', '127.0.0.1', '内网IP', '{\"id\":[\"14\"],\"cityName\":[\"怀化市分公司\"],\"areaName\":[\"鹤城区\"],\"schoolName\":[\"怀化三中\"],\"schoolGradeName\":[\"初一\"],\"schoolClassName\":[\"2001班\"],\"stuCard\":[\"431221199202011010\"],\"stuName\":[\"伍春晖\"],\"stuSex\":[\"0\"],\"parentsName\":[\"伍春晖\"],\"parentsCard\":[\"431221199202011010\"],\"parentsCall\":[\"18665022235\"],\"payMoney\":[\"70\"],\"claimType\":[\"1\"],\"claimMoney\":[\"2000\"],\"insuranceCompanyPerson.insuranceCompany.id\":[\"15\"],\"insuranceCompanyPerson.insuranceCompany.companyName\":[\"中华联合财险怀化中心支公司\"],\"insuranceCompanyPerson.id\":[\"32\"],\"insuranceCompanyPerson.personName\":[\"周鑫荣\"],\"evolevState\":[\"3\"],\"finishTime\":[\"2022-05-09\"],\"state\":[\"0\"],\"remark\":[\"已发送给保险公司理赔专员，已经完成理赔流程\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-09 10:39:15');
INSERT INTO `sys_oper_log` VALUES ('220', '信息管理', '2', 'com.ruoyi.web.controller.system.ClaimController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/claim/edit', '127.0.0.1', '内网IP', '{\"id\":[\"14\"],\"cityName\":[\"怀化市分公司\"],\"areaName\":[\"鹤城区\"],\"schoolName\":[\"怀化三中\"],\"schoolGradeName\":[\"初一\"],\"schoolClassName\":[\"2001班\"],\"stuCard\":[\"431221199202011010\"],\"stuName\":[\"伍春晖\"],\"stuSex\":[\"0\"],\"parentsName\":[\"伍春晖\"],\"parentsCard\":[\"431221199202011010\"],\"parentsCall\":[\"18665022235\"],\"payMoney\":[\"70\"],\"claimType\":[\"1\"],\"claimMoney\":[\"2000\"],\"insuranceCompanyPerson.insuranceCompany.id\":[\"14\"],\"insuranceCompanyPerson.insuranceCompany.companyName\":[\"平安财险怀化中心支公司\"],\"insuranceCompanyPerson.id\":[\"11\"],\"insuranceCompanyPerson.personName\":[\"曾子伦\"],\"evolevState\":[\"3\"],\"finishTime\":[\"2022-05-09\"],\"state\":[\"0\"],\"remark\":[\"已发送给保险公司理赔专员，已经完成理赔流程\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-09 10:40:26');
INSERT INTO `sys_oper_log` VALUES ('221', '信息管理', '3', 'com.ruoyi.web.controller.system.ClaimController.remove()', 'POST', '1', 'admin', '研发部门', '/system/claim/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"14\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-09 10:42:28');
INSERT INTO `sys_oper_log` VALUES ('222', '信息管理', '1', 'com.ruoyi.web.controller.system.ClaimController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/claim/add', '127.0.0.1', '内网IP', '{\"cityName\":[\"怀化分公司\"],\"areaName\":[\"鹤城区\"],\"schoolName\":[\"锦溪小学\"],\"schoolGradeName\":[\"一年级\"],\"schoolClassName\":[\"101班\"],\"stuCard\":[\"431221199202011010\"],\"stuName\":[\"我存货\"],\"stuSex\":[\"0\"],\"parentsName\":[\"伍小龙\"],\"parentsCard\":[\"431221199202011010\"],\"parentsCall\":[\"18665022235\"],\"payMoney\":[\"70\"],\"paySerial\":[\"4312211992020110104312211\"],\"state\":[\"0\"],\"remark\":[\"发生\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-09 10:43:14');
INSERT INTO `sys_oper_log` VALUES ('223', '信息管理', '2', 'com.ruoyi.web.controller.system.ClaimController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/claim/edit', '127.0.0.1', '内网IP', '{\"id\":[\"15\"],\"cityName\":[\"怀化分公司\"],\"areaName\":[\"鹤城区\"],\"schoolName\":[\"锦溪小学\"],\"schoolGradeName\":[\"一年级\"],\"schoolClassName\":[\"101班\"],\"stuCard\":[\"431221199202011010\"],\"stuName\":[\"我存货\"],\"stuSex\":[\"0\"],\"parentsName\":[\"伍小龙\"],\"parentsCard\":[\"431221199202011010\"],\"parentsCall\":[\"18665022235\"],\"payMoney\":[\"70\"],\"claimType\":[\"0\"],\"claimMoney\":[\"\"],\"insuranceCompanyPerson.insuranceCompany.id\":[\"\"],\"insuranceCompanyPerson.insuranceCompany.companyName\":[\"\"],\"insuranceCompanyPerson.id\":[\"\"],\"insuranceCompanyPerson.personName\":[\"\"],\"evolevState\":[\"1\"],\"finishTime\":[\"\"],\"state\":[\"0\"],\"remark\":[\"发生\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-09 10:46:37');
INSERT INTO `sys_oper_log` VALUES ('224', '信息管理', '2', 'com.ruoyi.web.controller.system.ClaimController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/claim/edit', '127.0.0.1', '内网IP', '{\"id\":[\"15\"],\"insuranceCompanyPerson.insuranceCompany.id\":[\"2\"],\"insuranceCompanyPerson.insuranceCompany.companyName\":[\"中国人寿怀化分公司\"],\"insuranceCompanyPerson.id\":[\"27\"],\"insuranceCompanyPerson.personName\":[\"何景明\"],\"evolevState\":[\"1\"],\"remark\":[\"发生\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-09 10:46:50');
INSERT INTO `sys_oper_log` VALUES ('225', '信息管理', '2', 'com.ruoyi.web.controller.system.ClaimController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/claim/edit', '127.0.0.1', '内网IP', '{\"id\":[\"15\"],\"insuranceCompanyPerson.insuranceCompany.id\":[\"2\"],\"insuranceCompanyPerson.insuranceCompany.companyName\":[\"中国人寿怀化分公司\"],\"insuranceCompanyPerson.id\":[\"26\"],\"insuranceCompanyPerson.personName\":[\"王星懿\"],\"evolevState\":[\"1\"],\"remark\":[\"发生\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-09 10:57:07');
INSERT INTO `sys_oper_log` VALUES ('226', '信息管理', '2', 'com.ruoyi.web.controller.system.ClaimController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/claim/edit', '127.0.0.1', '内网IP', '{\"id\":[\"15\"],\"insuranceCompanyPerson.insuranceCompany.id\":[\"7\"],\"insuranceCompanyPerson.insuranceCompany.companyName\":[\"吉祥人寿怀化中心支公司\"],\"insuranceCompanyPerson.id\":[\"18\"],\"insuranceCompanyPerson.personName\":[\"张致金\"],\"evolevState\":[\"1\"],\"remark\":[\"发生\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-09 10:57:57');
INSERT INTO `sys_oper_log` VALUES ('227', '信息管理', '2', 'com.ruoyi.web.controller.system.ClaimController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/claim/edit', '127.0.0.1', '内网IP', '{\"id\":[\"15\"],\"insuranceCompanyPerson.insuranceCompany.id\":[\"17\"],\"insuranceCompanyPerson.insuranceCompany.companyName\":[\"太平洋财险怀化中心支公司\"],\"insuranceCompanyPerson.id\":[\"13\"],\"insuranceCompanyPerson.personName\":[\"李晶心\"],\"evolevState\":[\"1\"],\"remark\":[\"发生\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-09 10:59:47');
INSERT INTO `sys_oper_log` VALUES ('228', '信息管理', '2', 'com.ruoyi.web.controller.system.ClaimController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/claim/edit', '127.0.0.1', '内网IP', '{\"id\":[\"15\"],\"insuranceCompanyPerson.insuranceCompany.id\":[\"16\"],\"insuranceCompanyPerson.insuranceCompany.companyName\":[\"大地财险怀化中心支公司\"],\"insuranceCompanyPerson.id\":[\"17\"],\"insuranceCompanyPerson.personName\":[\"熊志远\"],\"evolevState\":[\"1\"],\"remark\":[\"发生\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-09 11:00:10');
INSERT INTO `sys_oper_log` VALUES ('229', '信息管理完成', '2', 'com.ruoyi.web.controller.system.ClaimController.finishClaim()', 'POST', '1', 'admin', '研发部门', '/system/claim/finishClaim', '127.0.0.1', '内网IP', '{\"id\":[\"15\"],\"insuranceCompanyPerson.insuranceCompany.id\":[\"16\"],\"insuranceCompanyPerson.id\":[\"17\"],\"evolevState\":[\"3\"],\"claimType\":[\"1\"],\"claimMoney\":[\"2000\"],\"remark\":[\"发生\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-09 11:00:23');
INSERT INTO `sys_oper_log` VALUES ('230', '信息管理', '2', 'com.ruoyi.web.controller.system.ClaimController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/claim/edit', '127.0.0.1', '内网IP', '{\"id\":[\"15\"],\"cityName\":[\"怀化分公司\"],\"areaName\":[\"鹤城区\"],\"schoolName\":[\"锦溪小学\"],\"schoolGradeName\":[\"一年级\"],\"schoolClassName\":[\"101班\"],\"stuCard\":[\"431221199202011010\"],\"stuName\":[\"我存货\"],\"stuSex\":[\"0\"],\"parentsName\":[\"伍小龙\"],\"parentsCard\":[\"431221199202011010\"],\"parentsCall\":[\"18665022235\"],\"payMoney\":[\"70\"],\"claimType\":[\"1\"],\"claimMoney\":[\"2000\"],\"insuranceCompanyPerson.insuranceCompany.id\":[\"15\"],\"insuranceCompanyPerson.insuranceCompany.companyName\":[\"中华联合财险怀化中心支公司\"],\"insuranceCompanyPerson.id\":[\"31\"],\"insuranceCompanyPerson.personName\":[\"金叶\"],\"evolevState\":[\"3\"],\"finishTime\":[\"2022-05-09\"],\"state\":[\"0\"],\"remark\":[\"发生\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-09 11:00:32');
INSERT INTO `sys_oper_log` VALUES ('231', '信息管理完成', '2', 'com.ruoyi.web.controller.system.ClaimController.finishClaim()', 'POST', '1', 'admin', '研发部门', '/system/claim/finishClaim', '127.0.0.1', '内网IP', '{\"id\":[\"15\"],\"insuranceCompanyPerson.insuranceCompany.id\":[\"15\"],\"insuranceCompanyPerson.id\":[\"31\"],\"evolevState\":[\"3\"],\"claimType\":[\"1\"],\"claimMoney\":[\"2000\"],\"finishTime\":[\"2022-05-05 10:10:30\"],\"remark\":[\"发生\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-09 11:14:35');
INSERT INTO `sys_oper_log` VALUES ('232', '信息管理完成', '2', 'com.ruoyi.web.controller.system.ClaimController.finishClaim()', 'POST', '1', 'admin', '研发部门', '/system/claim/finishClaim', '127.0.0.1', '内网IP', '{\"id\":[\"15\"],\"insuranceCompanyPerson.insuranceCompany.id\":[\"15\"],\"insuranceCompanyPerson.id\":[\"31\"],\"evolevState\":[\"3\"],\"claimType\":[\"1\"],\"claimMoney\":[\"2000\"],\"finishTime\":[\"2022-05-09 11:10:30\"],\"remark\":[\"发生\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-09 11:14:46');
INSERT INTO `sys_oper_log` VALUES ('233', '信息管理完成', '2', 'com.ruoyi.web.controller.system.ClaimController.finishClaim()', 'POST', '1', 'admin', '研发部门', '/system/claim/finishClaim', '127.0.0.1', '内网IP', '{\"id\":[\"15\"],\"insuranceCompanyPerson.insuranceCompany.id\":[\"15\"],\"insuranceCompanyPerson.id\":[\"31\"],\"evolevState\":[\"3\"],\"claimType\":[\"1\"],\"claimMoney\":[\"2000\"],\"finishTime\":[\"2022-05-09 11:10:30\"],\"remark\":[\"发生\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-09 11:14:49');
INSERT INTO `sys_oper_log` VALUES ('234', '信息管理完成', '2', 'com.ruoyi.web.controller.system.ClaimController.finishClaim()', 'POST', '1', 'admin', '研发部门', '/system/claim/finishClaim', '127.0.0.1', '内网IP', '{\"id\":[\"15\"],\"insuranceCompanyPerson.insuranceCompany.id\":[\"15\"],\"insuranceCompanyPerson.id\":[\"31\"],\"evolevState\":[\"3\"],\"claimType\":[\"1\"],\"claimMoney\":[\"2000\"],\"finishTime\":[\"2022-05-09 11:10:30\"],\"remark\":[\"发生结束\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-09 11:14:57');
INSERT INTO `sys_oper_log` VALUES ('235', '信息管理', '2', 'com.ruoyi.web.controller.system.ClaimController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/claim/edit', '127.0.0.1', '内网IP', '{\"id\":[\"15\"],\"cityName\":[\"怀化分公司\"],\"areaName\":[\"鹤城区\"],\"schoolName\":[\"锦溪小学\"],\"schoolGradeName\":[\"一年级\"],\"schoolClassName\":[\"101班\"],\"stuCard\":[\"431221199202011010\"],\"stuName\":[\"我存货\"],\"stuSex\":[\"0\"],\"parentsName\":[\"伍小龙\"],\"parentsCard\":[\"431221199202011010\"],\"parentsCall\":[\"18665022235\"],\"payMoney\":[\"70\"],\"claimType\":[\"1\"],\"claimMoney\":[\"2000\"],\"insuranceCompanyPerson.insuranceCompany.id\":[\"15\"],\"insuranceCompanyPerson.insuranceCompany.companyName\":[\"中华联合财险怀化中心支公司\"],\"insuranceCompanyPerson.id\":[\"31\"],\"insuranceCompanyPerson.personName\":[\"金叶\"],\"evolevState\":[\"3\"],\"finishTime\":[\"2022-05-06 07:30:00\"],\"remark\":[\"发生结束\"],\"state\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-09 11:16:03');
INSERT INTO `sys_oper_log` VALUES ('236', '信息管理', '2', 'com.ruoyi.web.controller.system.ClaimController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/claim/edit', '127.0.0.1', '内网IP', '{\"id\":[\"15\"],\"cityName\":[\"怀化分公司\"],\"areaName\":[\"鹤城区\"],\"schoolName\":[\"锦溪小学\"],\"schoolGradeName\":[\"一年级\"],\"schoolClassName\":[\"101班\"],\"stuCard\":[\"431221199202011010\"],\"stuName\":[\"我存货\"],\"stuSex\":[\"0\"],\"parentsName\":[\"伍小龙\"],\"parentsCard\":[\"431221199202011010\"],\"parentsCall\":[\"18665022235\"],\"payMoney\":[\"70\"],\"claimType\":[\"1\"],\"claimMoney\":[\"2000\"],\"insuranceCompanyPerson.insuranceCompany.id\":[\"15\"],\"insuranceCompanyPerson.insuranceCompany.companyName\":[\"中华联合财险怀化中心支公司\"],\"insuranceCompanyPerson.id\":[\"31\"],\"insuranceCompanyPerson.personName\":[\"金叶\"],\"evolevState\":[\"3\"],\"finishTime\":[\"2022-05-09 11:00:00\"],\"remark\":[\"发生结束\"],\"state\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-09 11:16:38');
INSERT INTO `sys_oper_log` VALUES ('237', '信息管理', '2', 'com.ruoyi.web.controller.system.ClaimController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/claim/edit', '127.0.0.1', '内网IP', '{\"id\":[\"15\"],\"cityName\":[\"怀化分公司\"],\"areaName\":[\"鹤城区\"],\"schoolName\":[\"锦溪小学\"],\"schoolGradeName\":[\"一年级\"],\"schoolClassName\":[\"101班\"],\"stuCard\":[\"431221199202011010\"],\"stuName\":[\"测试\"],\"stuSex\":[\"0\"],\"parentsName\":[\"测试家长\"],\"parentsCard\":[\"431221199202011010\"],\"parentsCall\":[\"18665022235\"],\"payMoney\":[\"70\"],\"claimType\":[\"1\"],\"claimMoney\":[\"2000\"],\"insuranceCompanyPerson.insuranceCompany.id\":[\"15\"],\"insuranceCompanyPerson.insuranceCompany.companyName\":[\"中华联合财险怀化中心支公司\"],\"insuranceCompanyPerson.id\":[\"31\"],\"insuranceCompanyPerson.personName\":[\"金叶\"],\"evolevState\":[\"3\"],\"finishTime\":[\"2022-05-09 11:00:00\"],\"remark\":[\"发生结束\"],\"state\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-09 11:19:43');
INSERT INTO `sys_oper_log` VALUES ('238', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"school\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-13 10:27:17');
INSERT INTO `sys_oper_log` VALUES ('239', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"6\"],\"tableName\":[\"school\"],\"tableComment\":[\"学校管理\"],\"className\":[\"School\"],\"functionAuthor\":[\"wuchunhui\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"74\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"75\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"创建用户\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"createBy\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"76\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"BETWEEN\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"77\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"更新用户\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"updateBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"78\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"更新时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updateTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"79\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"学校名称\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"schoolName\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].queryType\":[\"LIKE\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"80\"],\"columns[6].sort\":[\"7\"],', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-13 10:29:02');
INSERT INTO `sys_oper_log` VALUES ('240', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"基础数据管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"7\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-13 10:29:28');
INSERT INTO `sys_oper_log` VALUES ('241', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"6\"],\"tableName\":[\"school\"],\"tableComment\":[\"学校管理\"],\"className\":[\"School\"],\"functionAuthor\":[\"wuchunhui\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"74\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"75\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"创建用户\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"createBy\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"76\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"BETWEEN\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"77\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"更新用户\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"updateBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"78\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"更新时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updateTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"79\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"学校名称\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"schoolName\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].queryType\":[\"LIKE\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"80\"],\"columns[6].sort\":[\"7\"],', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-13 10:29:39');
INSERT INTO `sys_oper_log` VALUES ('242', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"学校类型列表\"],\"dictType\":[\"is_public\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-13 10:30:42');
INSERT INTO `sys_oper_log` VALUES ('243', '字典类型', '2', 'com.ruoyi.web.controller.system.SysDictTypeController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/edit', '127.0.0.1', '内网IP', '{\"dictId\":[\"105\"],\"dictName\":[\"学校类型\"],\"dictType\":[\"is_public\"],\"status\":[\"0\"],\"remark\":[\"学校类型列表\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-13 10:30:51');
INSERT INTO `sys_oper_log` VALUES ('244', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"公立\"],\"dictValue\":[\"1\"],\"dictType\":[\"is_public\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-13 10:31:10');
INSERT INTO `sys_oper_log` VALUES ('245', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"私立\"],\"dictValue\":[\"2\"],\"dictType\":[\"is_public\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-13 10:31:18');
INSERT INTO `sys_oper_log` VALUES ('246', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"116\"],\"dictLabel\":[\"私立\"],\"dictValue\":[\"2\"],\"dictType\":[\"is_public\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"info\"],\"isDefault\":[\"N\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-13 10:31:22');
INSERT INTO `sys_oper_log` VALUES ('247', '字典类型', '2', 'com.ruoyi.web.controller.system.SysDictTypeController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/edit', '127.0.0.1', '内网IP', '{\"dictId\":[\"105\"],\"dictName\":[\"学校公立状态\"],\"dictType\":[\"is_public\"],\"status\":[\"0\"],\"remark\":[\"学校类型列表\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-13 10:32:01');
INSERT INTO `sys_oper_log` VALUES ('248', '字典类型', '2', 'com.ruoyi.web.controller.system.SysDictTypeController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/edit', '127.0.0.1', '内网IP', '{\"dictId\":[\"105\"],\"dictName\":[\"学校公立状态\"],\"dictType\":[\"is_public\"],\"status\":[\"0\"],\"remark\":[\"学校公立状态列表\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-13 10:32:05');
INSERT INTO `sys_oper_log` VALUES ('249', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"学校类型\"],\"dictType\":[\"school_type\"],\"status\":[\"0\"],\"remark\":[\"学校类型列表\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-13 10:32:24');
INSERT INTO `sys_oper_log` VALUES ('250', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"幼儿园\"],\"dictValue\":[\"1\"],\"dictType\":[\"school_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-13 10:32:35');
INSERT INTO `sys_oper_log` VALUES ('251', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"小学\"],\"dictValue\":[\"2\"],\"dictType\":[\"school_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-13 10:32:48');
INSERT INTO `sys_oper_log` VALUES ('252', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"118\"],\"dictLabel\":[\"小学\"],\"dictValue\":[\"2\"],\"dictType\":[\"school_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"default\"],\"isDefault\":[\"N\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-13 10:33:04');
INSERT INTO `sys_oper_log` VALUES ('253', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"初中\"],\"dictValue\":[\"3\"],\"dictType\":[\"school_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-13 10:33:10');
INSERT INTO `sys_oper_log` VALUES ('254', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"119\"],\"dictLabel\":[\"中学\"],\"dictValue\":[\"3\"],\"dictType\":[\"school_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-13 10:33:26');
INSERT INTO `sys_oper_log` VALUES ('255', '字典数据', '3', 'com.ruoyi.web.controller.system.SysDictDataController.remove()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"119\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-13 10:34:03');
INSERT INTO `sys_oper_log` VALUES ('256', '字典数据', '3', 'com.ruoyi.web.controller.system.SysDictDataController.remove()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"118\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-13 10:34:04');
INSERT INTO `sys_oper_log` VALUES ('257', '字典数据', '3', 'com.ruoyi.web.controller.system.SysDictDataController.remove()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"117\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-13 10:34:06');
INSERT INTO `sys_oper_log` VALUES ('258', '字典类型', '3', 'com.ruoyi.web.controller.system.SysDictTypeController.remove()', 'POST', '1', 'admin', '研发部门', '/system/dict/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"106\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-13 10:34:09');
INSERT INTO `sys_oper_log` VALUES ('259', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"6\"],\"tableName\":[\"school\"],\"tableComment\":[\"学校管理\"],\"className\":[\"School\"],\"functionAuthor\":[\"wuchunhui\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"74\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"75\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"创建用户\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"createBy\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"76\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"BETWEEN\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"77\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"更新用户\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"updateBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"78\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"更新时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updateTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"79\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"学校名称\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"schoolName\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].queryType\":[\"LIKE\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"80\"],\"columns[6].sort\":[\"7\"],', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-13 10:34:43');
INSERT INTO `sys_oper_log` VALUES ('260', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发部门', '/tool/gen/download/school', '127.0.0.1', '内网IP', '\"school\"', null, '0', null, '2022-05-13 10:38:48');
INSERT INTO `sys_oper_log` VALUES ('261', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"115\"],\"dictLabel\":[\"公立\"],\"dictValue\":[\"0\"],\"dictType\":[\"is_public\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-13 10:46:10');
INSERT INTO `sys_oper_log` VALUES ('262', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"116\"],\"dictLabel\":[\"私立\"],\"dictValue\":[\"1\"],\"dictType\":[\"is_public\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"info\"],\"isDefault\":[\"N\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-13 10:46:13');
INSERT INTO `sys_oper_log` VALUES ('263', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2036\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"基础数据管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"7\"],\"icon\":[\"fa fa-laptop\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-13 10:46:52');
INSERT INTO `sys_oper_log` VALUES ('264', '学校管理', '3', 'com.ruoyi.web.controller.system.SchoolController.remove()', 'POST', '1', 'admin', '研发部门', '/system/school/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"31598\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-13 11:07:56');
INSERT INTO `sys_oper_log` VALUES ('265', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"湘N管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"99\"],\"icon\":[\"fa fa-archive\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 09:32:10');
INSERT INTO `sys_oper_log` VALUES ('266', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"n_person\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 09:32:46');
INSERT INTO `sys_oper_log` VALUES ('267', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"7\"],\"tableName\":[\"n_person\"],\"tableComment\":[\"队员管理\"],\"className\":[\"NPerson\"],\"functionAuthor\":[\"wuchunhui\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"86\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"87\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"创建用户\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"createBy\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"88\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"89\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"更新用户\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"updateBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"90\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"更新时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updateTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"91\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"名称\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"nName\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].queryType\":[\"LIKE\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"92\"],\"columns[6].sort\":[\"7\"],\"columns[6].columnComment\":[\"年龄\"],\"c', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 09:34:07');
INSERT INTO `sys_oper_log` VALUES ('268', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发部门', '/tool/gen/download/n_person', '127.0.0.1', '内网IP', '\"n_person\"', null, '0', null, '2022-05-16 09:34:10');
INSERT INTO `sys_oper_log` VALUES ('269', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"7\"],\"tableName\":[\"n_person\"],\"tableComment\":[\"队员管理\"],\"className\":[\"NPerson\"],\"functionAuthor\":[\"wuchunhui\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"86\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"87\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"创建用户\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"createBy\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"88\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"89\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"更新用户\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"updateBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"90\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"更新时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updateTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"91\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"名称\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"nName\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].queryType\":[\"LIKE\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"92\"],\"columns[6].sort\":[\"7\"],\"columns[6].columnComment\":[\"年龄\"],\"c', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 09:36:55');
INSERT INTO `sys_oper_log` VALUES ('270', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发部门', '/tool/gen/download/n_person', '127.0.0.1', '内网IP', '\"n_person\"', null, '0', null, '2022-05-16 09:37:06');
INSERT INTO `sys_oper_log` VALUES ('271', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/system/menu/remove/2044', '127.0.0.1', '内网IP', '2044', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":301}', '0', null, '2022-05-16 09:37:17');
INSERT INTO `sys_oper_log` VALUES ('272', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/system/menu/remove/2049', '127.0.0.1', '内网IP', '2049', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 09:37:21');
INSERT INTO `sys_oper_log` VALUES ('273', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/system/menu/remove/2048', '127.0.0.1', '内网IP', '2048', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 09:37:25');
INSERT INTO `sys_oper_log` VALUES ('274', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/system/menu/remove/2047', '127.0.0.1', '内网IP', '2047', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 09:37:28');
INSERT INTO `sys_oper_log` VALUES ('275', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/system/menu/remove/2046', '127.0.0.1', '内网IP', '2046', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 09:37:32');
INSERT INTO `sys_oper_log` VALUES ('276', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/system/menu/remove/2045', '127.0.0.1', '内网IP', '2045', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 09:37:36');
INSERT INTO `sys_oper_log` VALUES ('277', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/system/menu/remove/2044', '127.0.0.1', '内网IP', '2044', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 09:37:42');
INSERT INTO `sys_oper_log` VALUES ('278', '队员管理', '1', 'com.ruoyi.web.controller.system.NPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/nperson/add', '127.0.0.1', '内网IP', '{\"nName\":[\"伍春晖\"],\"nAge\":[\"30\"],\"nPhone\":[\"18665022235\"],\"nNumber\":[\"1\"],\"nSex\":[\"0\"],\"nWeight\":[\"83\"],\"nHeight\":[\"178\"],\"nStatus\":[\"0\"],\"remark\":[\"\"]}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\ideaProjects\\RuoYi-master\\ruoyi-system\\target\\classes\\mapper\\system\\NPersonMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.NPersonMapper.insertNPerson-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into n_person          ( create_time,                                       n_name,             n_age,             n_phone,             n_number,             n_sex,             n_weight,             n_height,             n_status,             remark )           values ( ?,                                       ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2022-05-16 09:42:25');
INSERT INTO `sys_oper_log` VALUES ('279', '队员管理', '1', 'com.ruoyi.web.controller.system.NPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/nperson/add', '127.0.0.1', '内网IP', '{\"nName\":[\"伍春晖\"],\"nAge\":[\"30\"],\"nPhone\":[\"18665022235\"],\"nNumber\":[\"1\"],\"nSex\":[\"0\"],\"nWeight\":[\"83\"],\"nHeight\":[\"178\"],\"nStatus\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 09:42:44');
INSERT INTO `sys_oper_log` VALUES ('280', '队员管理', '1', 'com.ruoyi.web.controller.system.NPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/nperson/add', '127.0.0.1', '内网IP', '{\"nName\":[\"丁荣华\"],\"nAge\":[\"\"],\"nPhone\":[\"\"],\"nNumber\":[\"5\"],\"nSex\":[\"0\"],\"nWeight\":[\"62\"],\"nHeight\":[\"170\"],\"nStatus\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 09:45:15');
INSERT INTO `sys_oper_log` VALUES ('281', '队员管理', '1', 'com.ruoyi.web.controller.system.NPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/nperson/add', '127.0.0.1', '内网IP', '{\"nName\":[\"王仕琪\"],\"nAge\":[\"\"],\"nPhone\":[\"\"],\"nNumber\":[\"11\"],\"nSex\":[\"0\"],\"nWeight\":[\"67\"],\"nHeight\":[\"175\"],\"nStatus\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 09:46:35');
INSERT INTO `sys_oper_log` VALUES ('282', '队员管理', '1', 'com.ruoyi.web.controller.system.NPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/nperson/add', '127.0.0.1', '内网IP', '{\"nName\":[\"杨恒\"],\"nAge\":[\"\"],\"nPhone\":[\"\"],\"nNumber\":[\"13\"],\"nSex\":[\"0\"],\"nWeight\":[\"76\"],\"nHeight\":[\"175\"],\"nStatus\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 09:47:32');
INSERT INTO `sys_oper_log` VALUES ('283', '队员管理', '1', 'com.ruoyi.web.controller.system.NPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/nperson/add', '127.0.0.1', '内网IP', '{\"nName\":[\"倪文斌\"],\"nAge\":[\"\"],\"nPhone\":[\"\"],\"nNumber\":[\"8\"],\"nSex\":[\"0\"],\"nWeight\":[\"62\"],\"nHeight\":[\"180\"],\"nStatus\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 09:48:23');
INSERT INTO `sys_oper_log` VALUES ('284', '队员管理', '1', 'com.ruoyi.web.controller.system.NPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/nperson/add', '127.0.0.1', '内网IP', '{\"nName\":[\"李政霖\"],\"nAge\":[\"\"],\"nPhone\":[\"\"],\"nNumber\":[\"0\"],\"nSex\":[\"0\"],\"nWeight\":[\"\"],\"nHeight\":[\"\"],\"nStatus\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 09:49:33');
INSERT INTO `sys_oper_log` VALUES ('285', '队员管理', '1', 'com.ruoyi.web.controller.system.NPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/nperson/add', '127.0.0.1', '内网IP', '{\"nName\":[\"向建武\"],\"nAge\":[\"\"],\"nPhone\":[\"\"],\"nNumber\":[\"7\"],\"nSex\":[\"0\"],\"nWeight\":[\"\"],\"nHeight\":[\"\"],\"nStatus\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 09:49:57');
INSERT INTO `sys_oper_log` VALUES ('286', '队员管理', '1', 'com.ruoyi.web.controller.system.NPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/nperson/add', '127.0.0.1', '内网IP', '{\"nName\":[\"韦方亮\"],\"nAge\":[\"\"],\"nPhone\":[\"\"],\"nNumber\":[\"25\"],\"nSex\":[\"0\"],\"nWeight\":[\"\"],\"nHeight\":[\"\"],\"nStatus\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 09:50:19');
INSERT INTO `sys_oper_log` VALUES ('287', '队员管理', '1', 'com.ruoyi.web.controller.system.NPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/nperson/add', '127.0.0.1', '内网IP', '{\"nName\":[\"唐蕾\"],\"nAge\":[\"\"],\"nPhone\":[\"19174690778\"],\"nNumber\":[\"\"],\"nSex\":[\"0\"],\"nWeight\":[\"\"],\"nHeight\":[\"\"],\"nStatus\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 09:50:49');
INSERT INTO `sys_oper_log` VALUES ('288', '队员管理', '1', 'com.ruoyi.web.controller.system.NPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/nperson/add', '127.0.0.1', '内网IP', '{\"nName\":[\"刘建平\"],\"nAge\":[\"\"],\"nPhone\":[\"\"],\"nNumber\":[\"6\"],\"nSex\":[\"0\"],\"nWeight\":[\"\"],\"nHeight\":[\"\"],\"nStatus\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 09:51:11');
INSERT INTO `sys_oper_log` VALUES ('289', '队员管理', '1', 'com.ruoyi.web.controller.system.NPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/nperson/add', '127.0.0.1', '内网IP', '{\"nName\":[\"章其\"],\"nAge\":[\"\"],\"nPhone\":[\"\"],\"nNumber\":[\"19\"],\"nSex\":[\"0\"],\"nWeight\":[\"\"],\"nHeight\":[\"\"],\"nStatus\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 09:51:34');
INSERT INTO `sys_oper_log` VALUES ('290', '队员管理', '1', 'com.ruoyi.web.controller.system.NPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/nperson/add', '127.0.0.1', '内网IP', '{\"nName\":[\"王勇\"],\"nAge\":[\"\"],\"nPhone\":[\"\"],\"nNumber\":[\"10\"],\"nSex\":[\"0\"],\"nWeight\":[\"\"],\"nHeight\":[\"\"],\"nStatus\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 09:51:50');
INSERT INTO `sys_oper_log` VALUES ('291', '队员管理', '1', 'com.ruoyi.web.controller.system.NPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/nperson/add', '127.0.0.1', '内网IP', '{\"nName\":[\"肖俊\"],\"nAge\":[\"\"],\"nPhone\":[\"\"],\"nNumber\":[\"\"],\"nSex\":[\"0\"],\"nWeight\":[\"\"],\"nHeight\":[\"\"],\"nStatus\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 09:52:04');
INSERT INTO `sys_oper_log` VALUES ('292', '队员管理', '1', 'com.ruoyi.web.controller.system.NPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/nperson/add', '127.0.0.1', '内网IP', '{\"nName\":[\"周俞明\"],\"nAge\":[\"\"],\"nPhone\":[\"\"],\"nNumber\":[\"\"],\"nSex\":[\"0\"],\"nWeight\":[\"\"],\"nHeight\":[\"\"],\"nStatus\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 09:54:04');
INSERT INTO `sys_oper_log` VALUES ('293', '队员管理', '1', 'com.ruoyi.web.controller.system.NPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/nperson/add', '127.0.0.1', '内网IP', '{\"nName\":[\"杨帆\"],\"nAge\":[\"\"],\"nPhone\":[\"\"],\"nNumber\":[\"24\"],\"nSex\":[\"0\"],\"nWeight\":[\"\"],\"nHeight\":[\"\"],\"nStatus\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 09:54:28');
INSERT INTO `sys_oper_log` VALUES ('294', '队员管理', '1', 'com.ruoyi.web.controller.system.NPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/nperson/add', '127.0.0.1', '内网IP', '{\"nName\":[\"蔡众\"],\"nAge\":[\"\"],\"nPhone\":[\"\"],\"nNumber\":[\"3\"],\"nSex\":[\"0\"],\"nWeight\":[\"\"],\"nHeight\":[\"\"],\"nStatus\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 09:54:43');
INSERT INTO `sys_oper_log` VALUES ('295', '队员管理', '1', 'com.ruoyi.web.controller.system.NPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/nperson/add', '127.0.0.1', '内网IP', '{\"nName\":[\"杨盛\"],\"nAge\":[\"\"],\"nPhone\":[\"\"],\"nNumber\":[\"32\"],\"nSex\":[\"0\"],\"nWeight\":[\"\"],\"nHeight\":[\"\"],\"nStatus\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 09:55:25');
INSERT INTO `sys_oper_log` VALUES ('296', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"n_income\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:14:07');
INSERT INTO `sys_oper_log` VALUES ('297', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"8\"],\"tableName\":[\"n_income\"],\"tableComment\":[\"收入管理\"],\"className\":[\"NIncome\"],\"functionAuthor\":[\"wuchunhui\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"100\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"101\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"创建用户\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"createBy\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"102\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"103\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"更新用户\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"updateBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"104\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"更新时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updateTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"105\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"人员ID\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"nId\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"106\"],\"columns[6].sort\":[\"7\"],\"columns[6].columnComment\":[\"人员姓名', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:15:46');
INSERT INTO `sys_oper_log` VALUES ('298', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发部门', '/tool/gen/download/n_income', '127.0.0.1', '内网IP', '\"n_income\"', null, '0', null, '2022-05-16 10:16:12');
INSERT INTO `sys_oper_log` VALUES ('299', '收入管理', '1', 'com.ruoyi.web.controller.system.NIncomeController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/income/add', '127.0.0.1', '内网IP', '{\"nId\":[\"111\"],\"nName\":[\"1111\"],\"niMoney\":[\"111\"],\"niSources\":[\"111\"],\"niStatus\":[\"0\"],\"remark\":[\"11\"],\"index\":[\"1\"],\"nPersonList[0].createBy\":[\"\"],\"nPersonList[0].createTime\":[\"\"],\"nPersonList[0].updateBy\":[\"\"],\"nPersonList[0].updateTime\":[\"\"],\"nPersonList[0].nName\":[\"\"],\"nPersonList[0].nAge\":[\"\"],\"nPersonList[0].nPhone\":[\"\"],\"nPersonList[0].nNumber\":[\"\"],\"nPersonList[0].nSex\":[\"0\"],\"nPersonList[0].nWeight\":[\"\"],\"nPersonList[0].nHeight\":[\"\"],\"nPersonList[0].nStatus\":[\"0\"],\"nPersonList[0].remark\":[\"\"],\"btSelectAll\":[\"\"],\"btSelectItem\":[\"\"]}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\ideaProjects\\RuoYi-master\\ruoyi-system\\target\\classes\\mapper\\system\\NIncomeMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.NIncomeMapper.insertNIncome-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into n_income          ( create_time,                                       n_id,             n_name,             ni_money,                          ni_sources,             ni_status,             remark )           values ( ?,                                       ?,             ?,             ?,                          ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2022-05-16 10:20:51');
INSERT INTO `sys_oper_log` VALUES ('300', '收入管理', '1', 'com.ruoyi.web.controller.system.NIncomeController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/income/add', '127.0.0.1', '内网IP', '{\"nId\":[\"111\"],\"nName\":[\"1111\"],\"niMoney\":[\"111\"],\"niSources\":[\"111\"],\"niStatus\":[\"0\"],\"remark\":[\"1\"],\"index\":[\"1\"],\"nPersonList[0].createBy\":[\"1\"],\"nPersonList[0].createTime\":[\"\"],\"nPersonList[0].updateBy\":[\"1\"],\"nPersonList[0].updateTime\":[\"\"],\"nPersonList[0].nName\":[\"12\"],\"nPersonList[0].nAge\":[\"12\"],\"nPersonList[0].nPhone\":[\"12\"],\"nPersonList[0].nNumber\":[\"12\"],\"nPersonList[0].nSex\":[\"0\"],\"nPersonList[0].nWeight\":[\"12\"],\"nPersonList[0].nHeight\":[\"12\"],\"nPersonList[0].nStatus\":[\"0\"],\"nPersonList[0].remark\":[\"\"],\"btSelectAll\":[\"\"],\"btSelectItem\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:22:15');
INSERT INTO `sys_oper_log` VALUES ('301', '收入管理', '3', 'com.ruoyi.web.controller.system.NIncomeController.remove()', 'POST', '1', 'admin', '研发部门', '/system/income/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:26:52');
INSERT INTO `sys_oper_log` VALUES ('302', '收入管理', '1', 'com.ruoyi.web.controller.system.NIncomeController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/income/add', '127.0.0.1', '内网IP', '{\"nId\":[\"111\"],\"nName\":[\"1111\"],\"niMoney\":[\"111\"],\"niSources\":[\"111\"],\"niStatus\":[\"0\"],\"remark\":[\"\"],\"index\":[\"1\"],\"nPersonList[0].createBy\":[\"1\"],\"nPersonList[0].createTime\":[\"\"],\"nPersonList[0].updateBy\":[\"1\"],\"nPersonList[0].updateTime\":[\"\"],\"nPersonList[0].nName\":[\"1\"],\"nPersonList[0].nAge\":[\"1\"],\"nPersonList[0].nPhone\":[\"1\"],\"nPersonList[0].nNumber\":[\"1\"],\"nPersonList[0].nSex\":[\"0\"],\"nPersonList[0].nWeight\":[\"\"],\"nPersonList[0].nHeight\":[\"\"],\"nPersonList[0].nStatus\":[\"0\"],\"nPersonList[0].remark\":[\"\"],\"btSelectAll\":[\"\"],\"btSelectItem\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:27:20');
INSERT INTO `sys_oper_log` VALUES ('303', '收入管理', '2', 'com.ruoyi.web.controller.system.NIncomeController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/income/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"nId\":[\"111\"],\"nName\":[\"1111\"],\"niMoney\":[\"111\"],\"niSources\":[\"111\"],\"niStatus\":[\"0\"],\"remark\":[\"\"],\"index\":[\"1\",\"2\"],\"nPersonList[0].createBy\":[\"\"],\"nPersonList[0].createTime\":[\"2022-05-16 01:45:15\"],\"nPersonList[0].updateBy\":[\"\"],\"nPersonList[0].updateTime\":[\"\"],\"nPersonList[0].nName\":[\"丁荣华\"],\"nPersonList[0].nAge\":[\"\"],\"nPersonList[0].nPhone\":[\"\"],\"nPersonList[0].nNumber\":[\"5\"],\"nPersonList[0].nSex\":[\"0\"],\"nPersonList[0].nWeight\":[\"62\"],\"nPersonList[0].nHeight\":[\"170\"],\"nPersonList[0].nStatus\":[\"0\"],\"nPersonList[0].remark\":[\"\"],\"nPersonList[1].createBy\":[\"222\"],\"nPersonList[1].createTime\":[\"\"],\"nPersonList[1].updateBy\":[\"\"],\"nPersonList[1].updateTime\":[\"\"],\"nPersonList[1].nName\":[\"22\"],\"nPersonList[1].nAge\":[\"22\"],\"nPersonList[1].nPhone\":[\"\"],\"nPersonList[1].nNumber\":[\"2\"],\"nPersonList[1].nSex\":[\"0\"],\"nPersonList[1].nWeight\":[\"\"],\"nPersonList[1].nHeight\":[\"\"],\"nPersonList[1].nStatus\":[\"0\"],\"nPersonList[1].remark\":[\"\"],\"btSelectAll\":[\"\"],\"btSelectItem\":[\"\"]}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'2\' for key \'PRIMARY\'\r\n### The error may exist in file [D:\\ideaProjects\\RuoYi-master\\ruoyi-system\\target\\classes\\mapper\\system\\NIncomeMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: insert into n_person( id, create_by, create_time, update_by, update_time, n_name, n_age, n_phone, n_number, n_sex, n_weight, n_height, n_status, remark) values                  ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'2\' for key \'PRIMARY\'\n; Duplicate entry \'2\' for key \'PRIMARY\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'2\' for key \'PRIMARY\'', '2022-05-16 10:28:39');
INSERT INTO `sys_oper_log` VALUES ('304', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"8,7,6,5,4,3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:37:08');
INSERT INTO `sys_oper_log` VALUES ('305', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"n_income\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:37:13');
INSERT INTO `sys_oper_log` VALUES ('306', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"9\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:38:32');
INSERT INTO `sys_oper_log` VALUES ('307', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"n_income\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:38:39');
INSERT INTO `sys_oper_log` VALUES ('308', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"10\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:40:01');
INSERT INTO `sys_oper_log` VALUES ('309', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"n_income\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:40:30');
INSERT INTO `sys_oper_log` VALUES ('310', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"11\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:42:21');
INSERT INTO `sys_oper_log` VALUES ('311', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/system/menu/remove/2061', '127.0.0.1', '内网IP', '2061', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:43:55');
INSERT INTO `sys_oper_log` VALUES ('312', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/system/menu/remove/2060', '127.0.0.1', '内网IP', '2060', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:43:59');
INSERT INTO `sys_oper_log` VALUES ('313', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/system/menu/remove/2059', '127.0.0.1', '内网IP', '2059', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:44:04');
INSERT INTO `sys_oper_log` VALUES ('314', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/system/menu/remove/2058', '127.0.0.1', '内网IP', '2058', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:44:08');
INSERT INTO `sys_oper_log` VALUES ('315', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/system/menu/remove/2057', '127.0.0.1', '内网IP', '2057', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:44:11');
INSERT INTO `sys_oper_log` VALUES ('316', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/system/menu/remove/2056', '127.0.0.1', '内网IP', '2056', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:44:14');
INSERT INTO `sys_oper_log` VALUES ('317', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"n_income\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:44:24');
INSERT INTO `sys_oper_log` VALUES ('318', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"n_income_sources\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:45:15');
INSERT INTO `sys_oper_log` VALUES ('319', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"12\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:45:46');
INSERT INTO `sys_oper_log` VALUES ('320', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"13\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:47:13');
INSERT INTO `sys_oper_log` VALUES ('321', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"n_income\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:47:17');
INSERT INTO `sys_oper_log` VALUES ('322', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"14\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:47:24');
INSERT INTO `sys_oper_log` VALUES ('323', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"n_income_sources\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:47:26');
INSERT INTO `sys_oper_log` VALUES ('324', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"15\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:49:40');
INSERT INTO `sys_oper_log` VALUES ('325', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"n_income_sources\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:49:56');
INSERT INTO `sys_oper_log` VALUES ('326', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"16\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:50:10');
INSERT INTO `sys_oper_log` VALUES ('327', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"n_income\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:50:14');
INSERT INTO `sys_oper_log` VALUES ('328', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"17\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:52:30');
INSERT INTO `sys_oper_log` VALUES ('329', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"n_income\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:52:33');
INSERT INTO `sys_oper_log` VALUES ('330', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"18\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:53:19');
INSERT INTO `sys_oper_log` VALUES ('331', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"n_income_sources\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:53:24');
INSERT INTO `sys_oper_log` VALUES ('332', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"19\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:53:34');
INSERT INTO `sys_oper_log` VALUES ('333', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"n_income,n_income_sources\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:53:36');
INSERT INTO `sys_oper_log` VALUES ('334', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"21\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:54:47');
INSERT INTO `sys_oper_log` VALUES ('335', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"20\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:54:48');
INSERT INTO `sys_oper_log` VALUES ('336', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"n_income\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:54:50');
INSERT INTO `sys_oper_log` VALUES ('337', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"22\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:55:49');
INSERT INTO `sys_oper_log` VALUES ('338', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"n_income\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:55:52');
INSERT INTO `sys_oper_log` VALUES ('339', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', '研发部门', '/tool/gen/synchDb/n_income', '127.0.0.1', '内网IP', '\"n_income\"', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:56:31');
INSERT INTO `sys_oper_log` VALUES ('340', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"23\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:56:39');
INSERT INTO `sys_oper_log` VALUES ('341', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"n_income\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:56:48');
INSERT INTO `sys_oper_log` VALUES ('342', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"24\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:57:34');
INSERT INTO `sys_oper_log` VALUES ('343', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"n_income\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:57:37');
INSERT INTO `sys_oper_log` VALUES ('344', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"n_income_sources\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:58:31');
INSERT INTO `sys_oper_log` VALUES ('345', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"26\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:59:30');
INSERT INTO `sys_oper_log` VALUES ('346', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"25\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:59:31');
INSERT INTO `sys_oper_log` VALUES ('347', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"n_income\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 10:59:35');
INSERT INTO `sys_oper_log` VALUES ('348', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"27\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 11:00:04');
INSERT INTO `sys_oper_log` VALUES ('349', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"n_income\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 11:00:06');
INSERT INTO `sys_oper_log` VALUES ('350', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"28\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 11:01:21');
INSERT INTO `sys_oper_log` VALUES ('351', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"n_income\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 11:01:33');
INSERT INTO `sys_oper_log` VALUES ('352', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"n_income_sources\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 11:01:43');
INSERT INTO `sys_oper_log` VALUES ('353', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"30\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 11:02:50');
INSERT INTO `sys_oper_log` VALUES ('354', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"29\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 11:02:52');
INSERT INTO `sys_oper_log` VALUES ('355', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"n_income_sources,n_income\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 11:02:55');
INSERT INTO `sys_oper_log` VALUES ('356', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"31\"],\"tableName\":[\"n_income\"],\"tableComment\":[\"收入管理\"],\"className\":[\"NIncome\"],\"functionAuthor\":[\"wuchunhui\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"326\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"327\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"创建用户\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"createBy\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"328\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"329\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"更新用户\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"updateBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"330\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"更新时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updateTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"331\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"名称\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"niTitle\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"332\"],\"columns[6].sort\":[\"7\"],\"columns[6].columnComment\":[', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 11:03:41');
INSERT INTO `sys_oper_log` VALUES ('357', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发部门', '/tool/gen/download/n_income', '127.0.0.1', '内网IP', '\"n_income\"', null, '0', null, '2022-05-16 11:04:49');
INSERT INTO `sys_oper_log` VALUES ('358', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"32\"],\"tableName\":[\"n_income_sources\"],\"tableComment\":[\"收入信息管理\"],\"className\":[\"NIncomeSources\"],\"functionAuthor\":[\"wuchunhui\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"335\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"336\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"创建用户\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"createBy\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"337\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"338\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"更新用户\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"updateBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"339\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"更新时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updateTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"340\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"名称\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"nisName\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].queryType\":[\"LIKE\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"341\"],\"columns[6].sort\":[\"7\"],\"columns[', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 11:09:10');
INSERT INTO `sys_oper_log` VALUES ('359', '收入管理', '1', 'com.ruoyi.web.controller.system.NIncomeController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/income/add', '127.0.0.1', '内网IP', '{\"niTitle\":[\"2022融资\"],\"niStatus\":[\"0\"],\"remark\":[\"\"],\"index\":[\"1\"],\"nIncomeSourcesList[0].createBy\":[\"1\"],\"nIncomeSourcesList[0].createTime\":[\"\"],\"nIncomeSourcesList[0].updateBy\":[\"\"],\"nIncomeSourcesList[0].updateTime\":[\"\"],\"nIncomeSourcesList[0].nisName\":[\"伍春晖\"],\"nIncomeSourcesList[0].nisMoney\":[\"100\"],\"nIncomeSourcesList[0].nisType\":[\"1\"],\"nIncomeSourcesList[0].nisStatus\":[\"1\"],\"nIncomeSourcesList[0].remark\":[\"1\"],\"btSelectAll\":[\"\"],\"btSelectItem\":[\"\"]}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'id\' cannot be null\r\n### The error may exist in file [D:\\ideaProjects\\RuoYi-master\\ruoyi-system\\target\\classes\\mapper\\system\\NIncomeMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: insert into n_income_sources( id, create_by, create_time, update_by, update_time, nis_name, nis_money, nis_type, nis_status, remark, ni_id) values                  ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'id\' cannot be null\n; Column \'id\' cannot be null; nested exception is java.sql.SQLIntegrityConstraintViolationException: Column \'id\' cannot be null', '2022-05-16 11:09:53');
INSERT INTO `sys_oper_log` VALUES ('360', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"32\"],\"tableName\":[\"n_income_sources\"],\"tableComment\":[\"收入信息管理\"],\"className\":[\"NIncomeSources\"],\"functionAuthor\":[\"wuchunhui\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"335\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"336\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"创建用户\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"createBy\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"337\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"338\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"更新用户\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"updateBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"339\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"更新时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updateTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"340\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"名称\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"nisName\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].queryType\":[\"LIKE\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"341\"],\"columns[6].sort\":[\"7\"],\"columns[', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 11:10:59');
INSERT INTO `sys_oper_log` VALUES ('361', '收入管理', '1', 'com.ruoyi.web.controller.system.NIncomeController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/income/add', '127.0.0.1', '内网IP', '{\"niTitle\":[\"2022融资\"],\"niStatus\":[\"0\"],\"remark\":[\"\"],\"index\":[\"1\"],\"nIncomeSourcesList[0].createBy\":[\"1\"],\"nIncomeSourcesList[0].nisName\":[\"伍春晖\"],\"nIncomeSourcesList[0].nisMoney\":[\"100\"],\"nIncomeSourcesList[0].nisType\":[\"1\"],\"nIncomeSourcesList[0].nisStatus\":[\"0\"],\"nIncomeSourcesList[0].remark\":[\"1\"],\"btSelectAll\":[\"\"],\"btSelectItem\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 11:11:34');
INSERT INTO `sys_oper_log` VALUES ('362', '收入管理', '2', 'com.ruoyi.web.controller.system.NIncomeController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/income/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"niTitle\":[\"20220516融资\"],\"niStatus\":[\"0\"],\"remark\":[\"\"],\"index\":[\"1\",\"2\"],\"nIncomeSourcesList[0].nisName\":[\"伍春晖\"],\"nIncomeSourcesList[0].nisMoney\":[\"100\"],\"nIncomeSourcesList[0].nisStatus\":[\"0\"],\"nIncomeSourcesList[0].remark\":[\"\"],\"nIncomeSourcesList[1].nisName\":[\"李政霖\"],\"nIncomeSourcesList[1].nisMoney\":[\"100\"],\"nIncomeSourcesList[1].nisStatus\":[\"0\"],\"nIncomeSourcesList[1].remark\":[\"\"],\"btSelectAll\":[\"\"],\"btSelectItem\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 11:14:23');
INSERT INTO `sys_oper_log` VALUES ('363', '收入管理', '5', 'com.ruoyi.web.controller.system.NIncomeController.export()', 'POST', '1', 'admin', '研发部门', '/system/income/export', '127.0.0.1', '内网IP', '{\"niTitle\":[\"\"],\"niStatus\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\"msg\":\"582b6401-628f-42c9-8c59-180e8e821d4d_收入管理数据.xlsx\",\"code\":0}', '0', null, '2022-05-16 11:14:28');
INSERT INTO `sys_oper_log` VALUES ('364', '队员管理', '1', 'com.ruoyi.web.controller.system.NPersonController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/nperson/add', '127.0.0.1', '内网IP', '{\"nName\":[\"伍春晖\"],\"nAge\":[\"\"],\"nPhone\":[\"\"],\"nNumber\":[\"1\"],\"nSex\":[\"0\"],\"nWeight\":[\"178\"],\"nHeight\":[\"83\"],\"nStatus\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 11:15:28');
INSERT INTO `sys_oper_log` VALUES ('365', '收入管理', '2', 'com.ruoyi.web.controller.system.NIncomeController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/income/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"niTitle\":[\"20220516融资\"],\"niStatus\":[\"0\"],\"remark\":[\"\"],\"index\":[\"1\"],\"nIncomeSourcesList[0].nisName\":[\"伍春晖\"],\"nIncomeSourcesList[0].nisMoney\":[\"100\"],\"nIncomeSourcesList[0].remark\":[\"\"],\"btSelectAll\":[\"\"],\"btSelectItem\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 11:15:55');
INSERT INTO `sys_oper_log` VALUES ('366', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', '研发部门', '/tool/gen/synchDb/n_income', '127.0.0.1', '内网IP', '\"n_income\"', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 11:22:41');
INSERT INTO `sys_oper_log` VALUES ('367', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"31\"],\"tableName\":[\"n_income\"],\"tableComment\":[\"收入管理\"],\"className\":[\"NIncome\"],\"functionAuthor\":[\"wuchunhui\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"326\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"327\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"创建用户\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"createBy\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"328\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"329\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"更新用户\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"updateBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"330\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"更新时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updateTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"331\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"名称\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"niTitle\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"346\"],\"columns[6].sort\":[\"7\"],\"columns[6].columnComment\":[', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 11:23:33');
INSERT INTO `sys_oper_log` VALUES ('368', '收入管理', '2', 'com.ruoyi.web.controller.system.NIncomeController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/income/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"niTitle\":[\"20220516融资\"],\"niSurplus\":[\"200\"],\"niStatus\":[\"0\"],\"remark\":[\"\"],\"index\":[\"1\",\"2\"],\"nIncomeSourcesList[0].nisName\":[\"伍春晖\"],\"nIncomeSourcesList[0].nisMoney\":[\"100\"],\"nIncomeSourcesList[0].remark\":[\"\"],\"nIncomeSourcesList[1].nisName\":[\"丁荣华\"],\"nIncomeSourcesList[1].nisMoney\":[\"100\"],\"nIncomeSourcesList[1].remark\":[\"\"],\"btSelectAll\":[\"\"],\"btSelectItem\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 11:25:21');
INSERT INTO `sys_oper_log` VALUES ('369', '收入管理', '2', 'com.ruoyi.web.controller.system.NIncomeController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/income/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"niTitle\":[\"20220516融资\"],\"niSurplus\":[\"200\"],\"niStatus\":[\"0\"],\"remark\":[\"备注测试\"],\"index\":[\"1\",\"2\"],\"nIncomeSourcesList[0].nisName\":[\"伍春晖\"],\"nIncomeSourcesList[0].nisMoney\":[\"100\"],\"nIncomeSourcesList[0].remark\":[\"\"],\"nIncomeSourcesList[1].nisName\":[\"丁荣华\"],\"nIncomeSourcesList[1].nisMoney\":[\"100\"],\"nIncomeSourcesList[1].remark\":[\"\"],\"btSelectAll\":[\"\"],\"btSelectItem\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 11:29:19');
INSERT INTO `sys_oper_log` VALUES ('370', '收入管理', '2', 'com.ruoyi.web.controller.system.NIncomeController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/income/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"niTitle\":[\"20220516融资\"],\"niSurplus\":[\"200\"],\"niStatus\":[\"0\"],\"remark\":[\"备注测试\"],\"index\":[\"1\",\"2\",\"3\"],\"nIncomeSourcesList[0].nisName\":[\"伍春晖\"],\"nIncomeSourcesList[0].nisMoney\":[\"100\"],\"nIncomeSourcesList[0].remark\":[\"\"],\"nIncomeSourcesList[1].nisName\":[\"丁荣华\"],\"nIncomeSourcesList[1].nisMoney\":[\"100\"],\"nIncomeSourcesList[1].remark\":[\"\"],\"nIncomeSourcesList[2].nisName\":[\"李政霖\"],\"nIncomeSourcesList[2].nisMoney\":[\"100\"],\"nIncomeSourcesList[2].remark\":[\"\"],\"btSelectAll\":[\"\"],\"btSelectItem\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 11:29:44');
INSERT INTO `sys_oper_log` VALUES ('371', '收入管理', '2', 'com.ruoyi.web.controller.system.NIncomeController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/income/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"niTitle\":[\"20220516融资\"],\"niSurplus\":[\"200\"],\"niStatus\":[\"0\"],\"remark\":[\"备注测试\"],\"btSelectAll\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 11:34:13');
INSERT INTO `sys_oper_log` VALUES ('372', '收入管理', '2', 'com.ruoyi.web.controller.system.NIncomeController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/income/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"niTitle\":[\"20220516融资\"],\"niSurplus\":[\"200\"],\"niStatus\":[\"0\"],\"remark\":[\"备注测试\"],\"index\":[\"1\"],\"nIncomeSourcesList[0].nisName\":[\"伍春晖\"],\"nIncomeSourcesList[0].nisMoney\":[\"100\"],\"nIncomeSourcesList[0].remark\":[\"\"],\"btSelectAll\":[\"\"],\"btSelectItem\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 11:34:59');
INSERT INTO `sys_oper_log` VALUES ('373', '收入管理', '2', 'com.ruoyi.web.controller.system.NIncomeController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/income/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"niTitle\":[\"20220516融资\"],\"niSurplus\":[\"200\"],\"niStatus\":[\"0\"],\"remark\":[\"备注测试\"],\"index\":[\"1\"],\"nIncomeSourcesList[0].nisName\":[\"伍春晖\"],\"nIncomeSourcesList[0].nisMoney\":[\"100\"],\"nIncomeSourcesList[0].remark\":[\"吧\"],\"btSelectAll\":[\"\"],\"btSelectItem\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 11:35:25');
INSERT INTO `sys_oper_log` VALUES ('374', '收入管理', '2', 'com.ruoyi.web.controller.system.NIncomeController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/income/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"niTitle\":[\"20220516融资\"],\"niSurplus\":[\"200\"],\"niStatus\":[\"0\"],\"remark\":[\"备注测试\"],\"index\":[\"1\"],\"nIncomeSourcesList[0].nisName\":[\"伍春晖\"],\"nIncomeSourcesList[0].nisMoney\":[\"100\"],\"nIncomeSourcesList[0].remark\":[\"测试日期\"],\"btSelectAll\":[\"\"],\"btSelectItem\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 11:35:47');
INSERT INTO `sys_oper_log` VALUES ('375', '收入管理', '2', 'com.ruoyi.web.controller.system.NIncomeController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/income/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"niTitle\":[\"20220516融资\"],\"niSurplus\":[\"200\"],\"niStatus\":[\"0\"],\"remark\":[\"备注测试\"],\"btSelectAll\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 11:37:01');
INSERT INTO `sys_oper_log` VALUES ('376', '收入管理', '2', 'com.ruoyi.web.controller.system.NIncomeController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/income/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"niTitle\":[\"20220516融资\"],\"niSurplus\":[\"200\"],\"niStatus\":[\"0\"],\"remark\":[\"备注测试\"],\"index\":[\"1\"],\"nIncomeSourcesList[0].nisName\":[\"伍春晖\"],\"nIncomeSourcesList[0].nisMoney\":[\"100\"],\"nIncomeSourcesList[0].remark\":[\"\"],\"btSelectAll\":[\"\"],\"btSelectItem\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 11:37:09');
INSERT INTO `sys_oper_log` VALUES ('377', '收入管理', '2', 'com.ruoyi.web.controller.system.NIncomeController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/income/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"niTitle\":[\"20220516融资\"],\"niSurplus\":[\"200\"],\"niStatus\":[\"0\"],\"remark\":[\"备注测试\"],\"index\":[\"1\"],\"nIncomeSourcesList[0].nisName\":[\"伍春晖\"],\"nIncomeSourcesList[0].nisMoney\":[\"100\"],\"nIncomeSourcesList[0].remark\":[\"\"],\"btSelectAll\":[\"\"],\"btSelectItem\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 11:38:25');
INSERT INTO `sys_oper_log` VALUES ('378', '收入管理', '2', 'com.ruoyi.web.controller.system.NIncomeController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/income/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"niTitle\":[\"20220516融资\"],\"niSurplus\":[\"200\"],\"niStatus\":[\"0\"],\"remark\":[\"备注测试\"],\"index\":[\"1\"],\"nIncomeSourcesList[0].nisName\":[\"伍春晖\"],\"nIncomeSourcesList[0].nisMoney\":[\"100\"],\"nIncomeSourcesList[0].remark\":[\"\"],\"btSelectAll\":[\"\"],\"btSelectItem\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 11:38:49');
INSERT INTO `sys_oper_log` VALUES ('379', '收入管理', '2', 'com.ruoyi.web.controller.system.NIncomeController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/income/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"niTitle\":[\"20220516融资\"],\"niSurplus\":[\"200\"],\"niStatus\":[\"0\"],\"remark\":[\"备注测试\"],\"index\":[\"1\",\"2\"],\"nIncomeSourcesList[0].nisName\":[\"伍春晖\"],\"nIncomeSourcesList[0].nisMoney\":[\"100\"],\"nIncomeSourcesList[0].remark\":[\"\"],\"nIncomeSourcesList[1].nisName\":[\"123\"],\"nIncomeSourcesList[1].nisMoney\":[\"12\"],\"nIncomeSourcesList[1].remark\":[\"\"],\"btSelectAll\":[\"\"],\"btSelectItem\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 11:39:20');
INSERT INTO `sys_oper_log` VALUES ('380', '收入管理', '2', 'com.ruoyi.web.controller.system.NIncomeController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/income/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"niTitle\":[\"20220516融资\"],\"niSurplus\":[\"200\"],\"niStatus\":[\"0\"],\"remark\":[\"备注测试\"],\"index\":[\"1\",\"2\"],\"nIncomeSourcesList[0].nisName\":[\"伍春晖\"],\"nIncomeSourcesList[0].nisMoney\":[\"100\"],\"nIncomeSourcesList[0].remark\":[\"\"],\"nIncomeSourcesList[1].nisName\":[\"123\"],\"nIncomeSourcesList[1].nisMoney\":[\"12\"],\"nIncomeSourcesList[1].remark\":[\"\"],\"btSelectAll\":[\"\"],\"btSelectItem\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 11:40:21');
INSERT INTO `sys_oper_log` VALUES ('381', '收入管理', '3', 'com.ruoyi.web.controller.system.NIncomeController.remove()', 'POST', '1', 'admin', '研发部门', '/system/income/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"4\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 11:41:15');
INSERT INTO `sys_oper_log` VALUES ('382', '收入管理', '1', 'com.ruoyi.web.controller.system.NIncomeController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/income/add', '127.0.0.1', '内网IP', '{\"niTitle\":[\"2022融资0516\"],\"niSurplus\":[\"300\"],\"niStatus\":[\"0\"],\"remark\":[\"\"],\"index\":[\"1\"],\"nIncomeSourcesList[0].nisName\":[\"伍春晖\"],\"nIncomeSourcesList[0].nisMoney\":[\"100\"],\"nIncomeSourcesList[0].remark\":[\"\"],\"btSelectAll\":[\"\"],\"btSelectItem\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 11:41:28');
INSERT INTO `sys_oper_log` VALUES ('383', '收入管理', '2', 'com.ruoyi.web.controller.system.NIncomeController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/income/edit', '127.0.0.1', '内网IP', '{\"id\":[\"5\"],\"niTitle\":[\"2022融资0516\"],\"niSurplus\":[\"300\"],\"niStatus\":[\"0\"],\"remark\":[\"\"],\"index\":[\"1\",\"2\"],\"nIncomeSourcesList[0].nisName\":[\"伍春晖\"],\"nIncomeSourcesList[0].nisMoney\":[\"100\"],\"nIncomeSourcesList[0].remark\":[\"\"],\"nIncomeSourcesList[1].nisName\":[\"123\"],\"nIncomeSourcesList[1].nisMoney\":[\"11\"],\"nIncomeSourcesList[1].remark\":[\"\"],\"btSelectAll\":[\"\"],\"btSelectItem\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 11:41:42');
INSERT INTO `sys_oper_log` VALUES ('384', '收入管理', '2', 'com.ruoyi.web.controller.system.NIncomeController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/income/edit', '127.0.0.1', '内网IP', '{\"id\":[\"5\"],\"niTitle\":[\"2022融资0516\"],\"niSurplus\":[\"300\"],\"niStatus\":[\"0\"],\"remark\":[\"\"],\"index\":[\"1\"],\"nIncomeSourcesList[0].nisName\":[\"伍春晖\"],\"nIncomeSourcesList[0].nisMoney\":[\"100\"],\"nIncomeSourcesList[0].remark\":[\"\"],\"btSelectAll\":[\"\"],\"btSelectItem\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 14:07:31');
INSERT INTO `sys_oper_log` VALUES ('385', '收入管理', '2', 'com.ruoyi.web.controller.system.NIncomeController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/income/edit', '127.0.0.1', '内网IP', '{\"id\":[\"5\"],\"niTitle\":[\"2022融资0516\"],\"niSurplus\":[\"300\"],\"niStatus\":[\"0\"],\"remark\":[\"\"],\"index\":[\"1\"],\"nIncomeSourcesList[0].nisName\":[\"伍春晖\"],\"nIncomeSourcesList[0].nisMoney\":[\"100\"],\"nIncomeSourcesList[0].remark\":[\"\"],\"btSelectAll\":[\"\"],\"btSelectItem\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 14:07:33');
INSERT INTO `sys_oper_log` VALUES ('386', '收入管理', '2', 'com.ruoyi.web.controller.system.NIncomeController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/income/edit', '127.0.0.1', '内网IP', '{\"id\":[\"5\"],\"niTitle\":[\"2022融资0516\"],\"niSurplus\":[\"300\"],\"niStatus\":[\"0\"],\"remark\":[\"\"],\"index\":[\"1\",\"2\",\"3\"],\"nIncomeSourcesList[0].nisName\":[\"伍春晖\"],\"nIncomeSourcesList[0].nisMoney\":[\"100\"],\"nIncomeSourcesList[0].remark\":[\"\"],\"nIncomeSourcesList[1].nisName\":[\"丁荣华\"],\"nIncomeSourcesList[1].nisMoney\":[\"100\"],\"nIncomeSourcesList[1].remark\":[\"\"],\"nIncomeSourcesList[2].nisName\":[\"李政霖\"],\"nIncomeSourcesList[2].nisMoney\":[\"50\"],\"nIncomeSourcesList[2].remark\":[\"\"],\"btSelectAll\":[\"\"],\"btSelectItem\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 14:21:37');
INSERT INTO `sys_oper_log` VALUES ('387', '收入管理', '1', 'com.ruoyi.web.controller.system.NIncomeController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/income/add', '127.0.0.1', '内网IP', '{\"niTitle\":[\"2022融资\"],\"niSurplus\":[\"200\"],\"niStatus\":[\"0\"],\"remark\":[\"\"],\"index\":[\"1\"],\"nIncomeSourcesList[0].nisName\":[\"伍春晖\"],\"nIncomeSourcesList[0].nisMoney\":[\"110\"],\"nIncomeSourcesList[0].remark\":[\"\"],\"btSelectAll\":[\"\"],\"btSelectItem\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 14:23:43');
INSERT INTO `sys_oper_log` VALUES ('388', '收入管理', '2', 'com.ruoyi.web.controller.system.NIncomeController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/income/edit', '127.0.0.1', '内网IP', '{\"id\":[\"6\"],\"niTitle\":[\"2022融资\"],\"niSurplus\":[\"200\"],\"niStatus\":[\"0\"],\"remark\":[\"\"],\"index\":[\"1\",\"2\"],\"nIncomeSourcesList[0].nisName\":[\"伍春晖\"],\"nIncomeSourcesList[0].nisMoney\":[\"180\"],\"nIncomeSourcesList[0].remark\":[\"\"],\"nIncomeSourcesList[1].nisName\":[\"丁荣华\"],\"nIncomeSourcesList[1].nisMoney\":[\"110\"],\"nIncomeSourcesList[1].remark\":[\"\"],\"btSelectAll\":[\"\"],\"btSelectItem\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 14:27:19');
INSERT INTO `sys_oper_log` VALUES ('389', '收入管理', '3', 'com.ruoyi.web.controller.system.NIncomeController.remove()', 'POST', '1', 'admin', '研发部门', '/system/income/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"6\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 14:29:48');
INSERT INTO `sys_oper_log` VALUES ('390', '收入管理', '2', 'com.ruoyi.web.controller.system.NIncomeController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/income/edit', '127.0.0.1', '内网IP', '{\"id\":[\"5\"],\"niTitle\":[\"2022融资0516\"],\"niSurplus\":[\"300\"],\"niStatus\":[\"1\"],\"remark\":[\"\"],\"index\":[\"1\",\"2\",\"3\"],\"nIncomeSourcesList[0].nisName\":[\"伍春晖\"],\"nIncomeSourcesList[0].nisMoney\":[\"100\"],\"nIncomeSourcesList[0].remark\":[\"\"],\"nIncomeSourcesList[1].nisName\":[\"丁荣华\"],\"nIncomeSourcesList[1].nisMoney\":[\"100\"],\"nIncomeSourcesList[1].remark\":[\"\"],\"nIncomeSourcesList[2].nisName\":[\"李政霖\"],\"nIncomeSourcesList[2].nisMoney\":[\"50\"],\"nIncomeSourcesList[2].remark\":[\"\"],\"btSelectAll\":[\"\"],\"btSelectItem\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 14:33:25');
INSERT INTO `sys_oper_log` VALUES ('391', '收入管理', '2', 'com.ruoyi.web.controller.system.NIncomeController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/income/edit', '127.0.0.1', '内网IP', '{\"id\":[\"5\"],\"niTitle\":[\"2022融资0516\"],\"niSurplus\":[\"300\"],\"niStatus\":[\"0\"],\"remark\":[\"\"],\"index\":[\"1\",\"2\",\"3\"],\"nIncomeSourcesList[0].nisName\":[\"伍春晖\"],\"nIncomeSourcesList[0].nisMoney\":[\"100\"],\"nIncomeSourcesList[0].remark\":[\"\"],\"nIncomeSourcesList[1].nisName\":[\"丁荣华\"],\"nIncomeSourcesList[1].nisMoney\":[\"100\"],\"nIncomeSourcesList[1].remark\":[\"\"],\"nIncomeSourcesList[2].nisName\":[\"李政霖\"],\"nIncomeSourcesList[2].nisMoney\":[\"50\"],\"nIncomeSourcesList[2].remark\":[\"\"],\"btSelectAll\":[\"\"],\"btSelectItem\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 14:33:28');
INSERT INTO `sys_oper_log` VALUES ('392', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"n_expend\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 15:22:41');
INSERT INTO `sys_oper_log` VALUES ('393', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"33\"],\"tableName\":[\"n_expend\"],\"tableComment\":[\"支出管理\"],\"className\":[\"NExpend\"],\"functionAuthor\":[\"wuchunhui\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"347\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"348\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"创建用户\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"createBy\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"349\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"350\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"更新用户\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"updateBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"351\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"更新时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updateTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"352\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"名称\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"neTitle\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"353\"],\"columns[6].sort\":[\"7\"],\"columns[6].columnComment\":[', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 15:23:43');
INSERT INTO `sys_oper_log` VALUES ('394', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发部门', '/tool/gen/download/n_expend', '127.0.0.1', '内网IP', '\"n_expend\"', null, '0', null, '2022-05-16 15:24:58');
INSERT INTO `sys_oper_log` VALUES ('395', '支出管理', '1', 'com.ruoyi.web.controller.system.NExpendController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/expend/add', '127.0.0.1', '内网IP', '{\"neTitle\":[\"2022比赛\"],\"neMoney\":[\"25\"],\"neLastSurplus\":[\"300\"],\"neContent\":[\"<p>水费</p>\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 15:36:56');
INSERT INTO `sys_oper_log` VALUES ('396', '收入管理', '2', 'com.ruoyi.web.controller.system.NIncomeController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/income/edit', '127.0.0.1', '内网IP', '{\"id\":[\"5\"],\"niTitle\":[\"20220516剩余\"],\"niSurplus\":[\"273\"],\"niStatus\":[\"0\"],\"remark\":[\"\"],\"btSelectAll\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 15:41:56');
INSERT INTO `sys_oper_log` VALUES ('397', '支出管理', '3', 'com.ruoyi.web.controller.system.NExpendController.remove()', 'POST', '1', 'admin', '研发部门', '/system/expend/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"21\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 15:42:05');
INSERT INTO `sys_oper_log` VALUES ('398', '支出管理', '1', 'com.ruoyi.web.controller.system.NExpendController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/expend/add', '127.0.0.1', '内网IP', '{\"neTitle\":[\"测试一下\"],\"neContent\":[\"<p>测试</p>\"],\"neMoney\":[\"73\"],\"neLastSurplus\":[\"273\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-16 15:42:25');
INSERT INTO `sys_oper_log` VALUES ('399', '信息管理', '1', 'com.ruoyi.web.controller.system.ClaimController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/claim/add', '127.0.0.1', '内网IP', '{\"cityName\":[\"测试\"],\"areaName\":[\"测试\"],\"schoolName\":[\"测试\"],\"schoolGradeName\":[\"1\"],\"schoolClassName\":[\"1\"],\"stuCard\":[\"431221199202011010\"],\"stuName\":[\"伍春晖\"],\"stuSex\":[\"0\"],\"parentsName\":[\"伍春晖\"],\"parentsCard\":[\"431221199202011010\"],\"parentsCall\":[\"18665022235\"],\"payMoney\":[\"70\"],\"paySerial\":[\"431221199202011010664\"],\"state\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-19 09:21:34');
INSERT INTO `sys_oper_log` VALUES ('400', '信息管理', '2', 'com.ruoyi.web.controller.system.ClaimController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/claim/edit', '127.0.0.1', '内网IP', '{\"id\":[\"16\"],\"insuranceCompanyPerson.insuranceCompany.id\":[\"2\"],\"insuranceCompanyPerson.insuranceCompany.companyName\":[\"中国人寿怀化分公司\"],\"insuranceCompanyPerson.id\":[\"28\"],\"insuranceCompanyPerson.personName\":[\"黄立新\"],\"evolevState\":[\"2\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-19 09:23:38');
INSERT INTO `sys_oper_log` VALUES ('401', '信息管理完成', '2', 'com.ruoyi.web.controller.system.ClaimController.finishClaim()', 'POST', '1', 'admin', '研发部门', '/system/claim/finishClaim', '127.0.0.1', '内网IP', '{\"id\":[\"16\"],\"insuranceCompanyPerson.insuranceCompany.id\":[\"2\"],\"insuranceCompanyPerson.id\":[\"28\"],\"evolevState\":[\"3\"],\"claimType\":[\"1\"],\"claimMoney\":[\"1000\"],\"finishTime\":[\"2022-05-19 09:30:45\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-19 09:24:01');
INSERT INTO `sys_oper_log` VALUES ('402', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"hbd_salesman\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-19 15:16:55');
INSERT INTO `sys_oper_log` VALUES ('403', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', '研发部门', '/tool/gen/synchDb/hbd_salesman', '127.0.0.1', '内网IP', '\"hbd_salesman\"', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-19 15:19:04');
INSERT INTO `sys_oper_log` VALUES ('404', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"34\"],\"tableName\":[\"hbd_salesman\"],\"tableComment\":[\"营销员管理\"],\"className\":[\"HbdSalesman\"],\"functionAuthor\":[\"wuchunhui\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"359\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"360\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"创建用户\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"createBy\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"361\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"362\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"更新用户\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"updateBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"363\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"更新时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updateTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"364\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"姓名\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"sName\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].queryType\":[\"LIKE\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"365\"],\"columns[6].sort\":[\"7\"],\"columns[6].columnC', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-19 15:22:02');
INSERT INTO `sys_oper_log` VALUES ('405', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"营销员管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"8\"],\"icon\":[\"fa fa-address-book-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-19 15:22:31');
INSERT INTO `sys_oper_log` VALUES ('406', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"34\"],\"tableName\":[\"hbd_salesman\"],\"tableComment\":[\"营销员管理\"],\"className\":[\"HbdSalesman\"],\"functionAuthor\":[\"wuchunhui\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"359\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"360\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"创建用户\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"createBy\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"361\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"362\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"更新用户\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"updateBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"363\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"更新时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updateTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"364\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"姓名\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"sName\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].queryType\":[\"LIKE\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"365\"],\"columns[6].sort\":[\"7\"],\"columns[6].columnC', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-19 15:23:08');
INSERT INTO `sys_oper_log` VALUES ('407', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发部门', '/tool/gen/download/hbd_salesman', '127.0.0.1', '内网IP', '\"hbd_salesman\"', null, '0', null, '2022-05-19 15:23:15');
INSERT INTO `sys_oper_log` VALUES ('408', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"34\"],\"tableName\":[\"hbd_salesman\"],\"tableComment\":[\"营销员管理\"],\"className\":[\"HbdSalesman\"],\"functionAuthor\":[\"wuchunhui\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"359\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"360\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"创建用户\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"createBy\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"361\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"362\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"更新用户\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"updateBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"363\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"更新时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updateTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"364\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"姓名\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"sName\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].queryType\":[\"LIKE\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"365\"],\"columns[6].sort\":[\"7\"],\"columns[6].columnC', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-19 15:23:41');
INSERT INTO `sys_oper_log` VALUES ('409', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发部门', '/tool/gen/download/hbd_salesman', '127.0.0.1', '内网IP', '\"hbd_salesman\"', null, '0', null, '2022-05-19 15:24:10');
INSERT INTO `sys_oper_log` VALUES ('410', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"34\"],\"tableName\":[\"hbd_salesman\"],\"tableComment\":[\"营销员管理\"],\"className\":[\"HbdSalesman\"],\"functionAuthor\":[\"wuchunhui\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"359\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"360\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"创建用户\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"createBy\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"361\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"362\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"更新用户\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"updateBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"363\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"更新时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updateTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"364\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"姓名\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"sName\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].queryType\":[\"LIKE\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"365\"],\"columns[6].sort\":[\"7\"],\"columns[6].columnC', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-19 15:33:22');
INSERT INTO `sys_oper_log` VALUES ('411', '人员管理', '1', 'com.ruoyi.web.controller.system.HbdSalesmanController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/salesman/add', '127.0.0.1', '内网IP', '{\"sName\":[\"伍春晖\"],\"sCard\":[\"431221199202011010\"],\"sSex\":[\"0\"],\"state\":[\"0\"],\"remark\":[\"测试\"],\"bankCard\":[\"6221805670001024275\"],\"openingBank\":[\"中国邮政\"],\"address\":[\"桐木\"],\"phone\":[\"18665022235\"],\"balance\":[\"20\"],\"referrer\":[\"伍春晖\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-19 15:34:38');
INSERT INTO `sys_oper_log` VALUES ('412', '人员管理', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/salesman/edit', '127.0.0.1', '内网IP', '{\"id\":[\"23\"],\"sName\":[\"伍春晖\"],\"sCard\":[\"431221199202011010\"],\"sSex\":[\"0\"],\"state\":[\"1\"],\"remark\":[\"测试\"],\"bankCard\":[\"6221805670001024275\"],\"openingBank\":[\"中国邮政\"],\"address\":[\"桐木\"],\"phone\":[\"18665022235\"],\"balance\":[\"20.0\"],\"referrer\":[\"伍春晖\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-19 15:34:49');
INSERT INTO `sys_oper_log` VALUES ('413', '人员管理', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/salesman/edit', '127.0.0.1', '内网IP', '{\"id\":[\"23\"],\"sName\":[\"周时菊\"],\"sCard\":[\"433001195708043041\"],\"sSex\":[\"1\"],\"state\":[\"1\"],\"remark\":[\"备用营销员\"],\"bankCard\":[\"6221805670001024275\"],\"openingBank\":[\"中国邮政\"],\"address\":[\"桐木\"],\"phone\":[\"18665022235\"],\"balance\":[\"20.0\"],\"referrer\":[\"伍春晖\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-19 15:35:23');
INSERT INTO `sys_oper_log` VALUES ('414', '人员管理', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/salesman/edit', '127.0.0.1', '内网IP', '{\"id\":[\"23\"],\"depositTime\":[\"2022-05-19\"],\"referrer\":[\"\",\"伍春晖\"],\"sName\":[\"周时菊\"],\"bankCard\":[\"6221805670001024275\"],\"openingBank\":[\"中国邮政\"],\"balance\":[\"20.0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-19 16:10:49');
INSERT INTO `sys_oper_log` VALUES ('415', '存入', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.deposit()', 'POST', '1', 'admin', '研发部门', '/system/salesman/deposit', '127.0.0.1', '内网IP', '', null, '1', '', '2022-05-19 16:25:54');
INSERT INTO `sys_oper_log` VALUES ('416', '存入', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.deposit()', 'POST', '1', 'admin', '研发部门', '/system/salesman/deposit', '127.0.0.1', '内网IP', '', null, '1', '', '2022-05-19 16:27:43');
INSERT INTO `sys_oper_log` VALUES ('417', '存入', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.deposit()', 'POST', '1', 'admin', '研发部门', '/system/salesman/deposit', '127.0.0.1', '内网IP', '', null, '1', '', '2022-05-19 16:28:23');
INSERT INTO `sys_oper_log` VALUES ('418', '存入', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.deposit()', 'POST', '1', 'admin', '研发部门', '/system/salesman/deposit', '127.0.0.1', '内网IP', '{\"params\":{},\"updateTime\":1652948946752}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2022-05-19 16:29:06');
INSERT INTO `sys_oper_log` VALUES ('419', '存入', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.deposit()', 'POST', '1', 'admin', '研发部门', '/system/salesman/deposit', '127.0.0.1', '内网IP', '{\"params\":{},\"updateTime\":1652948968790}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2022-05-19 16:29:28');
INSERT INTO `sys_oper_log` VALUES ('420', '存入', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.deposit()', 'POST', '1', 'admin', '研发部门', '/system/salesman/deposit', '127.0.0.1', '内网IP', '{\"params\":{},\"updateTime\":1652948987551}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2022-05-19 16:29:47');
INSERT INTO `sys_oper_log` VALUES ('421', '学校管理', '2', 'com.ruoyi.web.controller.system.SchoolController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/school/edit', '127.0.0.1', '内网IP', '{\"id\":[\"31191\"],\"schoolName\":[\"市幼儿园湖天分园\"],\"isPublic\":[\"0\"],\"countyDeptId\":[\"440\"],\"remark\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-19 16:30:11');
INSERT INTO `sys_oper_log` VALUES ('422', '存入', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.deposit()', 'POST', '1', 'admin', '研发部门', '/system/salesman/deposit', '127.0.0.1', '内网IP', '{\"params\":{},\"updateTime\":1652949033242}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2022-05-19 16:30:33');
INSERT INTO `sys_oper_log` VALUES ('423', '存入', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.deposit()', 'POST', '1', 'admin', '研发部门', '/system/salesman/deposit', '127.0.0.1', '内网IP', '{\"params\":{},\"updateTime\":1652949062148}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2022-05-19 16:31:02');
INSERT INTO `sys_oper_log` VALUES ('424', '存入', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.deposit()', 'POST', '1', 'admin', '研发部门', '/system/salesman/deposit', '127.0.0.1', '内网IP', '{\"params\":{},\"updateTime\":1652949069194}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2022-05-19 16:31:09');
INSERT INTO `sys_oper_log` VALUES ('425', '存入', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.deposit()', 'POST', '1', 'admin', '研发部门', '/system/salesman/deposit', '127.0.0.1', '内网IP', '{\"params\":{},\"updateTime\":1652949092116}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2022-05-19 16:31:32');
INSERT INTO `sys_oper_log` VALUES ('426', '存入', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.deposit()', 'POST', '1', 'admin', '研发部门', '/system/salesman/deposit', '127.0.0.1', '内网IP', '{\"params\":{},\"updateTime\":1652949157288}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2022-05-19 16:32:37');
INSERT INTO `sys_oper_log` VALUES ('427', '存入', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.deposit()', 'POST', '1', 'admin', '研发部门', '/system/salesman/deposit', '127.0.0.1', '内网IP', '{\"params\":{},\"updateTime\":1652949159384}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2022-05-19 16:32:39');
INSERT INTO `sys_oper_log` VALUES ('428', '存入', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.deposit()', 'POST', '1', 'admin', '研发部门', '/system/salesman/deposit', '127.0.0.1', '内网IP', '{\"params\":{},\"updateTime\":1652949163269}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2022-05-19 16:32:43');
INSERT INTO `sys_oper_log` VALUES ('429', '存入', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.deposit()', 'POST', '1', 'admin', '研发部门', '/system/salesman/deposit', '127.0.0.1', '内网IP', '{\"id\":[\"23\"],\"depositTime\":[\"\"],\"depositMoney\":[\"\"],\"sName\":[\"周时菊\"],\"bankCard\":[\"6221805670001024275\"],\"openingBank\":[\"中国邮政\"],\"balance\":[\"20.0\"],\"referrer\":[\"伍春晖\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-19 16:33:14');
INSERT INTO `sys_oper_log` VALUES ('430', '存入', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.deposit()', 'POST', '1', 'admin', '研发部门', '/system/salesman/deposit', '127.0.0.1', '内网IP', '{\"id\":[\"23\"],\"depositTime\":[\"2022-05-19\"],\"depositMoney\":[\"2000\"],\"sName\":[\"周时菊\"],\"bankCard\":[\"6221805670001024275\"],\"openingBank\":[\"中国邮政\"],\"balance\":[\"20.0\"],\"referrer\":[\"伍春晖\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-19 16:34:32');
INSERT INTO `sys_oper_log` VALUES ('431', '存入', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.deposit()', 'POST', '1', 'admin', '研发部门', '/system/salesman/deposit', '127.0.0.1', '内网IP', '{\"id\":[\"23\"],\"depositTime\":[\"2022-05-19\"],\"depositMoney\":[\"2000.18\"],\"sName\":[\"周时菊\"],\"bankCard\":[\"6221805670001024275\"],\"openingBank\":[\"中国邮政\"],\"balance\":[\"20.0\"],\"referrer\":[\"伍春晖\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-19 16:38:01');
INSERT INTO `sys_oper_log` VALUES ('432', '存入', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.deposit()', 'POST', '1', 'admin', '研发部门', '/system/salesman/deposit', '127.0.0.1', '内网IP', '{\"id\":[\"23\"],\"depositTime\":[\"2022-05-19\"],\"depositMoney\":[\"500.69\"],\"sName\":[\"周时菊\"],\"bankCard\":[\"6221805670001024275\"],\"openingBank\":[\"中国邮政\"],\"balance\":[\"2020.18\"],\"referrer\":[\"伍春晖\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-19 16:38:28');
INSERT INTO `sys_oper_log` VALUES ('433', '人员管理', '3', 'com.ruoyi.web.controller.system.HbdSalesmanController.remove()', 'POST', '1', 'admin', '研发部门', '/system/salesman/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"23\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-19 16:38:50');
INSERT INTO `sys_oper_log` VALUES ('434', '人员管理', '1', 'com.ruoyi.web.controller.system.HbdSalesmanController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/salesman/add', '127.0.0.1', '内网IP', '{\"sName\":[\"伍元龙\"],\"sCard\":[\"\"],\"sSex\":[\"0\"],\"state\":[\"0\"],\"remark\":[\"\"],\"bankCard\":[\"\"],\"openingBank\":[\"\"],\"address\":[\"\"],\"phone\":[\"\"],\"balance\":[\"93.90\"],\"referrer\":[\"伍春晖\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-19 16:39:35');
INSERT INTO `sys_oper_log` VALUES ('435', '人员管理', '1', 'com.ruoyi.web.controller.system.HbdSalesmanController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/salesman/add', '127.0.0.1', '内网IP', '{\"sName\":[\"伍小龙\"],\"sCard\":[\"\"],\"sSex\":[\"0\"],\"state\":[\"0\"],\"remark\":[\"\"],\"bankCard\":[\"\"],\"openingBank\":[\"\"],\"address\":[\"\"],\"phone\":[\"\"],\"balance\":[\"93.78\"],\"referrer\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-19 16:39:55');
INSERT INTO `sys_oper_log` VALUES ('436', '人员管理', '1', 'com.ruoyi.web.controller.system.HbdSalesmanController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/salesman/add', '127.0.0.1', '内网IP', '{\"sName\":[\"郑春连\"],\"sCard\":[\"\"],\"sSex\":[\"0\"],\"state\":[\"0\"],\"remark\":[\"\"],\"bankCard\":[\"\"],\"openingBank\":[\"\"],\"address\":[\"\"],\"phone\":[\"\"],\"balance\":[\"94.40\"],\"referrer\":[\"伍春晖\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-19 16:40:35');
INSERT INTO `sys_oper_log` VALUES ('437', '人员管理', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/salesman/edit', '127.0.0.1', '内网IP', '{\"id\":[\"25\"],\"sName\":[\"伍小龙\"],\"sCard\":[\"\"],\"sSex\":[\"0\"],\"state\":[\"0\"],\"remark\":[\"\"],\"bankCard\":[\"\"],\"openingBank\":[\"\"],\"address\":[\"\"],\"phone\":[\"\"],\"balance\":[\"93.78\"],\"referrer\":[\"伍春晖\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-19 16:40:45');
INSERT INTO `sys_oper_log` VALUES ('438', '人员管理', '1', 'com.ruoyi.web.controller.system.HbdSalesmanController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/salesman/add', '127.0.0.1', '内网IP', '{\"sName\":[\"郑光玉\"],\"sCard\":[\"\"],\"sSex\":[\"0\"],\"state\":[\"0\"],\"remark\":[\"\"],\"bankCard\":[\"\"],\"openingBank\":[\"\"],\"address\":[\"\"],\"phone\":[\"\"],\"balance\":[\"32.01\"],\"referrer\":[\"伍春晖\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-19 16:41:07');
INSERT INTO `sys_oper_log` VALUES ('439', '人员管理', '1', 'com.ruoyi.web.controller.system.HbdSalesmanController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/salesman/add', '127.0.0.1', '内网IP', '{\"sName\":[\"伍成龙\"],\"sCard\":[\"\"],\"sSex\":[\"0\"],\"state\":[\"0\"],\"remark\":[\"\"],\"bankCard\":[\"\"],\"openingBank\":[\"\"],\"address\":[\"\"],\"phone\":[\"\"],\"balance\":[\"11283.85\"],\"referrer\":[\"伍春晖\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-19 16:41:40');
INSERT INTO `sys_oper_log` VALUES ('440', '人员管理', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/salesman/edit', '127.0.0.1', '内网IP', '{\"id\":[\"26\"],\"sName\":[\"郑春连\"],\"sCard\":[\"\"],\"sSex\":[\"1\"],\"state\":[\"0\"],\"remark\":[\"\"],\"bankCard\":[\"\"],\"openingBank\":[\"\"],\"address\":[\"\"],\"phone\":[\"\"],\"balance\":[\"94.4\"],\"referrer\":[\"伍春晖\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-19 16:41:59');
INSERT INTO `sys_oper_log` VALUES ('441', '人员管理', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/salesman/edit', '127.0.0.1', '内网IP', '{\"id\":[\"27\"],\"sName\":[\"郑光玉\"],\"sCard\":[\"\"],\"sSex\":[\"0\"],\"state\":[\"1\"],\"remark\":[\"\"],\"bankCard\":[\"\"],\"openingBank\":[\"\"],\"address\":[\"\"],\"phone\":[\"\"],\"balance\":[\"32.01\"],\"referrer\":[\"伍春晖\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-19 16:42:03');
INSERT INTO `sys_oper_log` VALUES ('442', '人员管理', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/salesman/edit', '127.0.0.1', '内网IP', '{\"id\":[\"27\"],\"sName\":[\"郑光玉\"],\"sCard\":[\"\"],\"sSex\":[\"1\"],\"state\":[\"0\"],\"remark\":[\"\"],\"bankCard\":[\"\"],\"openingBank\":[\"\"],\"address\":[\"\"],\"phone\":[\"\"],\"balance\":[\"32.01\"],\"referrer\":[\"伍春晖\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-19 16:42:07');
INSERT INTO `sys_oper_log` VALUES ('443', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"hbd_salesman_messqges\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 09:31:49');
INSERT INTO `sys_oper_log` VALUES ('444', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"营销员存取类型\"],\"dictType\":[\"money_type\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 09:33:23');
INSERT INTO `sys_oper_log` VALUES ('445', '字典类型', '2', 'com.ruoyi.web.controller.system.SysDictTypeController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/edit', '127.0.0.1', '内网IP', '{\"dictId\":[\"106\"],\"dictName\":[\"营销员存取类型\"],\"dictType\":[\"money_type\"],\"status\":[\"0\"],\"remark\":[\"存取钱类型\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 09:33:36');
INSERT INTO `sys_oper_log` VALUES ('446', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"存取\"],\"dictValue\":[\"1\"],\"dictType\":[\"money_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 09:33:52');
INSERT INTO `sys_oper_log` VALUES ('447', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"取钱\"],\"dictValue\":[\"2\"],\"dictType\":[\"money_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 09:34:03');
INSERT INTO `sys_oper_log` VALUES ('448', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"117\"],\"dictLabel\":[\"存钱\"],\"dictValue\":[\"1\"],\"dictType\":[\"money_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 09:34:12');
INSERT INTO `sys_oper_log` VALUES ('449', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"35\"],\"tableName\":[\"hbd_salesman_messqges\"],\"tableComment\":[\"营销员信息表\"],\"className\":[\"HbdSalesmanMessqges\"],\"functionAuthor\":[\"wuchunhui\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"375\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"376\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"创建用户\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"createBy\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"377\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"378\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"更新用户\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"updateBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"379\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"更新时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updateTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"380\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"存取类型\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"smType\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"select\"],\"columns[5].dictType\":[\"money_type\"],\"columns[6].columnId\":[\"381\"],\"columns[6].sor', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 09:35:44');
INSERT INTO `sys_oper_log` VALUES ('450', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发部门', '/tool/gen/download/hbd_salesman_messqges', '127.0.0.1', '内网IP', '\"hbd_salesman_messqges\"', null, '0', null, '2022-05-20 09:35:50');
INSERT INTO `sys_oper_log` VALUES ('451', '人员管理', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/salesman/edit', '127.0.0.1', '内网IP', '{\"id\":[\"28\"],\"sName\":[\"伍成龙\"],\"sCard\":[\"433001196602063014\"],\"sSex\":[\"0\"],\"state\":[\"0\"],\"remark\":[\"\"],\"bankCard\":[\"6013827505000770772\"],\"openingBank\":[\"中国银行\"],\"address\":[\"湖南省中方县桐木镇桐木村轿子岩组\"],\"phone\":[\"13117458121\"],\"balance\":[\"11283.85\"],\"referrer\":[\"伍春晖\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 09:42:41');
INSERT INTO `sys_oper_log` VALUES ('452', '人员管理', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/salesman/edit', '127.0.0.1', '内网IP', '{\"id\":[\"24\"],\"sName\":[\"伍元龙\"],\"sCard\":[\"433001197109033019\"],\"sSex\":[\"0\"],\"state\":[\"0\"],\"remark\":[\"\"],\"bankCard\":[\"6217995670010020478\"],\"openingBank\":[\"中国邮政储蓄银行\"],\"address\":[\"湖南省中方县桐木镇街上\"],\"phone\":[\"13257458892\"],\"balance\":[\"93.9\"],\"referrer\":[\"伍春晖\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 09:43:51');
INSERT INTO `sys_oper_log` VALUES ('453', '人员管理', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/salesman/edit', '127.0.0.1', '内网IP', '{\"id\":[\"26\"],\"sName\":[\"郑春连\"],\"sCard\":[\"433027196002085821\"],\"sSex\":[\"1\"],\"state\":[\"0\"],\"remark\":[\"\"],\"bankCard\":[\"\"],\"openingBank\":[\"\"],\"address\":[\"湖南省怀化市鹤城区狮子岩路7号3栋3单元1号\"],\"phone\":[\"18128185023\"],\"balance\":[\"94.4\"],\"referrer\":[\"伍春晖\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 09:44:43');
INSERT INTO `sys_oper_log` VALUES ('454', '人员管理', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/salesman/edit', '127.0.0.1', '内网IP', '{\"id\":[\"26\"],\"sName\":[\"郑春连\"],\"sCard\":[\"433027196002085821\"],\"sSex\":[\"1\"],\"state\":[\"0\"],\"remark\":[\"\"],\"bankCard\":[\"\"],\"openingBank\":[\"中国邮政储蓄银行\"],\"address\":[\"湖南省怀化市鹤城区狮子岩路7号3栋3单元1号\"],\"phone\":[\"18128185023\"],\"balance\":[\"94.4\"],\"referrer\":[\"伍春晖\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 09:44:52');
INSERT INTO `sys_oper_log` VALUES ('455', '人员管理', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/salesman/edit', '127.0.0.1', '内网IP', '{\"id\":[\"26\"],\"sName\":[\"郑春连\"],\"sCard\":[\"433027196002085821\"],\"sSex\":[\"1\"],\"state\":[\"0\"],\"remark\":[\"\"],\"bankCard\":[\"\"],\"openingBank\":[\"中国邮政储蓄银行\"],\"address\":[\"湖南省怀化市鹤城区狮子岩路7号3栋3单元1号\"],\"phone\":[\"18128185023\"],\"balance\":[\"94.4\"],\"referrer\":[\"伍春晖\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 09:45:50');
INSERT INTO `sys_oper_log` VALUES ('456', '人员管理', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/salesman/edit', '127.0.0.1', '内网IP', '{\"id\":[\"27\"],\"sName\":[\"郑光玉\"],\"sCard\":[\"433001196503213021\"],\"sSex\":[\"1\"],\"state\":[\"0\"],\"remark\":[\"\"],\"bankCard\":[\"\"],\"openingBank\":[\"\"],\"address\":[\"\"],\"phone\":[\"13272260260\"],\"balance\":[\"32.01\"],\"referrer\":[\"伍春晖\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 09:46:20');
INSERT INTO `sys_oper_log` VALUES ('457', '人员管理', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/salesman/edit', '127.0.0.1', '内网IP', '{\"id\":[\"27\"],\"sName\":[\"郑光玉\"],\"sCard\":[\"433001196503213021\"],\"sSex\":[\"1\"],\"state\":[\"0\"],\"remark\":[\"\"],\"bankCard\":[\"\"],\"openingBank\":[\"\"],\"address\":[\"湖南省中方县桐木镇桐木村轿子岩组\"],\"phone\":[\"13272260260\"],\"balance\":[\"32.01\"],\"referrer\":[\"伍春晖\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 09:46:28');
INSERT INTO `sys_oper_log` VALUES ('458', '人员管理', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/salesman/edit', '127.0.0.1', '内网IP', '{\"id\":[\"25\"],\"sName\":[\"伍小龙\"],\"sCard\":[\"43300119681104301X\"],\"sSex\":[\"0\"],\"state\":[\"0\"],\"remark\":[\"\"],\"bankCard\":[\"\"],\"openingBank\":[\"\"],\"address\":[\"桐木镇街上\"],\"phone\":[\"13204921922\"],\"balance\":[\"93.78\"],\"referrer\":[\"伍春晖\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 09:47:35');
INSERT INTO `sys_oper_log` VALUES ('459', '人员管理', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/salesman/edit', '127.0.0.1', '内网IP', '{\"id\":[\"25\"],\"sName\":[\"伍小龙\"],\"sCard\":[\"43300119681104301X\"],\"sSex\":[\"0\"],\"state\":[\"0\"],\"remark\":[\"\"],\"bankCard\":[\"\"],\"openingBank\":[\"中国邮政储蓄银行\"],\"address\":[\"桐木镇街上\"],\"phone\":[\"13204921922\"],\"balance\":[\"93.78\"],\"referrer\":[\"伍春晖\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 09:47:41');
INSERT INTO `sys_oper_log` VALUES ('460', '人员管理', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/salesman/edit', '127.0.0.1', '内网IP', '{\"id\":[\"27\"],\"sName\":[\"郑光玉\"],\"sCard\":[\"433001196503213021\"],\"sSex\":[\"1\"],\"state\":[\"0\"],\"remark\":[\"\"],\"bankCard\":[\"\"],\"openingBank\":[\"中方县农村信用社\"],\"address\":[\"湖南省中方县桐木镇桐木村轿子岩组\"],\"phone\":[\"13272260260\"],\"balance\":[\"32.01\"],\"referrer\":[\"伍春晖\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 09:47:49');
INSERT INTO `sys_oper_log` VALUES ('461', '存入', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.deposit()', 'POST', '1', 'admin', '研发部门', '/system/salesman/deposit', '127.0.0.1', '内网IP', '{\"id\":[\"24\"],\"depositTime\":[\"2022-05-20\"],\"depositMoney\":[\"100\"],\"sName\":[\"伍元龙\"],\"bankCard\":[\"6217995670010020478\"],\"openingBank\":[\"中国邮政储蓄银行\"],\"balance\":[\"93.9\"],\"referrer\":[\"伍春晖\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 09:54:44');
INSERT INTO `sys_oper_log` VALUES ('462', '存入', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.deposit()', 'POST', '1', 'admin', '研发部门', '/system/salesman/deposit', '127.0.0.1', '内网IP', '{\"id\":[\"24\"],\"depositTime\":[\"2022-05-20\"],\"depositMoney\":[\"200\"],\"sName\":[\"伍元龙\"],\"bankCard\":[\"6217995670010020478\"],\"openingBank\":[\"中国邮政储蓄银行\"],\"balance\":[\"193.9\"],\"referrer\":[\"伍春晖\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 09:56:06');
INSERT INTO `sys_oper_log` VALUES ('463', '信息管理', '1', 'com.ruoyi.web.controller.system.HbdSalesmanMessqgesController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/messqges/add', '127.0.0.1', '内网IP', '{\"smType\":[\"1\"],\"smMoney\":[\"22\"],\"state\":[\"0\"],\"salesmanId\":[\"12\"],\"remark\":[\"12\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 09:58:38');
INSERT INTO `sys_oper_log` VALUES ('464', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"35\"],\"tableName\":[\"hbd_salesman_messqges\"],\"tableComment\":[\"营销员信息表\"],\"className\":[\"HbdSalesmanMessqges\"],\"functionAuthor\":[\"wuchunhui\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"375\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"376\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"创建用户\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"createBy\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"377\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"378\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"更新用户\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"updateBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"379\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"更新时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updateTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"380\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"存取类型\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"smType\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"select\"],\"columns[5].dictType\":[\"money_type\"],\"columns[6].columnId\":[\"381\"],\"columns[6].sor', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 09:59:26');
INSERT INTO `sys_oper_log` VALUES ('465', '信息管理', '3', 'com.ruoyi.system.controller.HbdSalesmanMessqgesController.remove()', 'POST', '1', 'admin', '研发部门', '/system/messqges/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"30\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 10:04:00');
INSERT INTO `sys_oper_log` VALUES ('466', '存入', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.deposit()', 'POST', '1', 'admin', '研发部门', '/system/salesman/deposit', '127.0.0.1', '内网IP', '{\"id\":[\"24\"],\"depositTime\":[\"2022-05-20\"],\"depositMoney\":[\"2000\"],\"sName\":[\"伍元龙\"],\"bankCard\":[\"6217995670010020478\"],\"openingBank\":[\"中国邮政储蓄银行\"],\"balance\":[\"393.9\"],\"referrer\":[\"伍春晖\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 10:04:14');
INSERT INTO `sys_oper_log` VALUES ('467', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', '研发部门', '/tool/gen/synchDb/hbd_salesman_messqges', '127.0.0.1', '内网IP', '\"hbd_salesman_messqges\"', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 10:05:39');
INSERT INTO `sys_oper_log` VALUES ('468', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"35\"],\"tableName\":[\"hbd_salesman_messqges\"],\"tableComment\":[\"营销员信息表\"],\"className\":[\"HbdSalesmanMessqges\"],\"functionAuthor\":[\"wuchunhui\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"375\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"376\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"创建用户\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"createBy\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"377\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"378\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"更新用户\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"updateBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"379\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"更新时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updateTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"380\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"类型\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"smType\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"select\"],\"columns[5].dictType\":[\"money_type\"],\"columns[6].columnId\":[\"381\"],\"columns[6].sort\"', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 10:06:26');
INSERT INTO `sys_oper_log` VALUES ('469', '信息管理', '3', 'com.ruoyi.system.controller.HbdSalesmanMessqgesController.remove()', 'POST', '1', 'admin', '研发部门', '/system/messqges/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"32\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 10:08:57');
INSERT INTO `sys_oper_log` VALUES ('470', '存入', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.deposit()', 'POST', '1', 'admin', '研发部门', '/system/salesman/deposit', '127.0.0.1', '内网IP', '{\"id\":[\"24\"],\"depositTime\":[\"2022-05-20\"],\"depositMoney\":[\"600\"],\"sName\":[\"伍元龙\"],\"bankCard\":[\"6217995670010020478\"],\"openingBank\":[\"中国邮政储蓄银行\"],\"balance\":[\"2393.9\"],\"referrer\":[\"伍春晖\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 10:09:56');
INSERT INTO `sys_oper_log` VALUES ('471', '存入', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.deposit()', 'POST', '1', 'admin', '研发部门', '/system/salesman/deposit', '127.0.0.1', '内网IP', '{\"id\":[\"24\"],\"depositTime\":[\"2022-05-20\"],\"depositMoney\":[\"8000\"],\"sName\":[\"伍元龙\"],\"bankCard\":[\"6217995670010020478\"],\"openingBank\":[\"中国邮政储蓄银行\"],\"balance\":[\"2993.9\"],\"referrer\":[\"伍春晖\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 10:10:32');
INSERT INTO `sys_oper_log` VALUES ('472', '取出', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.expend()', 'POST', '1', 'admin', '研发部门', '/system/salesman/expend', '127.0.0.1', '内网IP', '{\"id\":[\"24\"],\"expendTime\":[\"2022-05-20\"],\"depositMoney\":[\"10000\"],\"sName\":[\"伍元龙\"],\"bankCard\":[\"6217995670010020478\"],\"openingBank\":[\"中国邮政储蓄银行\"],\"balance\":[\"10993.9\"],\"referrer\":[\"伍春晖\"]}', null, '1', '', '2022-05-20 10:19:52');
INSERT INTO `sys_oper_log` VALUES ('473', '取出', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.expend()', 'POST', '1', 'admin', '研发部门', '/system/salesman/expend', '127.0.0.1', '内网IP', '{\"id\":[\"24\"],\"expendTime\":[\"2022-05-20\"],\"depositMoney\":[\"2000\"],\"sName\":[\"伍元龙\"],\"bankCard\":[\"6217995670010020478\"],\"openingBank\":[\"中国邮政储蓄银行\"],\"balance\":[\"10993.9\"],\"referrer\":[\"伍春晖\"]}', null, '1', '', '2022-05-20 10:21:34');
INSERT INTO `sys_oper_log` VALUES ('474', '取出', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.expend()', 'POST', '1', 'admin', '研发部门', '/system/salesman/expend', '127.0.0.1', '内网IP', '{\"id\":[\"24\"],\"expendTime\":[\"2022-05-20\"],\"depositMoney\":[\"2000\"],\"sName\":[\"伍元龙\"],\"bankCard\":[\"6217995670010020478\"],\"openingBank\":[\"中国邮政储蓄银行\"],\"balance\":[\"10993.9\"],\"referrer\":[\"伍春晖\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 10:26:55');
INSERT INTO `sys_oper_log` VALUES ('475', '存入', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.deposit()', 'POST', '1', 'admin', '研发部门', '/system/salesman/deposit', '127.0.0.1', '内网IP', '{\"id\":[\"24\"],\"depositTime\":[\"2022-05-20\"],\"depositMoney\":[\"1000\"],\"sName\":[\"伍元龙\"],\"bankCard\":[\"6217995670010020478\"],\"openingBank\":[\"中国邮政储蓄银行\"],\"balance\":[\"8993.9\"],\"referrer\":[\"伍春晖\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 10:27:13');
INSERT INTO `sys_oper_log` VALUES ('476', '存入', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.deposit()', 'POST', '1', 'admin', '研发部门', '/system/salesman/deposit', '127.0.0.1', '内网IP', '{\"id\":[\"24\"],\"depositTime\":[\"2022-05-19\"],\"depositMoney\":[\"2000\"],\"sName\":[\"伍元龙\"],\"bankCard\":[\"6217995670010020478\"],\"openingBank\":[\"中国邮政储蓄银行\"],\"balance\":[\"9993.9\"],\"referrer\":[\"伍春晖\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 10:27:58');
INSERT INTO `sys_oper_log` VALUES ('477', '存入', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.deposit()', 'POST', '1', 'admin', '研发部门', '/system/salesman/deposit', '127.0.0.1', '内网IP', '{\"id\":[\"24\"],\"depositTime\":[\"2022-05-18\"],\"depositMoney\":[\"11100\"],\"sName\":[\"伍元龙\"],\"bankCard\":[\"6217995670010020478\"],\"openingBank\":[\"中国邮政储蓄银行\"],\"balance\":[\"11993.9\"],\"referrer\":[\"伍春晖\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 10:29:07');
INSERT INTO `sys_oper_log` VALUES ('478', '取出', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.expend()', 'POST', '1', 'admin', '研发部门', '/system/salesman/expend', '127.0.0.1', '内网IP', '{\"id\":[\"24\"],\"expendTime\":[\"2022-05-20\"],\"depositMoney\":[\"23000\"],\"sName\":[\"伍元龙\"],\"bankCard\":[\"6217995670010020478\"],\"openingBank\":[\"中国邮政储蓄银行\"],\"balance\":[\"23093.9\"],\"referrer\":[\"伍春晖\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 10:29:22');
INSERT INTO `sys_oper_log` VALUES ('479', '人员管理', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/salesman/edit', '127.0.0.1', '内网IP', '{\"id\":[\"24\"],\"sName\":[\"伍元龙\"],\"sCard\":[\"433001197109033019\"],\"sSex\":[\"0\"],\"state\":[\"0\"],\"remark\":[\"\"],\"bankCard\":[\"6217995670010020478\"],\"openingBank\":[\"中国邮政储蓄银行\"],\"address\":[\"湖南省中方县桐木镇街上\"],\"phone\":[\"13257458892\"],\"balance\":[\"93.91\"],\"referrer\":[\"伍春晖\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 10:34:07');
INSERT INTO `sys_oper_log` VALUES ('480', '人员管理', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/salesman/edit', '127.0.0.1', '内网IP', '{\"id\":[\"24\"],\"sName\":[\"伍元龙\"],\"sCard\":[\"433001197109033019\"],\"sSex\":[\"0\"],\"state\":[\"0\"],\"remark\":[\"\"],\"bankCard\":[\"6217995670010020478\"],\"openingBank\":[\"中国邮政储蓄银行\"],\"address\":[\"湖南省中方县桐木镇街上\"],\"phone\":[\"13257458892\"],\"balance\":[\"93.90\"],\"referrer\":[\"伍春晖\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 10:34:13');
INSERT INTO `sys_oper_log` VALUES ('481', '人员管理', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/salesman/edit', '127.0.0.1', '内网IP', '{\"id\":[\"25\"],\"sName\":[\"伍小龙\"],\"sCard\":[\"43300119681104301X\"],\"sSex\":[\"0\"],\"state\":[\"0\"],\"remark\":[\"\"],\"bankCard\":[\"\"],\"openingBank\":[\"中国邮政储蓄银行\"],\"address\":[\"桐木镇街上\"],\"phone\":[\"13204921922\"],\"balance\":[\"38.79\"],\"referrer\":[\"伍春晖\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 10:34:28');
INSERT INTO `sys_oper_log` VALUES ('482', '人员管理', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/salesman/edit', '127.0.0.1', '内网IP', '{\"id\":[\"26\"],\"sName\":[\"郑春连\"],\"sCard\":[\"433027196002085821\"],\"sSex\":[\"1\"],\"state\":[\"0\"],\"remark\":[\"\"],\"bankCard\":[\"\"],\"openingBank\":[\"中国邮政储蓄银行\"],\"address\":[\"湖南省怀化市鹤城区狮子岩路7号3栋3单元1号\"],\"phone\":[\"18128185023\"],\"balance\":[\"94.40\"],\"referrer\":[\"伍春晖\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 10:34:43');
INSERT INTO `sys_oper_log` VALUES ('483', '人员管理', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/salesman/edit', '127.0.0.1', '内网IP', '{\"id\":[\"27\"],\"sName\":[\"郑光玉\"],\"sCard\":[\"433001196503213021\"],\"sSex\":[\"1\"],\"state\":[\"0\"],\"remark\":[\"\"],\"bankCard\":[\"\"],\"openingBank\":[\"中方县农村信用社\"],\"address\":[\"湖南省中方县桐木镇桐木村轿子岩组\"],\"phone\":[\"13272260260\"],\"balance\":[\"32.01\"],\"referrer\":[\"伍春晖\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 10:34:56');
INSERT INTO `sys_oper_log` VALUES ('484', '人员管理', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/salesman/edit', '127.0.0.1', '内网IP', '{\"id\":[\"28\"],\"sName\":[\"伍成龙\"],\"sCard\":[\"433001196602063014\"],\"sSex\":[\"0\"],\"state\":[\"0\"],\"remark\":[\"\"],\"bankCard\":[\"6013827505000770772\"],\"openingBank\":[\"中国银行\"],\"address\":[\"湖南省中方县桐木镇桐木村轿子岩组\"],\"phone\":[\"13117458121\"],\"balance\":[\"11283.85\"],\"referrer\":[\"伍春晖\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 10:35:10');
INSERT INTO `sys_oper_log` VALUES ('485', '信息管理', '3', 'com.ruoyi.system.controller.HbdSalesmanMessqgesController.remove()', 'POST', '1', 'admin', '研发部门', '/system/messqges/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"39\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 10:35:15');
INSERT INTO `sys_oper_log` VALUES ('486', '信息管理', '3', 'com.ruoyi.system.controller.HbdSalesmanMessqgesController.remove()', 'POST', '1', 'admin', '研发部门', '/system/messqges/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"38\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 10:35:16');
INSERT INTO `sys_oper_log` VALUES ('487', '存入', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.deposit()', 'POST', '1', 'admin', '研发部门', '/system/salesman/deposit', '127.0.0.1', '内网IP', '{\"id\":[\"24\"],\"depositTime\":[\"2022-05-19\"],\"depositMoney\":[\"33546.14\"],\"sName\":[\"伍元龙\"],\"bankCard\":[\"6217995670010020478\"],\"openingBank\":[\"中国邮政储蓄银行\"],\"balance\":[\"93.9\"],\"referrer\":[\"伍春晖\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 10:35:25');
INSERT INTO `sys_oper_log` VALUES ('488', '取出', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.expend()', 'POST', '1', 'admin', '研发部门', '/system/salesman/expend', '127.0.0.1', '内网IP', '{\"id\":[\"24\"],\"expendTime\":[\"2022-05-20\"],\"depositMoney\":[\"33546.14\"],\"sName\":[\"伍元龙\"],\"bankCard\":[\"6217995670010020478\"],\"openingBank\":[\"中国邮政储蓄银行\"],\"balance\":[\"33640.04\"],\"referrer\":[\"伍春晖\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 10:35:44');
INSERT INTO `sys_oper_log` VALUES ('489', '角色管理', '1', 'com.ruoyi.web.controller.system.SysRoleController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/role/add', '127.0.0.1', '内网IP', '{\"roleName\":[\"hbd普通\"],\"roleKey\":[\"hbdCommon\"],\"roleSort\":[\"99\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2074,2075,2076,2077,2078,2079,2080,2081,2082\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 10:37:54');
INSERT INTO `sys_oper_log` VALUES ('490', '部门管理', '1', 'com.ruoyi.web.controller.system.SysDeptController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/dept/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"101\"],\"deptName\":[\"客服部门\"],\"orderNum\":[\"6\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 10:38:29');
INSERT INTO `sys_oper_log` VALUES ('491', '用户管理', '1', 'com.ruoyi.web.controller.system.SysUserController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"441\"],\"userName\":[\"hbd01\"],\"deptName\":[\"客服部门\"],\"phonenumber\":[\"\"],\"email\":[\"\"],\"loginName\":[\"hbd01\"],\"sex\":[\"0\"],\"role\":[\"103\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"103\"],\"postIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 10:38:40');
INSERT INTO `sys_oper_log` VALUES ('492', '重置密码', '2', 'com.ruoyi.web.controller.system.SysUserController.resetPwdSave()', 'POST', '1', 'admin', '研发部门', '/system/user/resetPwd', '127.0.0.1', '内网IP', '{\"userId\":[\"3\"],\"loginName\":[\"hbd01\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 10:39:08');
INSERT INTO `sys_oper_log` VALUES ('493', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2075\"],\"menuType\":[\"F\"],\"menuName\":[\" 存钱\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"system:hhSalesman:deposit\"],\"orderNum\":[\"6\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 10:40:48');
INSERT INTO `sys_oper_log` VALUES ('494', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"103\"],\"roleName\":[\"hbd普通\"],\"roleKey\":[\"hbdCommon\"],\"roleSort\":[\"99\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2074,2075,2076,2077,2078,2079,2080,2081,2082,2086\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 10:42:47');
INSERT INTO `sys_oper_log` VALUES ('495', '角色管理', '1', 'com.ruoyi.web.controller.system.SysRoleController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/role/add', '127.0.0.1', '内网IP', '{\"roleName\":[\"hbd财务\"],\"roleKey\":[\"hbdMoney\"],\"roleSort\":[\"100\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2074,2075,2076,2077,2078,2079,2080,2087,2081,2082,2085,2086\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 10:43:21');
INSERT INTO `sys_oper_log` VALUES ('496', '用户管理', '1', 'com.ruoyi.web.controller.system.SysUserController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"441\"],\"userName\":[\"hbd02\"],\"deptName\":[\"客服部门\"],\"phonenumber\":[\"\"],\"email\":[\"\"],\"loginName\":[\"hbd02\"],\"sex\":[\"0\"],\"role\":[\"104\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"104\"],\"postIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 10:43:36');
INSERT INTO `sys_oper_log` VALUES ('497', '存入', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.deposit()', 'POST', '1', 'hbd02', '客服部门', '/system/salesman/deposit', '127.0.0.1', '内网IP', '{\"id\":[\"24\"],\"depositTime\":[\"2022-05-19\"],\"depositMoney\":[\"35142\"],\"sName\":[\"伍元龙\"],\"bankCard\":[\"6217995670010020478\"],\"openingBank\":[\"中国邮政储蓄银行\"],\"balance\":[\"93.9\"],\"referrer\":[\"伍春晖\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 10:49:33');
INSERT INTO `sys_oper_log` VALUES ('498', '取出', '2', 'com.ruoyi.web.controller.system.HbdSalesmanController.expend()', 'POST', '1', 'hbd02', '客服部门', '/system/salesman/expend', '127.0.0.1', '内网IP', '{\"id\":[\"24\"],\"expendTime\":[\"2022-05-20\"],\"depositMoney\":[\"35142\"],\"sName\":[\"伍元龙\"],\"bankCard\":[\"6217995670010020478\"],\"openingBank\":[\"中国邮政储蓄银行\"],\"balance\":[\"35235.9\"],\"referrer\":[\"伍春晖\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 10:49:54');
INSERT INTO `sys_oper_log` VALUES ('499', '信息管理', '3', 'com.ruoyi.system.controller.HbdSalesmanMessqgesController.remove()', 'POST', '1', 'hbd02', '客服部门', '/system/messqges/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"40,41,42,43\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-20 10:50:23');
INSERT INTO `sys_oper_log` VALUES ('500', '人员管理', '5', 'com.ruoyi.web.controller.system.HbdSalesmanController.export()', 'POST', '1', 'admin', '研发部门', '/hbd/system/salesman/export', '127.0.0.1', '内网IP', '{\"sName\":[\"\"],\"sCard\":[\"\"],\"sSex\":[\"\"],\"state\":[\"\"],\"bankCard\":[\"\"],\"openingBank\":[\"\"],\"referrer\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\"msg\":\"b813c974-9d40-48c5-b845-2ce181f5d1d2_人员管理数据.xlsx\",\"code\":0}', '0', null, '2022-05-20 11:16:39');
INSERT INTO `sys_oper_log` VALUES ('501', '信息管理', '1', 'com.ruoyi.web.controller.system.ClaimController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/claim/add', '127.0.0.1', '内网IP', '{\"cityName\":[\"测试\"],\"areaName\":[\"市直\"],\"schoolName\":[\"测试\"],\"schoolGradeName\":[\"一年级\"],\"schoolClassName\":[\"1班\"],\"stuCard\":[\"431221199202011010\"],\"stuName\":[\"伍春晖\"],\"stuSex\":[\"0\"],\"parentsName\":[\"伍春晖\"],\"parentsCard\":[\"431221199202011010\"],\"parentsCall\":[\"1865022235\"],\"payMoney\":[\"70\"],\"paySerial\":[\"43122119920201101045445\"],\"state\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-25 14:39:45');
INSERT INTO `sys_oper_log` VALUES ('502', '信息管理', '2', 'com.ruoyi.web.controller.system.ClaimController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/claim/edit', '127.0.0.1', '内网IP', '{\"id\":[\"17\"],\"insuranceCompanyPerson.insuranceCompany.id\":[\"2\"],\"insuranceCompanyPerson.insuranceCompany.companyName\":[\"中国人寿怀化分公司\"],\"insuranceCompanyPerson.id\":[\"28\"],\"insuranceCompanyPerson.personName\":[\"黄立新\"],\"evolevState\":[\"2\"],\"remark\":[\"按按\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-25 14:40:58');
INSERT INTO `sys_oper_log` VALUES ('503', '信息管理完成', '2', 'com.ruoyi.web.controller.system.ClaimController.finishClaim()', 'POST', '1', 'admin', '研发部门', '/system/claim/finishClaim', '127.0.0.1', '内网IP', '{\"id\":[\"17\"],\"insuranceCompanyPerson.insuranceCompany.id\":[\"2\"],\"insuranceCompanyPerson.id\":[\"28\"],\"evolevState\":[\"3\"],\"claimType\":[\"1\"],\"claimMoney\":[\"2000\"],\"finishTime\":[\"2022-05-24 14:40:16\"],\"remark\":[\"按按\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-25 14:41:30');
INSERT INTO `sys_oper_log` VALUES ('504', '信息管理', '3', 'com.ruoyi.web.controller.system.ClaimController.remove()', 'POST', '1', 'admin', '研发部门', '/system/claim/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"16\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-05-25 14:42:19');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES ('1', 'ceo', '董事长', '1', '0', 'admin', '2022-05-05 10:41:31', '', null, '');
INSERT INTO `sys_post` VALUES ('2', 'se', '项目经理', '2', '0', 'admin', '2022-05-05 10:41:31', '', null, '');
INSERT INTO `sys_post` VALUES ('3', 'hr', '人力资源', '3', '0', 'admin', '2022-05-05 10:41:31', '', null, '');
INSERT INTO `sys_post` VALUES ('4', 'user', '普通员工', '4', '0', 'admin', '2022-05-05 10:41:31', '', null, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', 'admin', '1', '1', '0', '0', 'admin', '2022-05-05 10:41:31', '', null, '超级管理员');
INSERT INTO `sys_role` VALUES ('2', '普通角色', 'common', '2', '2', '0', '0', 'admin', '2022-05-05 10:41:31', '', null, '普通角色');
INSERT INTO `sys_role` VALUES ('100', '区县管理员', 'areaAdmin', '3', '1', '0', '0', 'admin', '2022-05-05 14:02:56', '', null, null);
INSERT INTO `sys_role` VALUES ('101', '学校管理员', 'schoolAdmin', '4', '1', '0', '0', 'admin', '2022-05-05 14:03:25', 'admin', '2022-05-05 14:03:30', '');
INSERT INTO `sys_role` VALUES ('102', '市管理员', 'citiAdmin', '5', '1', '0', '0', 'admin', '2022-05-05 14:05:38', '', null, null);
INSERT INTO `sys_role` VALUES ('103', 'hbd普通', 'hbdCommon', '99', '1', '0', '0', 'admin', '2022-05-20 10:37:54', 'admin', '2022-05-20 10:42:47', '');
INSERT INTO `sys_role` VALUES ('104', 'hbd财务', 'hbdMoney', '100', '1', '0', '0', 'admin', '2022-05-20 10:43:21', '', null, null);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES ('2', '100');
INSERT INTO `sys_role_dept` VALUES ('2', '101');
INSERT INTO `sys_role_dept` VALUES ('2', '105');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('2', '1');
INSERT INTO `sys_role_menu` VALUES ('2', '2');
INSERT INTO `sys_role_menu` VALUES ('2', '3');
INSERT INTO `sys_role_menu` VALUES ('2', '4');
INSERT INTO `sys_role_menu` VALUES ('2', '100');
INSERT INTO `sys_role_menu` VALUES ('2', '101');
INSERT INTO `sys_role_menu` VALUES ('2', '102');
INSERT INTO `sys_role_menu` VALUES ('2', '103');
INSERT INTO `sys_role_menu` VALUES ('2', '104');
INSERT INTO `sys_role_menu` VALUES ('2', '105');
INSERT INTO `sys_role_menu` VALUES ('2', '106');
INSERT INTO `sys_role_menu` VALUES ('2', '107');
INSERT INTO `sys_role_menu` VALUES ('2', '108');
INSERT INTO `sys_role_menu` VALUES ('2', '109');
INSERT INTO `sys_role_menu` VALUES ('2', '110');
INSERT INTO `sys_role_menu` VALUES ('2', '111');
INSERT INTO `sys_role_menu` VALUES ('2', '112');
INSERT INTO `sys_role_menu` VALUES ('2', '113');
INSERT INTO `sys_role_menu` VALUES ('2', '114');
INSERT INTO `sys_role_menu` VALUES ('2', '115');
INSERT INTO `sys_role_menu` VALUES ('2', '116');
INSERT INTO `sys_role_menu` VALUES ('2', '500');
INSERT INTO `sys_role_menu` VALUES ('2', '501');
INSERT INTO `sys_role_menu` VALUES ('2', '1000');
INSERT INTO `sys_role_menu` VALUES ('2', '1001');
INSERT INTO `sys_role_menu` VALUES ('2', '1002');
INSERT INTO `sys_role_menu` VALUES ('2', '1003');
INSERT INTO `sys_role_menu` VALUES ('2', '1004');
INSERT INTO `sys_role_menu` VALUES ('2', '1005');
INSERT INTO `sys_role_menu` VALUES ('2', '1006');
INSERT INTO `sys_role_menu` VALUES ('2', '1007');
INSERT INTO `sys_role_menu` VALUES ('2', '1008');
INSERT INTO `sys_role_menu` VALUES ('2', '1009');
INSERT INTO `sys_role_menu` VALUES ('2', '1010');
INSERT INTO `sys_role_menu` VALUES ('2', '1011');
INSERT INTO `sys_role_menu` VALUES ('2', '1012');
INSERT INTO `sys_role_menu` VALUES ('2', '1013');
INSERT INTO `sys_role_menu` VALUES ('2', '1014');
INSERT INTO `sys_role_menu` VALUES ('2', '1015');
INSERT INTO `sys_role_menu` VALUES ('2', '1016');
INSERT INTO `sys_role_menu` VALUES ('2', '1017');
INSERT INTO `sys_role_menu` VALUES ('2', '1018');
INSERT INTO `sys_role_menu` VALUES ('2', '1019');
INSERT INTO `sys_role_menu` VALUES ('2', '1020');
INSERT INTO `sys_role_menu` VALUES ('2', '1021');
INSERT INTO `sys_role_menu` VALUES ('2', '1022');
INSERT INTO `sys_role_menu` VALUES ('2', '1023');
INSERT INTO `sys_role_menu` VALUES ('2', '1024');
INSERT INTO `sys_role_menu` VALUES ('2', '1025');
INSERT INTO `sys_role_menu` VALUES ('2', '1026');
INSERT INTO `sys_role_menu` VALUES ('2', '1027');
INSERT INTO `sys_role_menu` VALUES ('2', '1028');
INSERT INTO `sys_role_menu` VALUES ('2', '1029');
INSERT INTO `sys_role_menu` VALUES ('2', '1030');
INSERT INTO `sys_role_menu` VALUES ('2', '1031');
INSERT INTO `sys_role_menu` VALUES ('2', '1032');
INSERT INTO `sys_role_menu` VALUES ('2', '1033');
INSERT INTO `sys_role_menu` VALUES ('2', '1034');
INSERT INTO `sys_role_menu` VALUES ('2', '1035');
INSERT INTO `sys_role_menu` VALUES ('2', '1036');
INSERT INTO `sys_role_menu` VALUES ('2', '1037');
INSERT INTO `sys_role_menu` VALUES ('2', '1038');
INSERT INTO `sys_role_menu` VALUES ('2', '1039');
INSERT INTO `sys_role_menu` VALUES ('2', '1040');
INSERT INTO `sys_role_menu` VALUES ('2', '1041');
INSERT INTO `sys_role_menu` VALUES ('2', '1042');
INSERT INTO `sys_role_menu` VALUES ('2', '1043');
INSERT INTO `sys_role_menu` VALUES ('2', '1044');
INSERT INTO `sys_role_menu` VALUES ('2', '1045');
INSERT INTO `sys_role_menu` VALUES ('2', '1046');
INSERT INTO `sys_role_menu` VALUES ('2', '1047');
INSERT INTO `sys_role_menu` VALUES ('2', '1048');
INSERT INTO `sys_role_menu` VALUES ('2', '1049');
INSERT INTO `sys_role_menu` VALUES ('2', '1050');
INSERT INTO `sys_role_menu` VALUES ('2', '1051');
INSERT INTO `sys_role_menu` VALUES ('2', '1052');
INSERT INTO `sys_role_menu` VALUES ('2', '1053');
INSERT INTO `sys_role_menu` VALUES ('2', '1054');
INSERT INTO `sys_role_menu` VALUES ('2', '1055');
INSERT INTO `sys_role_menu` VALUES ('2', '1056');
INSERT INTO `sys_role_menu` VALUES ('2', '1057');
INSERT INTO `sys_role_menu` VALUES ('2', '1058');
INSERT INTO `sys_role_menu` VALUES ('2', '1059');
INSERT INTO `sys_role_menu` VALUES ('2', '1060');
INSERT INTO `sys_role_menu` VALUES ('2', '1061');
INSERT INTO `sys_role_menu` VALUES ('103', '2074');
INSERT INTO `sys_role_menu` VALUES ('103', '2075');
INSERT INTO `sys_role_menu` VALUES ('103', '2076');
INSERT INTO `sys_role_menu` VALUES ('103', '2077');
INSERT INTO `sys_role_menu` VALUES ('103', '2078');
INSERT INTO `sys_role_menu` VALUES ('103', '2079');
INSERT INTO `sys_role_menu` VALUES ('103', '2080');
INSERT INTO `sys_role_menu` VALUES ('103', '2081');
INSERT INTO `sys_role_menu` VALUES ('103', '2082');
INSERT INTO `sys_role_menu` VALUES ('103', '2086');
INSERT INTO `sys_role_menu` VALUES ('104', '2074');
INSERT INTO `sys_role_menu` VALUES ('104', '2075');
INSERT INTO `sys_role_menu` VALUES ('104', '2076');
INSERT INTO `sys_role_menu` VALUES ('104', '2077');
INSERT INTO `sys_role_menu` VALUES ('104', '2078');
INSERT INTO `sys_role_menu` VALUES ('104', '2079');
INSERT INTO `sys_role_menu` VALUES ('104', '2080');
INSERT INTO `sys_role_menu` VALUES ('104', '2081');
INSERT INTO `sys_role_menu` VALUES ('104', '2082');
INSERT INTO `sys_role_menu` VALUES ('104', '2085');
INSERT INTO `sys_role_menu` VALUES ('104', '2086');
INSERT INTO `sys_role_menu` VALUES ('104', '2087');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) DEFAULT '' COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户 01注册用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  `salt` varchar(20) DEFAULT '' COMMENT '盐加密',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `pwd_update_date` datetime DEFAULT NULL COMMENT '密码最后更新时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '103', 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '/profile/avatar/2022/05/07/blob_20220507121005A001.png', '29c67a30398638269fe600f73a054934', '111111', '0', '0', '127.0.0.1', '2022-05-29 11:41:22', '2022-05-05 10:41:31', 'admin', '2022-05-05 10:41:31', '', '2022-05-29 11:41:22', '管理员');
INSERT INTO `sys_user` VALUES ('2', '105', 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '96715e56247e7a2b62cdfe1e91896e26', '5d274f', '0', '0', '127.0.0.1', '2022-05-05 10:48:09', '2022-05-05 10:41:31', 'admin', '2022-05-05 10:41:31', '', '2022-05-05 10:48:09', '测试员');
INSERT INTO `sys_user` VALUES ('3', '441', 'hbd01', 'hbd01', '00', '', '', '0', '', 'efb5e0f76cad307a6fa3576d2abeec0a', 'edaeea', '0', '0', '127.0.0.1', '2022-05-20 10:42:05', null, 'admin', '2022-05-20 10:38:40', '', '2022-05-20 10:42:05', null);
INSERT INTO `sys_user` VALUES ('4', '441', 'hbd02', 'hbd02', '00', '', '', '0', '', 'd748a6e709ccbf346e12224dff80ecc0', '92ec96', '0', '0', '127.0.0.1', '2022-05-20 10:45:25', null, 'admin', '2022-05-20 10:43:35', '', '2022-05-20 10:45:25', null);

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online` (
  `sessionId` varchar(50) NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='在线用户记录';

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
INSERT INTO `sys_user_online` VALUES ('6d43bdb6-286a-464c-a13e-e4b2ab9bd057', 'admin', '研发部门', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', 'on_line', '2022-05-29 11:41:18', '2022-05-29 11:41:22', '1800000');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES ('1', '1');
INSERT INTO `sys_user_post` VALUES ('2', '2');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '2');
INSERT INTO `sys_user_role` VALUES ('3', '103');
INSERT INTO `sys_user_role` VALUES ('4', '104');
