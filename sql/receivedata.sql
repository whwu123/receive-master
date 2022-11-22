-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: receivedata
-- ------------------------------------------------------
-- Server version	5.7.17-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `claim`
--

DROP TABLE IF EXISTS `claim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `claim`
--

LOCK TABLES `claim` WRITE;
/*!40000 ALTER TABLE `claim` DISABLE KEYS */;
INSERT INTO `claim` VALUES (15,'admin','2022-05-09 10:43:15','admin','2022-10-28 11:10:10',NULL,0,'发生结束2hbd-ry',NULL,'怀化分公司',NULL,'鹤城区',NULL,'锦溪小学',NULL,'一年级',NULL,'101班','431221199202011010','测试',0,'测试家长','431221199202011010','18665022235',70,'4312211992020110104312211',1,2000,31,3,'2022-05-09 11:00:00'),(17,'admin','2022-05-25 14:39:45','admin','2022-05-25 14:41:31',NULL,0,'按按',NULL,'测试',NULL,'市直',NULL,'测试',NULL,'一年级',NULL,'1班','431221199202011010','伍春晖',0,'伍春晖','431221199202011010','1865022235',70,'43122119920201101045445',1,2000,28,3,'2022-05-24 14:40:16');
/*!40000 ALTER TABLE `claim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table`
--

DROP TABLE IF EXISTS `gen_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COMMENT='代码生成业务表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table`
--

LOCK TABLES `gen_table` WRITE;
/*!40000 ALTER TABLE `gen_table` DISABLE KEYS */;
INSERT INTO `gen_table` VALUES (31,'n_income','收入管理','n_income_sources','ni_id','NIncome','sub','com.ruoyi.system','system','income','收入管理','wuchunhui','0','/','{\"parentMenuId\":\"2043\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"湘N管理\",\"treeCode\":\"\"}','admin','2022-05-16 11:02:55','','2022-05-16 11:23:33',''),(32,'n_income_sources','收入信息管理','',NULL,'NIncomeSources','crud','com.ruoyi.system','system','sources','收入信息管理','wuchunhui','0','/','{\"parentMenuId\":\"2062\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"收入管理\",\"treeCode\":\"\"}','admin','2022-05-16 11:02:55','','2022-05-16 11:10:59',''),(33,'n_expend','支出管理','',NULL,'NExpend','crud','com.ruoyi.system','system','expend','支出管理','wuchunhui','0','/','{\"parentMenuId\":\"2043\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"湘N管理\",\"treeCode\":\"\"}','admin','2022-05-16 15:22:41','','2022-05-16 15:23:43',''),(34,'hbd_salesman','营销员管理','',NULL,'HbdSalesman','crud','com.ruoyi.system','system','salesman','人员管理','wuchunhui','0','/','{\"parentMenuId\":\"2074\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"营销员管理\",\"treeCode\":\"\"}','admin','2022-05-19 15:16:55','','2022-05-19 15:33:22',''),(35,'hbd_salesman_messqges','营销员信息表','',NULL,'HbdSalesmanMessqges','crud','com.ruoyi.system','system','messqges','信息管理','wuchunhui','0','/','{\"parentMenuId\":\"2074\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"营销员管理\",\"treeCode\":\"\"}','admin','2022-05-20 09:31:49','','2022-05-20 10:06:26',''),(36,'school_company','学校承保公司配置','',NULL,'SchoolCompany','crud','com.ruoyi.system','system','schoolCompany','学校承保公司','ruoyi','0','/','{\"parentMenuId\":\"2036\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"基础数据管理\",\"treeCode\":\"\"}','admin','2022-10-24 12:12:44','','2022-10-24 12:53:40','');
/*!40000 ALTER TABLE `gen_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table_column`
--

DROP TABLE IF EXISTS `gen_table_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=404 DEFAULT CHARSET=utf8mb4 COMMENT='代码生成业务表字段';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table_column`
--

LOCK TABLES `gen_table_column` WRITE;
/*!40000 ALTER TABLE `gen_table_column` DISABLE KEYS */;
INSERT INTO `gen_table_column` VALUES (326,'31','id','主键ID','bigint(20)','Long','id','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2022-05-16 11:02:55',NULL,'2022-05-16 11:23:33'),(327,'31','create_by','创建用户','varchar(255)','String','createBy','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',2,'admin','2022-05-16 11:02:55',NULL,'2022-05-16 11:23:33'),(328,'31','create_time','创建时间','datetime','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',3,'admin','2022-05-16 11:02:55',NULL,'2022-05-16 11:23:33'),(329,'31','update_by','更新用户','varchar(255)','String','updateBy','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',4,'admin','2022-05-16 11:02:55',NULL,'2022-05-16 11:23:33'),(330,'31','update_time','更新时间','datetime','Date','updateTime','0','0',NULL,'1','1',NULL,NULL,'EQ','datetime','',5,'admin','2022-05-16 11:02:55',NULL,'2022-05-16 11:23:33'),(331,'31','ni_title','名称','varchar(255)','String','niTitle','0','0',NULL,'1','1','1','1','EQ','input','',6,'admin','2022-05-16 11:02:55',NULL,'2022-05-16 11:23:33'),(332,'31','ni_type','类型','varchar(255)','String','niType','0','0',NULL,'1','1','1','1','EQ','select','',8,'admin','2022-05-16 11:02:55',NULL,'2022-05-16 11:23:33'),(333,'31','ni_status','状态','int(11)','Long','niStatus','0','0',NULL,'1','1','1','1','EQ','radio','data_state',9,'admin','2022-05-16 11:02:55',NULL,'2022-05-16 11:23:33'),(334,'31','remark','备注','text','String','remark','0','0',NULL,'1','1','1',NULL,'EQ','textarea','',10,'admin','2022-05-16 11:02:55',NULL,'2022-05-16 11:23:33'),(335,'32','id','主键ID','bigint(20)','Long','id','1','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2022-05-16 11:02:55',NULL,'2022-05-16 11:10:59'),(336,'32','create_by','创建用户','varchar(255)','String','createBy','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',2,'admin','2022-05-16 11:02:55',NULL,'2022-05-16 11:10:59'),(337,'32','create_time','创建时间','datetime','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',3,'admin','2022-05-16 11:02:55',NULL,'2022-05-16 11:10:59'),(338,'32','update_by','更新用户','varchar(255)','String','updateBy','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',4,'admin','2022-05-16 11:02:55',NULL,'2022-05-16 11:10:59'),(339,'32','update_time','更新时间','datetime','Date','updateTime','0','0',NULL,'1','1',NULL,NULL,'EQ','datetime','',5,'admin','2022-05-16 11:02:55',NULL,'2022-05-16 11:10:59'),(340,'32','nis_name','名称','varchar(255)','String','nisName','0','0',NULL,'1','1','1','1','LIKE','input','',6,'admin','2022-05-16 11:02:55',NULL,'2022-05-16 11:10:59'),(341,'32','nis_money','金额','decimal(10,0)','Long','nisMoney','0','0',NULL,'1','1','1','1','EQ','input','',7,'admin','2022-05-16 11:02:55',NULL,'2022-05-16 11:10:59'),(342,'32','nis_type','类型','varchar(255)','String','nisType','0','0',NULL,'1','1','1','1','EQ','input','',8,'admin','2022-05-16 11:02:55',NULL,'2022-05-16 11:10:59'),(343,'32','nis_status','状态','int(11)','Long','nisStatus','0','0',NULL,'1','1','1','1','EQ','radio','data_state',9,'admin','2022-05-16 11:02:55',NULL,'2022-05-16 11:10:59'),(344,'32','remark','备注','text','String','remark','0','0',NULL,'1','1','1',NULL,'EQ','textarea','',10,'admin','2022-05-16 11:02:55',NULL,'2022-05-16 11:10:59'),(345,'32','ni_id','主表ID','bigint(20)','Long','niId','0','0',NULL,'1','1','1','1','EQ','input','',11,'admin','2022-05-16 11:02:55',NULL,'2022-05-16 11:10:59'),(346,'31','ni_surplus','结余','decimal(10,0)','Long','niSurplus','0','0',NULL,'1','1','1','1','EQ','input','',7,'','2022-05-16 11:22:41',NULL,'2022-05-16 11:23:33'),(347,'33','id','主键ID','bigint(20)','Long','id','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2022-05-16 15:22:41',NULL,'2022-05-16 15:23:43'),(348,'33','create_by','创建用户','varchar(255)','String','createBy','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',2,'admin','2022-05-16 15:22:41',NULL,'2022-05-16 15:23:43'),(349,'33','create_time','创建时间','datetime','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',3,'admin','2022-05-16 15:22:41',NULL,'2022-05-16 15:23:43'),(350,'33','update_by','更新用户','varchar(255)','String','updateBy','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',4,'admin','2022-05-16 15:22:41',NULL,'2022-05-16 15:23:43'),(351,'33','update_time','更新时间','datetime','Date','updateTime','0','0',NULL,'1','1',NULL,NULL,'EQ','datetime','',5,'admin','2022-05-16 15:22:41',NULL,'2022-05-16 15:23:43'),(352,'33','ne_title','名称','varchar(255)','String','neTitle','0','0',NULL,'1','1','1','1','EQ','input','',6,'admin','2022-05-16 15:22:41',NULL,'2022-05-16 15:23:43'),(353,'33','ne_money','金额','decimal(10,0)','Long','neMoney','0','0',NULL,'1','1','1',NULL,'EQ','input','',7,'admin','2022-05-16 15:22:41',NULL,'2022-05-16 15:23:43'),(354,'33','ne_type','类型','varchar(255)','String','neType','0','0',NULL,'1','1','1',NULL,'EQ','select','',8,'admin','2022-05-16 15:22:41',NULL,'2022-05-16 15:23:43'),(355,'33','ne_status','状态','int(11)','Long','neStatus','0','0',NULL,'1','1','1','1','EQ','radio','',9,'admin','2022-05-16 15:22:41',NULL,'2022-05-16 15:23:43'),(356,'33','ne_last_surplus','上一期结余','decimal(10,0)','Long','neLastSurplus','0','0',NULL,'1','1','1',NULL,'EQ','input','',10,'admin','2022-05-16 15:22:41',NULL,'2022-05-16 15:23:43'),(357,'33','ne_content','内容','text','String','neContent','0','0',NULL,'1','1','1',NULL,'EQ','summernote','',11,'admin','2022-05-16 15:22:41',NULL,'2022-05-16 15:23:43'),(358,'33','remark','备注','varchar(255)','String','remark','0','0',NULL,'1','1','1',NULL,'EQ','input','',12,'admin','2022-05-16 15:22:41',NULL,'2022-05-16 15:23:43'),(359,'34','id','主键ID','bigint(20)','Long','id','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2022-05-19 15:16:55',NULL,'2022-05-19 15:33:22'),(360,'34','create_by','创建用户','varchar(255)','String','createBy','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',2,'admin','2022-05-19 15:16:55',NULL,'2022-05-19 15:33:22'),(361,'34','create_time','创建时间','datetime','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',3,'admin','2022-05-19 15:16:55',NULL,'2022-05-19 15:33:22'),(362,'34','update_by','更新用户','varchar(255)','String','updateBy','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',4,'admin','2022-05-19 15:16:55',NULL,'2022-05-19 15:33:22'),(363,'34','update_time','更新时间','datetime','Date','updateTime','0','0',NULL,'1','1',NULL,NULL,'EQ','datetime','',5,'admin','2022-05-19 15:16:55',NULL,'2022-05-19 15:33:22'),(364,'34','s_name','姓名','varchar(255)','String','sName','0','0',NULL,'1','1','1','1','LIKE','input','',6,'admin','2022-05-19 15:16:55',NULL,'2022-05-19 15:33:22'),(365,'34','s_card','身份证','varchar(255)','String','sCard','0','0',NULL,'1','1','1','1','EQ','input','',7,'admin','2022-05-19 15:16:55',NULL,'2022-05-19 15:33:22'),(366,'34','s_sex','性别','int(11)','Long','sSex','0','0',NULL,'1','1','1','1','EQ','select','sys_user_sex',8,'admin','2022-05-19 15:16:55',NULL,'2022-05-19 15:33:22'),(367,'34','state','状态','int(11)','Long','state','0','0',NULL,'1','1','1','1','EQ','radio','data_state',9,'admin','2022-05-19 15:16:55',NULL,'2022-05-19 15:33:22'),(368,'34','remark','备注','text','String','remark','0','0',NULL,'1','1',NULL,NULL,'EQ','textarea','',10,'admin','2022-05-19 15:16:55',NULL,'2022-05-19 15:33:22'),(369,'34','bank_card','银行卡号','varchar(100)','String','bankCard','0','0',NULL,'1','1','1','1','EQ','input','',11,'admin','2022-05-19 15:16:55',NULL,'2022-05-19 15:33:22'),(370,'34','opening_bank','开户行','varchar(100)','String','openingBank','0','0',NULL,'1','1','1','1','EQ','input','',12,'admin','2022-05-19 15:16:55',NULL,'2022-05-19 15:33:22'),(371,'34','address','地址','varchar(255)','String','address','0','0',NULL,'1','1','1',NULL,'EQ','input','',13,'admin','2022-05-19 15:16:55',NULL,'2022-05-19 15:33:22'),(372,'34','phone','联系方式','varchar(255)','String','phone','0','0',NULL,'1','1','1',NULL,'EQ','input','',14,'admin','2022-05-19 15:16:55',NULL,'2022-05-19 15:33:22'),(373,'34','balance','卡内余额','double','Double','balance','0','0',NULL,'1','1','1',NULL,'EQ','input','',15,'admin','2022-05-19 15:16:55',NULL,'2022-05-19 15:33:22'),(374,'34','referrer','推荐人','varchar(255)','String','referrer','0','0',NULL,'1','1','1','1','EQ','input','',16,'','2022-05-19 15:19:04',NULL,'2022-05-19 15:33:22'),(375,'35','id','主键ID','bigint(20)','Long','id','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2022-05-20 09:31:49',NULL,'2022-05-20 10:06:26'),(376,'35','create_by','创建用户','varchar(255)','String','createBy','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',2,'admin','2022-05-20 09:31:49',NULL,'2022-05-20 10:06:26'),(377,'35','create_time','创建时间','datetime','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',3,'admin','2022-05-20 09:31:49',NULL,'2022-05-20 10:06:26'),(378,'35','update_by','更新用户','varchar(255)','String','updateBy','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',4,'admin','2022-05-20 09:31:49',NULL,'2022-05-20 10:06:26'),(379,'35','update_time','更新时间','datetime','Date','updateTime','0','0',NULL,'1','1',NULL,NULL,'EQ','datetime','',5,'admin','2022-05-20 09:31:49',NULL,'2022-05-20 10:06:26'),(380,'35','sm_type','类型','int(11)','Long','smType','0','0',NULL,'1','1','1','1','EQ','select','money_type',6,'admin','2022-05-20 09:31:49',NULL,'2022-05-20 10:06:26'),(381,'35','sm_money','金额','double','Double','smMoney','0','0',NULL,'1','1','1',NULL,'EQ','input','',7,'admin','2022-05-20 09:31:49',NULL,'2022-05-20 10:06:26'),(382,'35','state','状态','int(11)','Long','state','0','0',NULL,'1','1','1','1','EQ','select','data_state',8,'admin','2022-05-20 09:31:49',NULL,'2022-05-20 10:06:26'),(383,'35','salesman_id','营销员Id','bigint(20)','Long','salesmanId','0','0',NULL,'1','1','1','1','EQ','input','',10,'admin','2022-05-20 09:31:49',NULL,'2022-05-20 10:06:26'),(384,'35','remark','备注','text','String','remark','0','0',NULL,'1','1','1',NULL,'EQ','textarea','',11,'admin','2022-05-20 09:31:49',NULL,'2022-05-20 10:06:26'),(385,'35','salesman_name','营销员姓名','varchar(50)','String','salesmanName','0','0',NULL,'1','1','1','1','LIKE','input','',9,'','2022-05-20 10:05:39',NULL,'2022-05-20 10:06:26'),(386,'36','id','','int(11)','Long','id','1','0',NULL,'1',NULL,NULL,NULL,'EQ','input',NULL,1,'admin','2022-10-24 12:12:44',NULL,'2022-10-24 16:14:14'),(387,'36','create_by','','varchar(50)','String','createBy','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input',NULL,2,'admin','2022-10-24 12:12:44',NULL,'2022-10-24 16:14:14'),(388,'36','create_time','','datetime','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime',NULL,3,'admin','2022-10-24 12:12:44',NULL,'2022-10-24 16:14:14'),(389,'36','update_by','','varchar(50)','String','updateBy','0','0',NULL,'1','1',NULL,NULL,'EQ','input',NULL,4,'admin','2022-10-24 12:12:44',NULL,'2022-10-24 16:14:14'),(390,'36','update_time','','datetime','Date','updateTime','0','0',NULL,'1','1',NULL,NULL,'EQ','datetime',NULL,5,'admin','2022-10-24 12:12:44',NULL,'2022-10-24 16:14:14'),(391,'36','remark','','text','String','remark','0','0',NULL,'1','1','1',NULL,'EQ','textarea','',6,'admin','2022-10-24 12:12:44',NULL,'2022-10-24 16:14:14'),(392,'36','state','','int(11)','Long','state','0','0',NULL,'1','1','1','1','EQ','input','data_state',7,'admin','2022-10-24 12:12:44',NULL,'2022-10-24 16:14:14'),(393,'36','insurance_company_name','','varchar(50)','String','insuranceCompanyName','0','0',NULL,'1','1','1','1','LIKE','input','',8,'admin','2022-10-24 12:12:44',NULL,'2022-10-24 16:14:14'),(394,'36','insurance_company_person','','varchar(50)','String','insuranceCompanyPerson','0','0',NULL,'1','1','1','1','EQ','input','',9,'admin','2022-10-24 12:12:44',NULL,'2022-10-24 16:14:14'),(395,'36','insurance_company_phone','','varchar(50)','String','insuranceCompanyPhone','0','0',NULL,'1','1','1','1','EQ','input','',10,'admin','2022-10-24 12:12:44',NULL,'2022-10-24 16:14:14'),(396,'36','insurance_company_sex','','int(11)','Long','insuranceCompanySex','0','0',NULL,'1','1','1','1','EQ','select','sys_user_sex',11,'admin','2022-10-24 12:12:44',NULL,'2022-10-24 16:14:14'),(397,'36','school_id','','bigint(20)','Long','schoolId','0','0',NULL,'1','1','1','1','EQ','input','',12,'admin','2022-10-24 12:12:44',NULL,'2022-10-24 16:14:14'),(398,'36','school_name','','varchar(50)','String','schoolName','0','0',NULL,'1','1','1','1','LIKE','input','',13,'admin','2022-10-24 12:12:44',NULL,'2022-10-24 16:14:14'),(399,'36','county_dept_id','','int(11)','Long','countyDeptId','0','0',NULL,'1','1','1','1','EQ','input','',14,'admin','2022-10-24 12:12:44',NULL,'2022-10-24 16:14:14'),(400,'36','charge_code','','varchar(50)','String','chargeCode','0','0',NULL,'1','1','1','1','EQ','input','',15,'admin','2022-10-24 12:12:44',NULL,'2022-10-24 16:14:14'),(401,'36','risk_code','','varchar(50)','String','riskCode','0','0',NULL,'1','1','1','1','EQ','input','risk_code',16,'admin','2022-10-24 12:12:44',NULL,'2022-10-24 16:14:14'),(402,'36','insurance_company_id',NULL,'bigint(20)','Long','insuranceCompanyId','0','0',NULL,'1','1','1','1','EQ','input','',17,'','2022-10-24 16:14:14','',NULL),(403,'36','insurance_company_person_id',NULL,'bigint(20)','Long','insuranceCompanyPersonId','0','0',NULL,'1','1','1','1','EQ','input','',18,'','2022-10-24 16:14:14','',NULL);
/*!40000 ALTER TABLE `gen_table_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hbd_salesman`
--

DROP TABLE IF EXISTS `hbd_salesman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hbd_salesman`
--

LOCK TABLES `hbd_salesman` WRITE;
/*!40000 ALTER TABLE `hbd_salesman` DISABLE KEYS */;
INSERT INTO `hbd_salesman` VALUES (24,NULL,'2022-05-19 16:39:35',NULL,'2022-05-20 10:49:54','伍元龙','433001197109033019',0,0,'','6217995670010020478','中国邮政储蓄银行','湖南省中方县桐木镇街上','13257458892',93.90,'伍春晖'),(25,NULL,'2022-05-19 16:39:56',NULL,'2022-05-20 10:34:29','伍小龙','43300119681104301X',0,0,'','','中国邮政储蓄银行','桐木镇街上','13204921922',38.79,'伍春晖'),(26,NULL,'2022-05-19 16:40:36',NULL,'2022-05-20 10:34:44','郑春连','433027196002085821',1,0,'','','中国邮政储蓄银行','湖南省怀化市鹤城区狮子岩路7号3栋3单元1号','18128185023',94.40,'伍春晖'),(27,NULL,'2022-05-19 16:41:08',NULL,'2022-05-20 10:34:57','郑光玉','433001196503213021',1,0,'','','中方县农村信用社','湖南省中方县桐木镇桐木村轿子岩组','13272260260',32.01,'伍春晖'),(28,NULL,'2022-05-19 16:41:40',NULL,'2022-05-20 10:35:10','伍成龙','433001196602063014',0,0,'','6013827505000770772','中国银行','湖南省中方县桐木镇桐木村轿子岩组','13117458121',11283.85,'伍春晖');
/*!40000 ALTER TABLE `hbd_salesman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hbd_salesman_messqges`
--

DROP TABLE IF EXISTS `hbd_salesman_messqges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hbd_salesman_messqges`
--

LOCK TABLES `hbd_salesman_messqges` WRITE;
/*!40000 ALTER TABLE `hbd_salesman_messqges` DISABLE KEYS */;
/*!40000 ALTER TABLE `hbd_salesman_messqges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurance_company`
--

DROP TABLE IF EXISTS `insurance_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance_company`
--

LOCK TABLES `insurance_company` WRITE;
/*!40000 ALTER TABLE `insurance_company` DISABLE KEYS */;
INSERT INTO `insurance_company` VALUES (2,'admin','2022-05-05 00:00:00','admin','2022-05-07 10:13:37','中国人寿怀化分公司',0,2,00000000000,''),(7,'admin','2022-05-06 14:57:48','admin','2022-10-27 16:31:18','财信人寿怀化中心支公司',0,3,00000000000,''),(10,'admin','2022-05-07 09:38:49','admin','2022-05-07 10:13:26','人保财险怀化市分公司',1,7,00000000000,''),(11,'admin','2022-05-07 09:39:13','admin','2022-05-07 10:13:57','人寿财险怀化市中心支公司',1,4,00000000000,''),(12,'admin','2022-05-07 09:39:34','admin','2022-05-07 10:12:38','人民人寿怀化中心支公司',0,5,00000000000,''),(14,'admin','2022-05-07 09:51:56','admin','2022-05-07 10:11:56','平安财险怀化中心支公司',1,10,00000000000,''),(15,'admin','2022-05-07 10:00:20','admin','2022-05-07 10:13:46','中华联合财险怀化中心支公司',1,6,00000000000,''),(16,'admin','2022-05-07 10:00:33','admin','2022-05-07 10:12:20','大地财险怀化中心支公司',1,7,00000000000,''),(17,'admin','2022-05-07 10:08:17','admin','2022-05-07 10:12:09','太平洋财险怀化中心支公司',1,1,00000000000,''),(18,'admin','2022-10-28 10:33:55',NULL,NULL,'新华人寿怀化中心支公司',0,NULL,00000000000,'');
/*!40000 ALTER TABLE `insurance_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurance_company_person`
--

DROP TABLE IF EXISTS `insurance_company_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `state` int(11) DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`id`),
  KEY `insurance_company_person_ibfk_1` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance_company_person`
--

LOCK TABLES `insurance_company_person` WRITE;
/*!40000 ALTER TABLE `insurance_company_person` DISABLE KEYS */;
INSERT INTO `insurance_company_person` VALUES (10,'admin','2022-05-07 10:15:10',NULL,NULL,14,'汪丽萍','13874569897',1,1,0,''),(11,'admin','2022-05-07 10:15:55',NULL,NULL,14,'曾子伦','15115196222',0,2,0,''),(12,'admin','2022-05-07 10:16:09',NULL,NULL,17,'曾莉','18574551658',1,3,0,''),(13,'admin','2022-05-07 10:16:22',NULL,NULL,17,'李晶心','13874442271',1,4,0,''),(14,'admin','2022-05-07 10:16:51',NULL,NULL,17,'杨经理','18907458199',0,5,0,''),(15,'admin','2022-05-07 10:17:05',NULL,NULL,16,'陈杰飞','13349612663',0,6,0,''),(16,'admin','2022-05-07 10:17:43',NULL,NULL,16,'侯乔英','15874593011',1,7,0,''),(17,'admin','2022-05-07 10:17:56',NULL,NULL,16,'熊志远','18244846056',0,8,0,''),(18,'admin','2022-05-07 10:18:09','admin','2022-10-30 15:53:40',7,'张致金','19118504631',0,9,1,''),(19,'admin','2022-05-07 10:18:26','admin','2022-10-30 15:53:35',7,'向启花','13319651058',1,10,1,''),(20,'admin','2022-05-07 10:19:14','admin','2022-10-27 16:27:48',7,'补建琪','18007459077',1,11,0,'地址：湖南省怀化市宝圆财富广场6栋4楼（迎丰公园对面）'),(21,'admin','2022-05-07 10:19:36',NULL,NULL,12,'瞿水英','19152156768',1,12,0,''),(22,'admin','2022-05-07 10:19:50',NULL,NULL,12,'吴丽娇','17670408800',1,13,0,''),(23,'admin','2022-05-07 10:20:11',NULL,NULL,11,'赵婷','18897475810',1,14,0,''),(24,'admin','2022-05-07 10:20:25',NULL,NULL,10,'石卓','18774566271',0,15,0,''),(25,'admin','2022-05-07 10:20:37',NULL,NULL,10,'李绪文','18574576925',0,16,0,''),(26,'admin','2022-05-07 10:20:58',NULL,NULL,2,'王星懿','15974049176',1,17,0,''),(27,'admin','2022-05-07 10:21:11','admin','2022-10-28 13:49:18',2,'何景明','15874564686',0,18,1,''),(28,'admin','2022-05-07 10:21:25',NULL,NULL,2,'黄立新','15574551081',0,19,0,''),(29,'admin','2022-05-07 10:21:41','admin','2022-10-28 13:49:08',2,'瞿丹','19976849515',1,20,1,''),(30,'admin','2022-05-07 10:21:59',NULL,NULL,2,'周丽','15115177513',1,21,0,''),(31,'admin','2022-05-07 10:22:13',NULL,NULL,15,'金叶','15574519389',0,22,0,''),(32,'admin','2022-05-07 10:22:24',NULL,NULL,15,'周鑫荣','15717457876',0,23,0,''),(33,'admin','2022-10-27 16:28:34',NULL,NULL,10,'李艳','18907459803',1,24,0,''),(34,'admin','2022-10-27 16:29:24',NULL,NULL,15,'储枝萍','19173138594',1,24,0,''),(35,'admin','2022-10-27 16:29:42',NULL,NULL,2,'陈书梅','13349614325',1,24,0,''),(36,'admin','2022-10-27 16:30:03',NULL,NULL,14,'乔丽','15874537022',1,24,0,''),(37,'admin','2022-10-27 17:18:21',NULL,NULL,17,'刘永欣','13307458557',0,24,0,''),(38,'admin','2022-10-28 09:57:39',NULL,NULL,12,'邓叶青','15115172588',1,24,0,''),(39,'admin','2022-10-28 10:34:12',NULL,NULL,18,'蒋雪玲','18074581190',1,24,0,''),(40,'admin','2022-10-28 12:56:41',NULL,NULL,7,'黄琼','18907456627',1,24,0,'');
/*!40000 ALTER TABLE `insurance_company_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `n_expend`
--

DROP TABLE IF EXISTS `n_expend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `n_expend`
--

LOCK TABLES `n_expend` WRITE;
/*!40000 ALTER TABLE `n_expend` DISABLE KEYS */;
INSERT INTO `n_expend` VALUES (22,NULL,'2022-05-16 15:42:25',NULL,NULL,'测试一下',73,NULL,NULL,273,'测试','');
/*!40000 ALTER TABLE `n_expend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `n_income`
--

DROP TABLE IF EXISTS `n_income`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `n_income`
--

LOCK TABLES `n_income` WRITE;
/*!40000 ALTER TABLE `n_income` DISABLE KEYS */;
INSERT INTO `n_income` VALUES (5,'admin','2022-05-16 11:41:29','admin','2022-05-16 15:41:56','20220516剩余',273,NULL,0,'');
/*!40000 ALTER TABLE `n_income` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `n_income_sources`
--

DROP TABLE IF EXISTS `n_income_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `n_income_sources`
--

LOCK TABLES `n_income_sources` WRITE;
/*!40000 ALTER TABLE `n_income_sources` DISABLE KEYS */;
/*!40000 ALTER TABLE `n_income_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `n_person`
--

DROP TABLE IF EXISTS `n_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `n_person`
--

LOCK TABLES `n_person` WRITE;
/*!40000 ALTER TABLE `n_person` DISABLE KEYS */;
INSERT INTO `n_person` VALUES (2,NULL,'2022-05-16 09:45:15',NULL,NULL,'丁荣华','','',5,0,62,170,0,''),(3,NULL,'2022-05-16 09:46:35',NULL,NULL,'王仕琪','','',11,0,67,175,0,''),(4,NULL,'2022-05-16 09:47:33',NULL,NULL,'杨恒','','',13,0,76,175,0,''),(5,NULL,'2022-05-16 09:48:23',NULL,NULL,'倪文斌','','',8,0,62,180,0,''),(6,NULL,'2022-05-16 09:49:34',NULL,NULL,'李政霖','','',0,0,NULL,NULL,0,''),(7,NULL,'2022-05-16 09:49:58',NULL,NULL,'向建武','','',7,0,NULL,NULL,0,''),(8,NULL,'2022-05-16 09:50:20',NULL,NULL,'韦方亮','','',25,0,NULL,NULL,0,''),(9,NULL,'2022-05-16 09:50:50',NULL,NULL,'唐蕾','','19174690778',NULL,0,NULL,NULL,0,''),(10,NULL,'2022-05-16 09:51:11',NULL,NULL,'刘建平','','',6,0,NULL,NULL,0,''),(11,NULL,'2022-05-16 09:51:34',NULL,NULL,'章其','','',19,0,NULL,NULL,0,''),(12,NULL,'2022-05-16 09:51:51',NULL,NULL,'王勇','','',10,0,NULL,NULL,0,''),(13,NULL,'2022-05-16 09:52:05',NULL,NULL,'肖俊','','',NULL,0,NULL,NULL,0,''),(14,NULL,'2022-05-16 09:54:05',NULL,NULL,'周俞明','','',NULL,0,NULL,NULL,0,''),(15,NULL,'2022-05-16 09:54:29',NULL,NULL,'杨帆','','',24,0,NULL,NULL,0,''),(16,NULL,'2022-05-16 09:54:44',NULL,NULL,'蔡众','','',3,0,NULL,NULL,0,''),(17,NULL,'2022-05-16 09:55:26',NULL,NULL,'杨盛','','',32,0,NULL,NULL,0,''),(20,NULL,'2022-05-16 11:15:29',NULL,NULL,'伍春晖','','',1,0,178,83,0,'');
/*!40000 ALTER TABLE `n_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_blob_triggers`
--

DROP TABLE IF EXISTS `qrtz_blob_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Blob类型的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_blob_triggers`
--

LOCK TABLES `qrtz_blob_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_blob_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_blob_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_calendars`
--

DROP TABLE IF EXISTS `qrtz_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='日历信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_calendars`
--

LOCK TABLES `qrtz_calendars` WRITE;
/*!40000 ALTER TABLE `qrtz_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_cron_triggers`
--

DROP TABLE IF EXISTS `qrtz_cron_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Cron类型的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_cron_triggers`
--

LOCK TABLES `qrtz_cron_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_cron_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_cron_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_fired_triggers`
--

DROP TABLE IF EXISTS `qrtz_fired_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_fired_triggers`
--

LOCK TABLES `qrtz_fired_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_fired_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_fired_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_job_details`
--

DROP TABLE IF EXISTS `qrtz_job_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_job_details`
--

LOCK TABLES `qrtz_job_details` WRITE;
/*!40000 ALTER TABLE `qrtz_job_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_job_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_locks`
--

DROP TABLE IF EXISTS `qrtz_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='存储的悲观锁信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_locks`
--

LOCK TABLES `qrtz_locks` WRITE;
/*!40000 ALTER TABLE `qrtz_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_paused_trigger_grps`
--

DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='暂停的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_paused_trigger_grps`
--

LOCK TABLES `qrtz_paused_trigger_grps` WRITE;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_scheduler_state`
--

DROP TABLE IF EXISTS `qrtz_scheduler_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint(13) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(13) NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='调度器状态表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_scheduler_state`
--

LOCK TABLES `qrtz_scheduler_state` WRITE;
/*!40000 ALTER TABLE `qrtz_scheduler_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_scheduler_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simple_triggers`
--

DROP TABLE IF EXISTS `qrtz_simple_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simple_triggers`
--

LOCK TABLES `qrtz_simple_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simple_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simple_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simprop_triggers`
--

DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simprop_triggers`
--

LOCK TABLES `qrtz_simprop_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_triggers`
--

DROP TABLE IF EXISTS `qrtz_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_triggers`
--

LOCK TABLES `qrtz_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school`
--

DROP TABLE IF EXISTS `school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `school` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=36078 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school`
--

LOCK TABLES `school` WRITE;
/*!40000 ALTER TABLE `school` DISABLE KEYS */;
INSERT INTO `school` VALUES (24282,NULL,NULL,NULL,NULL,'锦溪小学',2,0,426,440,0,NULL),(24286,NULL,NULL,NULL,NULL,'宏宇小学',2,0,426,440,0,NULL),(24287,NULL,NULL,NULL,NULL,'实验小学',2,0,426,440,0,NULL),(24288,NULL,NULL,NULL,NULL,'怀铁一小',2,0,426,440,0,NULL),(24290,NULL,NULL,NULL,NULL,'宏宇中学',3,0,426,440,0,NULL),(24291,NULL,NULL,NULL,NULL,'实验中学',3,0,426,440,0,NULL),(24292,NULL,NULL,NULL,NULL,'武陵中学',3,0,426,440,0,NULL),(24293,NULL,NULL,NULL,NULL,'怀铁二中',3,0,426,440,0,NULL),(24297,NULL,NULL,NULL,'2022-10-25 10:58:48','市幼儿园',1,0,426,440,0,''),(24336,NULL,NULL,NULL,NULL,'怀化三中',3,0,426,440,0,NULL),(24338,NULL,NULL,NULL,NULL,'怀铁一中',3,0,426,440,0,NULL),(24339,NULL,NULL,NULL,NULL,'湖天中学',3,0,426,440,0,NULL),(24801,NULL,NULL,NULL,NULL,'鹤城区第二幼儿园',1,0,426,428,0,NULL),(24860,NULL,NULL,NULL,NULL,'第一中学',3,0,426,428,0,NULL),(24861,NULL,NULL,NULL,NULL,'第五中学',3,0,426,428,0,NULL),(24862,NULL,NULL,NULL,NULL,'旅游学校',4,0,426,428,0,NULL),(24863,NULL,NULL,NULL,NULL,'第二中学',3,0,426,428,0,NULL),(24864,NULL,NULL,NULL,NULL,'第四中学',3,0,426,428,0,NULL),(24865,NULL,NULL,NULL,NULL,'顺天路中学',3,0,426,428,0,NULL),(24866,NULL,NULL,NULL,'2022-10-24 19:38:31','榆树湾中学',3,0,426,428,0,''),(24867,NULL,NULL,NULL,NULL,'河西中学',3,0,426,428,0,NULL),(24869,NULL,NULL,NULL,NULL,'黄金坳中学',3,0,426,428,0,NULL),(24871,NULL,NULL,NULL,NULL,'正清路中学',3,0,426,428,0,NULL),(24872,NULL,NULL,NULL,NULL,'城南学校',8,0,426,428,0,NULL),(24873,NULL,NULL,NULL,NULL,'集贤学校',8,0,426,428,0,NULL),(24874,NULL,NULL,NULL,NULL,'象形学校',8,0,426,428,0,NULL),(24875,NULL,NULL,NULL,NULL,'东晟学校',8,0,426,428,0,NULL),(24876,NULL,NULL,NULL,NULL,'黄岩学校',8,0,426,428,0,NULL),(24877,NULL,NULL,NULL,NULL,'鹤城区幼儿园',1,0,426,428,0,NULL),(24878,NULL,NULL,NULL,NULL,'鹤城区幼儿园花背分园',1,0,426,428,0,NULL),(24882,NULL,NULL,NULL,NULL,'黄金坳中心幼儿园',1,0,426,428,0,NULL),(24883,NULL,NULL,NULL,NULL,'盈口乡中心幼儿园',1,0,426,428,0,NULL),(24885,NULL,NULL,NULL,NULL,'贺家田中心幼儿园',1,0,426,428,0,NULL),(24886,NULL,NULL,NULL,NULL,'河西小学',2,0,426,428,0,NULL),(24891,NULL,NULL,NULL,NULL,'鹤翔学校',2,0,426,428,0,NULL),(24892,NULL,NULL,NULL,NULL,'鹤翔学校北校区',2,0,426,428,0,NULL),(24893,NULL,NULL,NULL,NULL,'舞水小学',2,0,426,428,0,NULL),(24894,NULL,NULL,NULL,NULL,'舞水西校区',2,0,426,428,0,NULL),(24895,NULL,NULL,NULL,NULL,'跃进路小学',2,0,426,428,0,NULL),(24896,NULL,NULL,NULL,NULL,'人民路小学',2,0,426,428,0,NULL),(24897,NULL,NULL,NULL,NULL,'华都小学',2,0,426,428,0,NULL),(24898,NULL,NULL,NULL,NULL,'欧城小学',2,0,426,428,0,NULL),(24899,NULL,NULL,NULL,NULL,'大汉小学',2,0,426,428,0,NULL),(24900,NULL,NULL,NULL,NULL,'碧桂园小学',2,0,426,428,0,NULL),(24901,NULL,NULL,NULL,NULL,'红星路小学',2,0,426,428,0,NULL),(24902,NULL,NULL,NULL,NULL,'钟秀学校',2,0,426,428,0,NULL),(24903,NULL,NULL,NULL,NULL,'太平桥小学',2,0,426,428,0,NULL),(24904,NULL,NULL,NULL,NULL,'锦园路小学',2,0,426,428,0,NULL),(24905,NULL,NULL,NULL,NULL,'公园路小学',2,0,426,428,0,NULL),(24906,NULL,NULL,NULL,NULL,'湖天桥小学',2,0,426,428,0,NULL),(24907,NULL,NULL,NULL,NULL,'正清路小学',2,0,426,428,0,NULL),(24909,NULL,NULL,NULL,NULL,'城东小学',2,0,426,428,0,NULL),(24916,NULL,NULL,NULL,NULL,'坨院学校',2,0,426,428,0,NULL),(24917,NULL,NULL,NULL,NULL,'芙蓉学校',2,0,426,428,0,NULL),(24919,NULL,NULL,NULL,NULL,'黄金坳小学',2,0,426,428,0,NULL),(24925,NULL,NULL,NULL,NULL,'芦坪小学',2,0,426,428,0,NULL),(24932,NULL,NULL,NULL,NULL,'凉亭坳学校',8,0,426,428,0,NULL),(24937,NULL,NULL,NULL,NULL,'贺家田学校',2,0,426,428,0,NULL),(25143,NULL,NULL,NULL,NULL,'沅陵县教师新村幼儿园',1,1,426,430,0,NULL),(25146,NULL,NULL,NULL,NULL,'沅陵县安吉乐幼儿园',1,1,426,430,0,NULL),(25147,NULL,NULL,NULL,NULL,'沅陵县紫云名城幼儿园',1,1,426,430,0,NULL),(25149,NULL,NULL,NULL,NULL,'沅陵县囝囡幼儿园',1,1,426,430,0,NULL),(25150,NULL,NULL,NULL,NULL,'沅陵县育新幼儿园',1,1,426,430,0,NULL),(25151,NULL,NULL,NULL,NULL,'沅陵县子规国学幼儿园',1,1,426,430,0,NULL),(25153,NULL,NULL,NULL,NULL,'沅陵县天宁幼儿园',1,1,426,430,0,NULL),(25155,NULL,NULL,NULL,NULL,'沅陵县银河幼儿园',1,1,426,430,0,NULL),(25156,NULL,NULL,NULL,NULL,'沅陵县城区幼儿园',1,1,426,430,0,NULL),(25157,NULL,NULL,NULL,NULL,'沅陵县品龙幼儿园',1,1,426,430,0,NULL),(25158,NULL,NULL,NULL,NULL,'沅陵县萌萌幼儿园',1,1,426,430,0,NULL),(25160,NULL,NULL,NULL,NULL,'沅陵县名都幼儿园',1,1,426,430,0,NULL),(25161,NULL,NULL,NULL,NULL,'沅陵县启明星幼儿园',1,1,426,430,0,NULL),(25163,NULL,NULL,NULL,NULL,'沅陵县龙泉幼儿园',1,1,426,430,0,NULL),(25164,NULL,NULL,NULL,NULL,'沅陵县昱鑫幼儿园',1,1,426,430,0,NULL),(25165,NULL,NULL,NULL,NULL,'沅陵县金贝贝幼儿园',1,1,426,430,0,NULL),(25168,NULL,NULL,NULL,NULL,'沅陵县晨光幼儿园',1,1,426,430,0,NULL),(25169,NULL,NULL,NULL,NULL,'沅陵县童话世界幼儿园',1,1,426,430,0,NULL),(25170,NULL,NULL,NULL,NULL,'沅陵县小星星幼儿园',1,1,426,430,0,NULL),(25171,NULL,NULL,NULL,NULL,'沅陵县城南幼儿园',1,1,426,430,0,NULL),(25172,NULL,NULL,NULL,NULL,'沅陵县囿团幼儿园',1,1,426,430,0,NULL),(25173,NULL,NULL,NULL,NULL,'沅陵县江南幼儿园',1,1,426,430,0,NULL),(25177,NULL,NULL,NULL,NULL,'沅陵县欣博艺幼儿园',1,1,426,430,0,NULL),(25179,NULL,NULL,NULL,NULL,'沅陵县小博士幼儿园',1,1,426,430,0,NULL),(25180,NULL,NULL,NULL,NULL,'沅陵县小叮当幼儿园',1,1,426,430,0,NULL),(25181,NULL,NULL,NULL,NULL,'沅陵县酉乐幼儿园',1,1,426,430,0,NULL),(25182,NULL,NULL,NULL,NULL,'沅陵县小天鹅幼儿园',1,1,426,430,0,NULL),(25185,NULL,NULL,NULL,NULL,'沅陵县希望幼儿园',1,1,426,430,0,NULL),(25186,NULL,NULL,NULL,NULL,'沅陵县阳光宝贝幼儿园',1,1,426,430,0,NULL),(25187,NULL,NULL,NULL,NULL,'沅陵县青苗幼儿园',1,1,426,430,0,NULL),(25189,NULL,NULL,NULL,NULL,'沅陵县小圣人幼儿园',1,1,426,430,0,NULL),(25190,NULL,NULL,NULL,NULL,'沅陵县喜洋洋幼儿园',1,1,426,430,0,NULL),(25192,NULL,NULL,NULL,NULL,'沅陵县小莲花幼儿园',1,1,426,430,0,NULL),(25193,NULL,NULL,NULL,NULL,'沅陵县晨露幼儿园',1,1,426,430,0,NULL),(25194,NULL,NULL,NULL,NULL,'沅陵县乐苗幼儿园',1,1,426,430,0,NULL),(25195,NULL,NULL,NULL,NULL,'沅陵县明星幼儿园',1,1,426,430,0,NULL),(25201,NULL,NULL,NULL,NULL,'沅陵县小太阳幼儿园',1,1,426,430,0,NULL),(25203,NULL,NULL,NULL,NULL,'沅陵县小天使幼儿园',1,1,426,430,0,NULL),(25204,NULL,NULL,NULL,NULL,'沅陵县小精灵幼儿园',1,1,426,430,0,NULL),(25205,NULL,NULL,NULL,NULL,'沅陵县兴华幼儿园',1,1,426,430,0,NULL),(25207,NULL,NULL,NULL,NULL,'沅陵县好孩子幼儿园',1,1,426,430,0,NULL),(25208,NULL,NULL,NULL,NULL,'沅陵县慧珍幼儿园',1,1,426,430,0,NULL),(25209,NULL,NULL,NULL,NULL,'沅陵县春雨幼儿园',1,1,426,430,0,NULL),(25210,NULL,NULL,NULL,NULL,'沅陵县快乐宝贝幼儿园',1,1,426,430,0,NULL),(25211,NULL,NULL,NULL,NULL,'沅陵县雏鹰幼儿园',1,1,426,430,0,NULL),(25213,NULL,NULL,NULL,NULL,'沅陵县艳艳幼儿园',1,1,426,430,0,NULL),(25215,NULL,NULL,NULL,NULL,'沅陵县童乐幼儿园',1,1,426,430,0,NULL),(25219,NULL,NULL,NULL,NULL,'沅陵县小金星幼儿园',1,1,426,430,0,NULL),(25221,NULL,NULL,NULL,NULL,'沅陵县未来星幼儿园',1,1,426,430,0,NULL),(25222,NULL,NULL,NULL,NULL,'沅陵县春苗幼儿园',1,1,426,430,0,NULL),(25223,NULL,NULL,NULL,NULL,'沅陵县娟娟幼儿园',1,1,426,430,0,NULL),(25224,NULL,NULL,NULL,NULL,'沅陵县玉清幼儿园',1,1,426,430,0,NULL),(25225,NULL,NULL,NULL,NULL,'沅陵县新星幼儿园',1,1,426,430,0,NULL),(25226,NULL,NULL,NULL,NULL,'沅陵县春蕾幼儿园',1,1,426,430,0,NULL),(25227,NULL,NULL,NULL,NULL,'沅陵县红苹果幼儿园',1,1,426,430,0,NULL),(25231,NULL,NULL,NULL,NULL,'沅陵县金苹果幼儿园',1,1,426,430,0,NULL),(25232,NULL,NULL,NULL,NULL,'沅陵县新苑幼儿园',1,1,426,430,0,NULL),(25233,NULL,NULL,NULL,NULL,'沅陵县红太阳幼儿园',1,1,426,430,0,NULL),(25234,NULL,NULL,NULL,NULL,'沅陵县楠星幼儿园',1,1,426,430,0,NULL),(25235,NULL,NULL,NULL,NULL,'沅陵县七彩虹幼儿园',1,1,426,430,0,NULL),(25236,NULL,NULL,NULL,NULL,'沅陵县心蕊幼儿园',1,1,426,430,0,NULL),(25237,NULL,NULL,NULL,NULL,'沅陵县聪明泉幼儿园',1,1,426,430,0,NULL),(25240,NULL,NULL,NULL,NULL,'大合坪九校',8,0,426,430,0,NULL),(25244,NULL,NULL,NULL,NULL,'火场九校',8,0,426,430,0,NULL),(25247,NULL,NULL,NULL,NULL,'坳坪九校',8,0,426,430,0,NULL),(25249,NULL,NULL,NULL,NULL,'丑溪口九校',8,0,426,430,0,NULL),(25250,NULL,NULL,NULL,NULL,'洞溪九校',8,0,426,430,0,NULL),(25251,NULL,NULL,NULL,NULL,'杜家坪九校',8,0,426,430,0,NULL),(25253,NULL,NULL,NULL,NULL,'高坪九校',8,0,426,430,0,NULL),(25255,NULL,NULL,NULL,NULL,'柳林汊小学',8,0,426,430,0,NULL),(25257,NULL,NULL,NULL,NULL,'清水坪九校',8,0,426,430,0,NULL),(25258,NULL,NULL,NULL,NULL,'五强溪镇中心小学',2,0,426,430,0,NULL),(25262,NULL,NULL,NULL,NULL,'蚕忙九校',8,0,426,430,0,NULL),(25263,NULL,NULL,NULL,NULL,'陈家滩九校',8,0,426,430,0,NULL),(25264,NULL,'2022-10-25 14:13:26',NULL,NULL,'二酉苗族乡中心小学',NULL,0,NULL,430,0,''),(25265,NULL,NULL,NULL,NULL,'虎溪学校',8,0,426,430,0,NULL),(25266,NULL,NULL,NULL,NULL,'落坪九校',8,0,426,430,0,NULL),(25267,NULL,NULL,NULL,NULL,'麻溪铺九校',8,0,426,430,0,NULL),(25269,NULL,NULL,NULL,NULL,'楠木铺九校',8,0,426,430,0,NULL),(25270,NULL,NULL,NULL,NULL,'沅陵县第七中学',3,0,426,430,0,NULL),(25271,NULL,NULL,NULL,NULL,'清浪九校',8,0,426,430,0,NULL),(25272,NULL,NULL,NULL,NULL,'沅陵县沅陵镇太常九年一贯制学校',8,0,426,430,0,NULL),(25273,NULL,NULL,NULL,NULL,'沅陵镇太常栗坡小学',2,0,426,430,0,NULL),(25274,NULL,NULL,NULL,NULL,'渭溪九校',8,0,426,430,0,NULL),(25283,NULL,NULL,NULL,NULL,'张家滩九校',8,0,426,430,0,NULL),(25286,NULL,NULL,NULL,NULL,'长界九校',8,0,426,430,0,NULL),(25287,NULL,NULL,NULL,NULL,'黄壤坪九校',8,0,426,430,0,NULL),(25288,NULL,NULL,NULL,NULL,'凉水井中心小学',8,0,426,430,0,NULL),(25290,NULL,NULL,NULL,NULL,'明溪口芙蓉学校',3,0,426,430,0,NULL),(25291,NULL,NULL,NULL,NULL,'七甲坪镇九校',8,0,426,430,0,NULL),(25293,NULL,NULL,NULL,NULL,'借母溪乡筒车坪九校',8,0,426,430,0,NULL),(25294,NULL,NULL,NULL,NULL,'沅陵县第六中学',3,0,426,430,0,NULL),(25295,NULL,NULL,NULL,NULL,'筲箕湾镇中心小学',2,0,426,430,0,NULL),(25306,NULL,NULL,NULL,NULL,'沅陵三中',8,0,426,430,0,NULL),(25308,NULL,NULL,NULL,NULL,'二酉苗族乡中学',3,0,426,430,0,NULL),(25309,NULL,NULL,NULL,NULL,'落鹤坪小学',8,0,426,430,0,NULL),(25310,NULL,NULL,NULL,NULL,'太安幼儿园',1,0,426,430,0,NULL),(25311,NULL,NULL,NULL,NULL,'沅陵县幼儿园',1,0,426,430,0,NULL),(25312,NULL,NULL,NULL,NULL,'凉水井中学',3,0,426,430,0,NULL),(25313,NULL,NULL,NULL,NULL,'张家坪九校',8,0,426,430,0,NULL),(25316,NULL,NULL,NULL,NULL,'荷花池小学',8,0,426,430,0,NULL),(25317,NULL,NULL,NULL,NULL,'鹤鸣山小学',8,0,426,430,0,NULL),(25318,NULL,NULL,NULL,NULL,'沅陵县职业中等专业学校',3,0,426,430,0,NULL),(25319,NULL,NULL,NULL,NULL,'溪子口小学',8,0,426,430,0,NULL),(25320,NULL,NULL,NULL,NULL,'沅陵一中',3,0,426,430,0,NULL),(25321,NULL,NULL,NULL,NULL,'沅陵二中',3,0,426,430,0,NULL),(25322,NULL,NULL,NULL,NULL,'思源实验学校',3,0,426,430,0,NULL),(25323,NULL,NULL,NULL,NULL,'凤鸣学校',8,0,426,430,0,NULL),(28381,NULL,NULL,NULL,NULL,'马底驿九校',8,0,426,430,0,NULL),(28382,NULL,NULL,NULL,NULL,'竹园九校',8,0,426,430,0,NULL),(28384,NULL,NULL,NULL,NULL,'舒溪口九校',8,0,426,430,0,NULL),(28385,NULL,NULL,NULL,NULL,'棋坪九校',8,0,426,430,0,NULL),(28386,NULL,NULL,NULL,NULL,'明溪口九校',8,0,426,430,0,NULL),(28387,NULL,NULL,NULL,NULL,'筲箕湾镇中学',3,0,426,430,0,NULL),(28388,NULL,NULL,NULL,NULL,'用坪九校',8,0,426,430,0,NULL),(28389,NULL,NULL,NULL,NULL,'官庄小学',8,0,426,430,0,NULL),(28390,NULL,NULL,NULL,NULL,'金山学校',8,0,426,430,0,NULL),(28391,NULL,NULL,NULL,NULL,'荔枝溪小学',2,0,426,430,0,NULL),(28392,NULL,NULL,NULL,NULL,'深溪口九校',8,0,426,430,0,NULL),(28393,NULL,NULL,NULL,NULL,'北溶九校',8,0,426,430,0,NULL),(28394,NULL,NULL,NULL,NULL,'七甲溪九校',8,0,426,430,0,NULL),(28395,NULL,NULL,NULL,NULL,'肖家桥九校',8,0,426,430,0,NULL),(28396,NULL,NULL,NULL,NULL,'军大坪九校',8,0,426,430,0,NULL),(28397,NULL,NULL,NULL,NULL,'枫香坪九校',8,0,426,430,0,NULL),(28398,NULL,NULL,NULL,NULL,'楠木小学',8,0,426,430,0,NULL),(28399,NULL,NULL,NULL,NULL,'白田小学',2,0,426,430,0,NULL),(28402,NULL,NULL,NULL,NULL,'池坪九校',8,0,426,430,0,NULL),(29404,NULL,NULL,NULL,NULL,'鹤城区幼儿园区政府分园',1,0,426,428,0,NULL),(29405,NULL,NULL,NULL,NULL,'金时中学',3,0,426,428,0,NULL),(29408,NULL,NULL,NULL,NULL,'鹤城区第三幼儿园',1,0,426,428,0,NULL),(30135,NULL,NULL,NULL,NULL,'鹤城区第二幼儿园金海分园',1,0,426,428,0,NULL),(30173,NULL,NULL,NULL,NULL,'沅陵县三之三幼儿园',1,1,426,430,0,NULL),(30174,NULL,NULL,NULL,NULL,'沅陵县红飞幼儿园',1,1,426,430,0,NULL),(30175,NULL,NULL,NULL,NULL,'沅陵县向日葵幼儿园',1,1,426,430,0,NULL),(30176,NULL,NULL,NULL,NULL,'沅陵县红缨御鑫城幼儿园',1,1,426,430,0,NULL),(30177,NULL,NULL,NULL,NULL,'沅陵县鑫都幼儿园',1,1,426,430,0,NULL),(30178,NULL,NULL,NULL,NULL,'沅陵县大风车幼儿园',1,1,426,430,0,NULL),(30179,NULL,NULL,NULL,NULL,'沅陵县金色摇篮幼儿园',1,1,426,430,0,NULL),(30180,NULL,NULL,NULL,NULL,'沅陵县滨江幼儿园',1,1,426,430,0,NULL),(30181,NULL,NULL,NULL,NULL,'沅陵县龙兴幼儿园',1,1,426,430,0,NULL),(30182,NULL,NULL,NULL,NULL,'沅陵县爱上幼儿园',1,1,426,430,0,NULL),(30183,NULL,NULL,NULL,NULL,'沅陵县金鹰幼儿园',1,1,426,430,0,NULL),(30184,NULL,NULL,NULL,NULL,'沅陵县蓝天幼儿园',1,1,426,430,0,NULL),(30185,NULL,NULL,NULL,NULL,'沅陵县酉缘幼儿园',1,1,426,430,0,NULL),(30186,NULL,NULL,NULL,NULL,'沅陵县公馆幼儿园',1,1,426,430,0,NULL),(30574,NULL,NULL,NULL,NULL,'沅陵县朝阳幼儿园',1,1,426,430,0,NULL),(30575,NULL,NULL,NULL,NULL,'沅陵县慧灵幼儿园',1,1,426,430,0,NULL),(30576,NULL,NULL,NULL,NULL,'沅陵县育英幼儿园',1,1,426,430,0,NULL),(30577,NULL,NULL,NULL,NULL,'沅陵县铭扬幼儿园',1,1,426,430,0,NULL),(30578,NULL,NULL,NULL,NULL,'沅陵县小福娃幼儿园',1,1,426,430,0,NULL),(30579,NULL,NULL,NULL,NULL,'沅陵县宇宙幼儿园',1,1,426,430,0,NULL),(30582,NULL,NULL,NULL,NULL,'沅陵县小红帽幼儿园',1,1,426,430,0,NULL),(30583,NULL,NULL,NULL,NULL,'沅陵县晶晶幼儿园',1,1,426,430,0,NULL),(30584,NULL,NULL,NULL,NULL,'沅陵县玲华幼儿园',1,1,426,430,0,NULL),(30586,NULL,NULL,NULL,NULL,'沅陵县银银幼儿园',1,1,426,430,0,NULL),(30587,NULL,NULL,NULL,NULL,'沅陵县霞光幼儿园',1,1,426,430,0,NULL),(30588,NULL,NULL,NULL,NULL,'沅陵县福音幼儿园',1,1,426,430,0,NULL),(30589,NULL,NULL,NULL,NULL,'沅陵县新希望幼儿园',1,1,426,430,0,NULL),(30590,NULL,NULL,NULL,NULL,'沅陵县宝宝乐幼儿园',1,1,426,430,0,NULL),(30591,NULL,NULL,NULL,NULL,'沅陵县玲玲幼儿园',1,1,426,430,0,NULL),(30592,NULL,NULL,NULL,NULL,'沅陵县和平幼儿园',1,1,426,430,0,NULL),(30593,NULL,NULL,NULL,NULL,'沅陵县八方幼儿园',1,1,426,430,0,NULL),(30594,NULL,NULL,NULL,NULL,'沅陵县乐园幼儿园（大合坪九校幼儿园）',1,1,426,430,0,NULL),(30595,NULL,NULL,NULL,NULL,'沅陵县金色阳光幼儿园',1,1,426,430,0,NULL),(30923,NULL,NULL,NULL,NULL,'沅陵县麻溪铺九校幼儿园',1,1,426,430,0,NULL),(31191,NULL,NULL,NULL,'2022-10-25 10:58:44','市幼儿园湖天分园',1,0,426,440,0,'2'),(31488,NULL,NULL,NULL,NULL,'沅陵县金山幼儿园',1,1,426,430,0,NULL),(34945,NULL,'2022-10-25 14:12:59',NULL,'2022-10-25 14:14:25','沅陵县小箐英学校',NULL,1,NULL,430,0,''),(34946,NULL,'2022-10-25 14:14:03',NULL,'2022-10-25 14:14:21','沅陵县三维电脑职业学校',NULL,1,NULL,430,0,''),(34947,NULL,'2022-10-25 14:14:59',NULL,NULL,'沅陵县中等音乐专业学校',NULL,1,NULL,430,0,''),(34948,NULL,'2022-10-25 14:15:38',NULL,NULL,'怀化市成硕职业学校',NULL,1,NULL,430,0,''),(36077,NULL,'2022-10-25 10:59:40',NULL,NULL,'中心特校',NULL,0,NULL,440,0,'');
/*!40000 ALTER TABLE `school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_company`
--

DROP TABLE IF EXISTS `school_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `school_company` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(50) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` text,
  `state` int(11) DEFAULT NULL,
  `insurance_company_name` varchar(50) DEFAULT NULL,
  `insurance_company_person` varchar(50) DEFAULT NULL,
  `insurance_company_phone` varchar(50) DEFAULT NULL,
  `insurance_company_sex` int(11) DEFAULT NULL,
  `school_id` bigint(20) DEFAULT NULL,
  `school_name` varchar(50) DEFAULT NULL,
  `county_dept_id` int(11) DEFAULT NULL,
  `charge_code` varchar(50) DEFAULT NULL,
  `risk_code` varchar(50) DEFAULT NULL,
  `insurance_company_id` bigint(20) DEFAULT NULL,
  `insurance_company_person_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1207 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_company`
--

LOCK TABLES `school_company` WRITE;
/*!40000 ALTER TABLE `school_company` DISABLE KEYS */;
INSERT INTO `school_company` VALUES (35,'admin','2022-10-27 16:31:45',NULL,NULL,'',0,'财信人寿怀化中心支公司','补建琪','18007459077',1,24282,'锦溪小学',440,'HH202202','01',7,20),(36,'admin','2022-10-27 16:32:21',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,24282,'锦溪小学',440,'HH202202','08',2,26),(37,'admin','2022-10-27 16:33:18',NULL,NULL,'',0,'人保财险怀化市分公司','李艳','18907459803',1,24282,'锦溪小学',440,'HH202202','05',10,33),(38,'admin','2022-10-27 16:34:06',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24282,'锦溪小学',440,'HH202202','14',14,36),(39,'admin','2022-10-27 16:35:51',NULL,NULL,'',0,'财信人寿怀化中心支公司','补建琪','18007459077',1,24286,'宏宇小学',440,'HH202202','01',7,20),(40,'admin','2022-10-27 16:36:05',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,24286,'宏宇小学',440,'HH202202','08',2,26),(41,'admin','2022-10-27 16:36:37',NULL,NULL,'',0,'人保财险怀化市分公司','李艳','18907459803',1,24286,'宏宇小学',440,'HH202202','05',10,33),(42,'admin','2022-10-27 16:36:49',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24286,'宏宇小学',440,'HH202202','14',14,36),(43,'admin','2022-10-27 16:44:43',NULL,NULL,'',0,'财信人寿怀化中心支公司','补建琪','18007459077',1,24287,'实验小学',440,'HH202202','01',7,20),(44,'admin','2022-10-27 16:45:08',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,24287,'实验小学',440,'HH202202','08',2,26),(45,'admin','2022-10-27 16:45:33',NULL,NULL,'',0,'人保财险怀化市分公司','李艳','18907459803',1,24287,'实验小学',440,'HH202202','05',10,33),(46,'admin','2022-10-27 16:46:06',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24287,'实验小学',440,'HH202202','14',14,36),(47,'admin','2022-10-27 16:46:30',NULL,NULL,'',0,'财信人寿怀化中心支公司','补建琪','18007459077',1,24288,'怀铁一小',440,'HH202202','01',7,20),(48,'admin','2022-10-27 16:46:40',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,24288,'怀铁一小',440,'HH202202','08',2,26),(49,'admin','2022-10-27 16:46:51',NULL,NULL,'',0,'人保财险怀化市分公司','李艳','18907459803',1,24288,'怀铁一小',440,'HH202202','05',10,33),(50,'admin','2022-10-27 16:47:05',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24288,'怀铁一小',440,'HH202202','14',14,36),(51,'admin','2022-10-27 16:47:29',NULL,NULL,'',0,'财信人寿怀化中心支公司','补建琪','18007459077',1,31191,'市幼儿园湖天分园',440,'HH202202','01',7,20),(52,'admin','2022-10-27 16:47:54',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,31191,'市幼儿园湖天分园',440,'HH202202','08',2,26),(53,'admin','2022-10-27 16:48:10',NULL,NULL,'',0,'人保财险怀化市分公司','李艳','18907459803',1,31191,'市幼儿园湖天分园',440,'HH202202','05',10,33),(54,'admin','2022-10-27 16:48:23',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,31191,'市幼儿园湖天分园',440,'HH202202','14',14,36),(55,'admin','2022-10-27 16:48:49',NULL,NULL,'',0,'财信人寿怀化中心支公司','补建琪','18007459077',1,24297,'市幼儿园',440,'HH202202','01',7,20),(56,'admin','2022-10-27 16:49:02',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,24297,'市幼儿园',440,'HH202202','08',2,26),(57,'admin','2022-10-27 16:49:26',NULL,NULL,'',0,'人保财险怀化市分公司','李艳','18907459803',1,24297,'市幼儿园',440,'HH202202','05',10,33),(58,'admin','2022-10-27 16:49:37',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24297,'市幼儿园',440,'HH202202','14',14,36),(59,'admin','2022-10-27 16:50:16',NULL,NULL,'',0,'人保财险怀化市分公司','李艳','18907459803',1,24291,'实验中学',440,'HH202202','01',10,33),(60,'admin','2022-10-27 16:50:27',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,24291,'实验中学',440,'HH202202','08',2,26),(61,'admin','2022-10-27 16:50:42',NULL,NULL,'',0,'人保财险怀化市分公司','李艳','18907459803',1,24291,'实验中学',440,'HH202202','05',10,33),(62,'admin','2022-10-27 16:50:53',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24291,'实验中学',440,'HH202202','14',14,36),(63,'admin','2022-10-27 16:51:39',NULL,NULL,'',0,'人保财险怀化市分公司','李艳','18907459803',1,24292,'武陵中学',440,'HH202202','01',10,33),(64,'admin','2022-10-27 16:52:16',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,24292,'武陵中学',440,'HH202202','08',2,26),(65,'admin','2022-10-27 16:52:26',NULL,NULL,'',0,'人保财险怀化市分公司','李艳','18907459803',1,24292,'武陵中学',440,'HH202202','05',10,33),(66,'admin','2022-10-27 16:52:36',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24292,'武陵中学',440,'HH202202','14',14,36),(67,'admin','2022-10-27 16:54:36',NULL,NULL,'',0,'人保财险怀化市分公司','李艳','18907459803',1,24339,'湖天中学',440,'HH202202','01',10,33),(68,'admin','2022-10-27 16:54:46',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,24339,'湖天中学',440,'HH202202','08',2,26),(69,'admin','2022-10-27 16:54:55',NULL,NULL,'',0,'人保财险怀化市分公司','李艳','18907459803',1,24339,'湖天中学',440,'HH202202','05',10,33),(70,'admin','2022-10-27 16:55:07',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24339,'湖天中学',440,'HH202202','14',14,36),(71,'admin','2022-10-27 16:55:40',NULL,NULL,'',0,'太平洋财险怀化中心支公司','李晶心','13874442271',1,24290,'宏宇中学',440,'HH202202','01',17,13),(72,'admin','2022-10-27 16:55:51',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,24290,'宏宇中学',440,'HH202202','08',2,26),(73,'admin','2022-10-27 16:56:03',NULL,NULL,'',0,'人保财险怀化市分公司','李艳','18907459803',1,24290,'宏宇中学',440,'HH202202','05',10,33),(74,'admin','2022-10-27 16:56:16',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24290,'宏宇中学',440,'HH202202','14',14,36),(75,'admin','2022-10-27 16:56:38',NULL,NULL,'',0,'太平洋财险怀化中心支公司','李晶心','13874442271',1,36077,'中心特校',440,'HH202202','01',17,13),(76,'admin','2022-10-27 16:57:10',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,36077,'中心特校',440,'HH202202','08',2,26),(77,'admin','2022-10-27 16:57:21',NULL,NULL,'',0,'人保财险怀化市分公司','李艳','18907459803',1,36077,'中心特校',440,'HH202202','05',10,33),(78,'admin','2022-10-27 16:57:30',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,36077,'中心特校',440,'HH202202','14',14,36),(79,'admin','2022-10-27 16:58:10',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,24293,'怀铁二中',440,'HH202202','08',2,26),(80,'admin','2022-10-27 16:58:20',NULL,NULL,'',0,'人保财险怀化市分公司','李艳','18907459803',1,24293,'怀铁二中',440,'HH202202','05',10,33),(81,'admin','2022-10-27 16:58:32',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24293,'怀铁二中',440,'HH202202','14',14,36),(82,'admin','2022-10-27 16:58:51',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,24338,'怀铁一中',440,'HH202202','08',2,26),(83,'admin','2022-10-27 16:59:02',NULL,NULL,'',0,'人保财险怀化市分公司','李艳','18907459803',1,24338,'怀铁一中',440,'HH202202','05',10,33),(84,'admin','2022-10-27 16:59:15',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24338,'怀铁一中',440,'HH202202','14',14,36),(85,'admin','2022-10-27 16:59:38',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,24336,'怀化三中',440,'HH202202','08',2,26),(86,'admin','2022-10-27 17:00:03',NULL,NULL,'',0,'人保财险怀化市分公司','李艳','18907459803',1,24336,'怀化三中',440,'HH202202','05',10,33),(87,'admin','2022-10-27 17:00:23',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24336,'怀化三中',440,'HH202202','14',14,36),(88,'admin','2022-10-27 17:16:51',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,24801,'鹤城区第二幼儿园',428,'HH202202','01',2,26),(89,'admin','2022-10-27 17:17:33',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,24801,'鹤城区第二幼儿园',428,'HH202202','08',2,35),(90,'admin','2022-10-27 17:18:44',NULL,NULL,'',0,'太平洋财险怀化中心支公司','刘永欣','13307458557',0,24801,'鹤城区第二幼儿园',428,'HH202202','05',17,37),(91,'admin','2022-10-27 17:18:55',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,24801,'鹤城区第二幼儿园',428,'HH202202','14',2,26),(92,'admin','2022-10-27 17:19:35',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,29404,'鹤城区幼儿园区政府分园',428,'HH202202','01',2,26),(94,'admin','2022-10-27 17:20:08',NULL,NULL,'',0,'太平洋财险怀化中心支公司','刘永欣','13307458557',0,29404,'鹤城区幼儿园区政府分园',428,'HH202202','05',17,37),(95,'admin','2022-10-27 17:20:21',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,29404,'鹤城区幼儿园区政府分园',428,'HH202202','14',2,26),(96,'admin','2022-10-27 17:22:30',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,29408,'鹤城区第三幼儿园',428,'HH202202','01',2,26),(97,'admin','2022-10-27 17:22:41',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,29408,'鹤城区第三幼儿园',428,'HH202202','08',2,35),(99,'admin','2022-10-27 17:23:47',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,29404,'鹤城区幼儿园区政府分园',428,'HH202202','08',2,35),(100,'admin','2022-10-27 17:24:56',NULL,NULL,'',0,'太平洋财险怀化中心支公司','刘永欣','13307458557',0,29408,'鹤城区第三幼儿园',428,'HH202202','05',17,37),(101,'admin','2022-10-27 17:25:09',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,29408,'鹤城区第三幼儿园',428,'HH202202','14',2,26),(102,'admin','2022-10-27 17:25:47',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,24877,'鹤城区幼儿园',428,'HH202202','01',2,26),(103,'admin','2022-10-27 17:25:56',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,24877,'鹤城区幼儿园',428,'HH202202','08',2,35),(104,'admin','2022-10-27 17:26:07',NULL,NULL,'',0,'太平洋财险怀化中心支公司','刘永欣','13307458557',0,24877,'鹤城区幼儿园',428,'HH202202','05',17,37),(105,'admin','2022-10-27 17:26:18',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,24877,'鹤城区幼儿园',428,'HH202202','14',2,26),(106,'admin','2022-10-27 17:26:43',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,24878,'鹤城区幼儿园花背分园',428,'HH202202','01',2,26),(107,'admin','2022-10-27 17:27:06',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,24878,'鹤城区幼儿园花背分园',428,'HH202202','08',2,35),(108,'admin','2022-10-27 17:27:28',NULL,NULL,'',0,'太平洋财险怀化中心支公司','刘永欣','13307458557',0,24878,'鹤城区幼儿园花背分园',428,'HH202202','05',17,37),(109,'admin','2022-10-27 17:27:37',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,24878,'鹤城区幼儿园花背分园',428,'HH202202','14',2,26),(110,'admin','2022-10-27 17:46:53',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,24882,'黄金坳中心幼儿园',428,'HH202202','01',2,26),(111,'admin','2022-10-27 17:47:04',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,24882,'黄金坳中心幼儿园',428,'HH202202','08',2,35),(112,'admin','2022-10-27 17:47:11',NULL,NULL,'',0,'太平洋财险怀化中心支公司','刘永欣','13307458557',0,24882,'黄金坳中心幼儿园',428,'HH202202','05',17,37),(113,'admin','2022-10-27 17:47:26',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,24882,'黄金坳中心幼儿园',428,'HH202202','14',2,26),(114,'admin','2022-10-27 17:47:49',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,24883,'盈口乡中心幼儿园',428,'HH202202','01',2,35),(115,'admin','2022-10-27 17:47:59',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,24883,'盈口乡中心幼儿园',428,'HH202202','08',2,35),(116,'admin','2022-10-27 17:48:10',NULL,NULL,'',0,'太平洋财险怀化中心支公司','刘永欣','13307458557',0,24883,'盈口乡中心幼儿园',428,'HH202202','05',17,37),(117,'admin','2022-10-27 17:48:22',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,24883,'盈口乡中心幼儿园',428,'HH202202','14',2,26),(118,'admin','2022-10-27 17:48:50',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,30135,'鹤城区第二幼儿园金海分园',428,'HH202202','01',2,26),(119,'admin','2022-10-27 17:48:59',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,30135,'鹤城区第二幼儿园金海分园',428,'HH202202','08',2,35),(120,'admin','2022-10-27 17:49:08',NULL,NULL,'',0,'太平洋财险怀化中心支公司','刘永欣','13307458557',0,30135,'鹤城区第二幼儿园金海分园',428,'HH202202','05',17,37),(121,'admin','2022-10-27 17:49:18','admin','2022-11-01 09:32:45','',0,'中国人寿怀化分公司','王星懿','15974049176',1,30135,'鹤城区第二幼儿园金海分园',428,'HH202202','14',2,26),(122,'admin','2022-10-27 17:49:42',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,24885,'贺家田中心幼儿园',428,'HH202202','01',2,26),(123,'admin','2022-10-27 17:49:50',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,24885,'贺家田中心幼儿园',428,'HH202202','08',2,35),(124,'admin','2022-10-27 17:50:02',NULL,NULL,'',0,'太平洋财险怀化中心支公司','刘永欣','13307458557',0,24885,'贺家田中心幼儿园',428,'HH202202','05',17,37),(125,'admin','2022-10-27 17:50:17',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,24885,'贺家田中心幼儿园',428,'HH202202','14',2,26),(126,'admin','2022-10-27 17:50:54',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,24886,'河西小学',428,'HH202202','01',2,26),(127,'admin','2022-10-27 17:51:05',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,24886,'河西小学',428,'HH202202','08',2,35),(128,'admin','2022-10-27 17:51:24',NULL,NULL,'',0,'太平洋财险怀化中心支公司','刘永欣','13307458557',0,24886,'河西小学',428,'HH202202','05',17,37),(129,'admin','2022-10-27 17:51:39',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,24886,'河西小学',428,'HH202202','14',2,26),(130,'admin','2022-10-27 17:51:56',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,24896,'人民路小学',428,'HH202202','01',2,26),(131,'admin','2022-10-27 17:52:10',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,24896,'人民路小学',428,'HH202202','08',2,35),(132,'admin','2022-10-27 17:52:21',NULL,NULL,'',0,'太平洋财险怀化中心支公司','刘永欣','13307458557',0,24896,'人民路小学',428,'HH202202','05',17,37),(133,'admin','2022-10-27 17:52:33',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,24896,'人民路小学',428,'HH202202','14',2,26),(134,'admin','2022-10-27 17:53:11',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,24893,'舞水小学',428,'HH202202','01',2,26),(135,'admin','2022-10-27 17:53:36',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,24893,'舞水小学',428,'HH202202','08',2,35),(136,'admin','2022-10-27 17:53:47',NULL,NULL,'',0,'太平洋财险怀化中心支公司','刘永欣','13307458557',0,24893,'舞水小学',428,'HH202202','05',17,37),(137,'admin','2022-10-27 17:53:55',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,24893,'舞水小学',428,'HH202202','14',2,26),(138,'admin','2022-10-27 17:54:26',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,24894,'舞水西校区',428,'HH202202','01',2,26),(139,'admin','2022-10-27 17:54:34',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,24894,'舞水西校区',428,'HH202202','08',2,35),(140,'admin','2022-10-27 17:54:44',NULL,NULL,'',0,'太平洋财险怀化中心支公司','刘永欣','13307458557',0,24894,'舞水西校区',428,'HH202202','05',17,37),(141,'admin','2022-10-27 17:54:52',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,24894,'舞水西校区',428,'HH202202','14',2,26),(142,'admin','2022-10-27 17:55:16',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,24862,'旅游学校',428,'HH202202','01',2,26),(143,'admin','2022-10-27 17:55:25',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,24862,'旅游学校',428,'HH202202','08',2,35),(144,'admin','2022-10-27 17:55:35',NULL,NULL,'',0,'太平洋财险怀化中心支公司','刘永欣','13307458557',0,24862,'旅游学校',428,'HH202202','05',17,37),(145,'admin','2022-10-27 17:55:48',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,24862,'旅游学校',428,'HH202202','14',2,26),(146,'admin','2022-10-27 17:56:12',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,24863,'第二中学',428,'HH202202','01',2,26),(147,'admin','2022-10-27 17:56:33',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,24863,'第二中学',428,'HH202202','08',2,35),(148,'admin','2022-10-27 17:56:47',NULL,NULL,'',0,'太平洋财险怀化中心支公司','刘永欣','13307458557',0,24863,'第二中学',428,'HH202202','05',17,37),(149,'admin','2022-10-27 17:56:59',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,24863,'第二中学',428,'HH202202','14',2,26),(150,'admin','2022-10-27 17:57:48',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,24867,'河西中学',428,'HH202202','01',2,26),(151,'admin','2022-10-27 17:57:55',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,24867,'河西中学',428,'HH202202','08',2,35),(152,'admin','2022-10-27 17:58:22',NULL,NULL,'',0,'太平洋财险怀化中心支公司','刘永欣','13307458557',0,24867,'河西中学',428,'HH202202','05',17,37),(153,'admin','2022-10-27 17:59:06',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,24867,'河西中学',428,'HH202202','14',2,26),(154,'admin','2022-10-27 17:59:41',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,24869,'黄金坳中学',428,'HH202202','01',2,26),(156,'admin','2022-10-27 18:00:19',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,24869,'黄金坳中学',428,'HH202202','08',2,35),(157,'admin','2022-10-27 18:01:11',NULL,NULL,'',0,'太平洋财险怀化中心支公司','刘永欣','13307458557',0,24869,'黄金坳中学',428,'HH202202','05',17,37),(158,'admin','2022-10-27 18:01:20',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,24869,'黄金坳中学',428,'HH202202','14',2,26),(159,'admin','2022-10-27 18:01:52',NULL,NULL,'',0,'太平洋财险怀化中心支公司','曾莉','18574551658',1,24895,'跃进路小学',428,'HH202202','01',17,12),(160,'admin','2022-10-27 18:02:02',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,24895,'跃进路小学',428,'HH202202','08',2,35),(161,'admin','2022-10-27 18:02:11',NULL,NULL,'',0,'太平洋财险怀化中心支公司','刘永欣','13307458557',0,24895,'跃进路小学',428,'HH202202','05',17,37),(162,'admin','2022-10-27 18:02:27',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,24895,'跃进路小学',428,'HH202202','14',2,26),(163,'admin','2022-10-27 18:03:51',NULL,NULL,'',0,'太平洋财险怀化中心支公司','曾莉','18574551658',1,24902,'钟秀学校',428,'HH202202','01',17,12),(164,'admin','2022-10-27 18:04:11',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,24902,'钟秀学校',428,'HH202202','08',2,35),(165,'admin','2022-10-27 18:04:27',NULL,NULL,'',0,'太平洋财险怀化中心支公司','刘永欣','13307458557',0,24902,'钟秀学校',428,'HH202202','05',17,37),(166,'admin','2022-10-27 18:04:38',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,24902,'钟秀学校',428,'HH202202','14',2,26),(167,'admin','2022-10-27 18:04:57',NULL,NULL,'',0,'太平洋财险怀化中心支公司','曾莉','18574551658',1,24903,'太平桥小学',428,'HH202202','01',17,12),(168,'admin','2022-10-27 18:05:10',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,24903,'太平桥小学',428,'HH202202','08',2,35),(169,'admin','2022-10-27 18:05:30',NULL,NULL,'',0,'太平洋财险怀化中心支公司','刘永欣','13307458557',0,24903,'太平桥小学',428,'HH202202','05',17,37),(170,'admin','2022-10-27 18:05:40',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,24903,'太平桥小学',428,'HH202202','14',2,26),(171,'admin','2022-10-27 18:06:29',NULL,NULL,'',0,'太平洋财险怀化中心支公司','曾莉','18574551658',1,24860,'第一中学',428,'HH202202','01',17,12),(172,'admin','2022-10-27 18:06:39',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,24860,'第一中学',428,'HH202202','08',2,35),(173,'admin','2022-10-27 18:06:50',NULL,NULL,'',0,'太平洋财险怀化中心支公司','刘永欣','13307458557',0,24860,'第一中学',428,'HH202202','05',17,37),(174,'admin','2022-10-27 18:06:59',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,24860,'第一中学',428,'HH202202','14',2,26),(175,'admin','2022-10-27 18:08:05',NULL,NULL,'',0,'太平洋财险怀化中心支公司','曾莉','18574551658',1,24861,'第五中学',428,'HH202202','01',17,12),(176,'admin','2022-10-27 18:08:15',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,24861,'第五中学',428,'HH202202','08',2,35),(178,'admin','2022-10-27 18:09:23',NULL,NULL,'',0,'太平洋财险怀化中心支公司','刘永欣','13307458557',0,24861,'第五中学',428,'HH202202','05',17,37),(179,'admin','2022-10-27 18:09:32',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,24861,'第五中学',428,'HH202202','14',2,26),(180,'admin','2022-10-27 18:10:12',NULL,NULL,'',0,'太平洋财险怀化中心支公司','曾莉','18574551658',1,24864,'第四中学',428,'HH202202','01',17,12),(181,'admin','2022-10-27 18:10:24',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,24864,'第四中学',428,'HH202202','08',2,35),(182,'admin','2022-10-27 18:10:33',NULL,NULL,'',0,'太平洋财险怀化中心支公司','刘永欣','13307458557',0,24864,'第四中学',428,'HH202202','05',17,37),(183,'admin','2022-10-27 18:10:48',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,24864,'第四中学',428,'HH202202','14',2,26),(184,'admin','2022-10-27 18:11:05',NULL,NULL,'',0,'太平洋财险怀化中心支公司','曾莉','18574551658',1,24865,'顺天路中学',428,'HH202202','01',17,12),(185,'admin','2022-10-27 18:11:50',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,24865,'顺天路中学',428,'HH202202','08',2,35),(186,'admin','2022-10-27 18:12:11',NULL,NULL,'',0,'太平洋财险怀化中心支公司','刘永欣','13307458557',0,24865,'顺天路中学',428,'HH202202','05',17,37),(187,'admin','2022-10-27 18:12:25',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,24865,'顺天路中学',428,'HH202202','14',2,26),(188,'admin','2022-10-27 18:12:56',NULL,NULL,'',0,'太平洋财险怀化中心支公司','曾莉','18574551658',1,24876,'黄岩学校',428,'HH202202','01',17,12),(189,'admin','2022-10-27 18:13:08',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,24876,'黄岩学校',428,'HH202202','08',2,35),(190,'admin','2022-10-27 18:13:18',NULL,NULL,'',0,'太平洋财险怀化中心支公司','刘永欣','13307458557',0,24876,'黄岩学校',428,'HH202202','05',17,37),(191,'admin','2022-10-27 18:13:25',NULL,NULL,'',0,'中国人寿怀化分公司','王星懿','15974049176',1,24876,'黄岩学校',428,'HH202202','14',2,26),(192,'admin','2022-10-28 09:31:19',NULL,NULL,'',0,'中华联合财险怀化中心支公司','周鑫荣','15717457876',0,24866,'榆树湾中学',428,'HH202202','01',15,32),(193,'admin','2022-10-28 09:31:33',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,24866,'榆树湾中学',428,'HH202202','08',2,35),(194,'admin','2022-10-28 09:32:03',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24866,'榆树湾中学',428,'HH202202','05',14,36),(195,'admin','2022-10-28 09:32:26',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24866,'榆树湾中学',428,'HH202202','14',14,36),(196,'admin','2022-10-28 09:32:58',NULL,NULL,'',0,'中华联合财险怀化中心支公司','周鑫荣','15717457876',0,24871,'正清路中学',428,'HH202202','01',15,32),(198,'admin','2022-10-28 09:33:22',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24871,'正清路中学',428,'HH202202','05',14,36),(199,'admin','2022-10-28 09:33:42',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24871,'正清路中学',428,'HH202202','14',14,36),(200,'admin','2022-10-28 09:34:11',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,24871,'正清路中学',428,'HH202202','08',2,35),(201,'admin','2022-10-28 09:53:01',NULL,NULL,'',0,'中华联合财险怀化中心支公司','周鑫荣','15717457876',0,24900,'碧桂园小学',428,'HH202202','01',15,32),(202,'admin','2022-10-28 09:53:25',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,24900,'碧桂园小学',428,'HH202202','08',2,35),(203,'admin','2022-10-28 09:53:56',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24900,'碧桂园小学',428,'HH202202','05',14,36),(204,'admin','2022-10-28 09:54:16',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24900,'碧桂园小学',428,'HH202202','14',14,36),(205,'admin','2022-10-28 09:54:53',NULL,NULL,'',0,'中华联合财险怀化中心支公司','周鑫荣','15717457876',0,24899,'大汉小学',428,'HH202202','01',15,32),(206,'admin','2022-10-28 09:55:02','admin','2022-10-28 09:55:16','',0,'中国人寿怀化分公司','陈书梅','13349614325',1,24899,'大汉小学',428,'HH202202','08',2,35),(207,'admin','2022-10-28 09:56:13',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24899,'大汉小学',428,'HH202202','05',14,36),(208,'admin','2022-10-28 09:56:22',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24899,'大汉小学',428,'HH202202','14',14,36),(209,'admin','2022-10-28 09:58:01',NULL,NULL,'',0,'人民人寿怀化中心支公司','邓叶青','15115172588',1,24925,'芦坪小学',428,'HH202202','01',12,38),(210,'admin','2022-10-28 09:58:14',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,24925,'芦坪小学',428,'HH202202','08',2,35),(211,'admin','2022-10-28 09:58:31',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24925,'芦坪小学',428,'HH202202','05',14,36),(212,'admin','2022-10-28 09:58:40',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24925,'芦坪小学',428,'HH202202','14',14,36),(213,'admin','2022-10-28 09:59:07',NULL,NULL,'',0,'人民人寿怀化中心支公司','邓叶青','15115172588',1,24873,'集贤学校',428,'HH202202','01',12,38),(214,'admin','2022-10-28 09:59:17',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,24873,'集贤学校',428,'HH202202','08',2,35),(215,'admin','2022-10-28 10:00:20',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24873,'集贤学校',428,'HH202202','05',14,36),(216,'admin','2022-10-28 10:00:29',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24873,'集贤学校',428,'HH202202','14',14,36),(217,'admin','2022-10-28 10:00:51',NULL,NULL,'',0,'人民人寿怀化中心支公司','邓叶青','15115172588',1,24897,'华都小学',428,'HH202202','01',12,38),(218,'admin','2022-10-28 10:01:23',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,24897,'华都小学',428,'HH202202','08',2,35),(219,'admin','2022-10-28 10:01:34',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24897,'华都小学',428,'HH202202','05',14,36),(220,'admin','2022-10-28 10:01:42',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24897,'华都小学',428,'HH202202','14',14,36),(221,'admin','2022-10-28 10:03:41',NULL,NULL,'',0,'人保财险怀化市分公司','李艳','18907459803',1,24901,'红星路小学',428,'HH202202','01',10,33),(222,'admin','2022-10-28 10:04:02',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,24901,'红星路小学',428,'HH202202','08',2,35),(223,'admin','2022-10-28 10:05:03',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24901,'红星路小学',428,'HH202202','05',14,36),(224,'admin','2022-10-28 10:05:13',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24901,'红星路小学',428,'HH202202','14',14,36),(225,'admin','2022-10-28 10:07:30',NULL,NULL,'',0,'人保财险怀化市分公司','李艳','18907459803',1,24875,'东晟学校',428,'HH202202','01',10,33),(226,'admin','2022-10-28 10:07:58',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,24875,'东晟学校',428,'HH202202','08',2,35),(227,'admin','2022-10-28 10:08:12',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24875,'东晟学校',428,'HH202202','05',14,36),(228,'admin','2022-10-28 10:08:31',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24875,'东晟学校',428,'HH202202','14',14,36),(229,'admin','2022-10-28 10:10:32',NULL,NULL,'',0,'人保财险怀化市分公司','李艳','18907459803',1,24872,'城南学校',428,'HH202202','01',10,33),(230,'admin','2022-10-28 10:10:51',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,24872,'城南学校',428,'HH202202','08',2,35),(231,'admin','2022-10-28 10:11:27',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24872,'城南学校',428,'HH202202','05',14,36),(232,'admin','2022-10-28 10:11:53',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24872,'城南学校',428,'HH202202','14',14,36),(233,'admin','2022-10-28 10:12:19',NULL,NULL,'',0,'人保财险怀化市分公司','李艳','18907459803',1,24874,'象形学校',428,'HH202202','01',10,33),(234,'admin','2022-10-28 10:12:30',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,24874,'象形学校',428,'HH202202','08',2,35),(235,'admin','2022-10-28 10:13:15',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24874,'象形学校',428,'HH202202','05',14,36),(236,'admin','2022-10-28 10:13:27',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24874,'象形学校',428,'HH202202','14',14,36),(237,'admin','2022-10-28 10:13:52',NULL,NULL,'',0,'人保财险怀化市分公司','李艳','18907459803',1,24891,'鹤翔学校',428,'HH202202','01',10,33),(238,'admin','2022-10-28 10:14:20',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,24891,'鹤翔学校',428,'HH202202','08',2,35),(239,'admin','2022-10-28 10:14:30',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24891,'鹤翔学校',428,'HH202202','05',14,36),(240,'admin','2022-10-28 10:14:38',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24891,'鹤翔学校',428,'HH202202','14',14,36),(241,'admin','2022-10-28 10:18:34',NULL,NULL,'',0,'人保财险怀化市分公司','李艳','18907459803',1,24892,'鹤翔学校北校区',428,'HH202202','01',10,33),(242,'admin','2022-10-28 10:18:46',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,24892,'鹤翔学校北校区',428,'HH202202','08',2,35),(243,'admin','2022-10-28 10:18:55',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24892,'鹤翔学校北校区',428,'HH202202','05',14,36),(244,'admin','2022-10-28 10:19:02',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24892,'鹤翔学校北校区',428,'HH202202','14',14,36),(245,'admin','2022-10-28 10:19:23',NULL,NULL,'',0,'人保财险怀化市分公司','李艳','18907459803',1,24904,'锦园路小学',428,'HH202202','01',10,33),(246,'admin','2022-10-28 10:19:43',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,24904,'锦园路小学',428,'HH202202','08',2,35),(247,'admin','2022-10-28 10:19:52',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24904,'锦园路小学',428,'HH202202','05',14,36),(248,'admin','2022-10-28 10:20:06',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24904,'锦园路小学',428,'HH202202','14',14,36),(249,'admin','2022-10-28 10:20:45',NULL,NULL,'',0,'人保财险怀化市分公司','李艳','18907459803',1,24905,'公园路小学',428,'HH202202','01',10,33),(250,'admin','2022-10-28 10:20:59',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,24905,'公园路小学',428,'HH202202','08',2,35),(251,'admin','2022-10-28 10:21:07',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24905,'公园路小学',428,'HH202202','05',14,36),(252,'admin','2022-10-28 10:21:15',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24905,'公园路小学',428,'HH202202','14',14,36),(253,'admin','2022-10-28 10:21:39',NULL,NULL,'',0,'人保财险怀化市分公司','李艳','18907459803',1,24906,'湖天桥小学',428,'HH202202','01',10,33),(254,'admin','2022-10-28 10:21:47',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,24906,'湖天桥小学',428,'HH202202','08',2,35),(255,'admin','2022-10-28 10:21:55',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24906,'湖天桥小学',428,'HH202202','05',14,36),(256,'admin','2022-10-28 10:22:03',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24906,'湖天桥小学',428,'HH202202','14',14,36),(257,'admin','2022-10-28 10:22:48',NULL,NULL,'柜面电话_07458136333;地址：宝圆财富广场6栋4楼（迎丰公园对面）',0,'财信人寿怀化中心支公司','补建琪','18007459077',1,24898,'欧城小学',428,'HH202202','01',7,20),(259,'admin','2022-10-28 10:23:25',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,24898,'欧城小学',428,'HH202202','08',2,35),(260,'admin','2022-10-28 10:24:06',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24898,'欧城小学',428,'HH202202','05',14,36),(261,'admin','2022-10-28 10:24:16',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24898,'欧城小学',428,'HH202202','14',14,36),(262,'admin','2022-10-28 10:25:25',NULL,NULL,'柜面电话_07458136333;地址：宝圆财富广场6栋4楼（迎丰公园对面）',0,'财信人寿怀化中心支公司','补建琪','18007459077',1,24907,'正清路小学',428,'HH202202','01',7,20),(263,'admin','2022-10-28 10:25:34',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,24907,'正清路小学',428,'HH202202','08',2,35),(264,'admin','2022-10-28 10:25:49',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24907,'正清路小学',428,'HH202202','05',14,36),(265,'admin','2022-10-28 10:25:59',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24907,'正清路小学',428,'HH202202','14',14,36),(266,'admin','2022-10-28 10:26:48',NULL,NULL,'柜面电话_07458136333;地址：宝圆财富广场6栋4楼（迎丰公园对面）',0,'财信人寿怀化中心支公司','补建琪','18007459077',1,24909,'城东小学',428,'HH202202','01',7,20),(267,'admin','2022-10-28 10:27:18',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,24909,'城东小学',428,'HH202202','08',2,35),(268,'admin','2022-10-28 10:27:26',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24909,'城东小学',428,'HH202202','05',14,36),(269,'admin','2022-10-28 10:27:35',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24909,'城东小学',428,'HH202202','14',14,36),(270,'admin','2022-10-28 10:28:06',NULL,NULL,'柜面电话_07458136333;地址：宝圆财富广场6栋4楼（迎丰公园对面）',0,'财信人寿怀化中心支公司','补建琪','18007459077',1,29405,'金时中学',428,'HH202202','01',7,20),(271,'admin','2022-10-28 10:28:16',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,29405,'金时中学',428,'HH202202','08',2,35),(272,'admin','2022-10-28 10:28:49',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,29405,'金时中学',428,'HH202202','05',14,36),(273,'admin','2022-10-28 10:29:20',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,29405,'金时中学',428,'HH202202','14',14,36),(274,'admin','2022-10-28 10:29:56',NULL,NULL,'柜面电话_07458136333;地址：宝圆财富广场6栋4楼（迎丰公园对面）',0,'财信人寿怀化中心支公司','补建琪','18007459077',1,24917,'芙蓉学校',428,'HH202202','01',7,20),(275,'admin','2022-10-28 10:30:06',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,24917,'芙蓉学校',428,'HH202202','08',2,35),(276,'admin','2022-10-28 10:30:15',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24917,'芙蓉学校',428,'HH202202','05',14,36),(277,'admin','2022-10-28 10:30:27',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24917,'芙蓉学校',428,'HH202202','14',14,36),(278,'admin','2022-10-28 10:30:58',NULL,NULL,'柜面电话_07458136333;地址：宝圆财富广场6栋4楼（迎丰公园对面）',0,'财信人寿怀化中心支公司','补建琪','18007459077',1,24919,'黄金坳小学',428,'HH202202','01',7,20),(279,'admin','2022-10-28 10:31:09',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,24919,'黄金坳小学',428,'HH202202','08',2,35),(280,'admin','2022-10-28 10:33:04',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24919,'黄金坳小学',428,'HH202202','05',14,36),(281,'admin','2022-10-28 10:33:12',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24919,'黄金坳小学',428,'HH202202','14',14,36),(282,'admin','2022-10-28 10:34:28',NULL,NULL,'',0,'新华人寿怀化中心支公司','蒋雪玲','18074581190',1,24916,'坨院学校',428,'HH202202','01',18,39),(283,'admin','2022-10-28 10:34:43',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,24916,'坨院学校',428,'HH202202','08',2,35),(284,'admin','2022-10-28 10:34:55',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24916,'坨院学校',428,'HH202202','05',14,36),(285,'admin','2022-10-28 10:35:26',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24916,'坨院学校',428,'HH202202','14',14,36),(286,'admin','2022-10-28 10:35:42',NULL,NULL,'',0,'新华人寿怀化中心支公司','蒋雪玲','18074581190',1,24932,'凉亭坳学校',428,'HH202202','01',18,39),(287,'admin','2022-10-28 10:42:30',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,24932,'凉亭坳学校',428,'HH202202','08',2,35),(288,'admin','2022-10-28 10:42:49',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24932,'凉亭坳学校',428,'HH202202','05',14,36),(289,'admin','2022-10-28 10:45:10',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24932,'凉亭坳学校',428,'HH202202','14',14,36),(290,'admin','2022-10-28 10:50:57','admin','2022-10-28 10:51:41','',0,'新华人寿怀化中心支公司','蒋雪玲','18074581190',1,24937,'贺家田学校',428,'HH202202','01',18,39),(296,'admin','2022-10-28 11:22:07',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24937,'贺家田学校',428,'HH202202','05',14,36),(297,'admin','2022-10-28 11:22:15',NULL,NULL,'',0,'平安财险怀化中心支公司','乔丽','15874537022',1,24937,'贺家田学校',428,'HH202202','14',14,36),(298,'admin','2022-10-28 11:22:35',NULL,NULL,'',0,'中国人寿怀化分公司','陈书梅','13349614325',1,24937,'贺家田学校',428,'HH202202','08',2,35),(552,'admin','2022-10-28 12:57:04',NULL,NULL,'柜面电话_07458675088；地址：北京公馆2栋7楼（原步步高楼上）',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25143,'沅陵县教师新村幼儿园',430,'HH202202','01',7,40),(553,'admin','2022-10-28 12:57:24',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25143,'沅陵县教师新村幼儿园',430,'HH202202','08',2,30),(554,'admin','2022-10-28 12:57:57',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25143,'沅陵县教师新村幼儿园',430,'HH202202','05',11,23),(555,'admin','2022-10-28 12:58:28',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25143,'沅陵县教师新村幼儿园',430,'HH202202','14',2,28),(556,'admin','2022-10-28 13:27:26',NULL,NULL,'柜面电话_07458675088；地址：北京公馆2栋7楼（原步步高楼上）',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25146,'沅陵县安吉乐幼儿园',430,'HH202202','01',7,40),(557,'admin','2022-10-28 13:28:06',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25146,'沅陵县安吉乐幼儿园',430,'HH202202','08',2,30),(558,'admin','2022-10-28 13:28:22',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25146,'沅陵县安吉乐幼儿园',430,'HH202202','05',11,23),(559,'admin','2022-10-28 13:28:47',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25146,'沅陵县安吉乐幼儿园',430,'HH202202','14',2,28),(560,'admin','2022-10-28 13:35:53',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25147,'沅陵县紫云名城幼儿园',430,'HH202202','01',7,40),(561,'admin','2022-10-28 13:36:08',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25147,'沅陵县紫云名城幼儿园',430,'HH202202','08',2,30),(562,'admin','2022-10-28 13:36:22',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25147,'沅陵县紫云名城幼儿园',430,'HH202202','05',11,23),(563,'admin','2022-10-28 13:36:38',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25147,'沅陵县紫云名城幼儿园',430,'HH202202','14',2,28),(564,'admin','2022-10-28 13:36:57',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25149,'沅陵县囝囡幼儿园',430,'HH202202','01',7,40),(565,'admin','2022-10-28 13:37:14',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25149,'沅陵县囝囡幼儿园',430,'HH202202','08',2,30),(566,'admin','2022-10-28 13:38:10',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25149,'沅陵县囝囡幼儿园',430,'HH202202','05',11,23),(567,'admin','2022-10-28 13:38:23',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25149,'沅陵县囝囡幼儿园',430,'HH202202','14',2,28),(568,'admin','2022-10-28 13:42:17',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25150,'沅陵县育新幼儿园',430,'HH202202','01',7,40),(569,'admin','2022-10-28 13:44:50',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25150,'沅陵县育新幼儿园',430,'HH202202','08',2,30),(570,'admin','2022-10-28 13:46:41',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25150,'沅陵县育新幼儿园',430,'HH202202','05',11,23),(571,'admin','2022-10-28 13:47:17',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25150,'沅陵县育新幼儿园',430,'HH202202','14',2,28),(572,'admin','2022-10-28 13:48:15',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25151,'沅陵县子规国学幼儿园',430,'HH202202','01',7,40),(573,'admin','2022-10-28 13:48:24',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25151,'沅陵县子规国学幼儿园',430,'HH202202','08',2,30),(574,'admin','2022-10-28 13:48:35',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25151,'沅陵县子规国学幼儿园',430,'HH202202','05',11,23),(575,'admin','2022-10-28 13:48:53',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25151,'沅陵县子规国学幼儿园',430,'HH202202','14',2,28),(576,'admin','2022-10-28 20:48:55',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25153,'沅陵县天宁幼儿园',430,'HH202202','01',7,40),(577,'admin','2022-10-28 20:49:09',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25153,'沅陵县天宁幼儿园',430,'HH202202','08',2,30),(578,'admin','2022-10-28 20:49:20',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25153,'沅陵县天宁幼儿园',430,'HH202202','05',11,23),(579,'admin','2022-10-28 20:49:33',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25153,'沅陵县天宁幼儿园',430,'HH202202','14',2,28),(580,'admin','2022-10-28 20:49:57','admin','2022-10-28 20:51:00','',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25155,'沅陵县银河幼儿园',430,'HH202202','01',7,40),(581,'admin','2022-10-28 20:51:41',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25155,'沅陵县银河幼儿园',430,'HH202202','08',2,30),(582,'admin','2022-10-28 20:51:52',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25155,'沅陵县银河幼儿园',430,'HH202202','05',11,23),(583,'admin','2022-10-28 20:53:26',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25155,'沅陵县银河幼儿园',430,'HH202202','14',2,28),(584,'admin','2022-10-28 20:53:57',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25156,'沅陵县城区幼儿园',430,'HH202202','01',7,40),(585,'admin','2022-10-28 20:56:44',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25156,'沅陵县城区幼儿园',430,'HH202202','08',2,30),(586,'admin','2022-10-28 20:56:54',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25156,'沅陵县城区幼儿园',430,'HH202202','05',11,23),(587,'admin','2022-10-28 20:57:05',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25156,'沅陵县城区幼儿园',430,'HH202202','14',2,28),(588,'admin','2022-10-28 20:57:55',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25157,'沅陵县品龙幼儿园',430,'HH202202','01',7,40),(589,'admin','2022-10-28 20:58:05',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25157,'沅陵县品龙幼儿园',430,'HH202202','08',2,30),(590,'admin','2022-10-28 20:58:13',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25157,'沅陵县品龙幼儿园',430,'HH202202','05',11,23),(591,'admin','2022-10-28 20:58:41',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25157,'沅陵县品龙幼儿园',430,'HH202202','14',2,28),(592,'admin','2022-10-28 21:00:24',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25158,'沅陵县萌萌幼儿园',430,'HH202202','01',7,40),(593,'admin','2022-10-28 21:00:37',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25158,'沅陵县萌萌幼儿园',430,'HH202202','08',2,30),(594,'admin','2022-10-28 21:00:47',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25158,'沅陵县萌萌幼儿园',430,'HH202202','05',11,23),(595,'admin','2022-10-28 21:02:03',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25158,'沅陵县萌萌幼儿园',430,'HH202202','14',2,28),(596,'admin','2022-10-28 21:02:48',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25160,'沅陵县名都幼儿园',430,'HH202202','01',7,40),(597,'admin','2022-10-28 21:03:13',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25160,'沅陵县名都幼儿园',430,'HH202202','08',2,30),(598,'admin','2022-10-28 21:03:22',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25160,'沅陵县名都幼儿园',430,'HH202202','05',11,23),(599,'admin','2022-10-28 21:03:39',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25160,'沅陵县名都幼儿园',430,'HH202202','14',2,28),(600,'admin','2022-10-28 21:06:19',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25163,'沅陵县龙泉幼儿园',430,'HH202202','01',7,40),(601,'admin','2022-10-28 21:06:33',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25163,'沅陵县龙泉幼儿园',430,'HH202202','08',2,30),(602,'admin','2022-10-28 21:06:50',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25163,'沅陵县龙泉幼儿园',430,'HH202202','05',11,23),(603,'admin','2022-10-28 21:07:03',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25163,'沅陵县龙泉幼儿园',430,'HH202202','14',2,28),(604,'admin','2022-10-28 21:07:32',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25164,'沅陵县昱鑫幼儿园',430,'HH202202','01',7,40),(605,'admin','2022-10-28 21:08:30',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25164,'沅陵县昱鑫幼儿园',430,'HH202202','08',2,30),(606,'admin','2022-10-28 21:08:47',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25164,'沅陵县昱鑫幼儿园',430,'HH202202','05',11,23),(607,'admin','2022-10-28 21:09:07',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25164,'沅陵县昱鑫幼儿园',430,'HH202202','14',2,28),(608,'admin','2022-10-28 21:09:28',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25165,'沅陵县金贝贝幼儿园',430,'HH202202','01',7,40),(609,'admin','2022-10-28 21:09:41',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25165,'沅陵县金贝贝幼儿园',430,'HH202202','08',2,30),(610,'admin','2022-10-28 21:09:52',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25165,'沅陵县金贝贝幼儿园',430,'HH202202','05',11,23),(611,'admin','2022-10-28 21:10:01',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25165,'沅陵县金贝贝幼儿园',430,'HH202202','14',2,28),(612,'admin','2022-10-28 21:10:43',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25168,'沅陵县晨光幼儿园',430,'HH202202','01',7,40),(613,'admin','2022-10-28 21:11:10',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25168,'沅陵县晨光幼儿园',430,'HH202202','08',2,30),(614,'admin','2022-10-28 21:11:42',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25168,'沅陵县晨光幼儿园',430,'HH202202','05',11,23),(615,'admin','2022-10-28 21:11:49',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25168,'沅陵县晨光幼儿园',430,'HH202202','14',2,28),(616,'admin','2022-10-28 21:12:26',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25169,'沅陵县童话世界幼儿园',430,'HH202202','01',7,40),(617,'admin','2022-10-28 21:12:35',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25169,'沅陵县童话世界幼儿园',430,'HH202202','08',2,30),(618,'admin','2022-10-28 21:12:49',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25169,'沅陵县童话世界幼儿园',430,'HH202202','05',11,23),(619,'admin','2022-10-28 21:12:56',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25169,'沅陵县童话世界幼儿园',430,'HH202202','14',2,28),(620,'admin','2022-10-28 21:13:35',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25170,'沅陵县小星星幼儿园',430,'HH202202','01',7,40),(621,'admin','2022-10-28 21:13:45',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25170,'沅陵县小星星幼儿园',430,'HH202202','08',2,30),(622,'admin','2022-10-28 21:14:35',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25170,'沅陵县小星星幼儿园',430,'HH202202','05',11,23),(623,'admin','2022-10-28 21:14:48',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25170,'沅陵县小星星幼儿园',430,'HH202202','14',2,28),(624,'admin','2022-10-28 21:15:17',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25171,'沅陵县城南幼儿园',430,'HH202202','01',7,40),(625,'admin','2022-10-28 21:15:33',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25171,'沅陵县城南幼儿园',430,'HH202202','08',2,30),(626,'admin','2022-10-28 21:15:44',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25171,'沅陵县城南幼儿园',430,'HH202202','05',11,23),(627,'admin','2022-10-28 21:15:57',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25171,'沅陵县城南幼儿园',430,'HH202202','14',2,28),(628,'admin','2022-10-28 21:17:08',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25172,'沅陵县囿团幼儿园',430,'HH202202','01',7,40),(629,'admin','2022-10-28 21:17:17',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25172,'沅陵县囿团幼儿园',430,'HH202202','08',2,30),(630,'admin','2022-10-28 21:17:39',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25172,'沅陵县囿团幼儿园',430,'HH202202','05',11,23),(631,'admin','2022-10-28 21:17:50',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25172,'沅陵县囿团幼儿园',430,'HH202202','14',2,28),(632,'admin','2022-10-29 13:49:11',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25173,'沅陵县江南幼儿园',430,'HH202202','01',7,40),(633,'admin','2022-10-29 13:49:23',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25173,'沅陵县江南幼儿园',430,'HH202202','08',2,30),(634,'admin','2022-10-29 13:49:32',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25173,'沅陵县江南幼儿园',430,'HH202202','05',11,23),(635,'admin','2022-10-29 13:49:41',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25173,'沅陵县江南幼儿园',430,'HH202202','14',2,28),(636,'admin','2022-10-29 13:50:47',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25179,'沅陵县小博士幼儿园',430,'HH202202','01',7,40),(637,'admin','2022-10-29 13:50:57',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25179,'沅陵县小博士幼儿园',430,'HH202202','08',2,30),(638,'admin','2022-10-29 13:51:24',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25179,'沅陵县小博士幼儿园',430,'HH202202','05',11,23),(639,'admin','2022-10-29 13:51:33',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25179,'沅陵县小博士幼儿园',430,'HH202202','14',2,28),(640,'admin','2022-10-29 13:52:44',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25180,'沅陵县小叮当幼儿园',430,'HH202202','01',7,40),(641,'admin','2022-10-29 13:52:53',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25180,'沅陵县小叮当幼儿园',430,'HH202202','08',2,30),(642,'admin','2022-10-29 13:53:01',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25180,'沅陵县小叮当幼儿园',430,'HH202202','05',11,23),(643,'admin','2022-10-29 13:53:10',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25180,'沅陵县小叮当幼儿园',430,'HH202202','14',2,28),(644,'admin','2022-10-29 13:54:13',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25181,'沅陵县酉乐幼儿园',430,'HH202202','01',7,40),(646,'admin','2022-10-29 13:55:09',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25181,'沅陵县酉乐幼儿园',430,'HH202202','08',2,30),(647,'admin','2022-10-29 13:55:19',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25181,'沅陵县酉乐幼儿园',430,'HH202202','05',11,23),(648,'admin','2022-10-29 13:55:30',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25181,'沅陵县酉乐幼儿园',430,'HH202202','14',2,28),(649,'admin','2022-10-29 13:57:15',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25182,'沅陵县小天鹅幼儿园',430,'HH202202','01',7,40),(650,'admin','2022-10-29 13:57:22',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25182,'沅陵县小天鹅幼儿园',430,'HH202202','08',2,30),(651,'admin','2022-10-29 13:57:36',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25182,'沅陵县小天鹅幼儿园',430,'HH202202','05',11,23),(652,'admin','2022-10-29 13:57:45',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25182,'沅陵县小天鹅幼儿园',430,'HH202202','14',2,28),(653,'admin','2022-10-29 13:59:25',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25185,'沅陵县希望幼儿园',430,'HH202202','01',7,40),(654,'admin','2022-10-29 13:59:36',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25185,'沅陵县希望幼儿园',430,'HH202202','08',2,30),(655,'admin','2022-10-29 13:59:44',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25185,'沅陵县希望幼儿园',430,'HH202202','05',11,23),(656,'admin','2022-10-29 13:59:57',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25185,'沅陵县希望幼儿园',430,'HH202202','14',2,28),(657,'admin','2022-10-29 14:01:29',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25186,'沅陵县阳光宝贝幼儿园',430,'HH202202','01',7,40),(658,'admin','2022-10-29 14:01:38',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25186,'沅陵县阳光宝贝幼儿园',430,'HH202202','08',2,30),(659,'admin','2022-10-29 14:01:51',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25186,'沅陵县阳光宝贝幼儿园',430,'HH202202','05',11,23),(660,'admin','2022-10-29 14:02:20',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25186,'沅陵县阳光宝贝幼儿园',430,'HH202202','14',2,28),(661,'admin','2022-10-29 14:03:37',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25187,'沅陵县青苗幼儿园',430,'HH202202','01',7,40),(662,'admin','2022-10-29 14:03:48',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25187,'沅陵县青苗幼儿园',430,'HH202202','08',2,30),(663,'admin','2022-10-29 14:03:58',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25187,'沅陵县青苗幼儿园',430,'HH202202','05',11,23),(664,'admin','2022-10-29 14:04:08',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25187,'沅陵县青苗幼儿园',430,'HH202202','14',2,28),(665,'admin','2022-10-29 14:05:46',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25189,'沅陵县小圣人幼儿园',430,'HH202202','01',7,40),(666,'admin','2022-10-29 14:05:53',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25189,'沅陵县小圣人幼儿园',430,'HH202202','08',2,30),(667,'admin','2022-10-29 14:06:03',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25189,'沅陵县小圣人幼儿园',430,'HH202202','05',11,23),(668,'admin','2022-10-29 14:06:13',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25189,'沅陵县小圣人幼儿园',430,'HH202202','14',2,28),(669,'admin','2022-10-29 14:06:36',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25190,'沅陵县喜洋洋幼儿园',430,'HH202202','01',7,40),(670,'admin','2022-10-29 14:06:47',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25190,'沅陵县喜洋洋幼儿园',430,'HH202202','08',2,30),(671,'admin','2022-10-29 14:06:56',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25190,'沅陵县喜洋洋幼儿园',430,'HH202202','05',11,23),(672,'admin','2022-10-29 14:07:06',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25190,'沅陵县喜洋洋幼儿园',430,'HH202202','14',2,28),(673,'admin','2022-10-30 09:51:00',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25192,'沅陵县小莲花幼儿园',430,'HH202202','01',7,40),(674,'admin','2022-10-30 09:51:21',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25192,'沅陵县小莲花幼儿园',430,'HH202202','08',2,30),(675,'admin','2022-10-30 09:51:44',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25192,'沅陵县小莲花幼儿园',430,'HH202202','05',11,23),(676,'admin','2022-10-30 09:51:57',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25192,'沅陵县小莲花幼儿园',430,'HH202202','14',2,28),(677,'admin','2022-10-30 09:52:21',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25194,'沅陵县乐苗幼儿园',430,'HH202202','01',7,40),(678,'admin','2022-10-30 09:52:38',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25194,'沅陵县乐苗幼儿园',430,'HH202202','08',2,30),(679,'admin','2022-10-30 09:52:47',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25194,'沅陵县乐苗幼儿园',430,'HH202202','05',11,23),(680,'admin','2022-10-30 09:53:08',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25194,'沅陵县乐苗幼儿园',430,'HH202202','14',2,28),(681,'admin','2022-10-30 09:53:41',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25195,'沅陵县明星幼儿园',430,'HH202202','01',7,40),(682,'admin','2022-10-30 09:54:09',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25195,'沅陵县明星幼儿园',430,'HH202202','08',2,30),(683,'admin','2022-10-30 09:54:18',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25195,'沅陵县明星幼儿园',430,'HH202202','05',11,23),(684,'admin','2022-10-30 09:54:28',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25195,'沅陵县明星幼儿园',430,'HH202202','14',2,28),(685,'admin','2022-10-30 09:55:36',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25201,'沅陵县小太阳幼儿园',430,'HH202202','01',7,40),(686,'admin','2022-10-30 09:55:45',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25201,'沅陵县小太阳幼儿园',430,'HH202202','08',2,30),(687,'admin','2022-10-30 09:55:56',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25201,'沅陵县小太阳幼儿园',430,'HH202202','05',11,23),(688,'admin','2022-10-30 09:56:10',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25201,'沅陵县小太阳幼儿园',430,'HH202202','14',2,28),(689,'admin','2022-10-30 09:56:35',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25203,'沅陵县小天使幼儿园',430,'HH202202','01',7,40),(690,'admin','2022-10-30 09:56:47',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25203,'沅陵县小天使幼儿园',430,'HH202202','08',2,30),(691,'admin','2022-10-30 09:57:00',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25203,'沅陵县小天使幼儿园',430,'HH202202','05',11,23),(692,'admin','2022-10-30 09:57:16',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25203,'沅陵县小天使幼儿园',430,'HH202202','14',2,28),(693,'admin','2022-10-30 09:58:09',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25204,'沅陵县小精灵幼儿园',430,'HH202202','01',7,40),(694,'admin','2022-10-30 09:59:38',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25204,'沅陵县小精灵幼儿园',430,'HH202202','08',2,30),(695,'admin','2022-10-30 09:59:54',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25204,'沅陵县小精灵幼儿园',430,'HH202202','05',11,23),(696,'admin','2022-10-30 10:00:05',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25204,'沅陵县小精灵幼儿园',430,'HH202202','14',2,28),(697,'admin','2022-10-30 10:00:58',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25205,'沅陵县兴华幼儿园',430,'HH202202','01',7,40),(698,'admin','2022-10-30 10:01:14',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25205,'沅陵县兴华幼儿园',430,'HH202202','08',2,30),(699,'admin','2022-10-30 10:02:36',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25205,'沅陵县兴华幼儿园',430,'HH202202','05',11,23),(700,'admin','2022-10-30 10:02:51',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25205,'沅陵县兴华幼儿园',430,'HH202202','14',2,28),(701,'admin','2022-10-30 10:03:23',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25207,'沅陵县好孩子幼儿园',430,'HH202202','01',7,40),(702,'admin','2022-10-30 10:04:47',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25207,'沅陵县好孩子幼儿园',430,'HH202202','08',2,30),(703,'admin','2022-10-30 10:05:07',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25207,'沅陵县好孩子幼儿园',430,'HH202202','05',11,23),(704,'admin','2022-10-30 10:06:35',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25207,'沅陵县好孩子幼儿园',430,'HH202202','14',2,28),(705,'admin','2022-10-30 10:07:48',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25208,'沅陵县慧珍幼儿园',430,'HH202202','01',7,40),(706,'admin','2022-10-30 10:08:09',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25208,'沅陵县慧珍幼儿园',430,'HH202202','08',2,30),(707,'admin','2022-10-30 10:08:20',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25208,'沅陵县慧珍幼儿园',430,'HH202202','05',11,23),(708,'admin','2022-10-30 10:08:37',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25208,'沅陵县慧珍幼儿园',430,'HH202202','14',2,28),(709,'admin','2022-10-30 10:09:08',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25209,'沅陵县春雨幼儿园',430,'HH202202','01',7,40),(710,'admin','2022-10-30 10:09:23',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25209,'沅陵县春雨幼儿园',430,'HH202202','08',2,30),(711,'admin','2022-10-30 10:10:24',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25209,'沅陵县春雨幼儿园',430,'HH202202','05',11,23),(712,'admin','2022-10-30 10:11:00',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25209,'沅陵县春雨幼儿园',430,'HH202202','14',2,28),(713,'admin','2022-10-30 10:11:30',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25210,'沅陵县快乐宝贝幼儿园',430,'HH202202','01',7,40),(714,'admin','2022-10-30 10:11:56',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25210,'沅陵县快乐宝贝幼儿园',430,'HH202202','08',2,30),(715,'admin','2022-10-30 10:12:09',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25210,'沅陵县快乐宝贝幼儿园',430,'HH202202','05',11,23),(716,'admin','2022-10-30 10:12:24',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25210,'沅陵县快乐宝贝幼儿园',430,'HH202202','14',2,28),(717,'admin','2022-10-30 10:13:02',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25211,'沅陵县雏鹰幼儿园',430,'HH202202','01',7,40),(718,'admin','2022-10-30 10:13:12',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25211,'沅陵县雏鹰幼儿园',430,'HH202202','08',2,30),(719,'admin','2022-10-30 10:13:22',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25211,'沅陵县雏鹰幼儿园',430,'HH202202','05',11,23),(720,'admin','2022-10-30 10:14:39',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25211,'沅陵县雏鹰幼儿园',430,'HH202202','14',2,28),(721,'admin','2022-10-30 10:14:56',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25213,'沅陵县艳艳幼儿园',430,'HH202202','01',7,40),(722,'admin','2022-10-30 10:15:17',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25213,'沅陵县艳艳幼儿园',430,'HH202202','08',2,30),(723,'admin','2022-10-30 10:15:27',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25213,'沅陵县艳艳幼儿园',430,'HH202202','05',11,23),(724,'admin','2022-10-30 10:15:38',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25213,'沅陵县艳艳幼儿园',430,'HH202202','14',2,28),(725,'admin','2022-10-30 11:42:28',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25215,'沅陵县童乐幼儿园',430,'HH202202','01',7,40),(726,'admin','2022-10-30 11:42:40',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25215,'沅陵县童乐幼儿园',430,'HH202202','08',2,30),(727,'admin','2022-10-30 11:43:02',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25215,'沅陵县童乐幼儿园',430,'HH202202','05',11,23),(728,'admin','2022-10-30 11:43:44',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25215,'沅陵县童乐幼儿园',430,'HH202202','14',2,28),(729,'admin','2022-10-30 11:45:14',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25219,'沅陵县小金星幼儿园',430,'HH202202','01',7,40),(730,'admin','2022-10-30 11:45:41',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25219,'沅陵县小金星幼儿园',430,'HH202202','08',2,30),(731,'admin','2022-10-30 11:45:50',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25219,'沅陵县小金星幼儿园',430,'HH202202','05',11,23),(732,'admin','2022-10-30 11:45:59',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25219,'沅陵县小金星幼儿园',430,'HH202202','14',2,28),(733,'admin','2022-10-30 11:50:10',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25222,'沅陵县春苗幼儿园',430,'HH202202','01',7,40),(734,'admin','2022-10-30 11:50:25',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25222,'沅陵县春苗幼儿园',430,'HH202202','08',2,30),(735,'admin','2022-10-30 11:50:35',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25222,'沅陵县春苗幼儿园',430,'HH202202','05',11,23),(736,'admin','2022-10-30 11:50:44',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25222,'沅陵县春苗幼儿园',430,'HH202202','14',2,28),(737,'admin','2022-10-30 11:52:21',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25223,'沅陵县娟娟幼儿园',430,'HH202202','01',7,40),(738,'admin','2022-10-30 11:52:33',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25223,'沅陵县娟娟幼儿园',430,'HH202202','08',2,30),(739,'admin','2022-10-30 11:53:58',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25223,'沅陵县娟娟幼儿园',430,'HH202202','05',11,23),(740,'admin','2022-10-30 11:54:12',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25223,'沅陵县娟娟幼儿园',430,'HH202202','14',2,28),(741,'admin','2022-10-30 11:55:02',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25224,'沅陵县玉清幼儿园',430,'HH202202','01',7,40),(742,'admin','2022-10-30 11:55:29',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25224,'沅陵县玉清幼儿园',430,'HH202202','08',2,30),(743,'admin','2022-10-30 11:56:39',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25224,'沅陵县玉清幼儿园',430,'HH202202','05',11,23),(744,'admin','2022-10-30 11:56:47',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25224,'沅陵县玉清幼儿园',430,'HH202202','14',2,28),(745,'admin','2022-10-30 11:57:07',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25225,'沅陵县新星幼儿园',430,'HH202202','01',7,40),(746,'admin','2022-10-30 11:58:04',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25225,'沅陵县新星幼儿园',430,'HH202202','08',2,30),(747,'admin','2022-10-30 11:58:13',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25225,'沅陵县新星幼儿园',430,'HH202202','05',11,23),(748,'admin','2022-10-30 11:58:23',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25225,'沅陵县新星幼儿园',430,'HH202202','14',2,28),(749,'admin','2022-10-30 11:59:18',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25226,'沅陵县春蕾幼儿园',430,'HH202202','01',7,40),(750,'admin','2022-10-30 11:59:26',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25226,'沅陵县春蕾幼儿园',430,'HH202202','08',2,30),(751,'admin','2022-10-30 11:59:36',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25226,'沅陵县春蕾幼儿园',430,'HH202202','05',11,23),(752,'admin','2022-10-30 11:59:56',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25226,'沅陵县春蕾幼儿园',430,'HH202202','14',2,28),(753,'admin','2022-10-30 12:01:59',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25227,'沅陵县红苹果幼儿园',430,'HH202202','01',7,40),(754,'admin','2022-10-30 12:02:08',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25227,'沅陵县红苹果幼儿园',430,'HH202202','08',2,30),(755,'admin','2022-10-30 12:02:18',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25227,'沅陵县红苹果幼儿园',430,'HH202202','05',11,23),(756,'admin','2022-10-30 12:02:29',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25227,'沅陵县红苹果幼儿园',430,'HH202202','14',2,28),(757,'admin','2022-10-30 12:03:00',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25231,'沅陵县金苹果幼儿园',430,'HH202202','01',7,40),(758,'admin','2022-10-30 12:03:09',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25231,'沅陵县金苹果幼儿园',430,'HH202202','08',2,30),(759,'admin','2022-10-30 12:03:20',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25231,'沅陵县金苹果幼儿园',430,'HH202202','05',11,23),(760,'admin','2022-10-30 12:03:28',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25231,'沅陵县金苹果幼儿园',430,'HH202202','14',2,28),(761,'admin','2022-10-30 13:47:11',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25232,'沅陵县新苑幼儿园',430,'HH202202','01',7,40),(762,'admin','2022-10-30 13:47:20',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25232,'沅陵县新苑幼儿园',430,'HH202202','08',2,30),(763,'admin','2022-10-30 13:47:29',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25232,'沅陵县新苑幼儿园',430,'HH202202','05',11,23),(764,'admin','2022-10-30 13:47:43',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25232,'沅陵县新苑幼儿园',430,'HH202202','14',2,28),(765,'admin','2022-10-30 13:48:32',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25233,'沅陵县红太阳幼儿园',430,'HH202202','01',7,40),(766,'admin','2022-10-30 13:48:41',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25233,'沅陵县红太阳幼儿园',430,'HH202202','08',2,30),(767,'admin','2022-10-30 13:49:12',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25233,'沅陵县红太阳幼儿园',430,'HH202202','05',11,23),(768,'admin','2022-10-30 13:49:29',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25233,'沅陵县红太阳幼儿园',430,'HH202202','14',2,28),(769,'admin','2022-10-30 13:51:27',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25234,'沅陵县楠星幼儿园',430,'HH202202','01',7,40),(770,'admin','2022-10-30 13:51:43',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25234,'沅陵县楠星幼儿园',430,'HH202202','08',2,30),(771,'admin','2022-10-30 13:51:59',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25234,'沅陵县楠星幼儿园',430,'HH202202','05',11,23),(772,'admin','2022-10-30 13:52:15',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25234,'沅陵县楠星幼儿园',430,'HH202202','14',2,28),(773,'admin','2022-10-30 13:52:46',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25235,'沅陵县七彩虹幼儿园',430,'HH202202','01',7,40),(774,'admin','2022-10-30 13:52:57',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25235,'沅陵县七彩虹幼儿园',430,'HH202202','08',2,30),(775,'admin','2022-10-30 13:53:07',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25235,'沅陵县七彩虹幼儿园',430,'HH202202','05',11,23),(776,'admin','2022-10-30 13:53:17',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25235,'沅陵县七彩虹幼儿园',430,'HH202202','14',2,28),(777,'admin','2022-10-30 13:55:54',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25236,'沅陵县心蕊幼儿园',430,'HH202202','01',7,40),(778,'admin','2022-10-30 13:56:05',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25236,'沅陵县心蕊幼儿园',430,'HH202202','08',2,30),(779,'admin','2022-10-30 13:56:14',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25236,'沅陵县心蕊幼儿园',430,'HH202202','05',11,23),(780,'admin','2022-10-30 13:56:25',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25236,'沅陵县心蕊幼儿园',430,'HH202202','14',2,28),(781,'admin','2022-10-30 13:56:48',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25237,'沅陵县聪明泉幼儿园',430,'HH202202','01',7,40),(782,'admin','2022-10-30 13:57:46',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25237,'沅陵县聪明泉幼儿园',430,'HH202202','08',2,30),(783,'admin','2022-10-30 13:57:56',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25237,'沅陵县聪明泉幼儿园',430,'HH202202','05',11,23),(784,'admin','2022-10-30 13:58:09',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25237,'沅陵县聪明泉幼儿园',430,'HH202202','14',2,28),(785,'admin','2022-10-30 13:59:07',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,30173,'沅陵县三之三幼儿园',430,'HH202202','01',7,40),(786,'admin','2022-10-30 13:59:20',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,30173,'沅陵县三之三幼儿园',430,'HH202202','08',2,30),(787,'admin','2022-10-30 13:59:32',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,30173,'沅陵县三之三幼儿园',430,'HH202202','05',11,23),(788,'admin','2022-10-30 14:00:03',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,30173,'沅陵县三之三幼儿园',430,'HH202202','14',2,28),(789,'admin','2022-10-30 14:00:29',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,30174,'沅陵县红飞幼儿园',430,'HH202202','01',7,40),(790,'admin','2022-10-30 14:00:43',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,30174,'沅陵县红飞幼儿园',430,'HH202202','08',2,30),(791,'admin','2022-10-30 14:00:58',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,30174,'沅陵县红飞幼儿园',430,'HH202202','05',11,23),(792,'admin','2022-10-30 14:01:13',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,30174,'沅陵县红飞幼儿园',430,'HH202202','14',2,28),(793,'admin','2022-10-30 14:01:30',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,30175,'沅陵县向日葵幼儿园',430,'HH202202','01',7,40),(794,'admin','2022-10-30 14:01:51',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,30175,'沅陵县向日葵幼儿园',430,'HH202202','08',2,30),(795,'admin','2022-10-30 14:02:04',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,30175,'沅陵县向日葵幼儿园',430,'HH202202','05',11,23),(796,'admin','2022-10-30 14:02:16',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,30175,'沅陵县向日葵幼儿园',430,'HH202202','14',2,28),(797,'admin','2022-10-30 14:03:53',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,30177,'沅陵县鑫都幼儿园',430,'HH202202','01',7,40),(798,'admin','2022-10-30 14:04:39',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,30177,'沅陵县鑫都幼儿园',430,'HH202202','08',2,30),(799,'admin','2022-10-30 14:05:09',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,30177,'沅陵县鑫都幼儿园',430,'HH202202','05',11,23),(800,'admin','2022-10-30 14:05:22',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,30177,'沅陵县鑫都幼儿园',430,'HH202202','14',2,28),(801,'admin','2022-10-30 14:05:59',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,30178,'沅陵县大风车幼儿园',430,'HH202202','01',7,40),(802,'admin','2022-10-30 14:06:25',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,30178,'沅陵县大风车幼儿园',430,'HH202202','08',2,30),(803,'admin','2022-10-30 14:06:48',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,30178,'沅陵县大风车幼儿园',430,'HH202202','05',11,23),(804,'admin','2022-10-30 14:06:57',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,30178,'沅陵县大风车幼儿园',430,'HH202202','14',2,28),(805,'admin','2022-10-30 14:08:27',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,30179,'沅陵县金色摇篮幼儿园',430,'HH202202','01',7,40),(806,'admin','2022-10-30 14:08:38',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,30179,'沅陵县金色摇篮幼儿园',430,'HH202202','08',2,30),(807,'admin','2022-10-30 14:08:47',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,30179,'沅陵县金色摇篮幼儿园',430,'HH202202','05',11,23),(808,'admin','2022-10-30 14:09:02',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,30179,'沅陵县金色摇篮幼儿园',430,'HH202202','14',2,28),(809,'admin','2022-10-30 14:09:52',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,30180,'沅陵县滨江幼儿园',430,'HH202202','01',7,40),(810,'admin','2022-10-30 14:10:04',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,30180,'沅陵县滨江幼儿园',430,'HH202202','08',2,30),(811,'admin','2022-10-30 14:10:21',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,30180,'沅陵县滨江幼儿园',430,'HH202202','05',11,23),(812,'admin','2022-10-30 14:10:36',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,30180,'沅陵县滨江幼儿园',430,'HH202202','14',2,28),(813,'admin','2022-10-30 14:11:10',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,30181,'沅陵县龙兴幼儿园',430,'HH202202','01',7,40),(814,'admin','2022-10-30 14:12:01',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,30181,'沅陵县龙兴幼儿园',430,'HH202202','08',2,30),(815,'admin','2022-10-30 14:12:13',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,30181,'沅陵县龙兴幼儿园',430,'HH202202','05',11,23),(816,'admin','2022-10-30 14:12:28',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,30181,'沅陵县龙兴幼儿园',430,'HH202202','14',2,28),(817,'admin','2022-10-30 14:13:27',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,30182,'沅陵县爱上幼儿园',430,'HH202202','01',7,40),(818,'admin','2022-10-30 14:13:37',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,30182,'沅陵县爱上幼儿园',430,'HH202202','08',2,30),(819,'admin','2022-10-30 14:13:48',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,30182,'沅陵县爱上幼儿园',430,'HH202202','05',11,23),(820,'admin','2022-10-30 14:14:02',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,30182,'沅陵县爱上幼儿园',430,'HH202202','14',2,28),(821,'admin','2022-10-30 14:14:46',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,30183,'沅陵县金鹰幼儿园',430,'HH202202','01',7,40),(822,'admin','2022-10-30 14:15:07',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,30183,'沅陵县金鹰幼儿园',430,'HH202202','08',2,30),(823,'admin','2022-10-30 14:15:16',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,30183,'沅陵县金鹰幼儿园',430,'HH202202','05',11,23),(824,'admin','2022-10-30 14:15:52',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,30183,'沅陵县金鹰幼儿园',430,'HH202202','14',2,28),(825,'admin','2022-10-30 14:16:07',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,30184,'沅陵县蓝天幼儿园',430,'HH202202','01',7,40),(826,'admin','2022-10-30 14:16:43',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,30184,'沅陵县蓝天幼儿园',430,'HH202202','08',2,30),(827,'admin','2022-10-30 14:16:53',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,30184,'沅陵县蓝天幼儿园',430,'HH202202','05',11,23),(828,'admin','2022-10-30 14:17:11',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,30184,'沅陵县蓝天幼儿园',430,'HH202202','14',2,28),(829,'admin','2022-10-30 14:17:53',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,30185,'沅陵县酉缘幼儿园',430,'HH202202','01',7,40),(830,'admin','2022-10-30 14:18:02',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,30185,'沅陵县酉缘幼儿园',430,'HH202202','08',2,30),(831,'admin','2022-10-30 14:18:12',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,30185,'沅陵县酉缘幼儿园',430,'HH202202','05',11,23),(832,'admin','2022-10-30 14:18:21',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,30185,'沅陵县酉缘幼儿园',430,'HH202202','14',2,28),(833,'admin','2022-10-30 14:56:01',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,30186,'沅陵县公馆幼儿园',430,'HH202202','01',7,40),(834,'admin','2022-10-30 14:56:10',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,30186,'沅陵县公馆幼儿园',430,'HH202202','08',2,30),(835,'admin','2022-10-30 14:56:25',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,30186,'沅陵县公馆幼儿园',430,'HH202202','05',11,23),(836,'admin','2022-10-30 14:56:36',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,30186,'沅陵县公馆幼儿园',430,'HH202202','14',2,28),(837,'admin','2022-10-30 14:56:51',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,30574,'沅陵县朝阳幼儿园',430,'HH202202','01',7,40),(838,'admin','2022-10-30 14:57:05',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,30574,'沅陵县朝阳幼儿园',430,'HH202202','08',2,30),(839,'admin','2022-10-30 14:57:13',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,30574,'沅陵县朝阳幼儿园',430,'HH202202','05',11,23),(840,'admin','2022-10-30 14:57:22',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,30574,'沅陵县朝阳幼儿园',430,'HH202202','14',2,28),(841,'admin','2022-10-30 14:57:50',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,30575,'沅陵县慧灵幼儿园',430,'HH202202','01',7,40),(842,'admin','2022-10-30 14:57:59',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,30575,'沅陵县慧灵幼儿园',430,'HH202202','08',2,30),(843,'admin','2022-10-30 14:58:08',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,30575,'沅陵县慧灵幼儿园',430,'HH202202','05',11,23),(844,'admin','2022-10-30 14:58:21',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,30575,'沅陵县慧灵幼儿园',430,'HH202202','14',2,28),(845,'admin','2022-10-30 14:59:06',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,30576,'沅陵县育英幼儿园',430,'HH202202','01',7,40),(846,'admin','2022-10-30 14:59:18',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,30576,'沅陵县育英幼儿园',430,'HH202202','08',2,30),(847,'admin','2022-10-30 14:59:41',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,30576,'沅陵县育英幼儿园',430,'HH202202','05',11,23),(848,'admin','2022-10-30 14:59:50',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,30576,'沅陵县育英幼儿园',430,'HH202202','14',2,28),(849,'admin','2022-10-30 15:00:12',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,30577,'沅陵县铭扬幼儿园',430,'HH202202','01',7,40),(850,'admin','2022-10-30 15:00:21',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,30577,'沅陵县铭扬幼儿园',430,'HH202202','08',2,30),(851,'admin','2022-10-30 15:00:31',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,30577,'沅陵县铭扬幼儿园',430,'HH202202','05',11,23),(852,'admin','2022-10-30 15:00:43',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,30577,'沅陵县铭扬幼儿园',430,'HH202202','14',2,28),(853,'admin','2022-10-30 15:32:30',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,30579,'沅陵县宇宙幼儿园',430,'HH202202','01',7,40),(854,'admin','2022-10-30 15:32:45',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,30579,'沅陵县宇宙幼儿园',430,'HH202202','08',2,30),(855,'admin','2022-10-30 15:33:21',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,30579,'沅陵县宇宙幼儿园',430,'HH202202','05',11,23),(856,'admin','2022-10-30 15:33:49',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,30579,'沅陵县宇宙幼儿园',430,'HH202202','14',2,28),(857,'admin','2022-10-30 15:35:31',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,30582,'沅陵县小红帽幼儿园',430,'HH202202','01',7,40),(858,'admin','2022-10-30 15:35:56',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,30582,'沅陵县小红帽幼儿园',430,'HH202202','08',2,30),(859,'admin','2022-10-30 15:36:19',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,30582,'沅陵县小红帽幼儿园',430,'HH202202','05',11,23),(860,'admin','2022-10-30 15:36:35',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,30582,'沅陵县小红帽幼儿园',430,'HH202202','14',2,28),(861,'admin','2022-10-30 15:37:41',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,30583,'沅陵县晶晶幼儿园',430,'HH202202','01',7,40),(862,'admin','2022-10-30 15:38:00',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,30583,'沅陵县晶晶幼儿园',430,'HH202202','08',2,30),(863,'admin','2022-10-30 15:38:58',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,30583,'沅陵县晶晶幼儿园',430,'HH202202','05',11,23),(864,'admin','2022-10-30 15:39:18',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,30583,'沅陵县晶晶幼儿园',430,'HH202202','14',2,28),(865,'admin','2022-10-30 15:40:18',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,30584,'沅陵县玲华幼儿园',430,'HH202202','01',7,40),(866,'admin','2022-10-30 15:40:28',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,30584,'沅陵县玲华幼儿园',430,'HH202202','08',2,30),(867,'admin','2022-10-30 15:41:00',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,30584,'沅陵县玲华幼儿园',430,'HH202202','05',11,23),(868,'admin','2022-10-30 15:41:52',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,30584,'沅陵县玲华幼儿园',430,'HH202202','14',2,28),(869,'admin','2022-10-30 15:43:31',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,30586,'沅陵县银银幼儿园',430,'HH202202','01',7,40),(870,'admin','2022-10-30 15:43:53',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,30586,'沅陵县银银幼儿园',430,'HH202202','08',2,30),(871,'admin','2022-10-30 15:44:16',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,30586,'沅陵县银银幼儿园',430,'HH202202','05',11,23),(872,'admin','2022-10-30 15:44:24',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,30586,'沅陵县银银幼儿园',430,'HH202202','14',2,28),(873,'admin','2022-10-30 15:45:28',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,30587,'沅陵县霞光幼儿园',430,'HH202202','01',7,40),(874,'admin','2022-10-30 15:45:46',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,30587,'沅陵县霞光幼儿园',430,'HH202202','08',2,30),(875,'admin','2022-10-30 15:46:27',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,30587,'沅陵县霞光幼儿园',430,'HH202202','05',11,23),(876,'admin','2022-10-30 15:47:06',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,30587,'沅陵县霞光幼儿园',430,'HH202202','14',2,28),(877,'admin','2022-10-30 15:47:48',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,30588,'沅陵县福音幼儿园',430,'HH202202','01',7,40),(878,'admin','2022-10-30 15:48:10',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,30588,'沅陵县福音幼儿园',430,'HH202202','08',2,30),(879,'admin','2022-10-30 15:48:23',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,30588,'沅陵县福音幼儿园',430,'HH202202','05',11,23),(880,'admin','2022-10-30 15:48:53',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,30588,'沅陵县福音幼儿园',430,'HH202202','14',2,28),(881,'admin','2022-10-30 15:50:21',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,30589,'沅陵县新希望幼儿园',430,'HH202202','01',7,40),(882,'admin','2022-10-30 15:51:02',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,30589,'沅陵县新希望幼儿园',430,'HH202202','08',2,30),(883,'admin','2022-10-30 15:51:31',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,30589,'沅陵县新希望幼儿园',430,'HH202202','05',11,23),(884,'admin','2022-10-30 15:51:56',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,30589,'沅陵县新希望幼儿园',430,'HH202202','14',2,28),(885,'admin','2022-10-30 15:52:24',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,30590,'沅陵县宝宝乐幼儿园',430,'HH202202','01',7,40),(886,'admin','2022-10-30 15:52:34',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,30590,'沅陵县宝宝乐幼儿园',430,'HH202202','08',2,30),(887,'admin','2022-10-30 15:52:53',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,30590,'沅陵县宝宝乐幼儿园',430,'HH202202','05',11,23),(888,'admin','2022-10-30 15:53:02',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,30590,'沅陵县宝宝乐幼儿园',430,'HH202202','14',2,28),(889,'admin','2022-10-30 15:53:29',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,30591,'沅陵县玲玲幼儿园',430,'HH202202','01',7,40),(890,'admin','2022-10-30 15:53:58',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,30591,'沅陵县玲玲幼儿园',430,'HH202202','08',2,30),(891,'admin','2022-10-30 15:54:07',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,30591,'沅陵县玲玲幼儿园',430,'HH202202','05',11,23),(892,'admin','2022-10-30 15:54:17',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,30591,'沅陵县玲玲幼儿园',430,'HH202202','14',2,28),(893,'admin','2022-10-30 15:54:38',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,30592,'沅陵县和平幼儿园',430,'HH202202','01',7,40),(894,'admin','2022-10-30 15:54:47',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,30592,'沅陵县和平幼儿园',430,'HH202202','08',2,30),(895,'admin','2022-10-30 15:54:58',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,30592,'沅陵县和平幼儿园',430,'HH202202','05',11,23),(896,'admin','2022-10-30 15:55:08',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,30592,'沅陵县和平幼儿园',430,'HH202202','14',2,28),(897,'admin','2022-10-30 16:39:08',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,30593,'沅陵县八方幼儿园',430,'HH202202','01',7,40),(898,'admin','2022-10-30 16:39:17',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,30593,'沅陵县八方幼儿园',430,'HH202202','08',2,30),(899,'admin','2022-10-30 16:39:26',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,30593,'沅陵县八方幼儿园',430,'HH202202','05',11,23),(900,'admin','2022-10-30 16:39:36',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,30593,'沅陵县八方幼儿园',430,'HH202202','14',2,28),(901,'admin','2022-10-30 16:39:54',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,30594,'沅陵县乐园幼儿园（大合坪九校幼儿园）',430,'HH202202','01',7,40),(902,'admin','2022-10-30 16:40:03',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,30594,'沅陵县乐园幼儿园（大合坪九校幼儿园）',430,'HH202202','08',2,30),(903,'admin','2022-10-30 16:40:12',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,30594,'沅陵县乐园幼儿园（大合坪九校幼儿园）',430,'HH202202','05',11,23),(904,'admin','2022-10-30 16:40:20',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,30594,'沅陵县乐园幼儿园（大合坪九校幼儿园）',430,'HH202202','14',2,28),(905,'admin','2022-10-30 16:40:42',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,30595,'沅陵县金色阳光幼儿园',430,'HH202202','01',7,40),(906,'admin','2022-10-30 16:41:07',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,30595,'沅陵县金色阳光幼儿园',430,'HH202202','08',2,30),(907,'admin','2022-10-30 16:41:15',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,30595,'沅陵县金色阳光幼儿园',430,'HH202202','05',11,23),(908,'admin','2022-10-30 16:41:24',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,30595,'沅陵县金色阳光幼儿园',430,'HH202202','14',2,28),(909,'admin','2022-10-30 16:41:48',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25310,'太安幼儿园',430,'HH202202','01',7,40),(910,'admin','2022-10-30 16:41:56',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25310,'太安幼儿园',430,'HH202202','08',2,30),(911,'admin','2022-10-30 16:42:04','admin','2022-10-30 16:43:46','',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,25310,'太安幼儿园',430,'HH202202','05',14,11),(912,'admin','2022-10-30 16:42:14',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25310,'太安幼儿园',430,'HH202202','14',2,28),(913,'admin','2022-10-30 16:42:36',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25240,'大合坪九校',430,'HH202202','01',7,40),(914,'admin','2022-10-30 16:42:46',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25240,'大合坪九校',430,'HH202202','08',2,30),(915,'admin','2022-10-30 16:43:31',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,25240,'大合坪九校',430,'HH202202','05',14,11),(916,'admin','2022-10-30 16:44:17',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25240,'大合坪九校',430,'HH202202','14',2,28),(917,'admin','2022-10-30 16:44:38',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25249,'丑溪口九校',430,'HH202202','01',7,40),(918,'admin','2022-10-30 16:44:48',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25249,'丑溪口九校',430,'HH202202','08',2,30),(919,'admin','2022-10-30 16:45:00',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,25249,'丑溪口九校',430,'HH202202','05',14,11),(920,'admin','2022-10-30 16:45:09',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25249,'丑溪口九校',430,'HH202202','14',2,28),(921,'admin','2022-10-30 16:46:21',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25266,'落坪九校',430,'HH202202','01',7,40),(922,'admin','2022-10-30 16:46:33',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25266,'落坪九校',430,'HH202202','08',2,30),(923,'admin','2022-10-30 16:46:45',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,25266,'落坪九校',430,'HH202202','05',14,11),(924,'admin','2022-10-30 16:46:54',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25266,'落坪九校',430,'HH202202','14',2,28),(925,'admin','2022-10-30 17:13:01',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25293,'借母溪乡筒车坪九校',430,'HH202202','01',7,40),(926,'admin','2022-10-30 17:13:17',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25293,'借母溪乡筒车坪九校',430,'HH202202','08',2,30),(927,'admin','2022-10-30 17:13:29',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,25293,'借母溪乡筒车坪九校',430,'HH202202','05',14,11),(928,'admin','2022-10-30 17:13:38',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25293,'借母溪乡筒车坪九校',430,'HH202202','14',2,28),(929,'admin','2022-10-30 17:14:04',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25309,'落鹤坪小学',430,'HH202202','01',7,40),(930,'admin','2022-10-30 17:14:13',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25309,'落鹤坪小学',430,'HH202202','08',2,30),(931,'admin','2022-10-30 17:14:23',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,25309,'落鹤坪小学',430,'HH202202','05',14,11),(932,'admin','2022-10-30 17:14:34',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25309,'落鹤坪小学',430,'HH202202','14',2,28),(933,'admin','2022-10-30 17:14:56',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,25313,'张家坪九校',430,'HH202202','01',7,40),(934,'admin','2022-10-30 17:15:22',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25313,'张家坪九校',430,'HH202202','08',2,30),(935,'admin','2022-10-30 17:15:56',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,25313,'张家坪九校',430,'HH202202','05',14,11),(936,'admin','2022-10-30 17:16:06',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25313,'张家坪九校',430,'HH202202','14',2,28),(937,'admin','2022-10-30 17:33:07',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,28384,'舒溪口九校',430,'HH202202','01',7,40),(938,'admin','2022-10-30 17:33:23',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,28384,'舒溪口九校',430,'HH202202','08',2,30),(939,'admin','2022-10-30 17:33:32',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,28384,'舒溪口九校',430,'HH202202','05',14,11),(940,'admin','2022-10-30 17:33:42',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,28384,'舒溪口九校',430,'HH202202','14',2,28),(941,'admin','2022-10-30 17:36:09',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,28392,'深溪口九校',430,'HH202202','01',7,40),(942,'admin','2022-10-30 17:36:18',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,28392,'深溪口九校',430,'HH202202','08',2,30),(943,'admin','2022-10-30 17:36:33',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,28392,'深溪口九校',430,'HH202202','05',14,11),(944,'admin','2022-10-30 17:36:41',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,28392,'深溪口九校',430,'HH202202','14',2,28),(945,'admin','2022-10-30 17:36:55',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,28393,'北溶九校',430,'HH202202','01',7,40),(946,'admin','2022-10-30 17:37:08',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,28393,'北溶九校',430,'HH202202','08',2,30),(947,'admin','2022-10-30 17:37:23',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,28393,'北溶九校',430,'HH202202','05',14,11),(948,'admin','2022-10-30 17:37:33',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,28393,'北溶九校',430,'HH202202','14',2,28),(949,'admin','2022-10-30 17:37:51',NULL,NULL,'',0,'财信人寿怀化中心支公司','黄琼','18907456627',1,28394,'七甲溪九校',430,'HH202202','01',7,40),(950,'admin','2022-10-30 17:38:00',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,28394,'七甲溪九校',430,'HH202202','08',2,30),(951,'admin','2022-10-30 17:38:13',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,28394,'七甲溪九校',430,'HH202202','05',14,11),(952,'admin','2022-10-30 17:38:21',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,28394,'七甲溪九校',430,'HH202202','14',2,28),(953,'admin','2022-10-30 17:38:56',NULL,NULL,'',0,'人保财险怀化市分公司','李绪文','18574576925',0,25258,'五强溪镇中心小学',430,'HH202202','01',10,25),(954,'admin','2022-10-30 17:39:13',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25258,'五强溪镇中心小学',430,'HH202202','08',2,28),(955,'admin','2022-10-30 17:39:24',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,25258,'五强溪镇中心小学',430,'HH202202','05',14,11),(956,'admin','2022-10-30 17:39:34',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25258,'五强溪镇中心小学',430,'HH202202','14',2,28),(957,'admin','2022-10-30 17:41:08',NULL,NULL,'',0,'人保财险怀化市分公司','李绪文','18574576925',0,25264,'二酉苗族乡中心小学',430,'HH202202','01',10,25),(958,'admin','2022-10-30 17:41:42',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25264,'二酉苗族乡中心小学',430,'HH202202','08',2,28),(959,'admin','2022-10-30 17:41:52',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,25264,'二酉苗族乡中心小学',430,'HH202202','05',14,11),(960,'admin','2022-10-30 17:42:12',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25264,'二酉苗族乡中心小学',430,'HH202202','14',2,28),(961,'admin','2022-10-30 17:42:59',NULL,NULL,'',0,'人保财险怀化市分公司','李绪文','18574576925',0,25290,'明溪口芙蓉学校',430,'HH202202','01',10,25),(962,'admin','2022-10-30 17:43:09',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25290,'明溪口芙蓉学校',430,'HH202202','08',2,28),(963,'admin','2022-10-30 17:43:24',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,25290,'明溪口芙蓉学校',430,'HH202202','05',14,11),(964,'admin','2022-10-30 17:43:32','admin','2022-10-30 17:44:20','',0,'中国人寿怀化分公司','黄立新','15574551081',0,25290,'明溪口芙蓉学校',430,'HH202202','14',2,28),(965,'admin','2022-10-30 17:43:57',NULL,NULL,'',0,'人保财险怀化市分公司','李绪文','18574576925',0,25308,'二酉苗族乡中学',430,'HH202202','01',10,25),(966,'admin','2022-10-30 17:44:10',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25308,'二酉苗族乡中学',430,'HH202202','08',2,28),(967,'admin','2022-10-30 17:44:38',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,25308,'二酉苗族乡中学',430,'HH202202','05',14,11),(968,'admin','2022-10-30 17:44:49',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25308,'二酉苗族乡中学',430,'HH202202','14',2,28),(969,'admin','2022-10-31 13:10:13',NULL,NULL,'',0,'人保财险怀化市分公司','李绪文','18574576925',0,25250,'洞溪九校',430,'HH202202','01',10,25),(970,'admin','2022-10-31 13:10:30',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25250,'洞溪九校',430,'HH202202','08',2,28),(971,'admin','2022-10-31 13:10:39',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,25250,'洞溪九校',430,'HH202202','05',14,11),(972,'admin','2022-10-31 13:10:48',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25250,'洞溪九校',430,'HH202202','14',2,28),(973,'admin','2022-10-31 13:11:32',NULL,NULL,'',0,'人保财险怀化市分公司','李绪文','18574576925',0,25253,'高坪九校',430,'HH202202','01',10,25),(974,'admin','2022-10-31 13:11:41',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25253,'高坪九校',430,'HH202202','08',2,28),(975,'admin','2022-10-31 13:11:50',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,25253,'高坪九校',430,'HH202202','05',14,11),(976,'admin','2022-10-31 13:12:00',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25253,'高坪九校',430,'HH202202','14',2,28),(977,'admin','2022-10-31 13:12:25',NULL,NULL,'',0,'人保财险怀化市分公司','李绪文','18574576925',0,25257,'清水坪九校',430,'HH202202','01',10,25),(978,'admin','2022-10-31 13:12:37',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25257,'清水坪九校',430,'HH202202','08',2,28),(979,'admin','2022-10-31 13:13:04',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,25257,'清水坪九校',430,'HH202202','05',14,11),(980,'admin','2022-10-31 13:13:17',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25257,'清水坪九校',430,'HH202202','14',2,28),(981,'admin','2022-10-31 13:13:37',NULL,NULL,'',0,'人保财险怀化市分公司','李绪文','18574576925',0,25263,'陈家滩九校',430,'HH202202','01',10,25),(982,'admin','2022-10-31 13:13:56',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25263,'陈家滩九校',430,'HH202202','08',2,28),(983,'admin','2022-10-31 13:14:03',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,25263,'陈家滩九校',430,'HH202202','05',14,11),(984,'admin','2022-10-31 13:14:11',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25263,'陈家滩九校',430,'HH202202','14',2,28),(985,'admin','2022-10-31 13:14:32',NULL,NULL,'',0,'人保财险怀化市分公司','李绪文','18574576925',0,25269,'楠木铺九校',430,'HH202202','01',10,25),(986,'admin','2022-10-31 13:14:42',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25269,'楠木铺九校',430,'HH202202','08',2,28),(987,'admin','2022-10-31 13:14:52',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,25269,'楠木铺九校',430,'HH202202','05',14,11),(988,'admin','2022-10-31 13:15:00',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25269,'楠木铺九校',430,'HH202202','14',2,28),(989,'admin','2022-10-31 13:15:24',NULL,NULL,'',0,'人保财险怀化市分公司','李绪文','18574576925',0,25283,'张家滩九校',430,'HH202202','01',10,25),(990,'admin','2022-10-31 13:15:33',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25283,'张家滩九校',430,'HH202202','08',2,28),(991,'admin','2022-10-31 13:15:48',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,25283,'张家滩九校',430,'HH202202','05',14,11),(992,'admin','2022-10-31 13:16:13',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25283,'张家滩九校',430,'HH202202','14',2,28),(993,'admin','2022-10-31 13:16:41',NULL,NULL,'',0,'人保财险怀化市分公司','李绪文','18574576925',0,25291,'七甲坪镇九校',430,'HH202202','01',10,25),(994,'admin','2022-10-31 13:16:51',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25291,'七甲坪镇九校',430,'HH202202','08',2,28),(995,'admin','2022-10-31 13:17:01',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,25291,'七甲坪镇九校',430,'HH202202','05',14,11),(996,'admin','2022-10-31 13:17:10',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25291,'七甲坪镇九校',430,'HH202202','14',2,28),(997,'admin','2022-10-31 13:17:54',NULL,NULL,'',0,'人保财险怀化市分公司','李绪文','18574576925',0,28381,'马底驿九校',430,'HH202202','01',10,25),(998,'admin','2022-10-31 13:18:01',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,28381,'马底驿九校',430,'HH202202','08',2,28),(999,'admin','2022-10-31 13:18:11',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,28381,'马底驿九校',430,'HH202202','05',14,11),(1000,'admin','2022-10-31 13:18:24',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,28381,'马底驿九校',430,'HH202202','14',2,28),(1001,'admin','2022-10-31 13:18:56',NULL,NULL,'',0,'人保财险怀化市分公司','李绪文','18574576925',0,28385,'棋坪九校',430,'HH202202','01',10,25),(1002,'admin','2022-10-31 13:19:08',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,28385,'棋坪九校',430,'HH202202','08',2,28),(1003,'admin','2022-10-31 13:19:16',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,28385,'棋坪九校',430,'HH202202','05',14,11),(1004,'admin','2022-10-31 13:19:53',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,28385,'棋坪九校',430,'HH202202','14',2,28),(1005,'admin','2022-10-31 13:20:53',NULL,NULL,'',0,'人保财险怀化市分公司','李绪文','18574576925',0,28386,'明溪口九校',430,'HH202202','01',10,25),(1006,'admin','2022-10-31 13:21:02',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,28386,'明溪口九校',430,'HH202202','08',2,28),(1007,'admin','2022-10-31 13:21:12',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,28386,'明溪口九校',430,'HH202202','05',14,11),(1008,'admin','2022-10-31 13:21:19',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,28386,'明溪口九校',430,'HH202202','14',2,28),(1009,'admin','2022-10-31 13:22:04',NULL,NULL,'',0,'人保财险怀化市分公司','李绪文','18574576925',0,28388,'用坪九校',430,'HH202202','01',10,25),(1010,'admin','2022-10-31 13:22:11',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,28388,'用坪九校',430,'HH202202','08',2,28),(1011,'admin','2022-10-31 13:22:22',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,28388,'用坪九校',430,'HH202202','05',14,11),(1012,'admin','2022-10-31 13:22:30',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,28388,'用坪九校',430,'HH202202','14',2,28),(1013,'admin','2022-10-31 13:22:49',NULL,NULL,'',0,'人保财险怀化市分公司','李绪文','18574576925',0,28389,'官庄小学',430,'HH202202','01',10,25),(1014,'admin','2022-10-31 13:22:58',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,28389,'官庄小学',430,'HH202202','08',2,28),(1015,'admin','2022-10-31 13:23:07',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,28389,'官庄小学',430,'HH202202','05',14,11),(1016,'admin','2022-10-31 13:23:17',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,28389,'官庄小学',430,'HH202202','14',2,28),(1017,'admin','2022-10-31 13:23:33',NULL,NULL,'',0,'人保财险怀化市分公司','李绪文','18574576925',0,28395,'肖家桥九校',430,'HH202202','01',10,25),(1018,'admin','2022-10-31 13:23:42',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,28395,'肖家桥九校',430,'HH202202','08',2,28),(1019,'admin','2022-10-31 13:24:41',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,28395,'肖家桥九校',430,'HH202202','05',14,11),(1020,'admin','2022-10-31 13:25:06',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,28395,'肖家桥九校',430,'HH202202','14',2,28),(1021,'admin','2022-10-31 13:26:04',NULL,NULL,'',0,'人保财险怀化市分公司','李绪文','18574576925',0,28396,'军大坪九校',430,'HH202202','01',10,25),(1022,'admin','2022-10-31 13:26:14',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,28396,'军大坪九校',430,'HH202202','08',2,28),(1023,'admin','2022-10-31 13:27:42',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,28396,'军大坪九校',430,'HH202202','05',14,11),(1024,'admin','2022-10-31 13:27:49',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,28396,'军大坪九校',430,'HH202202','14',2,28),(1025,'admin','2022-10-31 13:36:19',NULL,NULL,'',0,'人保财险怀化市分公司','李绪文','18574576925',0,28397,'枫香坪九校',430,'HH202202','01',10,25),(1026,'admin','2022-10-31 13:36:38',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,28397,'枫香坪九校',430,'HH202202','08',2,28),(1027,'admin','2022-10-31 13:36:47',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,28397,'枫香坪九校',430,'HH202202','05',14,11),(1028,'admin','2022-10-31 13:36:58',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,28397,'枫香坪九校',430,'HH202202','14',2,28),(1029,'admin','2022-10-31 13:37:31',NULL,NULL,'',0,'人保财险怀化市分公司','李绪文','18574576925',0,28398,'楠木小学',430,'HH202202','01',10,25),(1030,'admin','2022-10-31 13:37:47',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,28398,'楠木小学',430,'HH202202','08',2,28),(1031,'admin','2022-10-31 13:37:58',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,28398,'楠木小学',430,'HH202202','05',14,11),(1032,'admin','2022-10-31 13:38:08',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,28398,'楠木小学',430,'HH202202','14',2,28),(1033,'admin','2022-10-31 13:38:24',NULL,NULL,'',0,'太平洋财险怀化中心支公司','杨经理','18907458199',0,25244,'火场九校',430,'HH202202','01',17,14),(1034,'admin','2022-10-31 13:38:39',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25244,'火场九校',430,'HH202202','08',2,28),(1035,'admin','2022-10-31 13:38:51',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,25244,'火场九校',430,'HH202202','05',14,11),(1036,'admin','2022-10-31 13:39:04',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25244,'火场九校',430,'HH202202','14',2,28),(1037,'admin','2022-10-31 13:40:24',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25161,'沅陵县启明星幼儿园',430,'HH202202','01',2,30),(1038,'admin','2022-10-31 13:40:36',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25161,'沅陵县启明星幼儿园',430,'HH202202','08',2,28),(1039,'admin','2022-10-31 13:40:50',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25161,'沅陵县启明星幼儿园',430,'HH202202','05',11,23),(1040,'admin','2022-10-31 13:40:58',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25161,'沅陵县启明星幼儿园',430,'HH202202','14',2,28),(1041,'admin','2022-10-31 13:41:23',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25177,'沅陵县欣博艺幼儿园',430,'HH202202','01',2,30),(1042,'admin','2022-10-31 13:41:48',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25177,'沅陵县欣博艺幼儿园',430,'HH202202','08',2,28),(1043,'admin','2022-10-31 13:42:12',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,25177,'沅陵县欣博艺幼儿园',430,'HH202202','05',11,23),(1044,'admin','2022-10-31 13:42:24',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25177,'沅陵县欣博艺幼儿园',430,'HH202202','14',2,28),(1045,'admin','2022-10-31 13:42:46',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,30176,'沅陵县红缨御鑫城幼儿园',430,'HH202202','01',2,30),(1046,'admin','2022-10-31 13:43:12',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,30176,'沅陵县红缨御鑫城幼儿园',430,'HH202202','08',2,28),(1047,'admin','2022-10-31 13:43:23',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,30176,'沅陵县红缨御鑫城幼儿园',430,'HH202202','05',11,23),(1048,'admin','2022-10-31 13:43:31',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,30176,'沅陵县红缨御鑫城幼儿园',430,'HH202202','14',2,28),(1049,'admin','2022-10-31 13:44:31',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,30578,'沅陵县小福娃幼儿园',430,'HH202202','01',2,30),(1050,'admin','2022-10-31 13:45:09',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,30578,'沅陵县小福娃幼儿园',430,'HH202202','08',2,28),(1051,'admin','2022-10-31 13:45:19',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,30578,'沅陵县小福娃幼儿园',430,'HH202202','05',11,23),(1052,'admin','2022-10-31 13:46:06',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,30578,'沅陵县小福娃幼儿园',430,'HH202202','14',2,28),(1053,'admin','2022-10-31 13:46:24',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,30923,'沅陵县麻溪铺九校幼儿园',430,'HH202202','01',2,30),(1054,'admin','2022-10-31 13:46:41',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,30923,'沅陵县麻溪铺九校幼儿园',430,'HH202202','08',2,28),(1055,'admin','2022-10-31 13:46:51',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,30923,'沅陵县麻溪铺九校幼儿园',430,'HH202202','05',11,23),(1056,'admin','2022-10-31 13:47:11',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,30923,'沅陵县麻溪铺九校幼儿园',430,'HH202202','14',2,28),(1057,'admin','2022-10-31 13:47:53',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,31488,'沅陵县金山幼儿园',430,'HH202202','01',2,30),(1058,'admin','2022-10-31 13:48:05',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,31488,'沅陵县金山幼儿园',430,'HH202202','08',2,28),(1059,'admin','2022-10-31 13:48:16',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,31488,'沅陵县金山幼儿园',430,'HH202202','05',11,23),(1060,'admin','2022-10-31 13:48:26',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,31488,'沅陵县金山幼儿园',430,'HH202202','14',2,28),(1061,'admin','2022-10-31 13:51:09',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,34945,'沅陵县小箐英学校',430,'HH202202','01',2,30),(1062,'admin','2022-10-31 13:51:16',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,34945,'沅陵县小箐英学校',430,'HH202202','08',2,28),(1063,'admin','2022-10-31 13:51:24',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,34945,'沅陵县小箐英学校',430,'HH202202','05',11,23),(1064,'admin','2022-10-31 13:51:32',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,34945,'沅陵县小箐英学校',430,'HH202202','14',2,28),(1065,'admin','2022-10-31 13:52:00',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,34946,'沅陵县三维电脑职业学校',430,'HH202202','01',2,30),(1066,'admin','2022-10-31 13:52:07',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,34946,'沅陵县三维电脑职业学校',430,'HH202202','08',2,28),(1067,'admin','2022-10-31 13:52:18',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,34946,'沅陵县三维电脑职业学校',430,'HH202202','05',11,23),(1068,'admin','2022-10-31 13:52:26',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,34946,'沅陵县三维电脑职业学校',430,'HH202202','14',2,28),(1069,'admin','2022-10-31 13:52:45',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,34947,'沅陵县中等音乐专业学校',430,'HH202202','01',2,30),(1070,'admin','2022-10-31 13:52:53',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,34947,'沅陵县中等音乐专业学校',430,'HH202202','08',2,28),(1071,'admin','2022-10-31 13:53:04',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,34947,'沅陵县中等音乐专业学校',430,'HH202202','05',11,23),(1072,'admin','2022-10-31 13:53:15',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,34947,'沅陵县中等音乐专业学校',430,'HH202202','14',2,28),(1073,'admin','2022-10-31 13:53:35',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,34948,'怀化市成硕职业学校',430,'HH202202','01',2,30),(1074,'admin','2022-10-31 13:53:42',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,34948,'怀化市成硕职业学校',430,'HH202202','08',2,28),(1075,'admin','2022-10-31 13:53:52',NULL,NULL,'',0,'人寿财险怀化市中心支公司','赵婷','18897475810',1,34948,'怀化市成硕职业学校',430,'HH202202','05',11,23),(1076,'admin','2022-10-31 13:54:01',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,34948,'怀化市成硕职业学校',430,'HH202202','14',2,28),(1077,'admin','2022-10-31 13:55:58',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25311,'沅陵县幼儿园',430,'HH202202','01',2,30),(1078,'admin','2022-10-31 13:56:08',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25311,'沅陵县幼儿园',430,'HH202202','08',2,28),(1079,'admin','2022-10-31 13:56:19',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,25311,'沅陵县幼儿园',430,'HH202202','05',14,11),(1080,'admin','2022-10-31 13:56:33',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25311,'沅陵县幼儿园',430,'HH202202','14',2,28),(1081,'admin','2022-10-31 13:57:59',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25295,'筲箕湾镇中心小学',430,'HH202202','01',2,30),(1082,'admin','2022-10-31 13:58:09',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25295,'筲箕湾镇中心小学',430,'HH202202','08',2,28),(1083,'admin','2022-10-31 13:58:18',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,25295,'筲箕湾镇中心小学',430,'HH202202','05',14,11),(1084,'admin','2022-10-31 13:59:23',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25295,'筲箕湾镇中心小学',430,'HH202202','14',2,28),(1085,'admin','2022-10-31 13:59:51',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,28391,'荔枝溪小学',430,'HH202202','01',2,30),(1086,'admin','2022-10-31 13:59:59',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,28391,'荔枝溪小学',430,'HH202202','08',2,28),(1087,'admin','2022-10-31 14:00:09',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,28391,'荔枝溪小学',430,'HH202202','05',14,11),(1088,'admin','2022-10-31 14:00:18',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,28391,'荔枝溪小学',430,'HH202202','14',2,28),(1089,'admin','2022-10-31 14:01:22',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,28399,'白田小学',430,'HH202202','01',2,30),(1090,'admin','2022-10-31 14:01:38',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,28399,'白田小学',430,'HH202202','08',2,28),(1091,'admin','2022-10-31 14:02:41',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,28399,'白田小学',430,'HH202202','05',14,11),(1092,'admin','2022-10-31 14:02:51',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,28399,'白田小学',430,'HH202202','14',2,28),(1093,'admin','2022-10-31 14:07:31',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25270,'沅陵县第七中学',430,'HH202202','01',2,30),(1094,'admin','2022-10-31 14:07:45',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25270,'沅陵县第七中学',430,'HH202202','08',2,28),(1095,'admin','2022-10-31 14:07:55',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,25270,'沅陵县第七中学',430,'HH202202','05',14,11),(1096,'admin','2022-10-31 14:08:05',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25270,'沅陵县第七中学',430,'HH202202','14',2,28),(1097,'admin','2022-10-31 14:08:18',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25294,'沅陵县第六中学',430,'HH202202','01',2,30),(1098,'admin','2022-10-31 14:08:26',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25294,'沅陵县第六中学',430,'HH202202','08',2,28),(1099,'admin','2022-10-31 14:08:40',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,25294,'沅陵县第六中学',430,'HH202202','05',14,11),(1100,'admin','2022-10-31 14:08:47',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25294,'沅陵县第六中学',430,'HH202202','14',2,28),(1101,'admin','2022-10-31 14:09:02',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25312,'凉水井中学',430,'HH202202','01',2,30),(1102,'admin','2022-10-31 14:09:10',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25312,'凉水井中学',430,'HH202202','08',2,28),(1103,'admin','2022-10-31 14:09:17',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,25312,'凉水井中学',430,'HH202202','05',14,11),(1104,'admin','2022-10-31 14:09:26',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25312,'凉水井中学',430,'HH202202','14',2,28),(1105,'admin','2022-10-31 14:09:59',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25318,'沅陵县职业中等专业学校',430,'HH202202','01',2,30),(1106,'admin','2022-10-31 14:10:06',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25318,'沅陵县职业中等专业学校',430,'HH202202','08',2,28),(1107,'admin','2022-10-31 14:10:14',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,25318,'沅陵县职业中等专业学校',430,'HH202202','05',14,11),(1108,'admin','2022-10-31 14:10:38',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25318,'沅陵县职业中等专业学校',430,'HH202202','14',2,28),(1110,'admin','2022-10-31 14:11:45',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25320,'沅陵一中',430,'HH202202','01',2,30),(1111,'admin','2022-10-31 14:11:51',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25320,'沅陵一中',430,'HH202202','08',2,28),(1112,'admin','2022-10-31 14:11:58',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,25320,'沅陵一中',430,'HH202202','05',14,11),(1113,'admin','2022-10-31 14:12:06',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25320,'沅陵一中',430,'HH202202','14',2,28),(1114,'admin','2022-10-31 14:12:36',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25321,'沅陵二中',430,'HH202202','01',2,30),(1115,'admin','2022-10-31 14:12:43',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25321,'沅陵二中',430,'HH202202','08',2,28),(1116,'admin','2022-10-31 14:12:52',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,25321,'沅陵二中',430,'HH202202','05',14,11),(1117,'admin','2022-10-31 14:13:03',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25321,'沅陵二中',430,'HH202202','14',2,28),(1118,'admin','2022-10-31 14:13:25',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,25322,'思源实验学校',430,'HH202202','01',2,30),(1119,'admin','2022-10-31 14:13:32',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25322,'思源实验学校',430,'HH202202','08',2,28),(1120,'admin','2022-10-31 14:13:40',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,25322,'思源实验学校',430,'HH202202','05',14,11),(1121,'admin','2022-10-31 14:13:48',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25322,'思源实验学校',430,'HH202202','14',2,28),(1122,'admin','2022-10-31 14:14:07',NULL,NULL,'',0,'中国人寿怀化分公司','周丽','15115177513',1,28387,'筲箕湾镇中学',430,'HH202202','01',2,30),(1123,'admin','2022-10-31 14:14:14',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,28387,'筲箕湾镇中学',430,'HH202202','08',2,28),(1124,'admin','2022-10-31 14:14:23',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,28387,'筲箕湾镇中学',430,'HH202202','05',14,11),(1125,'admin','2022-10-31 14:14:42',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,28387,'筲箕湾镇中学',430,'HH202202','14',2,28),(1126,'admin','2022-10-31 14:15:06',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25247,'坳坪九校',430,'HH202202','01',2,28),(1127,'admin','2022-10-31 14:15:13',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25247,'坳坪九校',430,'HH202202','08',2,28),(1128,'admin','2022-10-31 14:15:24',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,25247,'坳坪九校',430,'HH202202','05',14,11),(1129,'admin','2022-10-31 14:15:32',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25247,'坳坪九校',430,'HH202202','14',2,28),(1130,'admin','2022-10-31 14:16:03',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25251,'杜家坪九校',430,'HH202202','01',2,28),(1131,'admin','2022-10-31 14:16:10',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25251,'杜家坪九校',430,'HH202202','08',2,28),(1132,'admin','2022-10-31 14:16:23',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,25251,'杜家坪九校',430,'HH202202','05',14,11),(1133,'admin','2022-10-31 14:16:34',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25251,'杜家坪九校',430,'HH202202','14',2,28),(1134,'admin','2022-10-31 14:17:32',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25255,'柳林汊小学',430,'HH202202','01',2,28),(1135,'admin','2022-10-31 14:17:39',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25255,'柳林汊小学',430,'HH202202','08',2,28),(1136,'admin','2022-10-31 14:17:46',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,25255,'柳林汊小学',430,'HH202202','05',14,11),(1137,'admin','2022-10-31 14:17:53',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25255,'柳林汊小学',430,'HH202202','14',2,28),(1138,'admin','2022-10-31 14:18:28',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25262,'蚕忙九校',430,'HH202202','01',2,28),(1139,'admin','2022-10-31 14:18:35',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25262,'蚕忙九校',430,'HH202202','08',2,28),(1140,'admin','2022-10-31 14:18:41',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,25262,'蚕忙九校',430,'HH202202','05',14,11),(1141,'admin','2022-10-31 14:18:48',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25262,'蚕忙九校',430,'HH202202','14',2,28),(1142,'admin','2022-10-31 14:19:08',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25265,'虎溪学校',430,'HH202202','01',2,28),(1143,'admin','2022-10-31 14:19:18',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25265,'虎溪学校',430,'HH202202','08',2,28),(1144,'admin','2022-10-31 14:19:24',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,25265,'虎溪学校',430,'HH202202','05',14,11),(1145,'admin','2022-10-31 14:19:32',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25265,'虎溪学校',430,'HH202202','14',2,28),(1146,'admin','2022-10-31 14:19:49',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25267,'麻溪铺九校',430,'HH202202','01',2,28),(1148,'admin','2022-10-31 14:20:19',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25267,'麻溪铺九校',430,'HH202202','08',2,28),(1149,'admin','2022-10-31 14:20:25',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,25267,'麻溪铺九校',430,'HH202202','05',14,11),(1150,'admin','2022-10-31 14:20:32',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25267,'麻溪铺九校',430,'HH202202','14',2,28),(1151,'admin','2022-10-31 14:20:52',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25271,'清浪九校',430,'HH202202','01',2,28),(1152,'admin','2022-10-31 14:20:59',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25271,'清浪九校',430,'HH202202','08',2,28),(1153,'admin','2022-10-31 14:21:05',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,25271,'清浪九校',430,'HH202202','05',14,11),(1154,'admin','2022-10-31 14:21:13',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25271,'清浪九校',430,'HH202202','14',2,28),(1155,'admin','2022-10-31 14:21:28',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25272,'沅陵县沅陵镇太常九年一贯制学校',430,'HH202202','01',2,28),(1156,'admin','2022-10-31 14:21:37',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25272,'沅陵县沅陵镇太常九年一贯制学校',430,'HH202202','08',2,28),(1157,'admin','2022-10-31 14:21:45',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,25272,'沅陵县沅陵镇太常九年一贯制学校',430,'HH202202','05',14,11),(1158,'admin','2022-10-31 14:21:53',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25272,'沅陵县沅陵镇太常九年一贯制学校',430,'HH202202','14',2,28),(1159,'admin','2022-10-31 14:22:13',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25274,'渭溪九校',430,'HH202202','01',2,28),(1160,'admin','2022-10-31 14:22:20',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25274,'渭溪九校',430,'HH202202','08',2,28),(1161,'admin','2022-10-31 14:22:47',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,25274,'渭溪九校',430,'HH202202','05',14,11),(1162,'admin','2022-10-31 14:22:54',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25274,'渭溪九校',430,'HH202202','14',2,28),(1163,'admin','2022-10-31 14:23:10',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25286,'长界九校',430,'HH202202','01',2,28),(1164,'admin','2022-10-31 14:23:33',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25286,'长界九校',430,'HH202202','08',2,28),(1165,'admin','2022-10-31 14:23:39',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,25286,'长界九校',430,'HH202202','05',14,11),(1166,'admin','2022-10-31 14:23:45',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25286,'长界九校',430,'HH202202','14',2,28),(1167,'admin','2022-10-31 14:24:47',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25287,'黄壤坪九校',430,'HH202202','01',2,28),(1168,'admin','2022-10-31 14:24:54',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25287,'黄壤坪九校',430,'HH202202','08',2,28),(1169,'admin','2022-10-31 14:25:03',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,25287,'黄壤坪九校',430,'HH202202','05',14,11),(1170,'admin','2022-10-31 14:25:10',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25287,'黄壤坪九校',430,'HH202202','14',2,28),(1171,'admin','2022-10-31 14:25:31',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25288,'凉水井中心小学',430,'HH202202','01',2,28),(1172,'admin','2022-10-31 14:25:37',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25288,'凉水井中心小学',430,'HH202202','08',2,28),(1173,'admin','2022-10-31 14:25:43',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,25288,'凉水井中心小学',430,'HH202202','05',14,11),(1174,'admin','2022-10-31 14:25:52',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25288,'凉水井中心小学',430,'HH202202','14',2,28),(1175,'admin','2022-10-31 14:26:22',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25306,'沅陵三中',430,'HH202202','01',2,28),(1176,'admin','2022-10-31 14:26:30',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25306,'沅陵三中',430,'HH202202','08',2,28),(1177,'admin','2022-10-31 14:26:35',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,25306,'沅陵三中',430,'HH202202','05',14,11),(1178,'admin','2022-10-31 14:26:42',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25306,'沅陵三中',430,'HH202202','14',2,28),(1179,'admin','2022-10-31 14:27:09',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25316,'荷花池小学',430,'HH202202','01',2,28),(1180,'admin','2022-10-31 14:27:16',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25316,'荷花池小学',430,'HH202202','08',2,28),(1181,'admin','2022-10-31 14:27:22',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,25316,'荷花池小学',430,'HH202202','05',14,11),(1182,'admin','2022-10-31 14:27:28',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25316,'荷花池小学',430,'HH202202','14',2,28),(1183,'admin','2022-10-31 14:27:43',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25317,'鹤鸣山小学',430,'HH202202','01',2,28),(1184,'admin','2022-10-31 14:27:50',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25317,'鹤鸣山小学',430,'HH202202','08',2,28),(1185,'admin','2022-10-31 14:27:57',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,25317,'鹤鸣山小学',430,'HH202202','05',14,11),(1186,'admin','2022-10-31 14:28:05',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25317,'鹤鸣山小学',430,'HH202202','14',2,28),(1187,'admin','2022-10-31 14:28:24',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25319,'溪子口小学',430,'HH202202','01',2,28),(1188,'admin','2022-10-31 14:28:32',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25319,'溪子口小学',430,'HH202202','08',2,28),(1189,'admin','2022-10-31 14:28:51',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,25319,'溪子口小学',430,'HH202202','05',14,11),(1190,'admin','2022-10-31 14:28:59',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25319,'溪子口小学',430,'HH202202','14',2,28),(1191,'admin','2022-10-31 14:29:10',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25323,'凤鸣学校',430,'HH202202','01',2,28),(1192,'admin','2022-10-31 14:29:17',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25323,'凤鸣学校',430,'HH202202','08',2,28),(1193,'admin','2022-10-31 14:29:24',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,25323,'凤鸣学校',430,'HH202202','05',14,11),(1194,'admin','2022-10-31 14:29:32',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,25323,'凤鸣学校',430,'HH202202','14',2,28),(1195,'admin','2022-10-31 14:45:56',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,28382,'竹园九校',430,'HH202202','01',2,28),(1196,'admin','2022-10-31 14:46:02',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,28382,'竹园九校',430,'HH202202','08',2,28),(1197,'admin','2022-10-31 14:46:11',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,28382,'竹园九校',430,'HH202202','05',14,11),(1198,'admin','2022-10-31 14:46:17',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,28382,'竹园九校',430,'HH202202','14',2,28),(1199,'admin','2022-10-31 14:46:28',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,28390,'金山学校',430,'HH202202','01',2,28),(1200,'admin','2022-10-31 14:46:36',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,28390,'金山学校',430,'HH202202','08',2,28),(1201,'admin','2022-10-31 14:46:43',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,28390,'金山学校',430,'HH202202','05',14,11),(1202,'admin','2022-10-31 14:46:51',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,28390,'金山学校',430,'HH202202','14',2,28),(1203,'admin','2022-10-31 14:47:07',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,28402,'池坪九校',430,'HH202202','01',2,28),(1204,'admin','2022-10-31 14:47:14',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,28402,'池坪九校',430,'HH202202','08',2,28),(1205,'admin','2022-10-31 14:47:22',NULL,NULL,'',0,'平安财险怀化中心支公司','曾子伦','15115196222',0,28402,'池坪九校',430,'HH202202','05',14,11),(1206,'admin','2022-10-31 14:47:29',NULL,NULL,'',0,'中国人寿怀化分公司','黄立新','15574551081',0,28402,'池坪九校',430,'HH202202','14',2,28);
/*!40000 ALTER TABLE `school_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES (1,'主框架页-默认皮肤样式名称','sys.index.skinName','skin-blue','Y','admin','2022-05-05 10:41:35','',NULL,'蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow'),(2,'用户管理-账号初始密码','sys.user.initPassword','123456','Y','admin','2022-05-05 10:41:35','',NULL,'初始化密码 123456'),(3,'主框架页-侧边栏主题','sys.index.sideTheme','theme-dark','Y','admin','2022-05-05 10:41:35','',NULL,'深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue'),(4,'账号自助-是否开启用户注册功能','sys.account.registerUser','false','Y','admin','2022-05-05 10:41:35','',NULL,'是否开启注册用户功能（true开启，false关闭）'),(5,'用户管理-密码字符范围','sys.account.chrtype','0','Y','admin','2022-05-05 10:41:35','',NULL,'默认任意字符范围，0任意（密码可以输入任意字符），1数字（密码只能为0-9数字），2英文字母（密码只能为a-z和A-Z字母），3字母和数字（密码必须包含字母，数字）,4字母数字和特殊字符（目前支持的特殊字符包括：~!@#$%^&*()-=_+）'),(6,'用户管理-初始密码修改策略','sys.account.initPasswordModify','0','Y','admin','2022-05-05 10:41:35','',NULL,'0：初始密码修改策略关闭，没有任何提示，1：提醒用户，如果未修改初始密码，则在登录时就会提醒修改密码对话框'),(7,'用户管理-账号密码更新周期','sys.account.passwordValidateDays','0','Y','admin','2022-05-05 10:41:35','',NULL,'密码更新周期（填写数字，数据初始化值为0不限制，若修改必须为大于0小于365的正整数），如果超过这个周期登录系统时，则在登录时就会提醒修改密码对话框'),(8,'主框架页-菜单导航显示风格','sys.index.menuStyle','default','Y','admin','2022-05-05 10:41:35','',NULL,'菜单导航显示风格（default为左侧导航菜单，topnav为顶部导航菜单）'),(9,'主框架页-是否开启页脚','sys.index.footer','false','Y','admin','2022-05-05 10:41:35','admin','2022-11-22 19:22:29','是否开启底部页脚显示（true显示，false隐藏）'),(10,'主框架页-是否开启页签','sys.index.tagsView','true','Y','admin','2022-05-05 10:41:35','',NULL,'是否开启菜单多页签显示（true显示，false隐藏）');
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dept`
--

DROP TABLE IF EXISTS `sys_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=447 DEFAULT CHARSET=utf8mb4 COMMENT='部门表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dept`
--

LOCK TABLES `sys_dept` WRITE;
/*!40000 ALTER TABLE `sys_dept` DISABLE KEYS */;
INSERT INTO `sys_dept` VALUES (100,0,'0','纳尔科技',0,'若依','15888888888','ry@qq.com','0','0','admin','2022-05-05 10:41:30','',NULL),(101,100,'0,100','广州公司',1,'伍春晖','18665022235','472997069@qq.com','0','0','admin','2022-05-05 10:41:30','admin','2022-11-22 19:06:07'),(102,100,'0,100','长沙分公司',2,'若依','15888888888','ry@qq.com','0','2','admin','2022-05-05 10:41:31','',NULL),(103,101,'0,100,101','研发部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2022-05-05 10:41:31','',NULL),(104,101,'0,100,101','市场部门',2,'若依','15888888888','ry@qq.com','0','2','admin','2022-05-05 10:41:31','',NULL),(105,101,'0,100,101','测试部门',0,'若依','15888888888','ry@qq.com','0','0','admin','2022-05-05 10:41:31','admin','2022-11-22 19:05:01'),(106,101,'0,100,101','财务部门',4,'若依','15888888888','ry@qq.com','0','2','admin','2022-05-05 10:41:31','',NULL),(107,101,'0,100,101','运维部门',5,'若依','15888888888','ry@qq.com','0','2','admin','2022-05-05 10:41:31','',NULL),(108,102,'0,100,102','市场部门',1,'若依','15888888888','ry@qq.com','0','2','admin','2022-05-05 10:41:31','',NULL),(109,102,'0,100,102','财务部门',2,'若依','15888888888','ry@qq.com','0','2','admin','2022-05-05 10:41:31','',NULL),(426,100,'0,100','怀化分公司',3,'','','','1','0','admin','2022-05-05 14:04:21','cardAdmin','2022-11-22 13:20:14'),(428,426,'0,100,426','鹤城区',2,'','','','1','0','admin','2022-05-05 14:04:37','cardAdmin','2022-11-22 13:20:07'),(430,426,'0,100,426','沅陵县',3,'','','','1','0','admin','2022-05-05 14:04:44','cardAdmin','2022-11-22 13:20:11'),(440,426,'0,100,426','市辖区',1,'','','','1','0','admin','2022-05-05 14:04:32','cardAdmin','2022-11-22 13:20:03'),(441,101,'0,100,101','客服部门',3,'','','','0','0','admin','2022-05-20 10:38:29','admin','2022-11-22 19:05:12'),(442,100,'0,100','接收平台',4,'沉默','18665022235','','0','2','admin','2022-11-22 12:54:38','admin','2022-11-22 12:54:51'),(443,442,'0,100,442','卡商部门',1,NULL,NULL,NULL,'0','2','admin','2022-11-22 12:55:17','',NULL),(444,442,'0,100,442','用户部门',2,NULL,NULL,NULL,'0','2','admin','2022-11-22 12:55:28','',NULL),(445,101,'0,100,101','卡商部门',2,NULL,NULL,NULL,'0','0','admin','2022-11-22 19:04:09','',NULL),(446,101,'0,100,101','用户部门',3,'','','','0','0','admin','2022-11-22 19:04:55','admin','2022-11-22 19:06:18');
/*!40000 ALTER TABLE `sys_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_data`
--

DROP TABLE IF EXISTS `sys_dict_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COMMENT='字典数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_data`
--

LOCK TABLES `sys_dict_data` WRITE;
/*!40000 ALTER TABLE `sys_dict_data` DISABLE KEYS */;
INSERT INTO `sys_dict_data` VALUES (1,1,'男','0','sys_user_sex','','','Y','0','admin','2022-05-05 10:41:34','',NULL,'性别男'),(2,2,'女','1','sys_user_sex','','','N','0','admin','2022-05-05 10:41:34','',NULL,'性别女'),(3,3,'未知','2','sys_user_sex','','','N','0','admin','2022-05-05 10:41:34','',NULL,'性别未知'),(4,1,'显示','0','sys_show_hide','','primary','Y','0','admin','2022-05-05 10:41:34','',NULL,'显示菜单'),(5,2,'隐藏','1','sys_show_hide','','danger','N','0','admin','2022-05-05 10:41:34','',NULL,'隐藏菜单'),(6,1,'正常','0','sys_normal_disable','','primary','Y','0','admin','2022-05-05 10:41:34','',NULL,'正常状态'),(7,2,'停用','1','sys_normal_disable','','danger','N','0','admin','2022-05-05 10:41:34','',NULL,'停用状态'),(8,1,'正常','0','sys_job_status','','primary','Y','0','admin','2022-05-05 10:41:34','',NULL,'正常状态'),(9,2,'暂停','1','sys_job_status','','danger','N','0','admin','2022-05-05 10:41:34','',NULL,'停用状态'),(10,1,'默认','DEFAULT','sys_job_group','','','Y','0','admin','2022-05-05 10:41:34','',NULL,'默认分组'),(11,2,'系统','SYSTEM','sys_job_group','','','N','0','admin','2022-05-05 10:41:34','',NULL,'系统分组'),(12,1,'是','Y','sys_yes_no','','primary','Y','0','admin','2022-05-05 10:41:34','',NULL,'系统默认是'),(13,2,'否','N','sys_yes_no','','danger','N','0','admin','2022-05-05 10:41:34','',NULL,'系统默认否'),(14,1,'通知','1','sys_notice_type','','warning','Y','0','admin','2022-05-05 10:41:34','',NULL,'通知'),(15,2,'公告','2','sys_notice_type','','success','N','0','admin','2022-05-05 10:41:34','',NULL,'公告'),(16,1,'正常','0','sys_notice_status','','primary','Y','0','admin','2022-05-05 10:41:34','',NULL,'正常状态'),(17,2,'关闭','1','sys_notice_status','','danger','N','0','admin','2022-05-05 10:41:34','',NULL,'关闭状态'),(18,99,'其他','0','sys_oper_type','','info','N','0','admin','2022-05-05 10:41:34','',NULL,'其他操作'),(19,1,'新增','1','sys_oper_type','','info','N','0','admin','2022-05-05 10:41:34','',NULL,'新增操作'),(20,2,'修改','2','sys_oper_type','','info','N','0','admin','2022-05-05 10:41:34','',NULL,'修改操作'),(21,3,'删除','3','sys_oper_type','','danger','N','0','admin','2022-05-05 10:41:34','',NULL,'删除操作'),(22,4,'授权','4','sys_oper_type','','primary','N','0','admin','2022-05-05 10:41:34','',NULL,'授权操作'),(23,5,'导出','5','sys_oper_type','','warning','N','0','admin','2022-05-05 10:41:34','',NULL,'导出操作'),(24,6,'导入','6','sys_oper_type','','warning','N','0','admin','2022-05-05 10:41:34','',NULL,'导入操作'),(25,7,'强退','7','sys_oper_type','','danger','N','0','admin','2022-05-05 10:41:34','',NULL,'强退操作'),(26,8,'生成代码','8','sys_oper_type','','warning','N','0','admin','2022-05-05 10:41:34','',NULL,'生成操作'),(27,9,'清空数据','9','sys_oper_type','','danger','N','0','admin','2022-05-05 10:41:35','',NULL,'清空操作'),(28,1,'成功','0','sys_common_status','','primary','N','0','admin','2022-05-05 10:41:35','',NULL,'正常状态'),(29,2,'失败','1','sys_common_status','','danger','N','0','admin','2022-05-05 10:41:35','',NULL,'停用状态'),(100,1,'幼儿园一(小)','1','grade','','','Y','0','admin','2022-05-05 14:07:18','admin','2022-11-01 13:30:14',''),(101,2,'幼儿园二(中)','2','grade','','','Y','0','admin','2022-05-05 14:07:31','admin','2022-11-01 13:30:23',''),(102,3,'幼儿园三(大)','3','grade','','','Y','0','admin','2022-05-05 14:07:39','admin','2022-11-01 13:30:31',''),(103,4,'一年级','4','grade',NULL,NULL,'Y','0','admin','2022-05-05 14:07:58','',NULL,NULL),(104,1,'正常','0','data_state','','success','Y','0','admin','2022-05-06 14:32:59','admin','2022-05-07 08:54:03',''),(105,2,'失效','1','data_state','','danger','N','0','admin','2022-05-06 14:33:08','admin','2022-05-07 08:54:08',''),(106,1,'财险','1','insurance_company','','primary','Y','0','admin','2022-05-06 15:24:19','admin','2022-05-06 15:24:24',''),(107,2,'寿险','0','insurance_company','','warning','Y','0','admin','2022-05-06 15:24:38','admin','2022-05-06 15:24:42',''),(108,1,'待分发','1','evolve_state','','warning','Y','0','admin','2022-05-07 11:20:10','admin','2022-05-07 11:20:18',''),(109,2,'进展中','2','evolve_state','','danger','Y','0','admin','2022-05-07 11:20:35','admin','2022-05-07 11:21:06',''),(110,3,'已完成','3','evolve_state',NULL,'success','Y','0','admin','2022-05-07 11:21:18','',NULL,NULL),(111,1,'学生平安保险','1','claim_type',NULL,'default','Y','0','admin','2022-05-07 14:01:26','',NULL,NULL),(112,2,'交通意外、重大疾病险','2','claim_type',NULL,'default','N','0','admin','2022-05-07 14:01:52','',NULL,NULL),(113,3,'监护人责任险','3','claim_type',NULL,'default','N','0','admin','2022-05-07 14:02:13','',NULL,NULL),(114,0,'暂无','0','claim_type',NULL,'default','Y','0','admin','2022-05-07 14:26:41','',NULL,NULL),(115,1,'公立','0','is_public','','success','Y','0','admin','2022-05-13 10:31:10','admin','2022-05-13 10:46:10',''),(116,2,'私立','1','is_public','','info','N','0','admin','2022-05-13 10:31:18','admin','2022-05-13 10:46:13',''),(117,1,'存钱','1','money_type','','info','Y','0','admin','2022-05-20 09:33:52','admin','2022-05-20 09:34:12',''),(118,2,'取钱','2','money_type',NULL,'success','Y','0','admin','2022-05-20 09:34:03','',NULL,NULL),(119,1,'学生平安保险','01','risk_code',NULL,NULL,'Y','0','admin','2022-10-24 11:23:00','',NULL,NULL),(120,2,'交通意外、重大疾病险','08','risk_code',NULL,NULL,'Y','0','admin','2022-10-24 11:25:07','',NULL,NULL),(121,3,'监护人责任险','05','risk_code',NULL,NULL,'Y','0','admin','2022-10-24 11:25:43','',NULL,NULL),(122,4,'校外活动险','14','risk_code',NULL,NULL,'Y','0','admin','2022-10-24 11:26:09','',NULL,NULL),(123,5,'二年级','5','grade',NULL,NULL,'Y','0','admin','2022-11-01 13:31:26','',NULL,NULL),(124,6,'三年级','6','grade',NULL,NULL,'Y','0','admin','2022-11-01 13:31:41','',NULL,NULL),(125,7,'四年级','7','grade',NULL,NULL,'Y','0','admin','2022-11-01 13:31:52','',NULL,NULL),(126,8,'五年级','8','grade',NULL,NULL,'Y','0','admin','2022-11-01 13:32:02','',NULL,NULL),(127,9,'六年级','9','grade',NULL,NULL,'Y','0','admin','2022-11-01 13:32:14','',NULL,NULL),(128,10,'初一','10','grade',NULL,NULL,'Y','0','admin','2022-11-01 13:33:28','',NULL,NULL),(129,11,'初二','11','grade',NULL,NULL,'Y','0','admin','2022-11-01 13:33:36','',NULL,NULL),(130,12,'初三','12','grade',NULL,NULL,'Y','0','admin','2022-11-01 13:33:53','',NULL,NULL),(131,13,'高一','13','grade',NULL,NULL,'Y','0','admin','2022-11-01 13:34:02','',NULL,NULL),(132,14,'高二','14','grade',NULL,NULL,'Y','0','admin','2022-11-01 13:34:13','',NULL,NULL),(133,15,'高三','15','grade',NULL,NULL,'Y','0','admin','2022-11-01 13:34:25','',NULL,NULL),(134,16,'中专一','16','grade',NULL,NULL,'Y','0','admin','2022-11-01 13:34:37','',NULL,NULL),(135,17,'中专二','17','grade',NULL,NULL,'Y','0','admin','2022-11-01 13:34:46','',NULL,NULL),(136,18,'中专三','18','grade',NULL,NULL,'Y','0','admin','2022-11-01 13:34:59','',NULL,NULL);
/*!40000 ALTER TABLE `sys_dict_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_type`
--

DROP TABLE IF EXISTS `sys_dict_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COMMENT='字典类型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_type`
--

LOCK TABLES `sys_dict_type` WRITE;
/*!40000 ALTER TABLE `sys_dict_type` DISABLE KEYS */;
INSERT INTO `sys_dict_type` VALUES (1,'用户性别','sys_user_sex','0','admin','2022-05-05 10:41:34','',NULL,'用户性别列表'),(2,'菜单状态','sys_show_hide','0','admin','2022-05-05 10:41:34','',NULL,'菜单状态列表'),(3,'系统开关','sys_normal_disable','0','admin','2022-05-05 10:41:34','',NULL,'系统开关列表'),(4,'任务状态','sys_job_status','0','admin','2022-05-05 10:41:34','',NULL,'任务状态列表'),(5,'任务分组','sys_job_group','0','admin','2022-05-05 10:41:34','',NULL,'任务分组列表'),(6,'系统是否','sys_yes_no','0','admin','2022-05-05 10:41:34','',NULL,'系统是否列表'),(7,'通知类型','sys_notice_type','0','admin','2022-05-05 10:41:34','',NULL,'通知类型列表'),(8,'通知状态','sys_notice_status','0','admin','2022-05-05 10:41:34','',NULL,'通知状态列表'),(9,'操作类型','sys_oper_type','0','admin','2022-05-05 10:41:34','',NULL,'操作类型列表'),(10,'系统状态','sys_common_status','0','admin','2022-05-05 10:41:34','',NULL,'登录状态列表'),(100,'年级管理','grade','0','admin','2022-05-05 14:07:02','',NULL,NULL),(101,'数据状态','data_state','0','admin','2022-05-06 14:32:42','',NULL,'0 正常，1停用'),(102,'保险公司类型','insurance_company','0','admin','2022-05-06 15:23:58','',NULL,NULL),(103,'理赔进展状态','evolve_state','0','admin','2022-05-07 11:19:31','',NULL,'理赔进展状态'),(104,'理赔类型','claim_type','0','admin','2022-05-07 14:01:11','',NULL,NULL),(105,'学校公立状态','is_public','0','admin','2022-05-13 10:30:42','admin','2022-05-13 10:32:05','学校公立状态列表'),(106,'营销员存取类型','money_type','0','admin','2022-05-20 09:33:23','admin','2022-05-20 09:33:36','存取钱类型'),(107,'险种类型','risk_code','0','admin','2022-10-24 11:22:03','admin','2022-10-24 11:22:12','');
/*!40000 ALTER TABLE `sys_dict_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job`
--

DROP TABLE IF EXISTS `sys_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job`
--

LOCK TABLES `sys_job` WRITE;
/*!40000 ALTER TABLE `sys_job` DISABLE KEYS */;
INSERT INTO `sys_job` VALUES (1,'系统默认（无参）','DEFAULT','ryTask.ryNoParams','0/10 * * * * ?','3','1','1','admin','2022-05-05 10:41:35','',NULL,''),(2,'系统默认（有参）','DEFAULT','ryTask.ryParams(\'ry\')','0/15 * * * * ?','3','1','1','admin','2022-05-05 10:41:35','',NULL,''),(3,'系统默认（多参）','DEFAULT','ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)','0/20 * * * * ?','3','1','1','admin','2022-05-05 10:41:35','',NULL,'');
/*!40000 ALTER TABLE `sys_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job_log`
--

DROP TABLE IF EXISTS `sys_job_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job_log`
--

LOCK TABLES `sys_job_log` WRITE;
/*!40000 ALTER TABLE `sys_job_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_job_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_logininfor`
--

DROP TABLE IF EXISTS `sys_logininfor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COMMENT='系统访问记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_logininfor`
--

LOCK TABLES `sys_logininfor` WRITE;
/*!40000 ALTER TABLE `sys_logininfor` DISABLE KEYS */;
INSERT INTO `sys_logininfor` VALUES (1,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2022-11-22 14:49:53'),(2,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2022-11-22 16:24:06'),(3,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2022-11-22 18:45:30'),(4,'cardAdmin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2022-11-22 18:57:33'),(5,'cardAdmin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','退出成功','2022-11-22 19:06:29'),(6,'cardAdmin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2022-11-22 19:25:13'),(7,'cardAdmin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','退出成功','2022-11-22 19:27:48'),(8,'commonAdmin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2022-11-22 19:27:50'),(9,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2022-11-22 19:33:48'),(10,'cardAdmin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2022-11-22 19:34:00');
/*!40000 ALTER TABLE `sys_logininfor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2099 DEFAULT CHARSET=utf8mb4 COMMENT='菜单权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,'系统管理',0,999,'#','menuItem','M','0','1','','fa fa-gear','admin','2022-05-05 10:41:31','admin','2022-11-22 18:58:34','系统管理目录'),(2,'系统监控',0,1000,'#','menuItem','M','0','1','','fa fa-video-camera','admin','2022-05-05 10:41:31','admin','2022-11-22 19:09:15','系统监控目录'),(3,'系统工具',0,1001,'#','menuItem','M','0','1','','fa fa-bars','admin','2022-05-05 10:41:31','admin','2022-11-22 19:09:31','系统工具目录'),(4,'若依官网',0,4,'http://ruoyi.vip','menuBlank','C','1','1','','fa fa-location-arrow','admin','2022-05-05 10:41:31','admin','2022-05-05 11:20:53','若依官网地址'),(100,'用户管理',1,1,'/system/user','','C','0','1','system:user:view','fa fa-user-o','admin','2022-05-05 10:41:31','',NULL,'用户管理菜单'),(101,'角色管理',1,2,'/system/role','','C','0','1','system:role:view','fa fa-user-secret','admin','2022-05-05 10:41:31','',NULL,'角色管理菜单'),(102,'菜单管理',1,3,'/system/menu','','C','0','1','system:menu:view','fa fa-th-list','admin','2022-05-05 10:41:31','',NULL,'菜单管理菜单'),(103,'部门管理',1,4,'/system/dept','','C','0','1','system:dept:view','fa fa-outdent','admin','2022-05-05 10:41:31','',NULL,'部门管理菜单'),(104,'岗位管理',1,5,'/system/post','','C','0','1','system:post:view','fa fa-address-card-o','admin','2022-05-05 10:41:31','',NULL,'岗位管理菜单'),(105,'字典管理',1,6,'/system/dict','','C','0','1','system:dict:view','fa fa-bookmark-o','admin','2022-05-05 10:41:31','',NULL,'字典管理菜单'),(106,'参数设置',1,7,'/system/config','','C','0','1','system:config:view','fa fa-sun-o','admin','2022-05-05 10:41:31','',NULL,'参数设置菜单'),(107,'通知公告',1,8,'/system/notice','','C','0','1','system:notice:view','fa fa-bullhorn','admin','2022-05-05 10:41:31','',NULL,'通知公告菜单'),(108,'日志管理',1,9,'#','','M','0','1','','fa fa-pencil-square-o','admin','2022-05-05 10:41:31','',NULL,'日志管理菜单'),(109,'在线用户',2,1,'/monitor/online','','C','0','1','monitor:online:view','fa fa-user-circle','admin','2022-05-05 10:41:31','',NULL,'在线用户菜单'),(110,'定时任务',2,2,'/monitor/job','','C','0','1','monitor:job:view','fa fa-tasks','admin','2022-05-05 10:41:31','',NULL,'定时任务菜单'),(111,'数据监控',2,3,'/monitor/data','','C','0','1','monitor:data:view','fa fa-bug','admin','2022-05-05 10:41:31','',NULL,'数据监控菜单'),(112,'服务监控',2,4,'/monitor/server','','C','0','1','monitor:server:view','fa fa-server','admin','2022-05-05 10:41:31','',NULL,'服务监控菜单'),(113,'缓存监控',2,5,'/monitor/cache','','C','0','1','monitor:cache:view','fa fa-cube','admin','2022-05-05 10:41:31','',NULL,'缓存监控菜单'),(114,'表单构建',3,1,'/tool/build','','C','0','1','tool:build:view','fa fa-wpforms','admin','2022-05-05 10:41:31','',NULL,'表单构建菜单'),(115,'代码生成',3,2,'/tool/gen','','C','0','1','tool:gen:view','fa fa-code','admin','2022-05-05 10:41:31','',NULL,'代码生成菜单'),(116,'系统接口',3,3,'/tool/swagger','','C','0','1','tool:swagger:view','fa fa-gg','admin','2022-05-05 10:41:31','',NULL,'系统接口菜单'),(500,'操作日志',108,1,'/monitor/operlog','','C','0','1','monitor:operlog:view','fa fa-address-book','admin','2022-05-05 10:41:31','',NULL,'操作日志菜单'),(501,'登录日志',108,2,'/monitor/logininfor','','C','0','1','monitor:logininfor:view','fa fa-file-image-o','admin','2022-05-05 10:41:31','',NULL,'登录日志菜单'),(1000,'用户查询',100,1,'#','','F','0','1','system:user:list','#','admin','2022-05-05 10:41:31','',NULL,''),(1001,'用户新增',100,2,'#','','F','0','1','system:user:add','#','admin','2022-05-05 10:41:31','',NULL,''),(1002,'用户修改',100,3,'#','','F','0','1','system:user:edit','#','admin','2022-05-05 10:41:31','',NULL,''),(1003,'用户删除',100,4,'#','','F','0','1','system:user:remove','#','admin','2022-05-05 10:41:31','',NULL,''),(1004,'用户导出',100,5,'#','','F','0','1','system:user:export','#','admin','2022-05-05 10:41:31','',NULL,''),(1005,'用户导入',100,6,'#','','F','0','1','system:user:import','#','admin','2022-05-05 10:41:31','',NULL,''),(1006,'重置密码',100,7,'#','','F','0','1','system:user:resetPwd','#','admin','2022-05-05 10:41:31','',NULL,''),(1007,'角色查询',101,1,'#','','F','0','1','system:role:list','#','admin','2022-05-05 10:41:31','',NULL,''),(1008,'角色新增',101,2,'#','','F','0','1','system:role:add','#','admin','2022-05-05 10:41:31','',NULL,''),(1009,'角色修改',101,3,'#','','F','0','1','system:role:edit','#','admin','2022-05-05 10:41:31','',NULL,''),(1010,'角色删除',101,4,'#','','F','0','1','system:role:remove','#','admin','2022-05-05 10:41:31','',NULL,''),(1011,'角色导出',101,5,'#','','F','0','1','system:role:export','#','admin','2022-05-05 10:41:32','',NULL,''),(1012,'菜单查询',102,1,'#','','F','0','1','system:menu:list','#','admin','2022-05-05 10:41:32','',NULL,''),(1013,'菜单新增',102,2,'#','','F','0','1','system:menu:add','#','admin','2022-05-05 10:41:32','',NULL,''),(1014,'菜单修改',102,3,'#','','F','0','1','system:menu:edit','#','admin','2022-05-05 10:41:32','',NULL,''),(1015,'菜单删除',102,4,'#','','F','0','1','system:menu:remove','#','admin','2022-05-05 10:41:32','',NULL,''),(1016,'部门查询',103,1,'#','','F','0','1','system:dept:list','#','admin','2022-05-05 10:41:32','',NULL,''),(1017,'部门新增',103,2,'#','','F','0','1','system:dept:add','#','admin','2022-05-05 10:41:32','',NULL,''),(1018,'部门修改',103,3,'#','','F','0','1','system:dept:edit','#','admin','2022-05-05 10:41:32','',NULL,''),(1019,'部门删除',103,4,'#','','F','0','1','system:dept:remove','#','admin','2022-05-05 10:41:32','',NULL,''),(1020,'岗位查询',104,1,'#','','F','0','1','system:post:list','#','admin','2022-05-05 10:41:32','',NULL,''),(1021,'岗位新增',104,2,'#','','F','0','1','system:post:add','#','admin','2022-05-05 10:41:32','',NULL,''),(1022,'岗位修改',104,3,'#','','F','0','1','system:post:edit','#','admin','2022-05-05 10:41:32','',NULL,''),(1023,'岗位删除',104,4,'#','','F','0','1','system:post:remove','#','admin','2022-05-05 10:41:32','',NULL,''),(1024,'岗位导出',104,5,'#','','F','0','1','system:post:export','#','admin','2022-05-05 10:41:32','',NULL,''),(1025,'字典查询',105,1,'#','','F','0','1','system:dict:list','#','admin','2022-05-05 10:41:32','',NULL,''),(1026,'字典新增',105,2,'#','','F','0','1','system:dict:add','#','admin','2022-05-05 10:41:32','',NULL,''),(1027,'字典修改',105,3,'#','','F','0','1','system:dict:edit','#','admin','2022-05-05 10:41:32','',NULL,''),(1028,'字典删除',105,4,'#','','F','0','1','system:dict:remove','#','admin','2022-05-05 10:41:32','',NULL,''),(1029,'字典导出',105,5,'#','','F','0','1','system:dict:export','#','admin','2022-05-05 10:41:32','',NULL,''),(1030,'参数查询',106,1,'#','','F','0','1','system:config:list','#','admin','2022-05-05 10:41:32','',NULL,''),(1031,'参数新增',106,2,'#','','F','0','1','system:config:add','#','admin','2022-05-05 10:41:32','',NULL,''),(1032,'参数修改',106,3,'#','','F','0','1','system:config:edit','#','admin','2022-05-05 10:41:32','',NULL,''),(1033,'参数删除',106,4,'#','','F','0','1','system:config:remove','#','admin','2022-05-05 10:41:32','',NULL,''),(1034,'参数导出',106,5,'#','','F','0','1','system:config:export','#','admin','2022-05-05 10:41:32','',NULL,''),(1035,'公告查询',107,1,'#','','F','0','1','system:notice:list','#','admin','2022-05-05 10:41:32','',NULL,''),(1036,'公告新增',107,2,'#','','F','0','1','system:notice:add','#','admin','2022-05-05 10:41:32','',NULL,''),(1037,'公告修改',107,3,'#','','F','0','1','system:notice:edit','#','admin','2022-05-05 10:41:32','',NULL,''),(1038,'公告删除',107,4,'#','','F','0','1','system:notice:remove','#','admin','2022-05-05 10:41:32','',NULL,''),(1039,'操作查询',500,1,'#','','F','0','1','monitor:operlog:list','#','admin','2022-05-05 10:41:32','',NULL,''),(1040,'操作删除',500,2,'#','','F','0','1','monitor:operlog:remove','#','admin','2022-05-05 10:41:32','',NULL,''),(1041,'详细信息',500,3,'#','','F','0','1','monitor:operlog:detail','#','admin','2022-05-05 10:41:32','',NULL,''),(1042,'日志导出',500,4,'#','','F','0','1','monitor:operlog:export','#','admin','2022-05-05 10:41:32','',NULL,''),(1043,'登录查询',501,1,'#','','F','0','1','monitor:logininfor:list','#','admin','2022-05-05 10:41:32','',NULL,''),(1044,'登录删除',501,2,'#','','F','0','1','monitor:logininfor:remove','#','admin','2022-05-05 10:41:32','',NULL,''),(1045,'日志导出',501,3,'#','','F','0','1','monitor:logininfor:export','#','admin','2022-05-05 10:41:32','',NULL,''),(1046,'账户解锁',501,4,'#','','F','0','1','monitor:logininfor:unlock','#','admin','2022-05-05 10:41:32','',NULL,''),(1047,'在线查询',109,1,'#','','F','0','1','monitor:online:list','#','admin','2022-05-05 10:41:32','',NULL,''),(1048,'批量强退',109,2,'#','','F','0','1','monitor:online:batchForceLogout','#','admin','2022-05-05 10:41:32','',NULL,''),(1049,'单条强退',109,3,'#','','F','0','1','monitor:online:forceLogout','#','admin','2022-05-05 10:41:32','',NULL,''),(1050,'任务查询',110,1,'#','','F','0','1','monitor:job:list','#','admin','2022-05-05 10:41:32','',NULL,''),(1051,'任务新增',110,2,'#','','F','0','1','monitor:job:add','#','admin','2022-05-05 10:41:32','',NULL,''),(1052,'任务修改',110,3,'#','','F','0','1','monitor:job:edit','#','admin','2022-05-05 10:41:32','',NULL,''),(1053,'任务删除',110,4,'#','','F','0','1','monitor:job:remove','#','admin','2022-05-05 10:41:32','',NULL,''),(1054,'状态修改',110,5,'#','','F','0','1','monitor:job:changeStatus','#','admin','2022-05-05 10:41:32','',NULL,''),(1055,'任务详细',110,6,'#','','F','0','1','monitor:job:detail','#','admin','2022-05-05 10:41:32','',NULL,''),(1056,'任务导出',110,7,'#','','F','0','1','monitor:job:export','#','admin','2022-05-05 10:41:32','',NULL,''),(1057,'生成查询',115,1,'#','','F','0','1','tool:gen:list','#','admin','2022-05-05 10:41:32','',NULL,''),(1058,'生成修改',115,2,'#','','F','0','1','tool:gen:edit','#','admin','2022-05-05 10:41:32','',NULL,''),(1059,'生成删除',115,3,'#','','F','0','1','tool:gen:remove','#','admin','2022-05-05 10:41:32','',NULL,''),(1060,'预览代码',115,4,'#','','F','0','1','tool:gen:preview','#','admin','2022-05-05 10:41:32','',NULL,''),(1061,'生成代码',115,5,'#','','F','0','1','tool:gen:code','#','admin','2022-05-05 10:41:32','',NULL,''),(2016,'保险公司管理',2036,1,'/system/company','','C','0','1','system:company:view','#','admin','2022-05-06 15:28:09','',NULL,'公司管理菜单'),(2017,'公司管理查询',2016,1,'#','','F','0','1','system:company:list','#','admin','2022-05-06 15:28:09','',NULL,''),(2018,'公司管理新增',2016,2,'#','','F','0','1','system:company:add','#','admin','2022-05-06 15:28:09','',NULL,''),(2019,'公司管理修改',2016,3,'#','','F','0','1','system:company:edit','#','admin','2022-05-06 15:28:09','',NULL,''),(2020,'公司管理删除',2016,4,'#','','F','0','1','system:company:remove','#','admin','2022-05-06 15:28:09','',NULL,''),(2021,'公司管理导出',2016,5,'#','','F','0','1','system:company:export','#','admin','2022-05-06 15:28:09','',NULL,''),(2022,'保险人员管理',2036,2,'/system/person','menuItem','C','0','1','system:person:view','#','admin','2022-05-06 16:14:23','admin','2022-10-27 17:10:18','保险公司人员管理菜单'),(2023,'保险公司人员管理查询',2022,1,'#','','F','0','1','system:person:list','#','admin','2022-05-06 16:14:23','',NULL,''),(2024,'保险公司人员管理新增',2022,2,'#','','F','0','1','system:person:add','#','admin','2022-05-06 16:14:23','',NULL,''),(2025,'保险公司人员管理修改',2022,3,'#','','F','0','1','system:person:edit','#','admin','2022-05-06 16:14:23','',NULL,''),(2026,'保险公司人员管理删除',2022,4,'#','','F','0','1','system:person:remove','#','admin','2022-05-06 16:14:23','',NULL,''),(2027,'保险公司人员管理导出',2022,5,'#','','F','0','1','system:person:export','#','admin','2022-05-06 16:14:23','',NULL,''),(2028,'理赔管理',0,6,'#','menuItem','M','1','1','','fa fa-handshake-o','admin','2022-05-07 10:48:12','admin','2022-11-22 12:51:25',''),(2029,'理赔信息',2028,1,'/system/claim','menuItem','C','0','1','system:claim:view','#','admin','2022-05-07 14:03:42','admin','2022-05-07 14:09:39','信息管理菜单'),(2030,'信息管理查询',2029,1,'#','','F','0','1','system:claim:list','#','admin','2022-05-07 14:03:42','',NULL,''),(2031,'信息管理新增',2029,2,'#','','F','0','1','system:claim:add','#','admin','2022-05-07 14:03:42','',NULL,''),(2032,'信息管理修改',2029,3,'#','','F','0','1','system:claim:edit','#','admin','2022-05-07 14:03:42','',NULL,''),(2033,'信息管理删除',2029,4,'#','','F','0','1','system:claim:remove','#','admin','2022-05-07 14:03:42','',NULL,''),(2034,'信息管理导出',2029,5,'#','','F','0','1','system:claim:export','#','admin','2022-05-07 14:03:42','',NULL,''),(2035,'详情信息',2029,6,'#','menuItem','F','0','1','system:claim:detail','#','admin','2022-05-07 16:19:31','',NULL,''),(2036,'基础数据管理',0,7,'#','menuItem','M','1','1','','fa fa-laptop','admin','2022-05-13 10:29:28','admin','2022-11-22 16:28:38',''),(2037,'学校管理',2036,3,'/system/school','menuItem','C','0','1','system:school:view','#','admin','2022-05-13 10:39:23','admin','2022-10-27 17:10:31','学校管理菜单'),(2038,'学校管理查询',2037,1,'#','','F','0','1','system:school:list','#','admin','2022-05-13 10:39:23','',NULL,''),(2039,'学校管理新增',2037,2,'#','','F','0','1','system:school:add','#','admin','2022-05-13 10:39:23','',NULL,''),(2040,'学校管理修改',2037,3,'#','','F','0','1','system:school:edit','#','admin','2022-05-13 10:39:23','',NULL,''),(2041,'学校管理删除',2037,4,'#','','F','0','1','system:school:remove','#','admin','2022-05-13 10:39:23','',NULL,''),(2042,'学校管理导出',2037,5,'#','','F','0','1','system:school:export','#','admin','2022-05-13 10:39:23','',NULL,''),(2043,'湘N管理',0,99,'#','menuItem','M','1','1','','fa fa-archive','admin','2022-05-16 09:32:10','admin','2022-11-22 12:51:15',''),(2050,'队员管理',2043,1,'/system/nperson','','C','0','1','system:nperson:view','#','admin','2022-05-16 09:38:09','',NULL,'队员管理菜单'),(2051,'队员管理查询',2050,1,'#','','F','0','1','system:nperson:list','#','admin','2022-05-16 09:38:09','',NULL,''),(2052,'队员管理新增',2050,2,'#','','F','0','1','system:nperson:add','#','admin','2022-05-16 09:38:09','',NULL,''),(2053,'队员管理修改',2050,3,'#','','F','0','1','system:nperson:edit','#','admin','2022-05-16 09:38:09','',NULL,''),(2054,'队员管理删除',2050,4,'#','','F','0','1','system:nperson:remove','#','admin','2022-05-16 09:38:09','',NULL,''),(2055,'队员管理导出',2050,5,'#','','F','0','1','system:nperson:export','#','admin','2022-05-16 09:38:09','',NULL,''),(2062,'收入管理',2043,1,'/system/income','','C','0','1','system:income:view','#','admin','2022-05-16 11:05:12','',NULL,'收入管理菜单'),(2063,'收入管理查询',2062,1,'#','','F','0','1','system:income:list','#','admin','2022-05-16 11:05:12','',NULL,''),(2064,'收入管理新增',2062,2,'#','','F','0','1','system:income:add','#','admin','2022-05-16 11:05:12','',NULL,''),(2065,'收入管理修改',2062,3,'#','','F','0','1','system:income:edit','#','admin','2022-05-16 11:05:12','',NULL,''),(2066,'收入管理删除',2062,4,'#','','F','0','1','system:income:remove','#','admin','2022-05-16 11:05:12','',NULL,''),(2067,'收入管理导出',2062,5,'#','','F','0','1','system:income:export','#','admin','2022-05-16 11:05:12','',NULL,''),(2068,'支出管理',2043,1,'/system/expend','','C','0','1','system:expend:view','#','admin','2022-05-16 15:25:13','',NULL,'支出管理菜单'),(2069,'支出管理查询',2068,1,'#','','F','0','1','system:expend:list','#','admin','2022-05-16 15:25:13','',NULL,''),(2070,'支出管理新增',2068,2,'#','','F','0','1','system:expend:add','#','admin','2022-05-16 15:25:13','',NULL,''),(2071,'支出管理修改',2068,3,'#','','F','0','1','system:expend:edit','#','admin','2022-05-16 15:25:13','',NULL,''),(2072,'支出管理删除',2068,4,'#','','F','0','1','system:expend:remove','#','admin','2022-05-16 15:25:13','',NULL,''),(2073,'支出管理导出',2068,5,'#','','F','0','1','system:expend:export','#','admin','2022-05-16 15:25:13','',NULL,''),(2074,'营销员管理',0,8,'#','menuItem','M','1','1','','fa fa-address-book-o','admin','2022-05-19 15:22:31','admin','2022-11-22 12:51:20',''),(2075,'人员管理',2074,1,'/system/salesman','','C','0','1','system:salesman:view','#','admin','2022-05-19 15:24:24','',NULL,'人员管理菜单'),(2076,'人员管理查询',2075,1,'#','','F','0','1','system:salesman:list','#','admin','2022-05-19 15:24:24','',NULL,''),(2077,'人员管理新增',2075,2,'#','','F','0','1','system:salesman:add','#','admin','2022-05-19 15:24:24','',NULL,''),(2078,'人员管理修改',2075,3,'#','','F','0','1','system:salesman:edit','#','admin','2022-05-19 15:24:24','',NULL,''),(2079,'人员管理删除',2075,4,'#','','F','0','1','system:salesman:remove','#','admin','2022-05-19 15:24:24','',NULL,''),(2080,'人员管理导出',2075,5,'#','','F','0','1','system:salesman:export','#','admin','2022-05-19 15:24:24','',NULL,''),(2081,'信息管理',2074,1,'/system/messqges','','C','0','1','system:messqges:view','#','admin','2022-05-20 09:36:20','',NULL,'信息管理菜单'),(2082,'信息管理查询',2081,1,'#','','F','0','1','system:messqges:list','#','admin','2022-05-20 09:36:20','',NULL,''),(2083,'信息管理新增',2081,2,'#','','F','0','1','system:messqges:add','#','admin','2022-05-20 09:36:20','',NULL,''),(2084,'信息管理修改',2081,3,'#','','F','0','1','system:messqges:edit','#','admin','2022-05-20 09:36:20','',NULL,''),(2085,'信息管理删除',2081,4,'#','','F','0','1','system:messqges:remove','#','admin','2022-05-20 09:36:20','',NULL,''),(2086,'信息管理导出',2081,5,'#','','F','0','1','system:messqges:export','#','admin','2022-05-20 09:36:20','',NULL,''),(2087,'存钱',2075,6,'#','menuItem','F','0','1','system:hhSalesman:deposit','#','admin','2022-05-20 10:40:48','',NULL,''),(2088,'学校承保公司',2036,4,'/system/schoolCompany','menuItem','C','0','1','system:schoolCompany:view','#','admin','2022-10-24 12:45:28','admin','2022-10-27 17:10:40','学校承保公司菜单'),(2089,'学校承保公司查询',2088,1,'#','','F','0','1','system:schoolCompany:list','#','admin','2022-10-24 12:45:28','',NULL,''),(2090,'学校承保公司新增',2088,2,'#','','F','0','1','system:schoolCompany:add','#','admin','2022-10-24 12:45:28','',NULL,''),(2091,'学校承保公司修改',2088,3,'#','','F','0','1','system:schoolCompany:edit','#','admin','2022-10-24 12:45:28','',NULL,''),(2092,'学校承保公司删除',2088,4,'#','','F','0','1','system:schoolCompany:remove','#','admin','2022-10-24 12:45:28','',NULL,''),(2093,'学校承保公司导出',2088,5,'#','','F','0','1','system:schoolCompany:export','#','admin','2022-10-24 12:45:28','',NULL,''),(2094,'操作主页',0,100,'#','menuItem','M','0','1',NULL,'fa fa-envelope-open','admin','2022-11-22 16:24:55','',NULL,''),(2095,'项目列表',0,101,'#','menuItem','M','0','1',NULL,'fa fa-bars','admin','2022-11-22 16:25:15','',NULL,''),(2096,'账户记录',0,103,'#','menuItem','M','0','1',NULL,'fa fa-shopping-bag','admin','2022-11-22 16:27:49','',NULL,''),(2097,'充值中心',0,104,'#','menuItem','M','0','1',NULL,'fa fa-anchor','admin','2022-11-22 18:49:58','',NULL,''),(2098,'资金中心',0,105,'#','menuItem','M','0','1',NULL,'fa fa-anchor','admin','2022-11-22 18:51:09','',NULL,'');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_notice`
--

DROP TABLE IF EXISTS `sys_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_notice`
--

LOCK TABLES `sys_notice` WRITE;
/*!40000 ALTER TABLE `sys_notice` DISABLE KEYS */;
INSERT INTO `sys_notice` VALUES (1,'温馨提醒：2018-07-01 若依新版本发布啦','2','新版本内容','0','admin','2022-05-05 10:41:35','',NULL,'管理员'),(2,'维护通知：2018-07-01 若依系统凌晨维护','1','维护内容','0','admin','2022-05-05 10:41:35','',NULL,'管理员');
/*!40000 ALTER TABLE `sys_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_oper_log`
--

DROP TABLE IF EXISTS `sys_oper_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COMMENT='操作日志记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_oper_log`
--

LOCK TABLES `sys_oper_log` WRITE;
/*!40000 ALTER TABLE `sys_oper_log` DISABLE KEYS */;
INSERT INTO `sys_oper_log` VALUES (1,'操作日志',9,'com.ruoyi.web.controller.monitor.SysOperlogController.clean()','POST',1,'admin','研发部门','/monitor/operlog/clean','127.0.0.1','内网IP','','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-11-22 14:49:41'),(2,'登录日志',9,'com.ruoyi.web.controller.monitor.SysLogininforController.clean()','POST',1,'admin','研发部门','/monitor/logininfor/clean','127.0.0.1','内网IP','','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-11-22 14:49:45'),(3,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.addSave()','POST',1,'admin','研发部门','/system/menu/add','127.0.0.1','内网IP','{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"操作主页\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"100\"],\"icon\":[\"fa fa-envelope-open\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-11-22 16:24:55'),(4,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.addSave()','POST',1,'admin','研发部门','/system/menu/add','127.0.0.1','内网IP','{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"项目列表\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"101\"],\"icon\":[\"fa fa-bars\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-11-22 16:25:15'),(5,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.addSave()','POST',1,'admin','研发部门','/system/menu/add','127.0.0.1','内网IP','{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"账户记录\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"103\"],\"icon\":[\"fa fa-shopping-bag\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-11-22 16:27:49'),(6,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"2036\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"基础数据管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"7\"],\"icon\":[\"fa fa-laptop\"],\"visible\":[\"1\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-11-22 16:28:38'),(7,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.addSave()','POST',1,'admin','研发部门','/system/menu/add','127.0.0.1','内网IP','{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"充值中心\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"104\"],\"icon\":[\"fa fa-anchor\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-11-22 18:49:58'),(8,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.addSave()','POST',1,'admin','研发部门','/system/menu/add','127.0.0.1','内网IP','{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"资金中心\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"105\"],\"icon\":[\"fa fa-anchor\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-11-22 18:51:09'),(9,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()','POST',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\"roleId\":[\"105\"],\"roleName\":[\"纳尔卡商管理员\"],\"roleKey\":[\"cardAdmin\"],\"roleSort\":[\"101\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2094,2095,2096,2098\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-11-22 18:58:08'),(10,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"1\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"999\"],\"icon\":[\"fa fa-gear\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-11-22 18:58:34'),(11,'部门管理',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()','POST',1,'admin','研发部门','/system/dept/edit','127.0.0.1','内网IP','{\"deptId\":[\"101\"],\"parentId\":[\"100\"],\"parentName\":[\"纳尔科技\"],\"deptName\":[\"广州总公司\"],\"orderNum\":[\"1\"],\"leader\":[\"伍春晖\"],\"phone\":[\"18665022235\"],\"email\":[\"472997069@qq.com\"],\"status\":[\"0\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-11-22 19:03:13'),(12,'用户管理',3,'com.ruoyi.web.controller.system.SysUserController.remove()','POST',1,'admin','研发部门','/system/user/remove','127.0.0.1','内网IP','{\"ids\":[\"5\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-11-22 19:03:28'),(13,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','GET',1,'admin','研发部门','/system/dept/remove/444','127.0.0.1','内网IP','444','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-11-22 19:03:38'),(14,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','GET',1,'admin','研发部门','/system/dept/remove/443','127.0.0.1','内网IP','443','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-11-22 19:03:39'),(15,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','GET',1,'admin','研发部门','/system/dept/remove/442','127.0.0.1','内网IP','442','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-11-22 19:03:48'),(16,'部门管理',1,'com.ruoyi.web.controller.system.SysDeptController.addSave()','POST',1,'admin','研发部门','/system/dept/add','127.0.0.1','内网IP','{\"parentId\":[\"101\"],\"deptName\":[\"卡商部门\"],\"orderNum\":[\"2\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-11-22 19:04:09'),(17,'部门管理',1,'com.ruoyi.web.controller.system.SysDeptController.addSave()','POST',1,'admin','研发部门','/system/dept/add','127.0.0.1','内网IP','{\"parentId\":[\"100\"],\"deptName\":[\"用户部门\"],\"orderNum\":[\"3\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-11-22 19:04:56'),(18,'部门管理',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()','POST',1,'admin','研发部门','/system/dept/edit','127.0.0.1','内网IP','{\"deptId\":[\"105\"],\"parentId\":[\"101\"],\"parentName\":[\"广州总公司\"],\"deptName\":[\"测试部门\"],\"orderNum\":[\"0\"],\"leader\":[\"若依\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-11-22 19:05:01'),(19,'部门管理',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()','POST',1,'admin','研发部门','/system/dept/edit','127.0.0.1','内网IP','{\"deptId\":[\"441\"],\"parentId\":[\"101\"],\"parentName\":[\"广州总公司\"],\"deptName\":[\"客服部门\"],\"orderNum\":[\"3\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-11-22 19:05:12'),(20,'部门管理',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()','POST',1,'admin','研发部门','/system/dept/edit','127.0.0.1','内网IP','{\"deptId\":[\"101\"],\"parentId\":[\"100\"],\"parentName\":[\"纳尔科技\"],\"deptName\":[\"广州公司\"],\"orderNum\":[\"1\"],\"leader\":[\"伍春晖\"],\"phone\":[\"18665022235\"],\"email\":[\"472997069@qq.com\"],\"status\":[\"0\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-11-22 19:06:07'),(21,'部门管理',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()','POST',1,'admin','研发部门','/system/dept/edit','127.0.0.1','内网IP','{\"deptId\":[\"446\"],\"parentId\":[\"101\"],\"parentName\":[\"广州公司\"],\"deptName\":[\"用户部门\"],\"orderNum\":[\"3\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-11-22 19:06:18'),(22,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"2\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统监控\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1000\"],\"icon\":[\"fa fa-video-camera\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-11-22 19:09:15'),(23,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"3\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统工具\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1001\"],\"icon\":[\"fa fa-bars\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-11-22 19:09:31'),(24,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.addSave()','POST',1,'admin','研发部门','/system/user/add','127.0.0.1','内网IP','{\"deptId\":[\"445\"],\"userName\":[\"卡商管理员\"],\"deptName\":[\"卡商部门\"],\"phonenumber\":[\"18665022239\"],\"email\":[\"\"],\"loginName\":[\"cardAdmin\"],\"sex\":[\"0\"],\"role\":[\"105\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"105\"],\"postIds\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-11-22 19:14:06'),(25,'角色管理',3,'com.ruoyi.web.controller.system.SysRoleController.remove()','POST',1,'admin','研发部门','/system/role/remove','127.0.0.1','内网IP','{\"ids\":[\"100,101,102,103,104\"]}',NULL,1,'hbd普通已分配,不能删除','2022-11-22 19:14:20'),(26,'用户管理',3,'com.ruoyi.web.controller.system.SysUserController.remove()','POST',1,'admin','研发部门','/system/user/remove','127.0.0.1','内网IP','{\"ids\":[\"3\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-11-22 19:14:29'),(27,'用户管理',3,'com.ruoyi.web.controller.system.SysUserController.remove()','POST',1,'admin','研发部门','/system/user/remove','127.0.0.1','内网IP','{\"ids\":[\"4\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-11-22 19:14:31'),(28,'角色管理',3,'com.ruoyi.web.controller.system.SysRoleController.remove()','POST',1,'admin','研发部门','/system/role/remove','127.0.0.1','内网IP','{\"ids\":[\"100\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-11-22 19:14:49'),(29,'角色管理',3,'com.ruoyi.web.controller.system.SysRoleController.remove()','POST',1,'admin','研发部门','/system/role/remove','127.0.0.1','内网IP','{\"ids\":[\"101\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-11-22 19:14:52'),(30,'角色管理',3,'com.ruoyi.web.controller.system.SysRoleController.remove()','POST',1,'admin','研发部门','/system/role/remove','127.0.0.1','内网IP','{\"ids\":[\"102\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-11-22 19:14:54'),(31,'角色管理',3,'com.ruoyi.web.controller.system.SysRoleController.remove()','POST',1,'admin','研发部门','/system/role/remove','127.0.0.1','内网IP','{\"ids\":[\"103\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-11-22 19:14:55'),(32,'角色管理',3,'com.ruoyi.web.controller.system.SysRoleController.remove()','POST',1,'admin','研发部门','/system/role/remove','127.0.0.1','内网IP','{\"ids\":[\"104\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-11-22 19:14:57'),(33,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()','POST',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\"roleId\":[\"105\"],\"roleName\":[\"纳尔卡商管理员\"],\"roleKey\":[\"cardAdmin\"],\"roleSort\":[\"101\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2094,2095,2096,2098,1,100,1000,1001,1002,1003,1004,1005,1006,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-11-22 19:21:23'),(34,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()','POST',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\"roleId\":[\"105\"],\"roleName\":[\"纳尔卡商管理员\"],\"roleKey\":[\"cardAdmin\"],\"roleSort\":[\"101\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2094,2095,2096,2098,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,103,1016,1017,1018,1019,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-11-22 19:21:51'),(35,'参数管理',2,'com.ruoyi.web.controller.system.SysConfigController.editSave()','POST',1,'admin','研发部门','/system/config/edit','127.0.0.1','内网IP','{\"configId\":[\"9\"],\"configName\":[\"主框架页-是否开启页脚\"],\"configKey\":[\"sys.index.footer\"],\"configValue\":[\"false\"],\"configType\":[\"Y\"],\"remark\":[\"是否开启底部页脚显示（true显示，false隐藏）\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-11-22 19:22:29'),(36,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.editSave()','POST',1,'admin','研发部门','/system/user/edit','127.0.0.1','内网IP','{\"userId\":[\"6\"],\"deptId\":[\"445\"],\"userName\":[\"卡商管理员\"],\"dept.deptName\":[\"卡商部门\"],\"phonenumber\":[\"18665022239\"],\"email\":[\"\"],\"loginName\":[\"cardAdmin\"],\"sex\":[\"0\"],\"role\":[\"105\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"105\"],\"postIds\":[\"2\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-11-22 19:23:26'),(37,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()','POST',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\"roleId\":[\"105\"],\"roleName\":[\"纳尔卡商管理员\"],\"roleKey\":[\"cardAdmin\"],\"roleSort\":[\"101\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2094,2095,2096,2098,1,100,1000,1001,1002,1003,1004,1005,1006,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-11-22 19:25:50'),(38,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.addSave()','POST',1,'admin','研发部门','/system/user/add','127.0.0.1','内网IP','{\"deptId\":[\"446\"],\"userName\":[\"普通用户\"],\"deptName\":[\"用户部门\"],\"phonenumber\":[\"\"],\"email\":[\"\"],\"loginName\":[\"commonAdmin\"],\"sex\":[\"0\"],\"role\":[\"107\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"107\"],\"postIds\":[\"4\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-11-22 19:27:19'),(39,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()','POST',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\"roleId\":[\"107\"],\"roleName\":[\"纳尔普通用户\"],\"roleKey\":[\"naerCommonUser\"],\"roleSort\":[\"103\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2094,2095,2096,2097\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-11-22 19:27:39');
/*!40000 ALTER TABLE `sys_oper_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_post`
--

DROP TABLE IF EXISTS `sys_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_post`
--

LOCK TABLES `sys_post` WRITE;
/*!40000 ALTER TABLE `sys_post` DISABLE KEYS */;
INSERT INTO `sys_post` VALUES (1,'ceo','董事长',1,'0','admin','2022-05-05 10:41:31','',NULL,''),(2,'se','项目经理',2,'0','admin','2022-05-05 10:41:31','',NULL,''),(3,'hr','人力资源',3,'0','admin','2022-05-05 10:41:31','',NULL,''),(4,'user','普通员工',4,'0','admin','2022-05-05 10:41:31','',NULL,'');
/*!40000 ALTER TABLE `sys_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COMMENT='角色信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'超级管理员','admin',1,'1','0','0','admin','2022-05-05 10:41:31','',NULL,'超级管理员'),(2,'普通角色','common',2,'2','0','0','admin','2022-05-05 10:41:31','',NULL,'普通角色'),(100,'区县管理员','areaAdmin',3,'1','0','2','admin','2022-05-05 14:02:56','',NULL,NULL),(101,'学校管理员','schoolAdmin',4,'1','0','2','admin','2022-05-05 14:03:25','admin','2022-05-05 14:03:30',''),(102,'市管理员','citiAdmin',5,'1','0','2','admin','2022-05-05 14:05:38','',NULL,NULL),(103,'hbd普通','hbdCommon',99,'1','0','2','admin','2022-05-20 10:37:54','admin','2022-05-20 10:42:47',''),(104,'hbd财务','hbdMoney',100,'1','0','2','admin','2022-05-20 10:43:21','',NULL,NULL),(105,'纳尔卡商管理员','cardAdmin',101,'1','0','0','admin','2022-11-22 12:58:29','admin','2022-11-22 19:25:50',''),(106,'纳尔卡商用户','cardUser',102,'1','0','0','admin','2022-11-22 13:00:12','admin','2022-11-22 13:00:53',''),(107,'纳尔普通用户','naerCommonUser',103,'1','0','0','admin','2022-11-22 13:00:49','admin','2022-11-22 19:27:39','');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_dept`
--

DROP TABLE IF EXISTS `sys_role_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色和部门关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_dept`
--

LOCK TABLES `sys_role_dept` WRITE;
/*!40000 ALTER TABLE `sys_role_dept` DISABLE KEYS */;
INSERT INTO `sys_role_dept` VALUES (2,100),(2,101),(2,105);
/*!40000 ALTER TABLE `sys_role_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色和菜单关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` VALUES (2,1),(2,2),(2,3),(2,4),(2,100),(2,101),(2,102),(2,103),(2,104),(2,105),(2,106),(2,107),(2,108),(2,109),(2,110),(2,111),(2,112),(2,113),(2,114),(2,115),(2,116),(2,500),(2,501),(2,1000),(2,1001),(2,1002),(2,1003),(2,1004),(2,1005),(2,1006),(2,1007),(2,1008),(2,1009),(2,1010),(2,1011),(2,1012),(2,1013),(2,1014),(2,1015),(2,1016),(2,1017),(2,1018),(2,1019),(2,1020),(2,1021),(2,1022),(2,1023),(2,1024),(2,1025),(2,1026),(2,1027),(2,1028),(2,1029),(2,1030),(2,1031),(2,1032),(2,1033),(2,1034),(2,1035),(2,1036),(2,1037),(2,1038),(2,1039),(2,1040),(2,1041),(2,1042),(2,1043),(2,1044),(2,1045),(2,1046),(2,1047),(2,1048),(2,1049),(2,1050),(2,1051),(2,1052),(2,1053),(2,1054),(2,1055),(2,1056),(2,1057),(2,1058),(2,1059),(2,1060),(2,1061),(105,1),(105,100),(105,107),(105,108),(105,500),(105,501),(105,1000),(105,1001),(105,1002),(105,1003),(105,1004),(105,1005),(105,1006),(105,1035),(105,1036),(105,1037),(105,1038),(105,1039),(105,1040),(105,1041),(105,1042),(105,1043),(105,1044),(105,1045),(105,1046),(105,2094),(105,2095),(105,2096),(105,2098),(106,1),(106,100),(106,107),(106,108),(106,500),(106,501),(106,1000),(106,1001),(106,1002),(106,1003),(106,1004),(106,1005),(106,1006),(106,1035),(106,1036),(106,1037),(106,1038),(106,1039),(106,1040),(106,1041),(106,1042),(106,1043),(106,1044),(106,1045),(106,1046),(107,2094),(107,2095),(107,2096),(107,2097);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COMMENT='用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,103,'admin','系统管理员','00','ry@163.com','15888888888','1','/profile/avatar/2022/05/07/blob_20220507121005A001.png','29c67a30398638269fe600f73a054934','111111','0','0','127.0.0.1','2022-11-22 19:33:48','2022-05-05 10:41:31','admin','2022-05-05 10:41:31','','2022-11-22 19:33:48','管理员'),(2,105,'ry','若依','00','ry@qq.com','15666666666','1','','96715e56247e7a2b62cdfe1e91896e26','5d274f','0','0','127.0.0.1','2022-05-05 10:48:09','2022-05-05 10:41:31','admin','2022-05-05 10:41:31','','2022-05-05 10:48:09','测试员'),(6,445,'cardAdmin','卡商管理员','00','','18665022239','0','','9fdbc77317066db535a59e2cf27d9302','60b21d','0','0','127.0.0.1','2022-11-22 19:34:00',NULL,'admin','2022-11-22 19:14:06','admin','2022-11-22 19:34:00',''),(7,446,'commonAdmin','普通用户','00','','','0','','d2ec71bc6c94fdfaea9c82c4d928fd83','0d6848','0','0','127.0.0.1','2022-11-22 19:27:51',NULL,'admin','2022-11-22 19:27:19','','2022-11-22 19:27:50',NULL);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_online`
--

DROP TABLE IF EXISTS `sys_user_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_online`
--

LOCK TABLES `sys_user_online` WRITE;
/*!40000 ALTER TABLE `sys_user_online` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_user_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_post`
--

DROP TABLE IF EXISTS `sys_user_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户与岗位关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_post`
--

LOCK TABLES `sys_user_post` WRITE;
/*!40000 ALTER TABLE `sys_user_post` DISABLE KEYS */;
INSERT INTO `sys_user_post` VALUES (1,1),(2,2),(6,2),(7,4);
/*!40000 ALTER TABLE `sys_user_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户和角色关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES (1,1),(2,2),(6,105),(7,107);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-22 20:39:15
