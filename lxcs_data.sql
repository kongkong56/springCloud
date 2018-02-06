/*
Navicat MySQL Data Transfer

Source Server         : 催收
Source Server Version : 50636
Source Host           : 172.16.1.101:3306
Source Database       : lxcs_data

Target Server Type    : MYSQL
Target Server Version : 50636
File Encoding         : 65001

Date: 2017-12-26 17:17:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for c_m_area
-- ----------------------------
DROP TABLE IF EXISTS `c_m_area`;
CREATE TABLE `c_m_area` (
  `code` char(6) NOT NULL COMMENT '地区代码',
  `name` varchar(50) NOT NULL COMMENT '地区名称',
  `isprovince` int(11) NOT NULL DEFAULT '0' COMMENT '是否是省',
  `iscity` int(11) NOT NULL DEFAULT '0' COMMENT '是否是市',
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='省市地编码表（勿清空）';

-- ----------------------------
-- Table structure for c_m_custom_user
-- ----------------------------
DROP TABLE IF EXISTS `c_m_custom_user`;
CREATE TABLE `c_m_custom_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_id` varchar(36) DEFAULT NULL COMMENT '部门编号',
  `user_id` varchar(36) DEFAULT NULL COMMENT '用户id',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除标识',
  `create_group_cd` varchar(36) DEFAULT NULL COMMENT '初期新建部门编号',
  `create_user_cd` varchar(36) DEFAULT NULL COMMENT '初期新建者',
  `create_date` varchar(20) DEFAULT NULL COMMENT '初期新建日',
  `update_group_cd` varchar(36) DEFAULT NULL COMMENT '最终更新部门编号',
  `update_user_cd` varchar(36) DEFAULT NULL COMMENT '最终更新者',
  `update_date` varchar(20) DEFAULT NULL COMMENT '最终更新日',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='用户和部门关联表';

-- ----------------------------
-- Table structure for c_m_department
-- ----------------------------
DROP TABLE IF EXISTS `c_m_department`;
CREATE TABLE `c_m_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_cd` varchar(36) DEFAULT NULL COMMENT '部门编号',
  `department_name` varchar(100) DEFAULT NULL COMMENT '部门名称',
  `department_leader_id` varchar(36) DEFAULT NULL COMMENT '分公司经理id',
  `department_leader_name` varchar(30) DEFAULT NULL COMMENT '分公司经理姓名',
  `department_p_cd` varchar(36) DEFAULT NULL COMMENT '上级部门编号',
  `department_ip` varchar(40) DEFAULT NULL COMMENT '分公司ip地址',
  `department_ip_saipu` varchar(40) DEFAULT NULL COMMENT '赛普分公司ip地址',
  `department_province` varchar(40) DEFAULT NULL COMMENT '省',
  `status` varchar(2) DEFAULT '0' COMMENT '状态（0：启用，1：禁用）',
  `sort_key` int(3) DEFAULT NULL COMMENT '排序',
  `city_area` varchar(30) DEFAULT NULL COMMENT '所属城市地区',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除标识  0未删除，1已删除',
  `create_group_cd` varchar(36) DEFAULT NULL COMMENT '初期新建部门编号',
  `create_user_cd` varchar(36) DEFAULT NULL COMMENT '初期新建者',
  `create_date` varchar(20) DEFAULT NULL COMMENT '初期新建日',
  `update_group_cd` varchar(36) DEFAULT NULL COMMENT '最终更新部门编号',
  `update_user_cd` varchar(36) DEFAULT NULL COMMENT '最终更新者',
  `update_date` varchar(20) DEFAULT NULL COMMENT '最终更新日',
  PRIMARY KEY (`id`),
  KEY `department_cd` (`department_cd`),
  KEY `department_p_cd` (`department_p_cd`)
) ENGINE=InnoDB AUTO_INCREMENT=699 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for c_m_department_area
-- ----------------------------
DROP TABLE IF EXISTS `c_m_department_area`;
CREATE TABLE `c_m_department_area` (
  `id` char(36) NOT NULL,
  `department_cd` varchar(36) DEFAULT NULL COMMENT '部门编号',
  `province` varchar(7) DEFAULT NULL COMMENT '省',
  `city` varchar(7) DEFAULT NULL COMMENT '城市',
  `district` varchar(7) DEFAULT NULL COMMENT '区县',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for c_m_department_user
-- ----------------------------
DROP TABLE IF EXISTS `c_m_department_user`;
CREATE TABLE `c_m_department_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_cd` varchar(36) DEFAULT NULL COMMENT '部门编号',
  `user_id` varchar(36) DEFAULT NULL COMMENT '用户id',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除标识',
  `create_group_cd` varchar(36) DEFAULT NULL COMMENT '初期新建部门编号',
  `create_user_cd` varchar(36) DEFAULT NULL COMMENT '初期新建者',
  `create_date` varchar(20) DEFAULT NULL COMMENT '初期新建日',
  `update_group_cd` varchar(36) DEFAULT NULL COMMENT '最终更新部门编号',
  `update_user_cd` varchar(36) DEFAULT NULL COMMENT '最终更新者',
  `update_date` varchar(20) DEFAULT NULL COMMENT '最终更新日',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10013 DEFAULT CHARSET=utf8 COMMENT='用户和部门关联表';

-- ----------------------------
-- Table structure for c_m_fenji_log
-- ----------------------------
DROP TABLE IF EXISTS `c_m_fenji_log`;
CREATE TABLE `c_m_fenji_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `extension_number` varchar(30) DEFAULT NULL COMMENT '固话',
  `fenji_number` varchar(50) DEFAULT NULL COMMENT '分机号',
  `user_id` varchar(36) DEFAULT NULL COMMENT '所属法务员',
  `user_name` varchar(40) DEFAULT NULL COMMENT '所属法务员账号',
  `last_user_id` varchar(36) DEFAULT NULL COMMENT '上次所属法务员',
  `last_user_name` varchar(40) DEFAULT NULL COMMENT '上次所属法务员账号',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '所属分公司',
  `department_top_name` varchar(40) DEFAULT NULL COMMENT '所属分公司名称',
  `last_department_top_cd` varchar(40) DEFAULT NULL COMMENT '上次所属分公司',
  `last_department_top_name` varchar(40) DEFAULT NULL COMMENT '上次所属分公司名称',
  `is_used` char(1) DEFAULT NULL COMMENT '是否被占用0没被占用，1已占用',
  `create_user_id` varchar(36) DEFAULT NULL COMMENT '初期新建者',
  `create_date` int(10) DEFAULT NULL COMMENT '初期新建日',
  `create_name` varchar(20) DEFAULT NULL COMMENT '创建者账号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8 COMMENT='分机号日志表';

-- ----------------------------
-- Table structure for c_m_fenji_number
-- ----------------------------
DROP TABLE IF EXISTS `c_m_fenji_number`;
CREATE TABLE `c_m_fenji_number` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `extension_number` varchar(30) DEFAULT NULL COMMENT '固话',
  `fenji_number` varchar(50) DEFAULT NULL COMMENT '分机号',
  `user_id` varchar(36) DEFAULT NULL COMMENT '所属法务员',
  `user_name` varchar(40) DEFAULT NULL COMMENT '所属法务员账号',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '所属分公司',
  `department_top_name` varchar(40) DEFAULT NULL COMMENT '所属分公司名称',
  `is_used` char(1) DEFAULT NULL COMMENT '是否被占用0没被占用，1已占用',
  `create_user_id` varchar(36) DEFAULT NULL COMMENT '初期新建者',
  `create_date` int(10) DEFAULT NULL COMMENT '初期新建日',
  `create_name` varchar(20) DEFAULT NULL COMMENT '创建者账号',
  `update_user_id` varchar(36) DEFAULT NULL COMMENT '最终更新者',
  `update_date` int(10) DEFAULT NULL COMMENT '最终更新日',
  `update_name` varchar(20) DEFAULT NULL COMMENT '更新人姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8 COMMENT='分机号表';

-- ----------------------------
-- Table structure for c_m_holiday
-- ----------------------------
DROP TABLE IF EXISTS `c_m_holiday`;
CREATE TABLE `c_m_holiday` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `holiday_name` varchar(50) DEFAULT NULL COMMENT '假日名称',
  `holiday_start_time` varchar(10) DEFAULT NULL COMMENT '假日开始时间',
  `holiday_end_time` varchar(10) DEFAULT NULL COMMENT '假日结束时间',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='节假日配置表';

-- ----------------------------
-- Table structure for c_m_menu
-- ----------------------------
DROP TABLE IF EXISTS `c_m_menu`;
CREATE TABLE `c_m_menu` (
  `menu_id` varchar(36) NOT NULL COMMENT '菜单编号',
  `parent_menu_id` varchar(36) DEFAULT '0' COMMENT '父级菜单编号',
  `menu_name` varchar(100) DEFAULT NULL COMMENT '菜单名称',
  `menu_icon` varchar(100) DEFAULT '' COMMENT '菜单图标',
  `menu_url` varchar(500) DEFAULT NULL COMMENT '菜单链接',
  `menu_controllor` varchar(100) DEFAULT NULL COMMENT '菜单权限',
  `status` varchar(2) DEFAULT NULL COMMENT '状态',
  `sort_key` int(11) DEFAULT NULL COMMENT '排序',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除标识',
  `create_group_cd` varchar(36) DEFAULT NULL COMMENT '初期新建部门编号',
  `create_user_cd` varchar(36) DEFAULT NULL COMMENT '初期新建者',
  `create_date` varchar(20) DEFAULT NULL COMMENT '初期新建日',
  `update_group_cd` varchar(36) DEFAULT NULL COMMENT '最终更新部门编号',
  `update_user_cd` varchar(36) DEFAULT NULL COMMENT '最终更新者',
  `update_date` varchar(20) DEFAULT NULL COMMENT '最终更新日',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='后台菜单表';

-- ----------------------------
-- Table structure for c_m_menu_permission
-- ----------------------------
DROP TABLE IF EXISTS `c_m_menu_permission`;
CREATE TABLE `c_m_menu_permission` (
  `id` varchar(36) NOT NULL,
  `menu_id` varchar(36) DEFAULT NULL COMMENT '菜单编号',
  `permission` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `permission_name` varchar(100) DEFAULT NULL COMMENT '权限名称',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除标识',
  `create_group_cd` varchar(36) DEFAULT NULL COMMENT '初期新建部门编号',
  `create_user_cd` varchar(36) DEFAULT NULL COMMENT '初期新建者',
  `create_date` varchar(20) DEFAULT NULL COMMENT '初期新建日',
  `update_group_cd` varchar(36) DEFAULT NULL COMMENT '最终更新部门编号',
  `update_user_cd` varchar(36) DEFAULT NULL COMMENT '最终更新者',
  `update_date` varchar(20) DEFAULT NULL COMMENT '最终更新日',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='后台菜单权限关联表';

-- ----------------------------
-- Table structure for c_m_menu_setting
-- ----------------------------
DROP TABLE IF EXISTS `c_m_menu_setting`;
CREATE TABLE `c_m_menu_setting` (
  `id` varchar(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL COMMENT '用户编号',
  `menu_id` varchar(36) DEFAULT NULL COMMENT '菜单编号',
  `menu_setting` text COMMENT '菜单列排序设置',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除标识',
  `create_user_cd` varchar(36) DEFAULT NULL COMMENT '初期新建者',
  `create_date` varchar(20) DEFAULT NULL COMMENT '初期新建日',
  `update_user_cd` varchar(36) DEFAULT NULL COMMENT '最终更新者',
  `update_date` varchar(20) DEFAULT NULL COMMENT '最终更新日',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='后台菜单列排序隐藏';

-- ----------------------------
-- Table structure for c_m_name
-- ----------------------------
DROP TABLE IF EXISTS `c_m_name`;
CREATE TABLE `c_m_name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_class` varchar(40) NOT NULL DEFAULT '' COMMENT '名称区分',
  `name_cd` varchar(6) NOT NULL DEFAULT '' COMMENT '名称编号',
  `name` varchar(40) DEFAULT NULL COMMENT '名称',
  `group_id` varchar(11) DEFAULT NULL COMMENT ' 状态分组id',
  `sort_key` int(10) DEFAULT NULL COMMENT '排序',
  `data` varchar(80) DEFAULT NULL COMMENT '数据',
  `reserve01` varchar(20) DEFAULT NULL COMMENT '扩展项目01',
  `reserve02` varchar(20) DEFAULT NULL COMMENT '扩展项目02',
  `reserve03` varchar(20) DEFAULT NULL COMMENT '扩展项目03',
  `notes` varchar(200) DEFAULT NULL COMMENT '备考',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识 0启用、1删除',
  `create_user_cd` varchar(36) DEFAULT NULL COMMENT '创建者编号',
  `create_group_cd` varchar(36) DEFAULT NULL COMMENT '创建者部门编号',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建者时间',
  `update_user_cd` varchar(36) DEFAULT NULL,
  `update_group_cd` varchar(36) DEFAULT NULL,
  `update_date` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C_M_NAME_NAME_CLASS` (`name_class`) USING BTREE,
  KEY `IDX_C_M_NAME_NAME_CLASS_CD` (`name_class`,`name_cd`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=100148 DEFAULT CHARSET=utf8 COMMENT='数据字典表';

-- ----------------------------
-- Table structure for c_m_phone
-- ----------------------------
DROP TABLE IF EXISTS `c_m_phone`;
CREATE TABLE `c_m_phone` (
  `id` int(11) NOT NULL COMMENT 'id',
  `phone_first` varchar(20) DEFAULT NULL COMMENT '前缀号段',
  `phone_provence` varchar(20) DEFAULT NULL COMMENT '手机所在省份',
  `phone_city` varchar(20) DEFAULT NULL COMMENT '手机所在城市',
  `service` varchar(20) DEFAULT NULL COMMENT '服务商',
  `area_number` int(10) DEFAULT NULL COMMENT '区号',
  `code` varchar(10) DEFAULT NULL COMMENT '邮编',
  PRIMARY KEY (`id`),
  UNIQUE KEY `phoneFirst` (`phone_first`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for c_m_role
-- ----------------------------
DROP TABLE IF EXISTS `c_m_role`;
CREATE TABLE `c_m_role` (
  `role_id` varchar(36) NOT NULL COMMENT '角色编号',
  `role` varchar(100) DEFAULT NULL COMMENT '角色标识',
  `role_name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `note` varchar(500) DEFAULT NULL COMMENT '备注',
  `role_status` char(1) DEFAULT '1' COMMENT '角色状态 1启用；0禁用',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除标识',
  `create_group_cd` varchar(36) DEFAULT NULL COMMENT '初期新建部门编号',
  `create_user_cd` varchar(36) DEFAULT NULL COMMENT '初期新建者',
  `create_date` varchar(20) DEFAULT NULL COMMENT '初期新建日',
  `update_group_cd` varchar(36) DEFAULT NULL COMMENT '最终更新部门编号',
  `update_user_cd` varchar(36) DEFAULT NULL COMMENT '最终更新者',
  `update_date` varchar(20) DEFAULT NULL COMMENT '最终更新日',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='后台角色表';

-- ----------------------------
-- Table structure for c_m_role_menu_permission
-- ----------------------------
DROP TABLE IF EXISTS `c_m_role_menu_permission`;
CREATE TABLE `c_m_role_menu_permission` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `menu_id` varchar(36) DEFAULT NULL,
  `permission` varchar(100) DEFAULT NULL,
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除标识',
  `create_group_cd` varchar(36) DEFAULT NULL COMMENT '初期新建部门编号',
  `create_user_cd` varchar(36) DEFAULT NULL COMMENT '初期新建者',
  `create_date` varchar(20) DEFAULT NULL COMMENT '初期新建日',
  `update_group_cd` varchar(36) DEFAULT NULL COMMENT '最终更新部门编号',
  `update_user_cd` varchar(36) DEFAULT NULL COMMENT '最终更新者',
  `update_date` varchar(20) DEFAULT NULL COMMENT '最终更新日',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单权限关联表';

-- ----------------------------
-- Table structure for c_m_sequence
-- ----------------------------
DROP TABLE IF EXISTS `c_m_sequence`;
CREATE TABLE `c_m_sequence` (
  `name` varchar(36) NOT NULL COMMENT '采番序号',
  `current_value` int(11) NOT NULL COMMENT '当前值',
  `increment` int(11) NOT NULL DEFAULT '1' COMMENT '增量值',
  `notes` varchar(500) DEFAULT NULL COMMENT '备注',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除标识',
  `create_group_cd` varchar(36) DEFAULT NULL COMMENT '初期新建部门编号',
  `create_user_cd` varchar(36) DEFAULT NULL COMMENT '初期新建者',
  `create_date` varchar(20) DEFAULT NULL COMMENT '初期新建日',
  `update_group_cd` varchar(36) DEFAULT NULL COMMENT '最终更新部门编号',
  `update_user_cd` varchar(36) DEFAULT NULL COMMENT '最终更新者',
  `update_date` varchar(20) DEFAULT NULL COMMENT '最终更新日',
  PRIMARY KEY (`name`),
  KEY `IDX_SEQUENCE_NAME` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='数据编号表';

-- ----------------------------
-- Table structure for c_m_user
-- ----------------------------
DROP TABLE IF EXISTS `c_m_user`;
CREATE TABLE `c_m_user` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(36) NOT NULL,
  `user_name` varchar(50) NOT NULL COMMENT '用户名称',
  `company_name` varchar(100) DEFAULT NULL COMMENT '公司名称',
  `real_name` varchar(20) DEFAULT NULL COMMENT '真实姓名',
  `password` varchar(100) NOT NULL COMMENT '用户密码',
  `des3` varchar(100) DEFAULT NULL COMMENT 'des3',
  `mobile_number` varchar(20) DEFAULT NULL COMMENT '手机号码',
  `extension_number` varchar(200) DEFAULT NULL COMMENT '分机号',
  `fenji_number` varchar(50) DEFAULT NULL COMMENT '分机号',
  `address` varchar(200) DEFAULT NULL COMMENT '住址',
  `email_address` varchar(150) DEFAULT NULL COMMENT '电子邮箱',
  `user_flag` varchar(10) DEFAULT NULL COMMENT '1：邀约员   2：外访员 3 ：内审员',
  `notes` varchar(500) DEFAULT NULL COMMENT '备注',
  `user_no` varchar(20) DEFAULT NULL COMMENT '员工编号',
  `position` varchar(20) DEFAULT NULL COMMENT '职位',
  `sex` varchar(1) DEFAULT NULL COMMENT '性别（1：男，0：女）',
  `join_date` varchar(10) DEFAULT NULL COMMENT '入职日期',
  `birthday` varchar(10) DEFAULT NULL COMMENT '出生日期',
  `id_no` varchar(18) DEFAULT NULL COMMENT '身份证号',
  `user_type` varchar(1) DEFAULT '' COMMENT '用户客户类型（0：全部，1：用户客户类别关联表）',
  `user_icon` varchar(500) DEFAULT NULL COMMENT '头像',
  `card_no` varchar(100) DEFAULT NULL COMMENT '银行卡号',
  `user_sort_key` int(11) DEFAULT NULL,
  `is_agree_agreement` varchar(1) DEFAULT '1' COMMENT '同意用户协议(0：同意，1：不同意)',
  `last_login_time` varchar(40) DEFAULT NULL COMMENT '上一次登陸時間',
  `pwd_error_time` int(3) DEFAULT '0' COMMENT '用户输入错误密码次数',
  `pwd_error_date` varchar(10) DEFAULT NULL COMMENT '错误时间（第一次）',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除标识',
  `create_group_cd` varchar(36) DEFAULT NULL COMMENT '初期新建部门编号',
  `create_user_cd` varchar(36) DEFAULT NULL COMMENT '初期新建者',
  `create_date` varchar(20) DEFAULT NULL COMMENT '初期新建日',
  `update_group_cd` varchar(36) DEFAULT NULL COMMENT '最终更新部门编号',
  `update_user_cd` varchar(36) DEFAULT NULL COMMENT '最终更新者',
  `update_date` varchar(20) DEFAULT NULL COMMENT '最终更新日',
  `is_question` tinyint(1) DEFAULT '0' COMMENT '是否进行性格测试 0 未测试 1已测试',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6542 DEFAULT CHARSET=utf8 COMMENT='后台用户表';

-- ----------------------------
-- Table structure for c_m_user_main
-- ----------------------------
DROP TABLE IF EXISTS `c_m_user_main`;
CREATE TABLE `c_m_user_main` (
  `id` varchar(36) NOT NULL,
  `department_cd` varchar(36) DEFAULT NULL COMMENT '分公司部门编号',
  `department_name` varchar(36) DEFAULT NULL COMMENT '分公司部门',
  `manager_user_name` varchar(50) DEFAULT NULL COMMENT '主账户',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除标识',
  `create_user_cd` varchar(36) DEFAULT NULL COMMENT '初期新建者',
  `create_date` varchar(20) DEFAULT NULL COMMENT '初期新建日',
  `update_user_cd` varchar(36) DEFAULT NULL COMMENT '最终更新者',
  `update_date` varchar(20) DEFAULT NULL COMMENT '最终更新日',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='后台用户表';

-- ----------------------------
-- Table structure for c_m_user_main_user
-- ----------------------------
DROP TABLE IF EXISTS `c_m_user_main_user`;
CREATE TABLE `c_m_user_main_user` (
  `id` varchar(36) NOT NULL,
  `user_main_id` varchar(36) DEFAULT NULL COMMENT '主账号ID',
  `user_id` varchar(36) DEFAULT NULL COMMENT '用户编号',
  `user_name` varchar(200) DEFAULT NULL COMMENT '用户名称',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除标识',
  `create_user_cd` varchar(36) DEFAULT NULL COMMENT '初期新建者',
  `create_date` varchar(20) DEFAULT NULL COMMENT '初期新建日',
  `update_user_cd` varchar(36) DEFAULT NULL COMMENT '最终更新者',
  `update_date` varchar(20) DEFAULT NULL COMMENT '最终更新日',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='后台用户表';

-- ----------------------------
-- Table structure for c_m_user_role
-- ----------------------------
DROP TABLE IF EXISTS `c_m_user_role`;
CREATE TABLE `c_m_user_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(36) NOT NULL COMMENT '用户编号',
  `role_id` varchar(36) NOT NULL,
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除标识',
  `create_group_cd` varchar(36) DEFAULT NULL COMMENT '初期新建部门编号',
  `create_user_cd` varchar(36) DEFAULT NULL COMMENT '初期新建者',
  `create_date` varchar(20) DEFAULT NULL COMMENT '初期新建日',
  `update_group_cd` varchar(36) DEFAULT NULL COMMENT '最终更新部门编号',
  `update_user_cd` varchar(36) DEFAULT NULL COMMENT '最终更新者',
  `update_date` varchar(20) DEFAULT NULL COMMENT '最终更新日',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6490 DEFAULT CHARSET=utf8 COMMENT='后台用户角色关联表';

-- ----------------------------
-- Table structure for c_t_attachment
-- ----------------------------
DROP TABLE IF EXISTS `c_t_attachment`;
CREATE TABLE `c_t_attachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_id` varchar(50) DEFAULT NULL COMMENT '文件ID(工单编号)',
  `item_id` varchar(50) DEFAULT NULL COMMENT '文件ID(工单编号)',
  `file_order` int(8) DEFAULT NULL COMMENT '文件顺序',
  `file_name` varchar(128) DEFAULT NULL COMMENT '原文件名',
  `att_type` varchar(128) DEFAULT NULL COMMENT '附件类型（业务描述 visit：外访）',
  `file_type` varchar(128) DEFAULT NULL COMMENT '文件类型(photo:图片，record：录音，excel：Excel，4：其他)',
  `extension` varchar(10) DEFAULT NULL COMMENT '文件拓展名',
  `file_size` bigint(20) DEFAULT NULL COMMENT '文件大小',
  `save_path` varchar(2000) DEFAULT NULL COMMENT '存放路径',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除标识',
  `create_group_cd` varchar(36) DEFAULT NULL COMMENT '初期新建部门编号',
  `create_user_cd` varchar(36) DEFAULT NULL COMMENT '初期新建者',
  `create_date` varchar(20) DEFAULT NULL COMMENT '初期新建日',
  `update_group_cd` varchar(36) DEFAULT NULL COMMENT '最终更新部门编号',
  `update_user_cd` varchar(36) DEFAULT NULL COMMENT '最终更新者',
  `update_date` varchar(20) DEFAULT NULL COMMENT '最终更新日',
  `item_no` varchar(2) DEFAULT NULL COMMENT '图片带项目编号上传分类',
  PRIMARY KEY (`id`),
  KEY `file_id` (`file_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3613 DEFAULT CHARSET=utf8 COMMENT='附件表';

-- ----------------------------
-- Table structure for lxcs_billboard
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_billboard`;
CREATE TABLE `lxcs_billboard` (
  `id` varchar(36) NOT NULL,
  `billboard_type` char(1) DEFAULT NULL COMMENT '公告类型  1说明/2内容(说明只有一个）',
  `billboard_title` varchar(30) DEFAULT NULL COMMENT '龙虎榜标题',
  `billboard_content` text,
  `billboard_status` char(1) DEFAULT '1' COMMENT '状态 1启用/2禁用/3删除',
  `create_user_id` varchar(36) DEFAULT NULL COMMENT '初期新建者',
  `create_date` varchar(20) DEFAULT NULL COMMENT '初期新建日',
  `update_user_id` varchar(36) DEFAULT NULL COMMENT '最终更新者',
  `update_date` varchar(20) DEFAULT NULL COMMENT '最终更新日',
  `update_name` varchar(20) DEFAULT NULL COMMENT '更新人姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='龙虎榜信息表';

-- ----------------------------
-- Table structure for lxcs_blacklist
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_blacklist`;
CREATE TABLE `lxcs_blacklist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `number` varchar(50) DEFAULT NULL COMMENT '电话号',
  `del_flag` char(1) DEFAULT NULL COMMENT '是否启用 0不启用，1启用',
  `create_user_id` varchar(36) DEFAULT NULL COMMENT '初期新建者',
  `create_date` int(10) DEFAULT NULL COMMENT '初期新建日',
  `create_name` varchar(20) DEFAULT NULL COMMENT '创建者账号',
  `update_user_id` varchar(36) DEFAULT NULL COMMENT '最终更新者',
  `update_date` int(10) DEFAULT NULL COMMENT '最终更新日',
  `update_name` varchar(20) DEFAULT NULL COMMENT '更新人姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='自动外呼黑名单配置表';

-- ----------------------------
-- Table structure for lxcs_branch_call_center
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_branch_call_center`;
CREATE TABLE `lxcs_branch_call_center` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `branch_name` varchar(50) NOT NULL,
  `call_center_connectionstring` varchar(1000) NOT NULL,
  `del_flag` varchar(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_card_info0
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_card_info0`;
CREATE TABLE `lxcs_card_info0` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `card_no` varchar(64) NOT NULL COMMENT '卡号',
  `account` varchar(64) NOT NULL COMMENT '账户',
  `id_no` varchar(25) NOT NULL COMMENT '证件号码',
  `custom_id` varchar(36) DEFAULT NULL COMMENT '客户编号',
  `custom_name` varchar(50) DEFAULT NULL COMMENT '客户名称',
  `balance_due` decimal(21,4) DEFAULT NULL COMMENT '账户欠款',
  `exchange_rate` decimal(10,4) NOT NULL COMMENT '汇率',
  `currency` varchar(10) DEFAULT NULL COMMENT '币种',
  `to_chinese_currency` decimal(21,4) DEFAULT NULL COMMENT '账户折合人民币',
  `open_account_date` varchar(20) NOT NULL COMMENT '开户日期',
  `credit` decimal(21,4) DEFAULT NULL COMMENT '额度',
  `bill_date` varchar(20) DEFAULT NULL COMMENT '账单日',
  `principal` decimal(21,4) DEFAULT NULL COMMENT '本金',
  `interest` decimal(21,4) DEFAULT NULL COMMENT '利息',
  `late_fee` decimal(21,4) DEFAULT NULL COMMENT '欠款滞纳金',
  `annual_fee` decimal(21,4) DEFAULT NULL COMMENT '年费',
  `transfinite_fee` decimal(21,4) DEFAULT NULL COMMENT '超限费',
  `total_fee` decimal(21,4) DEFAULT NULL COMMENT '费用总额',
  `other_fee` decimal(21,4) DEFAULT NULL COMMENT '其他费用',
  `late_time` varchar(20) DEFAULT NULL COMMENT '逾期时段',
  `late_max_time` varchar(20) DEFAULT NULL COMMENT '逾期最大时段',
  `repay_money_yes` decimal(21,4) DEFAULT NULL COMMENT '累计回收金额',
  `repay_money_wait` decimal(21,4) DEFAULT NULL COMMENT '最新欠款（待回收金额）',
  `repay_wait_date` varchar(20) DEFAULT NULL COMMENT '最新欠款日期',
  `latest_refund_date` varchar(20) DEFAULT NULL COMMENT '最后次还款日期（最新欠款日期）',
  `latest_refund_amount` decimal(21,4) DEFAULT NULL COMMENT '最后次还款金额',
  `card_description` varchar(100) DEFAULT NULL COMMENT '卡类描述',
  `comment1` varchar(1000) DEFAULT NULL COMMENT '备注1',
  `comment2` varchar(1000) DEFAULT NULL COMMENT '备注2',
  `comment3` varchar(1000) DEFAULT NULL COMMENT '备注3',
  `main_flag` varchar(4) DEFAULT NULL COMMENT '主副卡0副卡，1主卡',
  `joinin_date` varchar(20) DEFAULT NULL COMMENT '入催日期',
  `del_flag` char(1) DEFAULT NULL COMMENT '是否隐藏0不隐藏1隐藏',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `gf_sub_money` decimal(21,4) DEFAULT NULL COMMENT '广发减免金额',
  `gf_reply_start_date` varchar(10) DEFAULT NULL COMMENT '银行批复开始日期',
  `gf_reply_end_date` varchar(10) DEFAULT NULL COMMENT '银行批复结束日期',
  `gf_flow_flag` char(1) DEFAULT '1' COMMENT '广发流程标记（''1''：申请减免后导入的银行批复；''2''：先导入的银行批复）',
  `new_pay_date` varchar(20) DEFAULT NULL COMMENT '最新刷卡日期',
  `new_withdraw_date` varchar(20) DEFAULT NULL COMMENT '最后提现日期',
  `outsource_no` varchar(36) DEFAULT NULL COMMENT '外包序列号',
  `start_date` varchar(10) DEFAULT NULL COMMENT '委案开始日期',
  `closing_date` varchar(10) DEFAULT NULL COMMENT '委案结束日期',
  `remission_status` varchar(20) DEFAULT NULL COMMENT '减免状态',
  `recent_repay_date` varchar(20) DEFAULT NULL COMMENT '最近还款日期',
  `recent_repay_amount` decimal(21,4) DEFAULT NULL COMMENT '最近还款金额',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `custom_name` (`custom_name`,`id_no`,`start_date`,`closing_date`,`card_no`,`account`,`currency`),
  KEY `outsource_no` (`outsource_no`) COMMENT '外包序列号索引',
  KEY `account` (`account`) COMMENT '账号索引',
  KEY `card_no` (`card_no`) COMMENT '卡号索引',
  KEY `case_no` (`case_no`) COMMENT '案件编号索引'
) ENGINE=InnoDB AUTO_INCREMENT=194673 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_card_info1
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_card_info1`;
CREATE TABLE `lxcs_card_info1` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `card_no` varchar(64) NOT NULL COMMENT '卡号',
  `account` varchar(64) NOT NULL COMMENT '账户',
  `id_no` varchar(25) NOT NULL COMMENT '证件号码',
  `custom_id` varchar(36) DEFAULT NULL COMMENT '客户编号',
  `custom_name` varchar(50) DEFAULT NULL COMMENT '客户名称',
  `balance_due` decimal(21,4) DEFAULT NULL COMMENT '账户欠款',
  `exchange_rate` decimal(10,4) NOT NULL COMMENT '汇率',
  `currency` varchar(10) DEFAULT NULL COMMENT '币种',
  `to_chinese_currency` decimal(21,4) DEFAULT NULL COMMENT '账户折合人民币',
  `open_account_date` varchar(20) NOT NULL COMMENT '开户日期',
  `credit` decimal(21,4) DEFAULT NULL COMMENT '额度',
  `bill_date` varchar(20) DEFAULT NULL COMMENT '账单日',
  `principal` decimal(21,4) DEFAULT NULL COMMENT '本金',
  `interest` decimal(21,4) DEFAULT NULL COMMENT '利息',
  `late_fee` decimal(21,4) DEFAULT NULL COMMENT '欠款滞纳金',
  `annual_fee` decimal(21,4) DEFAULT NULL COMMENT '年费',
  `transfinite_fee` decimal(21,4) DEFAULT NULL COMMENT '超限费',
  `total_fee` decimal(21,4) DEFAULT NULL COMMENT '费用总额',
  `other_fee` decimal(21,4) DEFAULT NULL COMMENT '其他费用',
  `late_time` varchar(20) DEFAULT NULL COMMENT '逾期时段',
  `late_max_time` varchar(20) DEFAULT NULL COMMENT '逾期最大时段',
  `repay_money_yes` decimal(21,4) DEFAULT NULL COMMENT '累计回收金额',
  `repay_money_wait` decimal(21,4) DEFAULT NULL COMMENT '最新欠款（待回收金额）',
  `repay_wait_date` varchar(20) DEFAULT NULL COMMENT '最新欠款日期',
  `latest_refund_date` varchar(20) DEFAULT NULL COMMENT '最后次还款日期（最新欠款日期）',
  `latest_refund_amount` decimal(21,4) DEFAULT NULL COMMENT '最后次还款金额',
  `card_description` varchar(100) DEFAULT NULL COMMENT '卡类描述',
  `comment1` varchar(1000) DEFAULT NULL COMMENT '备注1',
  `comment2` varchar(1000) DEFAULT NULL COMMENT '备注2',
  `comment3` varchar(1000) DEFAULT NULL COMMENT '备注3',
  `main_flag` varchar(4) DEFAULT NULL COMMENT '主副卡0副卡，1主卡',
  `joinin_date` varchar(20) DEFAULT NULL COMMENT '入催日期',
  `del_flag` char(1) DEFAULT NULL COMMENT '是否隐藏0不隐藏1隐藏',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `gf_sub_money` decimal(21,4) DEFAULT NULL COMMENT '广发减免金额',
  `gf_reply_start_date` varchar(10) DEFAULT NULL COMMENT '银行批复开始日期',
  `gf_reply_end_date` varchar(10) DEFAULT NULL COMMENT '银行批复结束日期',
  `gf_flow_flag` char(1) DEFAULT '1' COMMENT '广发流程标记（''1''：申请减免后导入的银行批复；''2''：先导入的银行批复）',
  `new_pay_date` varchar(20) DEFAULT NULL COMMENT '最新刷卡日期',
  `new_withdraw_date` varchar(20) DEFAULT NULL COMMENT '最后提现日期',
  `outsource_no` varchar(36) DEFAULT NULL COMMENT '外包序列号',
  `start_date` varchar(10) DEFAULT NULL COMMENT '委案开始日期',
  `closing_date` varchar(10) DEFAULT NULL COMMENT '委案结束日期',
  `remission_status` varchar(20) DEFAULT NULL COMMENT '减免状态',
  `recent_repay_date` varchar(20) DEFAULT NULL COMMENT '最近还款日期',
  `recent_repay_amount` decimal(21,4) DEFAULT NULL COMMENT '最近还款金额',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `custom_name` (`custom_name`,`id_no`,`start_date`,`closing_date`,`card_no`,`account`,`currency`),
  KEY `outsource_no` (`outsource_no`) COMMENT '外包序列号索引',
  KEY `account` (`account`) COMMENT '账号索引',
  KEY `card_no` (`card_no`) COMMENT '卡号索引',
  KEY `case_no` (`case_no`) COMMENT '案件编号索引'
) ENGINE=InnoDB AUTO_INCREMENT=201533 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_card_info2
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_card_info2`;
CREATE TABLE `lxcs_card_info2` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `card_no` varchar(64) NOT NULL COMMENT '卡号',
  `account` varchar(64) NOT NULL COMMENT '账户',
  `id_no` varchar(25) NOT NULL COMMENT '证件号码',
  `custom_id` varchar(36) DEFAULT NULL COMMENT '客户编号',
  `custom_name` varchar(50) DEFAULT NULL COMMENT '客户名称',
  `balance_due` decimal(21,4) DEFAULT NULL COMMENT '账户欠款',
  `exchange_rate` decimal(10,4) NOT NULL COMMENT '汇率',
  `currency` varchar(10) DEFAULT NULL COMMENT '币种',
  `to_chinese_currency` decimal(21,4) DEFAULT NULL COMMENT '账户折合人民币',
  `open_account_date` varchar(20) NOT NULL COMMENT '开户日期',
  `credit` decimal(21,4) DEFAULT NULL COMMENT '额度',
  `bill_date` varchar(20) DEFAULT NULL COMMENT '账单日',
  `principal` decimal(21,4) DEFAULT NULL COMMENT '本金',
  `interest` decimal(21,4) DEFAULT NULL COMMENT '利息',
  `late_fee` decimal(21,4) DEFAULT NULL COMMENT '欠款滞纳金',
  `annual_fee` decimal(21,4) DEFAULT NULL COMMENT '年费',
  `transfinite_fee` decimal(21,4) DEFAULT NULL COMMENT '超限费',
  `total_fee` decimal(21,4) DEFAULT NULL COMMENT '费用总额',
  `other_fee` decimal(21,4) DEFAULT NULL COMMENT '其他费用',
  `late_time` varchar(20) DEFAULT NULL COMMENT '逾期时段',
  `late_max_time` varchar(20) DEFAULT NULL COMMENT '逾期最大时段',
  `repay_money_yes` decimal(21,4) DEFAULT NULL COMMENT '累计回收金额',
  `repay_money_wait` decimal(21,4) DEFAULT NULL COMMENT '最新欠款（待回收金额）',
  `repay_wait_date` varchar(20) DEFAULT NULL COMMENT '最新欠款日期',
  `latest_refund_date` varchar(20) DEFAULT NULL COMMENT '最后次还款日期（最新欠款日期）',
  `latest_refund_amount` decimal(21,4) DEFAULT NULL COMMENT '最后次还款金额',
  `card_description` varchar(100) DEFAULT NULL COMMENT '卡类描述',
  `comment1` varchar(1000) DEFAULT NULL COMMENT '备注1',
  `comment2` varchar(1000) DEFAULT NULL COMMENT '备注2',
  `comment3` varchar(1000) DEFAULT NULL COMMENT '备注3',
  `main_flag` varchar(4) DEFAULT NULL COMMENT '主副卡0副卡，1主卡',
  `joinin_date` varchar(20) DEFAULT NULL COMMENT '入催日期',
  `del_flag` char(1) DEFAULT NULL COMMENT '是否隐藏0不隐藏1隐藏',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `gf_sub_money` decimal(21,4) DEFAULT NULL COMMENT '广发减免金额',
  `gf_reply_start_date` varchar(10) DEFAULT NULL COMMENT '银行批复开始日期',
  `gf_reply_end_date` varchar(10) DEFAULT NULL COMMENT '银行批复结束日期',
  `gf_flow_flag` char(1) DEFAULT '1' COMMENT '广发流程标记（''1''：申请减免后导入的银行批复；''2''：先导入的银行批复）',
  `new_pay_date` varchar(20) DEFAULT NULL COMMENT '最新刷卡日期',
  `new_withdraw_date` varchar(20) DEFAULT NULL COMMENT '最后提现日期',
  `outsource_no` varchar(36) DEFAULT NULL COMMENT '外包序列号',
  `start_date` varchar(10) DEFAULT NULL COMMENT '委案开始日期',
  `closing_date` varchar(10) DEFAULT NULL COMMENT '委案结束日期',
  `remission_status` varchar(20) DEFAULT NULL COMMENT '减免状态',
  `recent_repay_date` varchar(20) DEFAULT NULL COMMENT '最近还款日期',
  `recent_repay_amount` decimal(21,4) DEFAULT NULL COMMENT '最近还款金额',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `custom_name` (`custom_name`,`id_no`,`start_date`,`closing_date`,`card_no`,`account`,`currency`),
  KEY `outsource_no` (`outsource_no`) COMMENT '外包序列号索引',
  KEY `account` (`account`) COMMENT '账号索引',
  KEY `card_no` (`card_no`) COMMENT '卡号索引',
  KEY `case_no` (`case_no`) COMMENT '案件编号索引'
) ENGINE=InnoDB AUTO_INCREMENT=211915 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_card_info3
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_card_info3`;
CREATE TABLE `lxcs_card_info3` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `card_no` varchar(64) NOT NULL COMMENT '卡号',
  `account` varchar(64) NOT NULL COMMENT '账户',
  `id_no` varchar(25) NOT NULL COMMENT '证件号码',
  `custom_id` varchar(36) DEFAULT NULL COMMENT '客户编号',
  `custom_name` varchar(50) DEFAULT NULL COMMENT '客户名称',
  `balance_due` decimal(21,4) DEFAULT NULL COMMENT '账户欠款',
  `exchange_rate` decimal(10,4) NOT NULL COMMENT '汇率',
  `currency` varchar(10) DEFAULT NULL COMMENT '币种',
  `to_chinese_currency` decimal(21,4) DEFAULT NULL COMMENT '账户折合人民币',
  `open_account_date` varchar(20) NOT NULL COMMENT '开户日期',
  `credit` decimal(21,4) DEFAULT NULL COMMENT '额度',
  `bill_date` varchar(20) DEFAULT NULL COMMENT '账单日',
  `principal` decimal(21,4) DEFAULT NULL COMMENT '本金',
  `interest` decimal(21,4) DEFAULT NULL COMMENT '利息',
  `late_fee` decimal(21,4) DEFAULT NULL COMMENT '欠款滞纳金',
  `annual_fee` decimal(21,4) DEFAULT NULL COMMENT '年费',
  `transfinite_fee` decimal(21,4) DEFAULT NULL COMMENT '超限费',
  `total_fee` decimal(21,4) DEFAULT NULL COMMENT '费用总额',
  `other_fee` decimal(21,4) DEFAULT NULL COMMENT '其他费用',
  `late_time` varchar(20) DEFAULT NULL COMMENT '逾期时段',
  `late_max_time` varchar(20) DEFAULT NULL COMMENT '逾期最大时段',
  `repay_money_yes` decimal(21,4) DEFAULT NULL COMMENT '累计回收金额',
  `repay_money_wait` decimal(21,4) DEFAULT NULL COMMENT '最新欠款（待回收金额）',
  `repay_wait_date` varchar(20) DEFAULT NULL COMMENT '最新欠款日期',
  `latest_refund_date` varchar(20) DEFAULT NULL COMMENT '最后次还款日期（最新欠款日期）',
  `latest_refund_amount` decimal(21,4) DEFAULT NULL COMMENT '最后次还款金额',
  `card_description` varchar(100) DEFAULT NULL COMMENT '卡类描述',
  `comment1` varchar(1000) DEFAULT NULL COMMENT '备注1',
  `comment2` varchar(1000) DEFAULT NULL COMMENT '备注2',
  `comment3` varchar(1000) DEFAULT NULL COMMENT '备注3',
  `main_flag` varchar(4) DEFAULT NULL COMMENT '主副卡0副卡，1主卡',
  `joinin_date` varchar(20) DEFAULT NULL COMMENT '入催日期',
  `del_flag` char(1) DEFAULT NULL COMMENT '是否隐藏0不隐藏1隐藏',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `gf_sub_money` decimal(21,4) DEFAULT NULL COMMENT '广发减免金额',
  `gf_reply_start_date` varchar(10) DEFAULT NULL COMMENT '银行批复开始日期',
  `gf_reply_end_date` varchar(10) DEFAULT NULL COMMENT '银行批复结束日期',
  `gf_flow_flag` char(1) DEFAULT '1' COMMENT '广发流程标记（''1''：申请减免后导入的银行批复；''2''：先导入的银行批复）',
  `new_pay_date` varchar(20) DEFAULT NULL COMMENT '最新刷卡日期',
  `new_withdraw_date` varchar(20) DEFAULT NULL COMMENT '最后提现日期',
  `outsource_no` varchar(36) DEFAULT NULL COMMENT '外包序列号',
  `start_date` varchar(10) DEFAULT NULL COMMENT '委案开始日期',
  `closing_date` varchar(10) DEFAULT NULL COMMENT '委案结束日期',
  `remission_status` varchar(20) DEFAULT NULL COMMENT '减免状态',
  `recent_repay_date` varchar(20) DEFAULT NULL COMMENT '最近还款日期',
  `recent_repay_amount` decimal(21,4) DEFAULT NULL COMMENT '最近还款金额',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `IDX_LXCS_CARD_INFO_UNIQUE` (`custom_name`,`id_no`,`start_date`,`closing_date`,`card_no`,`account`,`currency`) USING BTREE,
  KEY `case_no` (`case_no`) USING BTREE COMMENT '案件编号索引',
  KEY `card_no` (`card_no`,`create_date`) USING BTREE COMMENT '卡号索引',
  KEY `outsource_no` (`outsource_no`) COMMENT '外包序列号索引',
  KEY `account` (`account`) COMMENT '账号索引'
) ENGINE=InnoDB AUTO_INCREMENT=226493 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_card_info4
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_card_info4`;
CREATE TABLE `lxcs_card_info4` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `card_no` varchar(64) NOT NULL COMMENT '卡号',
  `account` varchar(64) NOT NULL COMMENT '账户',
  `id_no` varchar(25) NOT NULL COMMENT '证件号码',
  `custom_id` varchar(36) DEFAULT NULL COMMENT '客户编号',
  `custom_name` varchar(50) DEFAULT NULL COMMENT '客户名称',
  `balance_due` decimal(21,4) DEFAULT NULL COMMENT '账户欠款',
  `exchange_rate` decimal(10,4) NOT NULL COMMENT '汇率',
  `currency` varchar(10) DEFAULT NULL COMMENT '币种',
  `to_chinese_currency` decimal(21,4) DEFAULT NULL COMMENT '账户折合人民币',
  `open_account_date` varchar(20) NOT NULL COMMENT '开户日期',
  `credit` decimal(21,4) DEFAULT NULL COMMENT '额度',
  `bill_date` varchar(20) DEFAULT NULL COMMENT '账单日',
  `principal` decimal(21,4) DEFAULT NULL COMMENT '本金',
  `interest` decimal(21,4) DEFAULT NULL COMMENT '利息',
  `late_fee` decimal(21,4) DEFAULT NULL COMMENT '欠款滞纳金',
  `annual_fee` decimal(21,4) DEFAULT NULL COMMENT '年费',
  `transfinite_fee` decimal(21,4) DEFAULT NULL COMMENT '超限费',
  `total_fee` decimal(21,4) DEFAULT NULL COMMENT '费用总额',
  `other_fee` decimal(21,4) DEFAULT NULL COMMENT '其他费用',
  `late_time` varchar(20) DEFAULT NULL COMMENT '逾期时段',
  `late_max_time` varchar(20) DEFAULT NULL COMMENT '逾期最大时段',
  `repay_money_yes` decimal(21,4) DEFAULT NULL COMMENT '累计回收金额',
  `repay_money_wait` decimal(21,4) DEFAULT NULL COMMENT '最新欠款（待回收金额）',
  `repay_wait_date` varchar(20) DEFAULT NULL COMMENT '最新欠款日期',
  `latest_refund_date` varchar(20) DEFAULT NULL COMMENT '最后次还款日期（最新欠款日期）',
  `latest_refund_amount` decimal(21,4) DEFAULT NULL COMMENT '最后次还款金额',
  `card_description` varchar(100) DEFAULT NULL COMMENT '卡类描述',
  `comment1` varchar(1000) DEFAULT NULL COMMENT '备注1',
  `comment2` varchar(1000) DEFAULT NULL COMMENT '备注2',
  `comment3` varchar(1000) DEFAULT NULL COMMENT '备注3',
  `main_flag` varchar(4) DEFAULT NULL COMMENT '主副卡0副卡，1主卡',
  `joinin_date` varchar(20) DEFAULT NULL COMMENT '入催日期',
  `del_flag` char(1) DEFAULT NULL COMMENT '是否隐藏0不隐藏1隐藏',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `gf_sub_money` decimal(21,4) DEFAULT NULL COMMENT '广发减免金额',
  `gf_reply_start_date` varchar(10) DEFAULT NULL COMMENT '银行批复开始日期',
  `gf_reply_end_date` varchar(10) DEFAULT NULL COMMENT '银行批复结束日期',
  `gf_flow_flag` char(1) DEFAULT '1' COMMENT '广发流程标记（''1''：申请减免后导入的银行批复；''2''：先导入的银行批复）',
  `new_pay_date` varchar(20) DEFAULT NULL COMMENT '最新刷卡日期',
  `new_withdraw_date` varchar(20) DEFAULT NULL COMMENT '最后提现日期',
  `outsource_no` varchar(36) DEFAULT NULL COMMENT '外包序列号',
  `start_date` varchar(10) DEFAULT NULL COMMENT '委案开始日期',
  `closing_date` varchar(10) DEFAULT NULL COMMENT '委案结束日期',
  `remission_status` varchar(20) DEFAULT NULL COMMENT '减免状态',
  `recent_repay_date` varchar(20) DEFAULT NULL COMMENT '最近还款日期',
  `recent_repay_amount` decimal(21,4) DEFAULT NULL COMMENT '最近还款金额',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `IDX_LXCS_CARD_INFO_UNIQUE` (`custom_name`,`id_no`,`start_date`,`closing_date`,`card_no`,`account`,`currency`) USING BTREE,
  KEY `outsource_no` (`outsource_no`) COMMENT '外包序列号索引',
  KEY `account` (`account`) COMMENT '账号索引',
  KEY `card_no` (`card_no`) COMMENT '卡号索引',
  KEY `case_no` (`case_no`) COMMENT '案件编号索引'
) ENGINE=InnoDB AUTO_INCREMENT=219670 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_card_info5
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_card_info5`;
CREATE TABLE `lxcs_card_info5` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `card_no` varchar(64) NOT NULL COMMENT '卡号',
  `account` varchar(64) NOT NULL COMMENT '账户',
  `id_no` varchar(25) NOT NULL COMMENT '证件号码',
  `custom_id` varchar(36) DEFAULT NULL COMMENT '客户编号',
  `custom_name` varchar(50) DEFAULT NULL COMMENT '客户名称',
  `balance_due` decimal(21,4) DEFAULT NULL COMMENT '账户欠款',
  `exchange_rate` decimal(10,4) NOT NULL COMMENT '汇率',
  `currency` varchar(10) DEFAULT NULL COMMENT '币种',
  `to_chinese_currency` decimal(21,4) DEFAULT NULL COMMENT '账户折合人民币',
  `open_account_date` varchar(20) NOT NULL COMMENT '开户日期',
  `credit` decimal(21,4) DEFAULT NULL COMMENT '额度',
  `bill_date` varchar(20) DEFAULT NULL COMMENT '账单日',
  `principal` decimal(21,4) DEFAULT NULL COMMENT '本金',
  `interest` decimal(21,4) DEFAULT NULL COMMENT '利息',
  `late_fee` decimal(21,4) DEFAULT NULL COMMENT '欠款滞纳金',
  `annual_fee` decimal(21,4) DEFAULT NULL COMMENT '年费',
  `transfinite_fee` decimal(21,4) DEFAULT NULL COMMENT '超限费',
  `total_fee` decimal(21,4) DEFAULT NULL COMMENT '费用总额',
  `other_fee` decimal(21,4) DEFAULT NULL COMMENT '其他费用',
  `late_time` varchar(20) DEFAULT NULL COMMENT '逾期时段',
  `late_max_time` varchar(20) DEFAULT NULL COMMENT '逾期最大时段',
  `repay_money_yes` decimal(21,4) DEFAULT NULL COMMENT '累计回收金额',
  `repay_money_wait` decimal(21,4) DEFAULT NULL COMMENT '最新欠款（待回收金额）',
  `repay_wait_date` varchar(20) DEFAULT NULL COMMENT '最新欠款日期',
  `latest_refund_date` varchar(20) DEFAULT NULL COMMENT '最后次还款日期（最新欠款日期）',
  `latest_refund_amount` decimal(21,4) DEFAULT NULL COMMENT '最后次还款金额',
  `card_description` varchar(100) DEFAULT NULL COMMENT '卡类描述',
  `comment1` varchar(1000) DEFAULT NULL COMMENT '备注1',
  `comment2` varchar(1000) DEFAULT NULL COMMENT '备注2',
  `comment3` varchar(1000) DEFAULT NULL COMMENT '备注3',
  `main_flag` varchar(4) DEFAULT NULL COMMENT '主副卡0副卡，1主卡',
  `joinin_date` varchar(20) DEFAULT NULL COMMENT '入催日期',
  `del_flag` char(1) DEFAULT NULL COMMENT '是否隐藏0不隐藏1隐藏',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `gf_sub_money` decimal(21,4) DEFAULT NULL COMMENT '广发减免金额',
  `gf_reply_start_date` varchar(10) DEFAULT NULL COMMENT '银行批复开始日期',
  `gf_reply_end_date` varchar(10) DEFAULT NULL COMMENT '银行批复结束日期',
  `gf_flow_flag` char(1) DEFAULT '1' COMMENT '广发流程标记（''1''：申请减免后导入的银行批复；''2''：先导入的银行批复）',
  `new_pay_date` varchar(20) DEFAULT NULL COMMENT '最新刷卡日期',
  `new_withdraw_date` varchar(20) DEFAULT NULL COMMENT '最后提现日期',
  `outsource_no` varchar(36) DEFAULT NULL COMMENT '外包序列号',
  `start_date` varchar(10) DEFAULT NULL COMMENT '委案开始日期',
  `closing_date` varchar(10) DEFAULT NULL COMMENT '委案结束日期',
  `remission_status` varchar(20) DEFAULT NULL COMMENT '减免状态',
  `recent_repay_date` varchar(20) DEFAULT NULL COMMENT '最近还款日期',
  `recent_repay_amount` decimal(21,4) DEFAULT NULL COMMENT '最近还款金额',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `custom_name` (`custom_name`,`id_no`,`start_date`,`closing_date`,`card_no`,`account`,`currency`),
  KEY `outsource_no` (`outsource_no`) COMMENT '外包序列号索引',
  KEY `account` (`account`) COMMENT '账号索引',
  KEY `card_no` (`card_no`) COMMENT '卡号索引',
  KEY `case_no` (`case_no`) COMMENT '案件编号索引'
) ENGINE=InnoDB AUTO_INCREMENT=220175 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_card_info6
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_card_info6`;
CREATE TABLE `lxcs_card_info6` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `card_no` varchar(64) NOT NULL COMMENT '卡号',
  `account` varchar(64) NOT NULL COMMENT '账户',
  `id_no` varchar(25) NOT NULL COMMENT '证件号码',
  `custom_id` varchar(36) DEFAULT NULL COMMENT '客户编号',
  `custom_name` varchar(50) DEFAULT NULL COMMENT '客户名称',
  `balance_due` decimal(21,4) DEFAULT NULL COMMENT '账户欠款',
  `exchange_rate` decimal(10,4) NOT NULL COMMENT '汇率',
  `currency` varchar(10) DEFAULT NULL COMMENT '币种',
  `to_chinese_currency` decimal(21,4) DEFAULT NULL COMMENT '账户折合人民币',
  `open_account_date` varchar(20) NOT NULL COMMENT '开户日期',
  `credit` decimal(21,4) DEFAULT NULL COMMENT '额度',
  `bill_date` varchar(20) DEFAULT NULL COMMENT '账单日',
  `principal` decimal(21,4) DEFAULT NULL COMMENT '本金',
  `interest` decimal(21,4) DEFAULT NULL COMMENT '利息',
  `late_fee` decimal(21,4) DEFAULT NULL COMMENT '欠款滞纳金',
  `annual_fee` decimal(21,4) DEFAULT NULL COMMENT '年费',
  `transfinite_fee` decimal(21,4) DEFAULT NULL COMMENT '超限费',
  `total_fee` decimal(21,4) DEFAULT NULL COMMENT '费用总额',
  `other_fee` decimal(21,4) DEFAULT NULL COMMENT '其他费用',
  `late_time` varchar(20) DEFAULT NULL COMMENT '逾期时段',
  `late_max_time` varchar(20) DEFAULT NULL COMMENT '逾期最大时段',
  `repay_money_yes` decimal(21,4) DEFAULT NULL COMMENT '累计回收金额',
  `repay_money_wait` decimal(21,4) DEFAULT NULL COMMENT '最新欠款（待回收金额）',
  `repay_wait_date` varchar(20) DEFAULT NULL COMMENT '最新欠款日期',
  `latest_refund_date` varchar(20) DEFAULT NULL COMMENT '最后次还款日期（最新欠款日期）',
  `latest_refund_amount` decimal(21,4) DEFAULT NULL COMMENT '最后次还款金额',
  `card_description` varchar(100) DEFAULT NULL COMMENT '卡类描述',
  `comment1` varchar(1000) DEFAULT NULL COMMENT '备注1',
  `comment2` varchar(1000) DEFAULT NULL COMMENT '备注2',
  `comment3` varchar(1000) DEFAULT NULL COMMENT '备注3',
  `main_flag` varchar(4) DEFAULT NULL COMMENT '主副卡0副卡，1主卡',
  `joinin_date` varchar(20) DEFAULT NULL COMMENT '入催日期',
  `del_flag` char(1) DEFAULT NULL COMMENT '是否隐藏0不隐藏1隐藏',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `gf_sub_money` decimal(21,4) DEFAULT NULL COMMENT '广发减免金额',
  `gf_reply_start_date` varchar(10) DEFAULT NULL COMMENT '银行批复开始日期',
  `gf_reply_end_date` varchar(10) DEFAULT NULL COMMENT '银行批复结束日期',
  `gf_flow_flag` char(1) DEFAULT '1' COMMENT '广发流程标记（''1''：申请减免后导入的银行批复；''2''：先导入的银行批复）',
  `new_pay_date` varchar(20) DEFAULT NULL COMMENT '最新刷卡日期',
  `new_withdraw_date` varchar(20) DEFAULT NULL COMMENT '最后提现日期',
  `outsource_no` varchar(36) DEFAULT NULL COMMENT '外包序列号',
  `start_date` varchar(10) DEFAULT NULL COMMENT '委案开始日期',
  `closing_date` varchar(10) DEFAULT NULL COMMENT '委案结束日期',
  `remission_status` varchar(20) DEFAULT NULL COMMENT '减免状态',
  `recent_repay_date` varchar(20) DEFAULT NULL COMMENT '最近还款日期',
  `recent_repay_amount` decimal(21,4) DEFAULT NULL COMMENT '最近还款金额',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `IDX_LXCS_CARD_INFO_UNIQUE` (`custom_name`,`id_no`,`start_date`,`closing_date`,`card_no`,`account`,`currency`) USING BTREE,
  KEY `outsource_no` (`outsource_no`) COMMENT '外包序列号索引',
  KEY `account` (`account`) COMMENT '账号索引',
  KEY `card_no` (`card_no`) COMMENT '卡号索引',
  KEY `case_no` (`case_no`) COMMENT '案件编号索引'
) ENGINE=InnoDB AUTO_INCREMENT=227324 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_card_info7
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_card_info7`;
CREATE TABLE `lxcs_card_info7` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `card_no` varchar(64) NOT NULL COMMENT '卡号',
  `account` varchar(64) NOT NULL COMMENT '账户',
  `id_no` varchar(25) NOT NULL COMMENT '证件号码',
  `custom_id` varchar(36) DEFAULT NULL COMMENT '客户编号',
  `custom_name` varchar(50) DEFAULT NULL COMMENT '客户名称',
  `balance_due` decimal(21,4) DEFAULT NULL COMMENT '账户欠款',
  `exchange_rate` decimal(10,4) NOT NULL COMMENT '汇率',
  `currency` varchar(10) DEFAULT NULL COMMENT '币种',
  `to_chinese_currency` decimal(21,4) DEFAULT NULL COMMENT '账户折合人民币',
  `open_account_date` varchar(20) NOT NULL COMMENT '开户日期',
  `credit` decimal(21,4) DEFAULT NULL COMMENT '额度',
  `bill_date` varchar(20) DEFAULT NULL COMMENT '账单日',
  `principal` decimal(21,4) DEFAULT NULL COMMENT '本金',
  `interest` decimal(21,4) DEFAULT NULL COMMENT '利息',
  `late_fee` decimal(21,4) DEFAULT NULL COMMENT '欠款滞纳金',
  `annual_fee` decimal(21,4) DEFAULT NULL COMMENT '年费',
  `transfinite_fee` decimal(21,4) DEFAULT NULL COMMENT '超限费',
  `total_fee` decimal(21,4) DEFAULT NULL COMMENT '费用总额',
  `other_fee` decimal(21,4) DEFAULT NULL COMMENT '其他费用',
  `late_time` varchar(20) DEFAULT NULL COMMENT '逾期时段',
  `late_max_time` varchar(20) DEFAULT NULL COMMENT '逾期最大时段',
  `repay_money_yes` decimal(21,4) DEFAULT NULL COMMENT '累计回收金额',
  `repay_money_wait` decimal(21,4) DEFAULT NULL COMMENT '最新欠款（待回收金额）',
  `repay_wait_date` varchar(20) DEFAULT NULL COMMENT '最新欠款日期',
  `latest_refund_date` varchar(20) DEFAULT NULL COMMENT '最后次还款日期（最新欠款日期）',
  `latest_refund_amount` decimal(21,4) DEFAULT NULL COMMENT '最后次还款金额',
  `card_description` varchar(100) DEFAULT NULL COMMENT '卡类描述',
  `comment1` varchar(1000) DEFAULT NULL COMMENT '备注1',
  `comment2` varchar(1000) DEFAULT NULL COMMENT '备注2',
  `comment3` varchar(1000) DEFAULT NULL COMMENT '备注3',
  `main_flag` varchar(4) DEFAULT NULL COMMENT '主副卡0副卡，1主卡',
  `joinin_date` varchar(20) DEFAULT NULL COMMENT '入催日期',
  `del_flag` char(1) DEFAULT NULL COMMENT '是否隐藏0不隐藏1隐藏',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `gf_sub_money` decimal(21,4) DEFAULT NULL COMMENT '广发减免金额',
  `gf_reply_start_date` varchar(10) DEFAULT NULL COMMENT '银行批复开始日期',
  `gf_reply_end_date` varchar(10) DEFAULT NULL COMMENT '银行批复结束日期',
  `gf_flow_flag` char(1) DEFAULT '1' COMMENT '广发流程标记（''1''：申请减免后导入的银行批复；''2''：先导入的银行批复）',
  `new_pay_date` varchar(20) DEFAULT NULL COMMENT '最新刷卡日期',
  `new_withdraw_date` varchar(20) DEFAULT NULL COMMENT '最后提现日期',
  `outsource_no` varchar(36) DEFAULT NULL COMMENT '外包序列号',
  `start_date` varchar(10) DEFAULT NULL COMMENT '委案开始日期',
  `closing_date` varchar(10) DEFAULT NULL COMMENT '委案结束日期',
  `remission_status` varchar(20) DEFAULT NULL COMMENT '减免状态',
  `recent_repay_date` varchar(20) DEFAULT NULL COMMENT '最近还款日期',
  `recent_repay_amount` decimal(21,4) DEFAULT NULL COMMENT '最近还款金额',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `IDX_LXCS_CARD_INFO_UNIQUE` (`custom_name`,`id_no`,`start_date`,`closing_date`,`card_no`,`account`,`currency`) USING BTREE,
  KEY `outsource_no` (`outsource_no`) COMMENT '外包序列号索引',
  KEY `account` (`account`) COMMENT '账号索引',
  KEY `card_no` (`card_no`) COMMENT '卡号索引',
  KEY `case_no` (`case_no`) COMMENT '案件编号索引'
) ENGINE=InnoDB AUTO_INCREMENT=228814 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_card_info8
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_card_info8`;
CREATE TABLE `lxcs_card_info8` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `card_no` varchar(64) NOT NULL COMMENT '卡号',
  `account` varchar(64) NOT NULL COMMENT '账户',
  `id_no` varchar(25) NOT NULL COMMENT '证件号码',
  `custom_id` varchar(36) DEFAULT NULL COMMENT '客户编号',
  `custom_name` varchar(50) DEFAULT NULL COMMENT '客户名称',
  `balance_due` decimal(21,4) DEFAULT NULL COMMENT '账户欠款',
  `exchange_rate` decimal(10,4) NOT NULL COMMENT '汇率',
  `currency` varchar(10) DEFAULT NULL COMMENT '币种',
  `to_chinese_currency` decimal(21,4) DEFAULT NULL COMMENT '账户折合人民币',
  `open_account_date` varchar(20) NOT NULL COMMENT '开户日期',
  `credit` decimal(21,4) DEFAULT NULL COMMENT '额度',
  `bill_date` varchar(20) DEFAULT NULL COMMENT '账单日',
  `principal` decimal(21,4) DEFAULT NULL COMMENT '本金',
  `interest` decimal(21,4) DEFAULT NULL COMMENT '利息',
  `late_fee` decimal(21,4) DEFAULT NULL COMMENT '欠款滞纳金',
  `annual_fee` decimal(21,4) DEFAULT NULL COMMENT '年费',
  `transfinite_fee` decimal(21,4) DEFAULT NULL COMMENT '超限费',
  `total_fee` decimal(21,4) DEFAULT NULL COMMENT '费用总额',
  `other_fee` decimal(21,4) DEFAULT NULL COMMENT '其他费用',
  `late_time` varchar(20) DEFAULT NULL COMMENT '逾期时段',
  `late_max_time` varchar(20) DEFAULT NULL COMMENT '逾期最大时段',
  `repay_money_yes` decimal(21,4) DEFAULT NULL COMMENT '累计回收金额',
  `repay_money_wait` decimal(21,4) DEFAULT NULL COMMENT '最新欠款（待回收金额）',
  `repay_wait_date` varchar(20) DEFAULT NULL COMMENT '最新欠款日期',
  `latest_refund_date` varchar(20) DEFAULT NULL COMMENT '最后次还款日期（最新欠款日期）',
  `latest_refund_amount` decimal(21,4) DEFAULT NULL COMMENT '最后次还款金额',
  `card_description` varchar(100) DEFAULT NULL COMMENT '卡类描述',
  `comment1` varchar(1000) DEFAULT NULL COMMENT '备注1',
  `comment2` varchar(1000) DEFAULT NULL COMMENT '备注2',
  `comment3` varchar(1000) DEFAULT NULL COMMENT '备注3',
  `main_flag` varchar(4) DEFAULT NULL COMMENT '主副卡0副卡，1主卡',
  `joinin_date` varchar(20) DEFAULT NULL COMMENT '入催日期',
  `del_flag` char(1) DEFAULT NULL COMMENT '是否隐藏0不隐藏1隐藏',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `gf_sub_money` decimal(21,4) DEFAULT NULL COMMENT '广发减免金额',
  `gf_reply_start_date` varchar(10) DEFAULT NULL COMMENT '银行批复开始日期',
  `gf_reply_end_date` varchar(10) DEFAULT NULL COMMENT '银行批复结束日期',
  `gf_flow_flag` char(1) DEFAULT '1' COMMENT '广发流程标记（''1''：申请减免后导入的银行批复；''2''：先导入的银行批复）',
  `new_pay_date` varchar(20) DEFAULT NULL COMMENT '最新刷卡日期',
  `new_withdraw_date` varchar(20) DEFAULT NULL COMMENT '最后提现日期',
  `outsource_no` varchar(36) DEFAULT NULL COMMENT '外包序列号',
  `start_date` varchar(10) DEFAULT NULL COMMENT '委案开始日期',
  `closing_date` varchar(10) DEFAULT NULL COMMENT '委案结束日期',
  `remission_status` varchar(20) DEFAULT NULL COMMENT '减免状态',
  `recent_repay_date` varchar(20) DEFAULT NULL COMMENT '最近还款日期',
  `recent_repay_amount` decimal(21,4) DEFAULT NULL COMMENT '最近还款金额',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `custom_name` (`custom_name`,`id_no`,`start_date`,`closing_date`,`card_no`,`account`,`currency`),
  KEY `outsource_no` (`outsource_no`) COMMENT '外包序列号索引',
  KEY `account` (`account`) COMMENT '账号索引',
  KEY `card_no` (`card_no`) COMMENT '卡号索引',
  KEY `case_no` (`case_no`) COMMENT '案件编号索引'
) ENGINE=InnoDB AUTO_INCREMENT=548850 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_card_info9
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_card_info9`;
CREATE TABLE `lxcs_card_info9` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `card_no` varchar(64) NOT NULL COMMENT '卡号',
  `account` varchar(64) NOT NULL COMMENT '账户',
  `id_no` varchar(25) NOT NULL COMMENT '证件号码',
  `custom_id` varchar(36) DEFAULT NULL COMMENT '客户编号',
  `custom_name` varchar(50) DEFAULT NULL COMMENT '客户名称',
  `balance_due` decimal(21,4) DEFAULT NULL COMMENT '账户欠款',
  `exchange_rate` decimal(10,4) NOT NULL COMMENT '汇率',
  `currency` varchar(10) DEFAULT NULL COMMENT '币种',
  `to_chinese_currency` decimal(21,4) DEFAULT NULL COMMENT '账户折合人民币',
  `open_account_date` varchar(20) NOT NULL COMMENT '开户日期',
  `credit` decimal(21,4) DEFAULT NULL COMMENT '额度',
  `bill_date` varchar(20) DEFAULT NULL COMMENT '账单日',
  `principal` decimal(21,4) DEFAULT NULL COMMENT '本金',
  `interest` decimal(21,4) DEFAULT NULL COMMENT '利息',
  `late_fee` decimal(21,4) DEFAULT NULL COMMENT '欠款滞纳金',
  `annual_fee` decimal(21,4) DEFAULT NULL COMMENT '年费',
  `transfinite_fee` decimal(21,4) DEFAULT NULL COMMENT '超限费',
  `total_fee` decimal(21,4) DEFAULT NULL COMMENT '费用总额',
  `other_fee` decimal(21,4) DEFAULT NULL COMMENT '其他费用',
  `late_time` varchar(20) DEFAULT NULL COMMENT '逾期时段',
  `late_max_time` varchar(20) DEFAULT NULL COMMENT '逾期最大时段',
  `repay_money_yes` decimal(21,4) DEFAULT NULL COMMENT '累计回收金额',
  `repay_money_wait` decimal(21,4) DEFAULT NULL COMMENT '最新欠款（待回收金额）',
  `repay_wait_date` varchar(20) DEFAULT NULL COMMENT '最新欠款日期',
  `latest_refund_date` varchar(20) DEFAULT NULL COMMENT '最后次还款日期（最新欠款日期）',
  `latest_refund_amount` decimal(21,4) DEFAULT NULL COMMENT '最后次还款金额',
  `card_description` varchar(100) DEFAULT NULL COMMENT '卡类描述',
  `comment1` varchar(1000) DEFAULT NULL COMMENT '备注1',
  `comment2` varchar(1000) DEFAULT NULL COMMENT '备注2',
  `comment3` varchar(1000) DEFAULT NULL COMMENT '备注3',
  `main_flag` varchar(4) DEFAULT NULL COMMENT '主副卡0副卡，1主卡',
  `joinin_date` varchar(20) DEFAULT NULL COMMENT '入催日期',
  `del_flag` char(1) DEFAULT NULL COMMENT '是否隐藏0不隐藏1隐藏',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `gf_sub_money` decimal(21,4) DEFAULT NULL COMMENT '广发减免金额',
  `gf_reply_start_date` varchar(10) DEFAULT NULL COMMENT '银行批复开始日期',
  `gf_reply_end_date` varchar(10) DEFAULT NULL COMMENT '银行批复结束日期',
  `gf_flow_flag` char(1) DEFAULT '1' COMMENT '广发流程标记（''1''：申请减免后导入的银行批复；''2''：先导入的银行批复）',
  `new_pay_date` varchar(20) DEFAULT NULL COMMENT '最新刷卡日期',
  `new_withdraw_date` varchar(20) DEFAULT NULL COMMENT '最后提现日期',
  `outsource_no` varchar(36) DEFAULT NULL COMMENT '外包序列号',
  `start_date` varchar(10) DEFAULT NULL COMMENT '委案开始日期',
  `closing_date` varchar(10) DEFAULT NULL COMMENT '委案结束日期',
  `remission_status` varchar(20) DEFAULT NULL COMMENT '减免状态',
  `recent_repay_date` varchar(20) DEFAULT NULL COMMENT '最近还款日期',
  `recent_repay_amount` decimal(21,4) DEFAULT NULL COMMENT '最近还款金额',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `custom_name` (`custom_name`,`id_no`,`start_date`,`closing_date`,`card_no`,`account`,`currency`),
  KEY `outsource_no` (`outsource_no`) COMMENT '外包序列号索引',
  KEY `account` (`account`) COMMENT '账号索引',
  KEY `card_no` (`card_no`) COMMENT '卡号索引',
  KEY `case_no` (`case_no`) COMMENT '案件编号索引'
) ENGINE=InnoDB AUTO_INCREMENT=237398 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_card_notes
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_card_notes`;
CREATE TABLE `lxcs_card_notes` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `customer_id` varchar(36) DEFAULT NULL COMMENT '客户ID',
  `customer_name` varchar(100) DEFAULT NULL,
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `start_date` varchar(15) DEFAULT NULL COMMENT '委案开始日期',
  `card_no` varchar(64) DEFAULT NULL COMMENT '卡号',
  `account` varchar(64) DEFAULT NULL COMMENT '账户',
  `id_no` varchar(25) DEFAULT NULL COMMENT '证件号码',
  `note_name` varchar(1000) DEFAULT NULL COMMENT '备注名称',
  `notes` varchar(8000) DEFAULT NULL COMMENT '备注内容',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `id_no` (`id_no`),
  KEY `case_no` (`case_no`),
  KEY `card_no` (`card_no`),
  KEY `account` (`account`)
) ENGINE=InnoDB AUTO_INCREMENT=27948048 DEFAULT CHARSET=utf8 COMMENT='备注信息表';

-- ----------------------------
-- Table structure for lxcs_case
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_case`;
CREATE TABLE `lxcs_case` (
  `id` varchar(36) NOT NULL,
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `custom_id` varchar(36) NOT NULL COMMENT '客户id，关联lxcs_custom表主键',
  `case_type` char(1) DEFAULT NULL COMMENT '案件类型，0个贷，1信用卡',
  `name` varchar(12) DEFAULT NULL COMMENT '债务人姓名',
  `province` varchar(10) DEFAULT NULL COMMENT '省份',
  `city` varchar(10) DEFAULT NULL COMMENT '城市',
  `handle_time` varchar(10) DEFAULT NULL COMMENT '手次，阿拉伯数字+手',
  `distribution` varchar(10) DEFAULT NULL COMMENT '销售渠道',
  `sales_code` varchar(12) DEFAULT NULL COMMENT '推广人员代码',
  `email_address` varchar(50) DEFAULT NULL COMMENT '电子邮箱',
  `sexual` char(2) DEFAULT NULL COMMENT '性别 1男 0女',
  `status` varchar(5) DEFAULT NULL COMMENT '经理操作的案件状态，刚到任务Raw，未分配任务New，新任务Fresh,Closed1案件未到期退回，Closed2银行要求退案的，Pay Off还清退案，指欠款全部还清， Closed4 到期部分回收成功，指案子到期只收回部分金额，Closed5到期不成功，指案子到期未收回一分钱',
  `id_no` varchar(25) NOT NULL COMMENT '证件号码',
  `title` varchar(50) DEFAULT NULL COMMENT '职务',
  `start_date` varchar(20) DEFAULT NULL COMMENT '委案日期',
  `closing_date` varchar(20) DEFAULT NULL COMMENT '到期日期',
  `branch_company` varchar(30) DEFAULT NULL COMMENT '分公司',
  `batch` varchar(50) DEFAULT NULL COMMENT '批次批注',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '所分配的分公司id',
  `department_p_cd` varchar(40) DEFAULT NULL COMMENT '所分配的部门id',
  `department_cd` varchar(40) DEFAULT NULL COMMENT '所分配的组或者地区c_m_department表的department_cd',
  `user_id` varchar(36) DEFAULT NULL COMMENT '所分配的用户id',
  `user_name` varchar(20) DEFAULT NULL COMMENT '用户名',
  `distribution_date` varchar(20) DEFAULT NULL COMMENT '分配时间',
  `comment1` varchar(1000) DEFAULT NULL COMMENT '备注1',
  `comment2` varchar(1000) DEFAULT NULL COMMENT '备注2',
  `comment3` varchar(1000) DEFAULT NULL COMMENT '备注3',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `latest_refund_date` varchar(20) DEFAULT NULL COMMENT '最后次还款日期（最新欠款日期）',
  `principal` decimal(21,4) DEFAULT NULL COMMENT '本金',
  `repay_allmoney_yes` decimal(21,4) DEFAULT NULL COMMENT '累计回收总金额',
  `repay_allmoney_wait` decimal(21,4) DEFAULT NULL COMMENT '最新欠款（待回收总金额）',
  `case_money` decimal(21,4) DEFAULT NULL COMMENT '委托金额',
  `interest` decimal(21,4) DEFAULT NULL COMMENT '银行利息',
  `promise_repay_money` decimal(21,4) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `progress_add_time` varchar(20) DEFAULT NULL COMMENT '催记添加时间（每次都更新）',
  `recent_repay_date` varchar(20) DEFAULT NULL COMMENT '最新欠款日期',
  `recent_repay_amount` decimal(21,4) DEFAULT NULL COMMENT '最新欠款金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_case_date_import_temp
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_case_date_import_temp`;
CREATE TABLE `lxcs_case_date_import_temp` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `row_no` varchar(100) DEFAULT NULL,
  `id_no` varchar(25) DEFAULT NULL COMMENT '证件号码',
  `account` varchar(64) DEFAULT NULL COMMENT '账户',
  `card_no` varchar(64) DEFAULT NULL COMMENT '卡号',
  `customer_name` varchar(200) DEFAULT NULL COMMENT '客户',
  `start_date` varchar(20) DEFAULT NULL COMMENT '委案时间',
  `status` varchar(10) DEFAULT NULL COMMENT '退案状态',
  `error` varchar(2) DEFAULT NULL,
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='备注信息表';

-- ----------------------------
-- Table structure for lxcs_case_log
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_case_log`;
CREATE TABLE `lxcs_case_log` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `case_no` varchar(50) DEFAULT NULL COMMENT '案件编号',
  `ctrl_flag` varchar(20) DEFAULT NULL COMMENT '操作标识：VISIT:外访  CASE_FRESH:业务流转',
  `status` varchar(20) DEFAULT NULL COMMENT '状态',
  `current_department_top_cd` varchar(36) DEFAULT NULL COMMENT '当前分公司编号',
  `current_department_top_name` varchar(100) DEFAULT NULL COMMENT '当前分公司',
  `current_user_id` varchar(36) DEFAULT NULL COMMENT '当前用户编号',
  `current_user_name` varchar(100) DEFAULT NULL COMMENT '当前用户',
  `note` varchar(255) DEFAULT NULL COMMENT '操作说明',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识 0启用、1删除',
  `create_user_cd` varchar(36) DEFAULT NULL COMMENT '创建者编号',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建者时间',
  `update_user_cd` varchar(36) DEFAULT NULL,
  `update_date` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=645169 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_case_seek
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_case_seek`;
CREATE TABLE `lxcs_case_seek` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL COMMENT '主键(UUID)',
  `case_id` varchar(36) NOT NULL COMMENT '案件ID',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `custom_id` varchar(36) DEFAULT NULL COMMENT '客户ID',
  `customer_name` varchar(20) DEFAULT NULL COMMENT '客户名称',
  `case_type` char(1) DEFAULT NULL COMMENT '案件类型，0个贷，1信用卡',
  `case_borrower_name` varchar(100) DEFAULT NULL COMMENT '债务人姓名',
  `case_province` varchar(10) DEFAULT NULL COMMENT '省份',
  `case_city` varchar(10) DEFAULT NULL COMMENT '城市',
  `case_handle_time` varchar(10) DEFAULT NULL COMMENT '手次，阿拉伯数字+手',
  `case_distribution` varchar(10) DEFAULT NULL COMMENT '销售渠道',
  `case_status` varchar(10) DEFAULT NULL COMMENT '经理操作的案件状态，刚到任务Raw，未分配任务New，新任务Fresh,Closed1案件未到期退回，Closed2银行要求退案的，Pay Off还清退案，指欠款全部还清， Closed4 到期部分回收成功，指案子到期只收回部分金额，Closed5到期不成功，指案子到期未收回一分钱',
  `case_id_no` varchar(21) DEFAULT NULL COMMENT '证件号码',
  `case_card_no` varchar(30) DEFAULT NULL COMMENT '卡号',
  `case_account` varchar(30) DEFAULT NULL COMMENT '账号',
  `case_start_date` varchar(20) DEFAULT NULL COMMENT '委案日期',
  `case_closing_date` varchar(20) DEFAULT NULL COMMENT '到期日期',
  `case_branch_company` varchar(30) DEFAULT NULL COMMENT '分公司',
  `case_batch_time` varchar(30) DEFAULT NULL COMMENT '案件批次',
  `case_batch` varchar(50) DEFAULT NULL COMMENT '批次批注',
  `case_department_top_cd` varchar(40) DEFAULT NULL COMMENT '所分配的分公司id',
  `case_department_top_name` varchar(40) DEFAULT NULL COMMENT '分公司名称',
  `case_department_p_cd` varchar(40) DEFAULT NULL COMMENT '所分配的部门id',
  `case_department_cd` varchar(40) DEFAULT NULL COMMENT '所分配的组或者地区c_m_department表的department_cd',
  `case_user_id` varchar(36) DEFAULT NULL COMMENT '所分配的用户id',
  `case_user_name` varchar(20) DEFAULT NULL COMMENT '法务员',
  `case_distribution_date` varchar(20) DEFAULT NULL COMMENT '分配时间',
  `case_comment1` varchar(1000) DEFAULT NULL COMMENT '备注1',
  `case_comment2` varchar(1000) DEFAULT NULL COMMENT '备注2',
  `case_comment3` varchar(1000) DEFAULT NULL COMMENT '备注3',
  `case_latest_refund_date` varchar(20) DEFAULT NULL COMMENT '最后次还款日期（最新欠款日期）',
  `case_repay_allmoney_yes` decimal(10,2) DEFAULT NULL COMMENT '累计回收总金额',
  `case_repay_allmoney_wait` decimal(10,2) DEFAULT NULL COMMENT '最新欠款（待回收总金额）',
  `case_money` decimal(10,2) DEFAULT NULL COMMENT '委托金额',
  `case_interest` decimal(10,2) DEFAULT NULL COMMENT '银行利息',
  `case_score` double(10,5) unsigned DEFAULT NULL COMMENT '案件分数',
  `case_hierarchy` char(1) DEFAULT NULL COMMENT '案件分层',
  `status` varchar(10) NOT NULL COMMENT '搜索状态(未分配任务:new,新任务:fresh,处理中:processing,未成功退回:return1,成功退回:return2,查找无信息:return3)',
  `star` int(2) NOT NULL COMMENT '星级(5:5星,4:4星,默认3星)',
  `type` varchar(20) DEFAULT NULL COMMENT '搜索类型(默认:搜索协助)',
  `seek_ascription` char(1) DEFAULT 'h' COMMENT '搜索归属地：（''h''：总部，''l''：本地）',
  `seek_user_id` varchar(36) DEFAULT NULL COMMENT '搜索员ID',
  `seek_user_name` varchar(30) DEFAULT NULL COMMENT '搜索员用户名',
  `processing_time` varchar(15) DEFAULT NULL COMMENT '触达时间',
  `notes` varchar(500) DEFAULT NULL COMMENT '说明(法务员搜索协助时填写)',
  `allot_user_id` varchar(36) DEFAULT NULL COMMENT '分配者用户ID',
  `allot_time` varchar(20) DEFAULT NULL COMMENT '分配时间',
  `return_auto` int(1) DEFAULT NULL COMMENT '是否自动退案(1:是,0:否)',
  `create_user_id` varchar(36) DEFAULT NULL COMMENT '搜索创建人ID',
  `create_time` varchar(20) DEFAULT NULL COMMENT '搜索创建时间',
  `update_user_id` varchar(36) DEFAULT NULL COMMENT '更新人ID',
  `update_time` varchar(20) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`),
  KEY `id_2` (`id`),
  KEY `custom_id` (`custom_id`),
  KEY `case_department_top_cd` (`case_department_top_cd`),
  KEY `status` (`status`),
  KEY `seek_user_id` (`seek_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8 COMMENT='案件搜索表';

-- ----------------------------
-- Table structure for lxcs_cdno_cardinfo_temp
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_cdno_cardinfo_temp`;
CREATE TABLE `lxcs_cdno_cardinfo_temp` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `id_no` varchar(25) NOT NULL COMMENT '身份证号',
  `card_no` varchar(64) NOT NULL COMMENT '银行卡号',
  `account` varchar(64) NOT NULL COMMENT '账号',
  `outsource_no` varchar(32) DEFAULT NULL COMMENT '外包序列号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_no` (`id_no`,`card_no`,`account`,`outsource_no`),
  KEY `cardno` (`card_no`),
  KEY `account` (`account`),
  KEY `outsource_no` (`outsource_no`)
) ENGINE=InnoDB AUTO_INCREMENT=1425106 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_character_level
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_character_level`;
CREATE TABLE `lxcs_character_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `level_id` varchar(36) NOT NULL COMMENT '结果id',
  `type` varchar(2) NOT NULL COMMENT '问题类型',
  `level` int(2) NOT NULL COMMENT '类型分级 0-9',
  `score_start` int(3) NOT NULL COMMENT '类型分级分数范围开始',
  `score_end` int(3) NOT NULL COMMENT '类型分级分数范围结束',
  `result` varchar(500) NOT NULL COMMENT '类型分级结果',
  `status` varchar(2) DEFAULT '0' COMMENT '状态（0：启用，1：禁用）',
  `sort_key` int(3) DEFAULT NULL COMMENT '排序',
  `del_flag` varchar(1) NOT NULL DEFAULT '0' COMMENT '删除标识  0未删除，1已删除',
  `create_group_cd` varchar(36) NOT NULL COMMENT '初期新建部门编号',
  `create_user_cd` varchar(36) NOT NULL COMMENT '初期新建者',
  `create_date` varchar(20) NOT NULL COMMENT '初期新建日',
  `update_group_cd` varchar(36) DEFAULT NULL COMMENT '最终更新部门编号',
  `update_user_cd` varchar(36) DEFAULT NULL COMMENT '最终更新者',
  `update_date` varchar(20) DEFAULT NULL COMMENT '最终更新日',
  PRIMARY KEY (`id`),
  KEY `type` (`type`) USING BTREE COMMENT '问题类型'
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8 COMMENT='性格测试用户评级';

-- ----------------------------
-- Table structure for lxcs_character_question
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_character_question`;
CREATE TABLE `lxcs_character_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `question_id` varchar(36) NOT NULL COMMENT '问题id',
  `question` varchar(255) NOT NULL COMMENT '问题',
  `type` varchar(2) DEFAULT NULL COMMENT '问题类型',
  `status` varchar(2) DEFAULT '0' COMMENT '状态（0：启用，1：禁用）',
  `sort_key` int(3) DEFAULT NULL COMMENT '排序',
  `del_flag` varchar(1) NOT NULL DEFAULT '0' COMMENT '删除标识  0未删除，1已删除',
  `create_group_cd` varchar(36) NOT NULL COMMENT '初期新建部门编号',
  `create_user_cd` varchar(36) NOT NULL COMMENT '初期新建者',
  `create_date` varchar(20) NOT NULL COMMENT '初期新建日',
  `update_group_cd` varchar(36) DEFAULT NULL COMMENT '最终更新部门编号',
  `update_user_cd` varchar(36) DEFAULT NULL COMMENT '最终更新者',
  `update_date` varchar(20) DEFAULT NULL COMMENT '最终更新日',
  PRIMARY KEY (`id`),
  UNIQUE KEY `question_id` (`question_id`) USING BTREE COMMENT '问题主键索引（唯一）',
  KEY `type` (`type`) USING BTREE COMMENT '问题类型索引（非唯一）'
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8 COMMENT='性格测试问题表';

-- ----------------------------
-- Table structure for lxcs_character_question_answer
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_character_question_answer`;
CREATE TABLE `lxcs_character_question_answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `question_id` varchar(36) NOT NULL COMMENT '问题id（关联性格测试问题表）',
  `answer_id` varchar(36) NOT NULL COMMENT '问题类型（冗余）',
  `answer` varchar(255) NOT NULL COMMENT '问题结果',
  `type` varchar(2) NOT NULL,
  `score` int(2) DEFAULT '0' COMMENT '问题得分',
  `choice` varchar(1) NOT NULL COMMENT '问题选项（A，B，C）',
  `status` varchar(2) DEFAULT '0' COMMENT '状态（0：启用，1：禁用）',
  `sort_key` int(3) DEFAULT NULL COMMENT '排序',
  `del_flag` varchar(1) NOT NULL DEFAULT '0' COMMENT '删除标识  0未删除，1已删除',
  `create_group_cd` varchar(36) NOT NULL COMMENT '初期新建部门编号',
  `create_user_cd` varchar(36) NOT NULL COMMENT '初期新建者',
  `create_date` varchar(20) NOT NULL COMMENT '初期新建日',
  `update_group_cd` varchar(36) DEFAULT NULL COMMENT '最终更新部门编号',
  `update_user_cd` varchar(36) DEFAULT NULL COMMENT '最终更新者',
  `update_date` varchar(20) DEFAULT NULL COMMENT '最终更新日',
  PRIMARY KEY (`id`),
  UNIQUE KEY `answer_id` (`answer_id`) USING BTREE COMMENT '答案id（唯一）',
  KEY `question_id` (`question_id`) USING BTREE COMMENT '问题id（非唯一）',
  KEY `type` (`type`) USING BTREE COMMENT '问题类型（冗余，非唯一）'
) ENGINE=InnoDB AUTO_INCREMENT=562 DEFAULT CHARSET=utf8 COMMENT='性格测试问题答案表';

-- ----------------------------
-- Table structure for lxcs_character_user_answer
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_character_user_answer`;
CREATE TABLE `lxcs_character_user_answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(36) NOT NULL COMMENT '用户id',
  `question_id` varchar(36) NOT NULL COMMENT '问题id',
  `answer_id` varchar(36) NOT NULL COMMENT '答案id',
  `choice` varchar(2) NOT NULL COMMENT '结果选项 A B C',
  `status` varchar(2) DEFAULT '0' COMMENT '状态（0：启用，1：禁用）',
  `sort_key` int(3) DEFAULT NULL COMMENT '排序',
  `del_flag` varchar(1) NOT NULL DEFAULT '0' COMMENT '删除标识  0未删除，1已删除',
  `create_group_cd` varchar(36) NOT NULL COMMENT '初期新建部门编号',
  `create_user_cd` varchar(36) NOT NULL COMMENT '初期新建者',
  `create_date` varchar(20) NOT NULL COMMENT '初期新建日',
  `update_group_cd` varchar(36) DEFAULT NULL COMMENT '最终更新部门编号',
  `update_user_cd` varchar(36) DEFAULT NULL COMMENT '最终更新者',
  `update_date` varchar(20) DEFAULT NULL COMMENT '最终更新日',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`) USING BTREE COMMENT '答题用户id索引（非唯一）'
) ENGINE=InnoDB AUTO_INCREMENT=2993 DEFAULT CHARSET=utf8 COMMENT='性格测试用户答题结果';

-- ----------------------------
-- Table structure for lxcs_character_user_level
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_character_user_level`;
CREATE TABLE `lxcs_character_user_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` varchar(36) NOT NULL COMMENT '用户id',
  `type` varchar(2) DEFAULT NULL COMMENT '问题类型',
  `level` int(2) DEFAULT NULL COMMENT '问题评级',
  `degree` int(3) DEFAULT NULL COMMENT '问题同类型总得分',
  `result` varchar(500) DEFAULT NULL COMMENT '类型分级结果',
  `status` varchar(2) DEFAULT '0' COMMENT '状态（0：启用，1：禁用）',
  `sort_key` int(3) DEFAULT NULL COMMENT '排序',
  `del_flag` varchar(1) NOT NULL DEFAULT '0' COMMENT '删除标识  0未删除，1已删除',
  `create_group_cd` varchar(36) NOT NULL COMMENT '初期新建部门编号',
  `create_user_cd` varchar(36) NOT NULL COMMENT '初期新建者',
  `create_date` varchar(20) NOT NULL COMMENT '初期新建日',
  `update_group_cd` varchar(36) DEFAULT NULL COMMENT '最终更新部门编号',
  `update_user_cd` varchar(36) DEFAULT NULL COMMENT '最终更新者',
  `update_date` varchar(20) DEFAULT NULL COMMENT '最终更新日',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8 COMMENT='性格测试用户评级结果';

-- ----------------------------
-- Table structure for lxcs_commision_handletime_map
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_commision_handletime_map`;
CREATE TABLE `lxcs_commision_handletime_map` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `custom_name` varchar(50) NOT NULL DEFAULT '',
  `yongjin_shouci` varchar(50) NOT NULL DEFAULT '',
  `cuishou_shouci` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `custom_name` (`custom_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='佣金手次与催收系统手次的映射关系';

-- ----------------------------
-- Table structure for lxcs_common_case_config
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_common_case_config`;
CREATE TABLE `lxcs_common_case_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `department_top_cd` varchar(40) NOT NULL COMMENT '部门编号',
  `department_top_name` varchar(100) DEFAULT NULL COMMENT '部门名称',
  `show` int(2) NOT NULL COMMENT '是否显示共案（0：不显示，1：显示)',
  `nationwide_show` int(2) DEFAULT '1' COMMENT '是否显示全国共案（0：不显示，1：显示)',
  `recording_show` int(2) DEFAULT '1' COMMENT '是否显示录音下载（0：不显示，1：显示)',
  `progress_show` int(2) NOT NULL COMMENT '是否显示隐藏催记（0：显示，1：不显示)',
  `return_show` int(2) NOT NULL DEFAULT '1' COMMENT '是否显示退案（0：不显示，1：显示）',
  `all_progress_show` int(2) DEFAULT '0' COMMENT '是否显示查看全部进展（0：不显示，1：显示)',
  `message_show` int(2) DEFAULT '0' COMMENT '是否显示站内信（0：不显示，1：显示)',
  `sms_show` int(2) NOT NULL DEFAULT '1' COMMENT '是否显示短信平台（0：不显示，1：显示)',
  `advance_show` int(2) DEFAULT '1' COMMENT '是否显示垫付（0：否；1：是）',
  `aidance_show` int(2) DEFAULT '1' COMMENT '是否显示协催（0：否；1：是）',
  `launch_aidance` int(2) DEFAULT '1' COMMENT '是否允许发起协催（0：否；1：是）',
  `receive_aidance` int(2) DEFAULT '1' COMMENT '是否允许接收协催（0：否；1：是）',
  `receive_visit_aidance` int(2) DEFAULT '1' COMMENT '是否允许接收协防（0：否；1：是）',
  `create_user_id` varchar(36) NOT NULL COMMENT '搜索创建人ID',
  `create_time` varchar(20) NOT NULL COMMENT '搜索创建时间',
  `update_user_id` varchar(36) DEFAULT NULL COMMENT '更新人ID',
  `update_time` varchar(20) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='共案控制表';

-- ----------------------------
-- Table structure for lxcs_common_case_sms_config
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_common_case_sms_config`;
CREATE TABLE `lxcs_common_case_sms_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `department_top_cd` varchar(40) NOT NULL COMMENT '部门编号',
  `department_top_name` varchar(100) DEFAULT NULL COMMENT '部门名称',
  `customer_id` varchar(40) NOT NULL COMMENT '客户id',
  `customer_name` varchar(100) DEFAULT '' COMMENT '客户名',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除标识',
  `create_user_id` varchar(36) DEFAULT NULL COMMENT '初期新建者',
  `create_date` varchar(20) DEFAULT NULL COMMENT '初期新建日',
  `update_user_id` varchar(36) DEFAULT NULL COMMENT '最终更新者',
  `update_date` varchar(20) DEFAULT NULL COMMENT '最终更新日',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='共案短信模版控制表';

-- ----------------------------
-- Table structure for lxcs_contact_address0
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_contact_address0`;
CREATE TABLE `lxcs_contact_address0` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL COMMENT '主键编号',
  `custom_name` varchar(128) DEFAULT NULL COMMENT '客户名称',
  `id_no` varchar(25) NOT NULL COMMENT '持卡人证件号码',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `address` varchar(128) DEFAULT NULL,
  `address_type` varchar(32) DEFAULT NULL COMMENT '地址类型',
  `request_type` char(1) DEFAULT '0' COMMENT '0外访 1协防',
  `relation_ship` varchar(32) DEFAULT NULL COMMENT '与持卡人关系',
  `zip_code` varchar(16) DEFAULT NULL COMMENT '邮编',
  `letter_status` varchar(10) DEFAULT NULL COMMENT '信函状态',
  `visit_status` varchar(10) DEFAULT NULL COMMENT '外访状态',
  `del_flag` char(1) DEFAULT NULL COMMENT '隐藏状态0为不隐藏1为隐藏',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建时间',
  `create_user_id` varchar(36) DEFAULT NULL COMMENT '创建者编号',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新时间',
  `update_user_id` varchar(36) DEFAULT NULL COMMENT '更新者编号',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `IDX_LXCS_ADDRESS_UNIQUE` (`id_no`,`name`,`address`,`del_flag`)
) ENGINE=InnoDB AUTO_INCREMENT=590229 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_contact_address1
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_contact_address1`;
CREATE TABLE `lxcs_contact_address1` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL COMMENT '主键编号',
  `custom_name` varchar(128) DEFAULT NULL COMMENT '客户名称',
  `id_no` varchar(25) NOT NULL COMMENT '持卡人证件号码',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `address` varchar(128) DEFAULT NULL,
  `address_type` varchar(32) DEFAULT NULL COMMENT '地址类型',
  `request_type` char(1) DEFAULT '0' COMMENT '0外访 1协防',
  `relation_ship` varchar(32) DEFAULT NULL COMMENT '与持卡人关系',
  `zip_code` varchar(16) DEFAULT NULL COMMENT '邮编',
  `letter_status` varchar(10) DEFAULT NULL COMMENT '信函状态',
  `visit_status` varchar(10) DEFAULT NULL COMMENT '外访状态',
  `del_flag` char(1) DEFAULT NULL COMMENT '隐藏状态0为不隐藏1为隐藏',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建时间',
  `create_user_id` varchar(36) DEFAULT NULL COMMENT '创建者编号',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新时间',
  `update_user_id` varchar(36) DEFAULT NULL COMMENT '更新者编号',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `IDX_LXCS_ADDRESS_UNIQUE` (`id_no`,`name`,`address`,`del_flag`)
) ENGINE=InnoDB AUTO_INCREMENT=477510 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_contact_address2
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_contact_address2`;
CREATE TABLE `lxcs_contact_address2` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL COMMENT '主键编号',
  `custom_name` varchar(128) DEFAULT NULL COMMENT '客户名称',
  `id_no` varchar(25) NOT NULL COMMENT '持卡人证件号码',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `address` varchar(128) DEFAULT NULL,
  `address_type` varchar(32) DEFAULT NULL COMMENT '地址类型',
  `request_type` char(1) DEFAULT '0' COMMENT '0外访 1协防',
  `relation_ship` varchar(32) DEFAULT NULL COMMENT '与持卡人关系',
  `zip_code` varchar(16) DEFAULT NULL COMMENT '邮编',
  `letter_status` varchar(10) DEFAULT NULL COMMENT '信函状态',
  `visit_status` varchar(10) DEFAULT NULL COMMENT '外访状态',
  `del_flag` char(1) DEFAULT NULL COMMENT '隐藏状态0为不隐藏1为隐藏',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建时间',
  `create_user_id` varchar(36) DEFAULT NULL COMMENT '创建者编号',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新时间',
  `update_user_id` varchar(36) DEFAULT NULL COMMENT '更新者编号',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `IDX_LXCS_ADDRESS_UNIQUE` (`id_no`,`name`,`address`,`del_flag`)
) ENGINE=InnoDB AUTO_INCREMENT=445238 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_contact_address3
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_contact_address3`;
CREATE TABLE `lxcs_contact_address3` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL COMMENT '主键编号',
  `custom_name` varchar(128) DEFAULT NULL COMMENT '客户名称',
  `id_no` varchar(25) NOT NULL COMMENT '持卡人证件号码',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `address` varchar(128) DEFAULT NULL,
  `address_type` varchar(32) DEFAULT NULL COMMENT '地址类型',
  `request_type` char(1) DEFAULT '0' COMMENT '0外访 1协防',
  `relation_ship` varchar(32) DEFAULT NULL COMMENT '与持卡人关系',
  `zip_code` varchar(16) DEFAULT NULL COMMENT '邮编',
  `letter_status` varchar(10) DEFAULT NULL COMMENT '信函状态',
  `visit_status` varchar(10) DEFAULT NULL COMMENT '外访状态',
  `del_flag` char(1) DEFAULT NULL COMMENT '隐藏状态0为不隐藏1为隐藏',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建时间',
  `create_user_id` varchar(36) DEFAULT NULL COMMENT '创建者编号',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新时间',
  `update_user_id` varchar(36) DEFAULT NULL COMMENT '更新者编号',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `IDX_LXCS_ADDRESS_UNIQUE` (`id_no`,`name`,`address`,`del_flag`)
) ENGINE=InnoDB AUTO_INCREMENT=416569 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_contact_address4
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_contact_address4`;
CREATE TABLE `lxcs_contact_address4` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL COMMENT '主键编号',
  `custom_name` varchar(128) DEFAULT NULL COMMENT '客户名称',
  `id_no` varchar(25) NOT NULL COMMENT '持卡人证件号码',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `address` varchar(128) DEFAULT NULL,
  `address_type` varchar(32) DEFAULT NULL COMMENT '地址类型',
  `request_type` char(1) DEFAULT '0' COMMENT '0外访 1协防',
  `relation_ship` varchar(32) DEFAULT NULL COMMENT '与持卡人关系',
  `zip_code` varchar(16) DEFAULT NULL COMMENT '邮编',
  `letter_status` varchar(10) DEFAULT NULL COMMENT '信函状态',
  `visit_status` varchar(10) DEFAULT NULL COMMENT '外访状态',
  `del_flag` char(1) DEFAULT NULL COMMENT '隐藏状态0为不隐藏1为隐藏',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建时间',
  `create_user_id` varchar(36) DEFAULT NULL COMMENT '创建者编号',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新时间',
  `update_user_id` varchar(36) DEFAULT NULL COMMENT '更新者编号',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `IDX_LXCS_ADDRESS_UNIQUE` (`id_no`,`name`,`address`,`del_flag`)
) ENGINE=InnoDB AUTO_INCREMENT=436227 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_contact_address5
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_contact_address5`;
CREATE TABLE `lxcs_contact_address5` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL COMMENT '主键编号',
  `custom_name` varchar(128) DEFAULT NULL COMMENT '客户名称',
  `id_no` varchar(25) NOT NULL COMMENT '持卡人证件号码',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `address` varchar(128) DEFAULT NULL,
  `address_type` varchar(32) DEFAULT NULL COMMENT '地址类型',
  `request_type` char(1) DEFAULT '0' COMMENT '0外访 1协防',
  `relation_ship` varchar(32) DEFAULT NULL COMMENT '与持卡人关系',
  `zip_code` varchar(16) DEFAULT NULL COMMENT '邮编',
  `letter_status` varchar(10) DEFAULT NULL COMMENT '信函状态',
  `visit_status` varchar(10) DEFAULT NULL COMMENT '外访状态',
  `del_flag` char(1) DEFAULT NULL COMMENT '隐藏状态0为不隐藏1为隐藏',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建时间',
  `create_user_id` varchar(36) DEFAULT NULL COMMENT '创建者编号',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新时间',
  `update_user_id` varchar(36) DEFAULT NULL COMMENT '更新者编号',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `IDX_LXCS_ADDRESS_UNIQUE` (`id_no`,`name`,`address`,`del_flag`)
) ENGINE=InnoDB AUTO_INCREMENT=429664 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_contact_address6
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_contact_address6`;
CREATE TABLE `lxcs_contact_address6` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL COMMENT '主键编号',
  `custom_name` varchar(128) DEFAULT NULL COMMENT '客户名称',
  `id_no` varchar(25) NOT NULL COMMENT '持卡人证件号码',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `address` varchar(128) DEFAULT NULL,
  `address_type` varchar(32) DEFAULT NULL COMMENT '地址类型',
  `request_type` char(1) DEFAULT '0' COMMENT '0外访 1协防',
  `relation_ship` varchar(32) DEFAULT NULL COMMENT '与持卡人关系',
  `zip_code` varchar(16) DEFAULT NULL COMMENT '邮编',
  `letter_status` varchar(10) DEFAULT NULL COMMENT '信函状态',
  `visit_status` varchar(10) DEFAULT NULL COMMENT '外访状态',
  `del_flag` char(1) DEFAULT NULL COMMENT '隐藏状态0为不隐藏1为隐藏',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建时间',
  `create_user_id` varchar(36) DEFAULT NULL COMMENT '创建者编号',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新时间',
  `update_user_id` varchar(36) DEFAULT NULL COMMENT '更新者编号',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `IDX_LXCS_ADDRESS_UNIQUE` (`id_no`,`name`,`address`,`del_flag`)
) ENGINE=InnoDB AUTO_INCREMENT=326427 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_contact_address7
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_contact_address7`;
CREATE TABLE `lxcs_contact_address7` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL COMMENT '主键编号',
  `custom_name` varchar(128) DEFAULT NULL COMMENT '客户名称',
  `id_no` varchar(25) NOT NULL COMMENT '持卡人证件号码',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `address` varchar(128) DEFAULT NULL,
  `address_type` varchar(32) DEFAULT NULL COMMENT '地址类型',
  `request_type` char(1) DEFAULT '0' COMMENT '0外访 1协防',
  `relation_ship` varchar(32) DEFAULT NULL COMMENT '与持卡人关系',
  `zip_code` varchar(16) DEFAULT NULL COMMENT '邮编',
  `letter_status` varchar(10) DEFAULT NULL COMMENT '信函状态',
  `visit_status` varchar(10) DEFAULT NULL COMMENT '外访状态',
  `del_flag` char(1) DEFAULT NULL COMMENT '隐藏状态0为不隐藏1为隐藏',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建时间',
  `create_user_id` varchar(36) DEFAULT NULL COMMENT '创建者编号',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新时间',
  `update_user_id` varchar(36) DEFAULT NULL COMMENT '更新者编号',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `IDX_LXCS_ADDRESS_UNIQUE` (`id_no`,`name`,`address`,`del_flag`)
) ENGINE=InnoDB AUTO_INCREMENT=323909 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_contact_address8
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_contact_address8`;
CREATE TABLE `lxcs_contact_address8` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL COMMENT '主键编号',
  `custom_name` varchar(128) DEFAULT NULL COMMENT '客户名称',
  `id_no` varchar(25) NOT NULL COMMENT '持卡人证件号码',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `address` varchar(128) DEFAULT NULL,
  `address_type` varchar(32) DEFAULT NULL COMMENT '地址类型',
  `request_type` char(1) DEFAULT '0' COMMENT '0外访 1协防',
  `relation_ship` varchar(32) DEFAULT NULL COMMENT '与持卡人关系',
  `zip_code` varchar(16) DEFAULT NULL COMMENT '邮编',
  `letter_status` varchar(10) DEFAULT NULL COMMENT '信函状态',
  `visit_status` varchar(10) DEFAULT NULL COMMENT '外访状态',
  `del_flag` char(1) DEFAULT NULL COMMENT '隐藏状态0为不隐藏1为隐藏',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建时间',
  `create_user_id` varchar(36) DEFAULT NULL COMMENT '创建者编号',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新时间',
  `update_user_id` varchar(36) DEFAULT NULL COMMENT '更新者编号',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `IDX_LXCS_ADDRESS_UNIQUE` (`id_no`,`name`,`address`,`del_flag`)
) ENGINE=InnoDB AUTO_INCREMENT=6009994 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_contact_address9
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_contact_address9`;
CREATE TABLE `lxcs_contact_address9` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL COMMENT '主键编号',
  `custom_name` varchar(128) DEFAULT NULL COMMENT '客户名称',
  `id_no` varchar(25) NOT NULL COMMENT '持卡人证件号码',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `address` varchar(128) DEFAULT NULL,
  `address_type` varchar(32) DEFAULT NULL COMMENT '地址类型',
  `request_type` char(1) DEFAULT '0' COMMENT '0外访 1协防',
  `relation_ship` varchar(32) DEFAULT NULL COMMENT '与持卡人关系',
  `zip_code` varchar(16) DEFAULT NULL COMMENT '邮编',
  `letter_status` varchar(10) DEFAULT NULL COMMENT '信函状态',
  `visit_status` varchar(10) DEFAULT NULL COMMENT '外访状态',
  `del_flag` char(1) DEFAULT NULL COMMENT '隐藏状态0为不隐藏1为隐藏',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建时间',
  `create_user_id` varchar(36) DEFAULT NULL COMMENT '创建者编号',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新时间',
  `update_user_id` varchar(36) DEFAULT NULL COMMENT '更新者编号',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `IDX_LXCS_ADDRESS_UNIQUE` (`id_no`,`name`,`address`,`del_flag`)
) ENGINE=InnoDB AUTO_INCREMENT=337811 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_contact_phone0
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_contact_phone0`;
CREATE TABLE `lxcs_contact_phone0` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `custom_name` varchar(128) DEFAULT NULL COMMENT '客户名称',
  `id_no` varchar(25) NOT NULL COMMENT '联系人证件号码',
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `phone` varchar(200) NOT NULL COMMENT '单位电话',
  `phone_type` varchar(20) NOT NULL COMMENT '电话类型',
  `relation_ship` varchar(20) DEFAULT NULL COMMENT '亲属关系',
  `control` char(1) DEFAULT NULL COMMENT '管控 0全部时间 1晚上可以打 2白天可以打',
  `time` int(5) DEFAULT '0' COMMENT '拨打次数（总的）',
  `last_call_user_id` varchar(36) DEFAULT NULL COMMENT '最后一次拨打人',
  `last_call_user_name` varchar(30) DEFAULT NULL COMMENT '最后一次拨打人姓名',
  `last_call_date` varchar(20) DEFAULT NULL COMMENT '拨打时间(最后一次)',
  `comment` varchar(1000) DEFAULT NULL COMMENT '备注',
  `del_flag` char(1) DEFAULT NULL COMMENT '是否隐藏0不隐藏1隐藏',
  `get_though_flag` char(1) DEFAULT NULL COMMENT '自动外呼是否打通 1-打通 0-未打通',
  `stop_call` char(1) DEFAULT NULL COMMENT '0正常，1停催',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `IDX_PHONE_UNIQUE` (`id_no`,`name`,`phone`,`del_flag`),
  KEY `phone` (`phone`(20))
) ENGINE=InnoDB AUTO_INCREMENT=6988951 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_contact_phone1
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_contact_phone1`;
CREATE TABLE `lxcs_contact_phone1` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `custom_name` varchar(128) DEFAULT NULL COMMENT '客户名称',
  `id_no` varchar(25) NOT NULL COMMENT '联系人证件号码',
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `phone` varchar(200) NOT NULL COMMENT '单位电话',
  `phone_type` varchar(20) NOT NULL COMMENT '电话类型',
  `relation_ship` varchar(20) DEFAULT NULL COMMENT '亲属关系',
  `control` char(1) DEFAULT NULL COMMENT '管控 0全部时间 1晚上可以打 2白天可以打',
  `time` int(5) DEFAULT '0' COMMENT '拨打次数（总的）',
  `last_call_user_id` varchar(36) DEFAULT NULL COMMENT '最后一次拨打人',
  `last_call_user_name` varchar(30) DEFAULT NULL COMMENT '最后一次拨打人姓名',
  `last_call_date` varchar(20) DEFAULT NULL COMMENT '拨打时间(最后一次)',
  `comment` varchar(1000) DEFAULT NULL COMMENT '备注',
  `del_flag` char(1) DEFAULT NULL COMMENT '是否隐藏0不隐藏1隐藏',
  `get_though_flag` char(1) DEFAULT NULL COMMENT '自动外呼是否打通 1-打通 0-未打通',
  `stop_call` char(1) DEFAULT NULL COMMENT '0正常，1停催',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `IDX_PHONE_UNIQUE` (`id_no`,`name`,`phone`,`del_flag`),
  KEY `phone` (`phone`(20))
) ENGINE=InnoDB AUTO_INCREMENT=454340 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_contact_phone2
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_contact_phone2`;
CREATE TABLE `lxcs_contact_phone2` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `custom_name` varchar(128) DEFAULT NULL COMMENT '客户名称',
  `id_no` varchar(25) NOT NULL COMMENT '联系人证件号码',
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `phone` varchar(200) NOT NULL COMMENT '单位电话',
  `phone_type` varchar(20) NOT NULL COMMENT '电话类型',
  `relation_ship` varchar(20) DEFAULT NULL COMMENT '亲属关系',
  `control` char(1) DEFAULT NULL COMMENT '管控 0全部时间 1晚上可以打 2白天可以打',
  `time` int(5) DEFAULT '0' COMMENT '拨打次数（总的）',
  `last_call_user_id` varchar(36) DEFAULT NULL COMMENT '最后一次拨打人',
  `last_call_user_name` varchar(30) DEFAULT NULL COMMENT '最后一次拨打人姓名',
  `last_call_date` varchar(20) DEFAULT NULL COMMENT '拨打时间(最后一次)',
  `comment` varchar(1000) DEFAULT NULL COMMENT '备注',
  `del_flag` char(1) DEFAULT NULL COMMENT '是否隐藏0不隐藏1隐藏',
  `get_though_flag` char(1) DEFAULT NULL COMMENT '自动外呼是否打通 1-打通 0-未打通',
  `stop_call` char(1) DEFAULT NULL COMMENT '0正常，1停催',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `IDX_PHONE_UNIQUE` (`id_no`,`name`,`phone`,`del_flag`),
  KEY `phone` (`phone`(20))
) ENGINE=InnoDB AUTO_INCREMENT=6518184 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_contact_phone3
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_contact_phone3`;
CREATE TABLE `lxcs_contact_phone3` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `custom_name` varchar(128) DEFAULT NULL COMMENT '客户名称',
  `id_no` varchar(25) NOT NULL COMMENT '联系人证件号码',
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `phone` varchar(200) NOT NULL COMMENT '单位电话',
  `phone_type` varchar(20) NOT NULL COMMENT '电话类型',
  `relation_ship` varchar(20) DEFAULT NULL COMMENT '亲属关系',
  `control` char(1) DEFAULT NULL COMMENT '管控 0全部时间 1晚上可以打 2白天可以打',
  `time` int(5) DEFAULT '0' COMMENT '拨打次数（总的）',
  `last_call_user_id` varchar(36) DEFAULT NULL COMMENT '最后一次拨打人',
  `last_call_user_name` varchar(30) DEFAULT NULL COMMENT '最后一次拨打人姓名',
  `last_call_date` varchar(20) DEFAULT NULL COMMENT '拨打时间(最后一次)',
  `comment` varchar(1000) DEFAULT NULL COMMENT '备注',
  `del_flag` char(1) DEFAULT NULL COMMENT '是否隐藏0不隐藏1隐藏',
  `get_though_flag` char(1) DEFAULT NULL COMMENT '自动外呼是否打通 1-打通 0-未打通',
  `stop_call` char(1) DEFAULT NULL COMMENT '0正常，1停催',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `IDX_PHONE_UNIQUE` (`id_no`,`name`,`phone`,`del_flag`),
  KEY `phone` (`phone`(20))
) ENGINE=InnoDB AUTO_INCREMENT=367349 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_contact_phone4
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_contact_phone4`;
CREATE TABLE `lxcs_contact_phone4` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `custom_name` varchar(128) DEFAULT NULL COMMENT '客户名称',
  `id_no` varchar(25) NOT NULL COMMENT '联系人证件号码',
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `phone` varchar(200) NOT NULL COMMENT '单位电话',
  `phone_type` varchar(20) NOT NULL COMMENT '电话类型',
  `relation_ship` varchar(20) DEFAULT NULL COMMENT '亲属关系',
  `control` char(1) DEFAULT NULL COMMENT '管控 0全部时间 1晚上可以打 2白天可以打',
  `time` int(5) DEFAULT '0' COMMENT '拨打次数（总的）',
  `last_call_user_id` varchar(36) DEFAULT NULL COMMENT '最后一次拨打人',
  `last_call_user_name` varchar(30) DEFAULT NULL COMMENT '最后一次拨打人姓名',
  `last_call_date` varchar(20) DEFAULT NULL COMMENT '拨打时间(最后一次)',
  `comment` varchar(1000) DEFAULT NULL COMMENT '备注',
  `del_flag` char(1) DEFAULT NULL COMMENT '是否隐藏0不隐藏1隐藏',
  `get_though_flag` char(1) DEFAULT NULL COMMENT '自动外呼是否打通 1-打通 0-未打通',
  `stop_call` char(1) DEFAULT NULL COMMENT '0正常，1停催',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `IDX_PHONE_UNIQUE` (`id_no`,`name`,`phone`,`del_flag`),
  KEY `phone` (`phone`(20))
) ENGINE=InnoDB AUTO_INCREMENT=359352 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_contact_phone5
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_contact_phone5`;
CREATE TABLE `lxcs_contact_phone5` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `custom_name` varchar(128) DEFAULT NULL COMMENT '客户名称',
  `id_no` varchar(25) NOT NULL COMMENT '联系人证件号码',
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `phone` varchar(200) NOT NULL COMMENT '单位电话',
  `phone_type` varchar(20) NOT NULL COMMENT '电话类型',
  `relation_ship` varchar(20) DEFAULT NULL COMMENT '亲属关系',
  `control` char(1) DEFAULT NULL COMMENT '管控 0全部时间 1晚上可以打 2白天可以打',
  `time` int(5) DEFAULT '0' COMMENT '拨打次数（总的）',
  `last_call_user_id` varchar(36) DEFAULT NULL COMMENT '最后一次拨打人',
  `last_call_user_name` varchar(30) DEFAULT NULL COMMENT '最后一次拨打人姓名',
  `last_call_date` varchar(20) DEFAULT NULL COMMENT '拨打时间(最后一次)',
  `comment` varchar(1000) DEFAULT NULL COMMENT '备注',
  `del_flag` char(1) DEFAULT NULL COMMENT '是否隐藏0不隐藏1隐藏',
  `get_though_flag` char(1) DEFAULT NULL COMMENT '自动外呼是否打通 1-打通 0-未打通',
  `stop_call` char(1) DEFAULT NULL COMMENT '0正常，1停催',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `IDX_PHONE_UNIQUE` (`id_no`,`name`,`phone`,`del_flag`),
  KEY `phone` (`phone`(20))
) ENGINE=InnoDB AUTO_INCREMENT=363340 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_contact_phone6
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_contact_phone6`;
CREATE TABLE `lxcs_contact_phone6` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `custom_name` varchar(128) DEFAULT NULL COMMENT '客户名称',
  `id_no` varchar(25) NOT NULL COMMENT '联系人证件号码',
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `phone` varchar(200) NOT NULL COMMENT '单位电话',
  `phone_type` varchar(20) NOT NULL COMMENT '电话类型',
  `relation_ship` varchar(20) DEFAULT NULL COMMENT '亲属关系',
  `control` char(1) DEFAULT NULL COMMENT '管控 0全部时间 1晚上可以打 2白天可以打',
  `time` int(5) DEFAULT '0' COMMENT '拨打次数（总的）',
  `last_call_user_id` varchar(36) DEFAULT NULL COMMENT '最后一次拨打人',
  `last_call_user_name` varchar(30) DEFAULT NULL COMMENT '最后一次拨打人姓名',
  `last_call_date` varchar(20) DEFAULT NULL COMMENT '拨打时间(最后一次)',
  `comment` varchar(1000) DEFAULT NULL COMMENT '备注',
  `del_flag` char(1) DEFAULT NULL COMMENT '是否隐藏0不隐藏1隐藏',
  `get_though_flag` char(1) DEFAULT NULL COMMENT '自动外呼是否打通 1-打通 0-未打通',
  `stop_call` char(1) DEFAULT NULL COMMENT '0正常，1停催',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `IDX_PHONE_UNIQUE` (`id_no`,`name`,`phone`,`del_flag`),
  KEY `phone` (`phone`(20))
) ENGINE=InnoDB AUTO_INCREMENT=359265 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_contact_phone7
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_contact_phone7`;
CREATE TABLE `lxcs_contact_phone7` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `custom_name` varchar(128) DEFAULT NULL COMMENT '客户名称',
  `id_no` varchar(25) NOT NULL COMMENT '联系人证件号码',
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `phone` varchar(200) NOT NULL COMMENT '单位电话',
  `phone_type` varchar(20) NOT NULL COMMENT '电话类型',
  `relation_ship` varchar(20) DEFAULT NULL COMMENT '亲属关系',
  `control` char(1) DEFAULT NULL COMMENT '管控 0全部时间 1晚上可以打 2白天可以打',
  `time` int(5) DEFAULT '0' COMMENT '拨打次数（总的）',
  `last_call_user_id` varchar(36) DEFAULT NULL COMMENT '最后一次拨打人',
  `last_call_user_name` varchar(30) DEFAULT NULL COMMENT '最后一次拨打人姓名',
  `last_call_date` varchar(20) DEFAULT NULL COMMENT '拨打时间(最后一次)',
  `comment` varchar(1000) DEFAULT NULL COMMENT '备注',
  `del_flag` char(1) DEFAULT NULL COMMENT '是否隐藏0不隐藏1隐藏',
  `get_though_flag` char(1) DEFAULT NULL COMMENT '自动外呼是否打通 1-打通 0-未打通',
  `stop_call` char(1) DEFAULT NULL COMMENT '0正常，1停催',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `IDX_PHONE_UNIQUE` (`id_no`,`name`,`phone`,`del_flag`),
  KEY `phone` (`phone`(20))
) ENGINE=InnoDB AUTO_INCREMENT=7346713 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_contact_phone8
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_contact_phone8`;
CREATE TABLE `lxcs_contact_phone8` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `custom_name` varchar(128) DEFAULT NULL COMMENT '客户名称',
  `id_no` varchar(25) NOT NULL COMMENT '联系人证件号码',
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `phone` varchar(200) NOT NULL COMMENT '单位电话',
  `phone_type` varchar(20) NOT NULL COMMENT '电话类型',
  `relation_ship` varchar(20) DEFAULT NULL COMMENT '亲属关系',
  `control` char(1) DEFAULT NULL COMMENT '管控 0全部时间 1晚上可以打 2白天可以打',
  `time` int(5) DEFAULT '0' COMMENT '拨打次数（总的）',
  `last_call_user_id` varchar(36) DEFAULT NULL COMMENT '最后一次拨打人',
  `last_call_user_name` varchar(30) DEFAULT NULL COMMENT '最后一次拨打人姓名',
  `last_call_date` varchar(20) DEFAULT NULL COMMENT '拨打时间(最后一次)',
  `comment` varchar(1000) DEFAULT NULL COMMENT '备注',
  `del_flag` char(1) DEFAULT NULL COMMENT '是否隐藏0不隐藏1隐藏',
  `get_though_flag` char(1) DEFAULT NULL COMMENT '自动外呼是否打通 1-打通 0-未打通',
  `stop_call` char(1) DEFAULT NULL COMMENT '0正常，1停催',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `IDX_PHONE_UNIQUE` (`id_no`,`name`,`phone`,`del_flag`),
  KEY `phone` (`phone`(20))
) ENGINE=InnoDB AUTO_INCREMENT=3563992 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_contact_phone9
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_contact_phone9`;
CREATE TABLE `lxcs_contact_phone9` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `custom_name` varchar(128) DEFAULT NULL COMMENT '客户名称',
  `id_no` varchar(25) NOT NULL COMMENT '联系人证件号码',
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `phone` varchar(200) NOT NULL COMMENT '单位电话',
  `phone_type` varchar(20) NOT NULL COMMENT '电话类型',
  `relation_ship` varchar(20) DEFAULT NULL COMMENT '亲属关系',
  `control` char(1) DEFAULT NULL COMMENT '管控 0全部时间 1晚上可以打 2白天可以打',
  `time` int(5) DEFAULT '0' COMMENT '拨打次数（总的）',
  `last_call_user_id` varchar(36) DEFAULT NULL COMMENT '最后一次拨打人',
  `last_call_user_name` varchar(30) DEFAULT NULL COMMENT '最后一次拨打人姓名',
  `last_call_date` varchar(20) DEFAULT NULL COMMENT '拨打时间(最后一次)',
  `comment` varchar(1000) DEFAULT NULL COMMENT '备注',
  `del_flag` char(1) DEFAULT NULL COMMENT '是否隐藏0不隐藏1隐藏',
  `get_though_flag` char(1) DEFAULT NULL COMMENT '自动外呼是否打通 1-打通 0-未打通',
  `stop_call` char(1) DEFAULT NULL COMMENT '0正常，1停催',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `IDX_PHONE_UNIQUE` (`id_no`,`name`,`phone`,`del_flag`),
  KEY `phone` (`phone`(20))
) ENGINE=InnoDB AUTO_INCREMENT=366626 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_custom
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_custom`;
CREATE TABLE `lxcs_custom` (
  `id` varchar(36) NOT NULL,
  `custom_name` varchar(50) DEFAULT NULL COMMENT '客户名称',
  `custom_notes` varchar(500) DEFAULT NULL COMMENT '说明',
  `custom_status` int(1) DEFAULT '0' COMMENT '客户类型 0启用；1禁用',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除标识',
  `create_user_id` varchar(36) DEFAULT NULL COMMENT '初期新建者',
  `create_date` varchar(20) DEFAULT NULL COMMENT '初期新建日',
  `update_user_id` varchar(36) DEFAULT NULL COMMENT '最终更新者',
  `update_date` varchar(20) DEFAULT NULL COMMENT '最终更新日',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客户表';

-- ----------------------------
-- Table structure for lxcs_custom_config
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_custom_config`;
CREATE TABLE `lxcs_custom_config` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `config_code` varchar(36) DEFAULT NULL COMMENT '配置编码（MSG_CODE：短信配置编码）',
  `state` varchar(10) DEFAULT NULL COMMENT '匹配短信模板取回收金额的客户（0：需要匹配，1：不需要匹配）',
  `custom_id` varchar(36) DEFAULT NULL COMMENT '客户ID',
  `update_time` varchar(20) DEFAULT NULL COMMENT '操作时间',
  `update_user_id` varchar(36) DEFAULT NULL COMMENT '操作人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_department_config
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_department_config`;
CREATE TABLE `lxcs_department_config` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `config_code` varchar(36) DEFAULT NULL COMMENT '配置编码（MSG_CODE：短信配置编码）',
  `state` varchar(10) DEFAULT '1' COMMENT '是否开放（1：不开放，0：开放）',
  `department_cd` varchar(36) DEFAULT NULL COMMENT '部门编号',
  `update_time` varchar(20) DEFAULT NULL COMMENT '操作时间',
  `update_user_id` varchar(36) DEFAULT NULL COMMENT '操作人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=345 DEFAULT CHARSET=utf8 COMMENT='短信模板配置分公司表';

-- ----------------------------
-- Table structure for lxcs_excellent_case_apply
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_excellent_case_apply`;
CREATE TABLE `lxcs_excellent_case_apply` (
  `prid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL COMMENT 'uuid',
  `pid` varchar(36) DEFAULT NULL COMMENT '案件id，关联mongo的lxcs_case的_id',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `custom_id` varchar(36) NOT NULL COMMENT '客户id，关联lxcs_custom表主键',
  `case_type` char(1) DEFAULT NULL COMMENT '案件类型，0个贷，1信用卡',
  `name` varchar(100) DEFAULT NULL COMMENT '债务人姓名',
  `handle_time` varchar(10) DEFAULT NULL COMMENT '手次，阿拉伯数字+手',
  `id_no` varchar(25) NOT NULL COMMENT '证件号码',
  `card_no` varchar(64) NOT NULL COMMENT '卡号',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '所分配的分公司id',
  `case_money` decimal(21,4) DEFAULT NULL COMMENT '委案金额',
  `collection_type` char(1) DEFAULT NULL COMMENT '催收类型',
  `address_id` varchar(36) DEFAULT NULL COMMENT '地址id，关联lxcs_contact_address表主键',
  `address` varchar(256) DEFAULT NULL,
  `repay_allmoney_yes` decimal(21,4) DEFAULT NULL COMMENT '累计回收总金额',
  `status` varchar(10) DEFAULT NULL,
  `apply_status` char(1) DEFAULT NULL COMMENT '审核状态---0:待审批; 1:通过; 2:不通过',
  `apply_date` varchar(20) DEFAULT NULL COMMENT '申请日期',
  `apply_user_id` varchar(36) DEFAULT NULL COMMENT '申请人员',
  `audit_case_main` varchar(1080) DEFAULT NULL COMMENT '案件基本情况main---对应lxcs_excellent_case_situation的id，多个用逗号分隔',
  `audit_case_sub` varchar(1080) DEFAULT NULL COMMENT '案件基本情况sub---对应lxcs_excellent_case_subcases的id，多个用逗号分隔',
  `audit_name_main` varchar(1080) DEFAULT NULL COMMENT '债务人基本情况main---对应lxcs_excellent_case_situation的id，多个用逗号分隔',
  `audit_name_sub` varchar(1080) DEFAULT NULL COMMENT '债务人基本情况sub---对应lxcs_excellent_case_subcases的id，多个用逗号分隔',
  `audit_explanation` varchar(1000) DEFAULT NULL COMMENT '审核说明',
  `audit_category_main` varchar(36) DEFAULT NULL COMMENT '优秀案件类别main---对应lxcs_excellent_case_category的id',
  `audit_category_sub` varchar(36) DEFAULT NULL COMMENT '优秀案件类别sub---对应lxcs_excellent_case_category的id',
  `audit_level` varchar(2) DEFAULT NULL COMMENT '优秀等级',
  `audit_date` varchar(20) DEFAULT NULL COMMENT '审核时间',
  `audit_user_id` varchar(36) DEFAULT NULL COMMENT '审核人员',
  `audit_bright_points` varchar(1000) DEFAULT NULL COMMENT '亮点',
  `recommend` char(2) DEFAULT NULL COMMENT '是否推荐案件(0没有,1推荐案件)',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除标识  0未删除，1已删除',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `tid` varchar(36) DEFAULT NULL COMMENT '外访员ID,关联lxcs_progress_visit表，获取外访员',
  PRIMARY KEY (`prid`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1850 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_excellent_case_category
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_excellent_case_category`;
CREATE TABLE `lxcs_excellent_case_category` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `ecc_name` varchar(32) NOT NULL COMMENT '优秀案件类别名称',
  `p_ecc_id` int(10) NOT NULL COMMENT '优秀案件一级分类编号',
  `description` varchar(256) DEFAULT NULL COMMENT '描述说明',
  `operator` varchar(36) NOT NULL COMMENT '操作人员编号',
  `create_time` int(16) NOT NULL COMMENT '创建时间',
  `update_time` int(16) NOT NULL COMMENT '更新时间',
  `collection_type` char(1) DEFAULT NULL COMMENT '催收类型---0:电催; 1:外访;',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COMMENT='优秀案件类别配置表';

-- ----------------------------
-- Table structure for lxcs_excellent_case_return
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_excellent_case_return`;
CREATE TABLE `lxcs_excellent_case_return` (
  `prid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL COMMENT 'uuid',
  `pid` varchar(36) DEFAULT NULL COMMENT '案件id，关联mongo的lxcs_case的_id',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `custom_id` varchar(36) NOT NULL COMMENT '客户id，关联lxcs_custom表主键',
  `case_type` char(1) DEFAULT NULL COMMENT '案件类型，0个贷，1信用卡',
  `name` varchar(100) DEFAULT NULL COMMENT '债务人姓名',
  `handle_time` varchar(10) DEFAULT NULL COMMENT '手次，阿拉伯数字+手',
  `id_no` varchar(25) NOT NULL COMMENT '证件号码',
  `card_no` varchar(64) NOT NULL COMMENT '卡号',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '所分配的分公司id',
  `case_money` decimal(21,4) DEFAULT NULL COMMENT '委案金额',
  `collection_type` char(1) DEFAULT NULL COMMENT '催收类型',
  `address_id` varchar(36) DEFAULT NULL COMMENT '地址id，关联lxcs_contact_address表主键',
  `address` varchar(256) DEFAULT NULL,
  `repay_allmoney_yes` decimal(21,4) DEFAULT NULL COMMENT '累计回收总金额',
  `status` varchar(10) DEFAULT NULL,
  `apply_status` char(1) DEFAULT NULL COMMENT '审核状态---0:待审批; 1:通过; 2:不通过',
  `apply_date` varchar(20) DEFAULT NULL COMMENT '申请日期',
  `apply_user_id` varchar(36) DEFAULT NULL COMMENT '申请人员',
  `audit_case_main` varchar(1080) DEFAULT NULL COMMENT '案件基本情况main---对应lxcs_excellent_case_situation的id，多个用逗号分隔',
  `audit_case_sub` varchar(1080) DEFAULT NULL COMMENT '案件基本情况sub---对应lxcs_excellent_case_subcases的id，多个用逗号分隔',
  `audit_name_main` varchar(1080) DEFAULT NULL COMMENT '债务人基本情况main---对应lxcs_excellent_case_situation的id，多个用逗号分隔',
  `audit_name_sub` varchar(1080) DEFAULT NULL COMMENT '债务人基本情况sub---对应lxcs_excellent_case_subcases的id，多个用逗号分隔',
  `audit_explanation` varchar(1000) DEFAULT NULL COMMENT '审核说明',
  `audit_category_main` varchar(36) DEFAULT NULL COMMENT '优秀案件类别main---对应lxcs_excellent_case_category的id',
  `audit_category_sub` varchar(36) DEFAULT NULL COMMENT '优秀案件类别sub---对应lxcs_excellent_case_category的id',
  `audit_level` varchar(2) DEFAULT NULL COMMENT '优秀等级',
  `audit_date` varchar(20) DEFAULT NULL COMMENT '审核时间',
  `audit_user_id` varchar(36) DEFAULT NULL COMMENT '审核人员',
  `audit_bright_points` varchar(1000) DEFAULT NULL COMMENT '亮点',
  `recommend` char(2) DEFAULT NULL COMMENT '是否推荐案件(0没有,1推荐案件)',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除标识  0未删除，1已删除',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`prid`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1839 DEFAULT CHARSET=utf8 COMMENT='优秀案件退回历史记录表';

-- ----------------------------
-- Table structure for lxcs_excellent_case_situation
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_excellent_case_situation`;
CREATE TABLE `lxcs_excellent_case_situation` (
  `id` varchar(36) NOT NULL COMMENT '主键编号',
  `situation_description` varchar(30) NOT NULL COMMENT '情况说明',
  `base_situation` varchar(8) NOT NULL COMMENT '基本情况---0:案件; 1:债务人;',
  `collection_type` varchar(8) NOT NULL COMMENT '催收类型---0:电催; 1:外访;',
  `sort_key` tinyint(2) DEFAULT NULL COMMENT '排序',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除标识  0未删除，1已删除',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='优秀案件基本情况配置表';

-- ----------------------------
-- Table structure for lxcs_excellent_case_sound
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_excellent_case_sound`;
CREATE TABLE `lxcs_excellent_case_sound` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `case_no` varchar(20) NOT NULL,
  `file_name` varchar(200) DEFAULT NULL,
  `file_size` int(10) unsigned DEFAULT NULL,
  `file_format` varchar(50) DEFAULT NULL,
  `file_path` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2125 DEFAULT CHARSET=utf8 COMMENT='优秀案件录音';

-- ----------------------------
-- Table structure for lxcs_excellent_case_subcases
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_excellent_case_subcases`;
CREATE TABLE `lxcs_excellent_case_subcases` (
  `id` varchar(36) NOT NULL COMMENT '主键编号',
  `pid` varchar(36) NOT NULL COMMENT '情况说明',
  `subcase` varchar(30) NOT NULL COMMENT '基本情况',
  `sort_key` tinyint(2) DEFAULT NULL COMMENT '排序',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除标识  0未删除，1已删除',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='优秀案件基本情况配置表';

-- ----------------------------
-- Table structure for lxcs_find_method
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_find_method`;
CREATE TABLE `lxcs_find_method` (
  `id` varchar(36) NOT NULL,
  `find_title` varchar(30) DEFAULT NULL COMMENT '查找标题',
  `find_content` text,
  `find_status` char(1) DEFAULT '1' COMMENT '状态 1启用/2禁用/3删除',
  `find_record_name` varchar(50) DEFAULT NULL COMMENT '录音附件文件名',
  `find_record_url` varchar(100) DEFAULT NULL COMMENT '附件地址',
  `phone_ids` varchar(200) DEFAULT NULL COMMENT '电话查询条件',
  `web_ids` varchar(200) DEFAULT NULL COMMENT '网页查询条件',
  `app_ids` varchar(200) DEFAULT NULL COMMENT 'app查询条件',
  `other_ids` varchar(200) DEFAULT NULL COMMENT '其他查询条件',
  `create_user_id` varchar(36) DEFAULT NULL COMMENT '初期新建者',
  `create_user_name` varchar(36) DEFAULT NULL COMMENT '初期新建者',
  `create_date` varchar(20) DEFAULT NULL COMMENT '初期新建日',
  `update_user_id` varchar(36) DEFAULT NULL COMMENT '最终更新者',
  `update_date` varchar(20) DEFAULT NULL COMMENT '最终更新日',
  `update_name` varchar(20) DEFAULT NULL COMMENT '更新人姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='查找方法信息表';

-- ----------------------------
-- Table structure for lxcs_find_method_type
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_find_method_type`;
CREATE TABLE `lxcs_find_method_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `find_type` varchar(30) DEFAULT NULL COMMENT '查找类别0电话1网页2APP3其他',
  `find_detail` varchar(100) DEFAULT NULL COMMENT '查找方法明细',
  `find_status` char(1) DEFAULT '1' COMMENT '状态 1启用/2禁用/3删除',
  `find_explain` varchar(500) DEFAULT NULL COMMENT '查找说明',
  `create_user_id` varchar(36) DEFAULT NULL COMMENT '初期新建者',
  `create_user_name` varchar(36) DEFAULT NULL COMMENT '初期新建者',
  `create_date` varchar(20) DEFAULT NULL COMMENT '初期新建日',
  `update_user_id` varchar(36) DEFAULT NULL COMMENT '最终更新者',
  `update_date` varchar(20) DEFAULT NULL COMMENT '最终更新日',
  `update_name` varchar(20) DEFAULT NULL COMMENT '更新人姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='查找方法类别表';

-- ----------------------------
-- Table structure for lxcs_handle_time_config
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_handle_time_config`;
CREATE TABLE `lxcs_handle_time_config` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `handle_time` varchar(10) NOT NULL COMMENT '手次',
  `custom_id` varchar(36) NOT NULL,
  `custom_name` varchar(50) NOT NULL COMMENT '客户名称',
  `operator` varchar(36) NOT NULL,
  `create_time` int(10) NOT NULL COMMENT '插入时间',
  `update_time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `HANDLE_TIME_UNIQUE` (`handle_time`,`custom_id`) COMMENT '唯一索引'
) ENGINE=InnoDB AUTO_INCREMENT=14233 DEFAULT CHARSET=utf8 COMMENT='手次配置表';

-- ----------------------------
-- Table structure for lxcs_heavy_assets_apply
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_heavy_assets_apply`;
CREATE TABLE `lxcs_heavy_assets_apply` (
  `prid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL COMMENT 'uuid',
  `pid` varchar(36) DEFAULT NULL COMMENT '案件id，关联mongo的lxcs_case的_id',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `custom_id` varchar(36) NOT NULL COMMENT '客户id，关联lxcs_custom表主键',
  `case_type` char(1) DEFAULT NULL COMMENT '案件类型，0个贷，1信用卡',
  `name` varchar(100) DEFAULT NULL COMMENT '债务人姓名',
  `handle_time` varchar(10) DEFAULT NULL COMMENT '手次，阿拉伯数字+手',
  `id_no` varchar(25) NOT NULL COMMENT '证件号码',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '所分配的分公司id',
  `apply_status` char(1) DEFAULT NULL COMMENT '审核状态---0:未审核; 1:通过; 2:不通过',
  `apply_reason` varchar(1000) DEFAULT NULL COMMENT '原因',
  `apply_basis` varchar(200) DEFAULT NULL COMMENT '依据',
  `apply_credit` decimal(21,4) DEFAULT NULL COMMENT '额度',
  `apply_refund_plan` varchar(500) DEFAULT NULL COMMENT '还款计划',
  `apply_date` varchar(20) DEFAULT NULL COMMENT '申请日期',
  `apply_user_id` varchar(36) DEFAULT NULL COMMENT '申请人员',
  `audit_explanation` varchar(200) DEFAULT NULL COMMENT '审核说明',
  `audit_date` varchar(20) DEFAULT NULL COMMENT '审核时间',
  `audit_user_id` varchar(36) DEFAULT NULL COMMENT '审核人员',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除标识  0未删除，1已删除',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`prid`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='重资产申请';

-- ----------------------------
-- Table structure for lxcs_heavy_assets_details
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_heavy_assets_details`;
CREATE TABLE `lxcs_heavy_assets_details` (
  `prid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL COMMENT 'uuid',
  `pid` varchar(36) DEFAULT NULL COMMENT '重资产申请id，关联lxcs_heavy_assets_detail表主键',
  `name` varchar(100) DEFAULT NULL COMMENT '债务人姓名',
  `id_no` varchar(25) DEFAULT NULL COMMENT '证件号码',
  `is_cleared` char(1) DEFAULT NULL COMMENT '是否结清---0:否; 1:是',
  `refund_total_amount` decimal(21,4) DEFAULT NULL COMMENT '还款总额',
  `profit` decimal(21,4) DEFAULT NULL COMMENT '利润',
  `loan_life_begin` varchar(20) DEFAULT NULL COMMENT '借款期限（开始）',
  `loan_life_end` varchar(20) DEFAULT NULL COMMENT '借款期限（结束）',
  `refund_day` varchar(2) DEFAULT NULL COMMENT '还款日（每月的几号）',
  `refund_period_amount` decimal(21,4) DEFAULT NULL COMMENT '每期还款额',
  `interest` decimal(21,4) DEFAULT NULL COMMENT '利率',
  `loan_date` varchar(20) DEFAULT NULL COMMENT '放款时间',
  `loan_amount` decimal(21,4) DEFAULT NULL COMMENT '放款金额',
  `refund_period_count` decimal(20,0) DEFAULT NULL COMMENT '还款期数',
  `commission_rate` decimal(21,4) DEFAULT NULL COMMENT '佣金比例',
  `commission_amount` decimal(21,4) DEFAULT NULL COMMENT '佣金',
  `tax` decimal(21,4) DEFAULT NULL COMMENT '税率',
  `ratal` decimal(21,4) DEFAULT NULL COMMENT '纳税额',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除标识  0未删除，1已删除',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`prid`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_heavy_assets_refund
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_heavy_assets_refund`;
CREATE TABLE `lxcs_heavy_assets_refund` (
  `prid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL COMMENT 'uuid',
  `pid` varchar(36) DEFAULT NULL COMMENT '重资产详细id，关联lxcs_heavy_assets_detail',
  `refund_date` varchar(20) DEFAULT NULL COMMENT '还款时间',
  `refund_amount` decimal(21,4) DEFAULT NULL COMMENT '还款金额',
  `comments` varchar(100) DEFAULT NULL COMMENT '备注',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除标识  0未删除，1已删除',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`prid`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_internal_mail
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_internal_mail`;
CREATE TABLE `lxcs_internal_mail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `send_user_id` varchar(36) DEFAULT NULL COMMENT '发件人，关联c_m_user表的user_id',
  `send_time` int(10) DEFAULT NULL COMMENT '发件时间',
  `mail_type` varchar(1) DEFAULT NULL COMMENT '邮件类型---0；原始邮件；1：回复邮件；2：转发邮件',
  `mail_relate_id` int(10) DEFAULT NULL COMMENT '关联邮件id，mail_type不等于0时有值，和本表的id相关联，用来记录回复，转发的源邮件id',
  `mail_subject` varchar(100) DEFAULT NULL COMMENT '主题',
  `mail_content_id` varchar(36) DEFAULT NULL COMMENT '邮件内容id，关联mongo中的lxcs_internal_mail_content表的_id',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除标识  0未删除，1已删除',
  `create_date` varchar(10) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(10) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17612 DEFAULT CHARSET=utf8 COMMENT='站内信件表';

-- ----------------------------
-- Table structure for lxcs_internal_mail_attachment
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_internal_mail_attachment`;
CREATE TABLE `lxcs_internal_mail_attachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mail_id` int(10) DEFAULT NULL COMMENT '邮件id，关联lxcs_internal_mail表的id',
  `file_order` int(8) DEFAULT NULL COMMENT '文件顺序',
  `file_name` varchar(128) DEFAULT NULL COMMENT '原文件名',
  `file_size` bigint(20) DEFAULT NULL COMMENT '文件大小',
  `save_path` varchar(2000) DEFAULT NULL COMMENT '存放路径',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除标识',
  `create_user_id` varchar(36) DEFAULT NULL COMMENT '初期新建者',
  `create_date` varchar(10) DEFAULT NULL COMMENT '初期新建日',
  `update_user_id` varchar(36) DEFAULT NULL COMMENT '最终更新者',
  `update_date` varchar(10) DEFAULT NULL COMMENT '最终更新日',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='附件表';

-- ----------------------------
-- Table structure for lxcs_internal_mail_group
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_internal_mail_group`;
CREATE TABLE `lxcs_internal_mail_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mail_id` int(10) unsigned DEFAULT NULL COMMENT '邮件id，关联lxcs_internal_mail表的id',
  `department_group_id` int(10) DEFAULT NULL COMMENT '发件人选择的包含收件人的部门，关联c_m_department表的id',
  `department_group_all` varchar(300) DEFAULT NULL COMMENT '发件人选择的包含收件人的部门的全部子部门以及本身，关联c_m_department表的id，多个值时以逗号分隔',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除标识  0未删除，1已删除',
  `create_date` varchar(10) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(10) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='站内信件收件部门表';

-- ----------------------------
-- Table structure for lxcs_internal_mail_receive
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_internal_mail_receive`;
CREATE TABLE `lxcs_internal_mail_receive` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mail_id` int(10) DEFAULT NULL COMMENT '邮件id，关联lxcs_internal_mail表的id',
  `user_id` varchar(36) DEFAULT NULL COMMENT '收件人，关联c_m_user表的user_id',
  `type` varchar(1) DEFAULT NULL COMMENT '收件人类型  0个人，1部门',
  `read_flag` varchar(1) DEFAULT NULL COMMENT '已读标志---0；未读；1：已读',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除标识  0未删除，1已删除',
  `create_date` varchar(10) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(10) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27631 DEFAULT CHARSET=utf8 COMMENT='站内信件收件人表';

-- ----------------------------
-- Table structure for lxcs_internal_mail_theme
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_internal_mail_theme`;
CREATE TABLE `lxcs_internal_mail_theme` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `theme_name` varchar(50) DEFAULT NULL COMMENT '主题模板',
  `handle_date` varchar(20) DEFAULT NULL COMMENT '操作时间',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除标识  0未删除，1已删除',
  `create_date` varchar(10) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(10) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='站内信件主题模板表';

-- ----------------------------
-- Table structure for lxcs_large_amount_case_config
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_large_amount_case_config`;
CREATE TABLE `lxcs_large_amount_case_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `customer_id` varchar(36) DEFAULT NULL COMMENT '客户id',
  `customer_name` varchar(50) DEFAULT NULL,
  `money` decimal(12,0) DEFAULT NULL COMMENT '金额',
  `handle_time` varchar(10) DEFAULT NULL COMMENT '手次',
  `create_user_id` varchar(36) DEFAULT NULL COMMENT '创建人id',
  `create_time` varchar(10) DEFAULT NULL COMMENT '创建时间',
  `update_user_id` varchar(36) DEFAULT NULL COMMENT '更新人id',
  `update_time` varchar(10) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='大金额案件配置';

-- ----------------------------
-- Table structure for lxcs_large_amount_reward_config
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_large_amount_reward_config`;
CREATE TABLE `lxcs_large_amount_reward_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `callback_min` decimal(12,0) DEFAULT NULL COMMENT '回收金额下限',
  `callback_max` decimal(12,0) DEFAULT NULL COMMENT '回收金额上限',
  `reward` decimal(12,0) DEFAULT NULL COMMENT '奖励金额',
  `create_user_id` varchar(36) DEFAULT NULL COMMENT '创建人id',
  `create_time` varchar(10) DEFAULT NULL COMMENT '创建时间',
  `update_user_id` varchar(36) DEFAULT NULL COMMENT '更新人id',
  `update_time` varchar(10) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='大金额奖励配置';

-- ----------------------------
-- Table structure for lxcs_letter_apply
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_letter_apply`;
CREATE TABLE `lxcs_letter_apply` (
  `prid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL COMMENT 'uuid',
  `pid` varchar(36) DEFAULT NULL COMMENT '案件id，关联mongo的lxcs_case的_id',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '所分配的分公司id',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `custom_id` varchar(36) NOT NULL COMMENT '客户id，关联lxcs_custom表主键',
  `name` varchar(100) DEFAULT NULL COMMENT '债务人姓名',
  `address_id` varchar(36) DEFAULT NULL COMMENT '地址id，关联lxcs_contact_address表主键',
  `address` varchar(255) DEFAULT NULL,
  `address_type` varchar(32) DEFAULT NULL,
  `apply_status` varchar(2) DEFAULT NULL COMMENT '信函状态---0:无; 1:还未处理; 2:已发信函; 3:查无此人 ; 4:地址无效; 5:迁移新地址不明; 6:拆迁; 7:长期未拿;',
  `print_status` char(1) DEFAULT NULL COMMENT '打印状态---0:未打印; 1:已打印',
  `config_id` varchar(36) DEFAULT NULL COMMENT '信函名称id，关联lxcs_letter_config表的id',
  `apply_user_id` varchar(36) DEFAULT NULL COMMENT '申请人员',
  `apply_date` varchar(20) DEFAULT NULL COMMENT '申请日期',
  `print_user_id` varchar(36) DEFAULT NULL COMMENT '申请人员',
  `print_date` varchar(20) DEFAULT NULL,
  `id_no` varchar(25) NOT NULL COMMENT '证件号码',
  `latest_refund_date` varchar(20) DEFAULT NULL COMMENT '最新欠款日期',
  `repay_allmoney_wait` decimal(21,4) DEFAULT NULL COMMENT '欠款金额',
  `start_date` varchar(20) DEFAULT NULL COMMENT '委案时间',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除标识  0未删除，1已删除',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `flag` char(1) DEFAULT NULL COMMENT '隐藏标记 1:隐藏;0:不隐藏',
  PRIMARY KEY (`prid`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=447 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_letter_apply_days
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_letter_apply_days`;
CREATE TABLE `lxcs_letter_apply_days` (
  `prid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL COMMENT 'uuid',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '所分配的分公司id',
  `apply_days` tinyint(4) DEFAULT NULL COMMENT '案件编号',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除标识  0未删除，1已删除',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`prid`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='信函申请天数配置';

-- ----------------------------
-- Table structure for lxcs_letter_config
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_letter_config`;
CREATE TABLE `lxcs_letter_config` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `letter_name` varchar(128) NOT NULL COMMENT '信函名称',
  `custom_id` varchar(36) NOT NULL COMMENT '客户编号',
  `custom_name` varchar(64) NOT NULL COMMENT '客户名称',
  `department_cd` varchar(36) NOT NULL COMMENT '分公司编号',
  `department_name` varchar(100) NOT NULL COMMENT '分公司名称',
  `letter_type` varchar(1) DEFAULT NULL COMMENT '0:电子信函，1：纸质信函',
  `letter_type_code` varchar(10) DEFAULT NULL COMMENT '信函类型代码（交通用）',
  `template_path` varchar(256) NOT NULL COMMENT '信函内容',
  `operator` varchar(36) NOT NULL COMMENT '操作人员',
  `create_time` int(10) NOT NULL COMMENT '创建时间',
  `update_time` int(10) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COMMENT='信函配置表';

-- ----------------------------
-- Table structure for lxcs_letter_config_department
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_letter_config_department`;
CREATE TABLE `lxcs_letter_config_department` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `letter_config_id` int(10) DEFAULT NULL COMMENT '信函ID',
  `department_cd` varchar(36) NOT NULL COMMENT '分公司编号',
  `department_name` varchar(100) NOT NULL COMMENT '分公司名称',
  `operator` varchar(36) NOT NULL COMMENT '操作人员',
  `create_time` int(10) NOT NULL COMMENT '创建时间',
  `update_time` int(10) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=439 DEFAULT CHARSET=utf8 COMMENT='信函配置表（分公司）';

-- ----------------------------
-- Table structure for lxcs_letter_paper_apply
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_letter_paper_apply`;
CREATE TABLE `lxcs_letter_paper_apply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `case_id` varchar(36) NOT NULL COMMENT '案件id，关联mongo的lxcs_case的_id',
  `department_top_cd` varchar(40) NOT NULL COMMENT '所分配的分公司id',
  `case_no` varchar(36) NOT NULL COMMENT '案件编号',
  `card_id` varchar(64) NOT NULL COMMENT '卡表的id',
  `card_no` varchar(64) NOT NULL COMMENT '卡号',
  `custom_id` varchar(36) NOT NULL COMMENT '客户id，关联lxcs_custom表主键',
  `name` varchar(100) DEFAULT NULL COMMENT '债务人姓名',
  `address_id` varchar(36) DEFAULT NULL COMMENT '地址id，关联lxcs_contact_address表主键',
  `address` varchar(255) DEFAULT NULL,
  `address_type` varchar(32) DEFAULT NULL,
  `zip_code` varchar(16) DEFAULT NULL COMMENT '邮编',
  `apply_status` varchar(2) DEFAULT NULL COMMENT '信函状态---0:无; 1:还未处理; 2:已发信函; 3:查无此人 ; 4:地址无效; 5:迁移新地址不明; 6:拆迁; 7:长期未拿;',
  `print_status` char(1) DEFAULT NULL COMMENT '打印状态---0:未打印; 1:已打印',
  `config_id` varchar(36) NOT NULL COMMENT '信函名称id，关联lxcs_letter_config表的id',
  `user_id` varchar(36) DEFAULT NULL COMMENT '法务员',
  `apply_user_id` varchar(36) DEFAULT NULL COMMENT '申请人员',
  `apply_date` varchar(20) DEFAULT NULL COMMENT '申请日期',
  `id_no` varchar(25) NOT NULL COMMENT '证件号码',
  `latest_refund_date` varchar(20) DEFAULT NULL COMMENT '最新欠款日期',
  `repay_allmoney_wait` decimal(21,4) DEFAULT NULL COMMENT '最新欠款金额',
  `start_date` varchar(20) DEFAULT NULL COMMENT '委案时间',
  `outsource_no` varchar(30) DEFAULT NULL COMMENT '外包序列号',
  `handle_time` varchar(10) DEFAULT NULL COMMENT '手次',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除标识  0未删除，1已删除',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `flag` char(1) DEFAULT NULL COMMENT '隐藏标记 1:隐藏;0:不隐藏',
  `export_flag` char(1) NOT NULL DEFAULT '0' COMMENT '导出标记：''0''：未导出；''1''：已导出',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_level_details
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_level_details`;
CREATE TABLE `lxcs_level_details` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `config_id` int(10) NOT NULL COMMENT '配置名称表lxcs_level_star_config的id',
  `config_name` varchar(32) NOT NULL COMMENT '配置名称',
  `department_cd` varchar(40) NOT NULL COMMENT '分公司编号',
  `department_name` varchar(40) DEFAULT NULL,
  `custom_id` varchar(36) DEFAULT NULL COMMENT '客户编号',
  `custom_name` varchar(30) DEFAULT NULL COMMENT '客户名称',
  `handle_time_id` int(10) DEFAULT NULL COMMENT '手次编号',
  `handle_time_name` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT NULL COMMENT '星级，5星是5 ，4星是4，其他都是3星  3',
  `del_flag` char(1) DEFAULT NULL COMMENT '删除标志位0正常1删除',
  `create_user_id` varchar(40) DEFAULT NULL COMMENT '创建人id',
  `create_time` varchar(10) NOT NULL COMMENT '创建时间',
  `update_user_id` varchar(40) DEFAULT NULL COMMENT '更新人id',
  `update_time` varchar(10) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=661 DEFAULT CHARSET=utf8 COMMENT='搜索案件星级配置副表';

-- ----------------------------
-- Table structure for lxcs_level_star_config
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_level_star_config`;
CREATE TABLE `lxcs_level_star_config` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `config_name` varchar(32) NOT NULL COMMENT '配置名称',
  `create_user_id` varchar(40) DEFAULT NULL COMMENT '创建人id',
  `create_time` varchar(10) NOT NULL COMMENT '创建时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '删除标志位0正常 1删除',
  `update_user_id` varchar(40) DEFAULT NULL COMMENT '更新人id',
  `update_time` varchar(10) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8 COMMENT='搜索案件星级配置主表';

-- ----------------------------
-- Table structure for lxcs_level_star_task
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_level_star_task`;
CREATE TABLE `lxcs_level_star_task` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `config_id` int(10) NOT NULL COMMENT '配置id对应leveldetails的id',
  `config_name` varchar(32) NOT NULL COMMENT '配置名称',
  `task_nid` varchar(36) NOT NULL COMMENT '任务编号',
  `task_start_date` varchar(10) DEFAULT NULL COMMENT '任务开始日期',
  `task_end_date` varchar(10) DEFAULT NULL COMMENT '任务结束日期',
  `create_user_id` varchar(40) DEFAULT NULL COMMENT '创建人id',
  `create_time` varchar(10) NOT NULL COMMENT '创建时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '删除标志位0正常1删除',
  `update_user_id` varchar(40) DEFAULT NULL COMMENT '更新人id',
  `update_time` varchar(10) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='搜索案件星级配置主表';

-- ----------------------------
-- Table structure for lxcs_message_send
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_message_send`;
CREATE TABLE `lxcs_message_send` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template_id` varchar(50) DEFAULT NULL COMMENT '模板ID',
  `sort` varchar(11) DEFAULT NULL COMMENT '排序',
  `description` text COMMENT '说明',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除标识',
  `send_user_id` varchar(36) DEFAULT NULL COMMENT '推送用户',
  `create_date` varchar(20) DEFAULT NULL COMMENT '推送时间',
  `create_user_id` varchar(36) DEFAULT NULL COMMENT '操作人',
  `t_id` varchar(36) DEFAULT NULL COMMENT '案件ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=502 DEFAULT CHARSET=utf8 COMMENT='推送消息表';

-- ----------------------------
-- Table structure for lxcs_message_template
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_message_template`;
CREATE TABLE `lxcs_message_template` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template_name` varchar(50) DEFAULT NULL COMMENT '模板名称',
  `sort` varchar(11) DEFAULT '0' COMMENT '排序',
  `template_title` varchar(5000) DEFAULT NULL COMMENT '标题',
  `template_content` text COMMENT '模板内容',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除标识',
  `create_user_id` varchar(36) DEFAULT NULL COMMENT '初期新建者',
  `create_date` varchar(100) DEFAULT NULL COMMENT '初期新建日',
  `update_user_id` varchar(36) DEFAULT NULL COMMENT '最终更新者',
  `update_date` varchar(100) DEFAULT NULL COMMENT '最终更新日',
  `user_type` varchar(10) DEFAULT NULL COMMENT '用户类型(0:特定用户  1：所有用户)',
  `href_type` varchar(10) DEFAULT NULL COMMENT '跳转类型（0：案件详情）',
  `code_key` varchar(10) DEFAULT NULL COMMENT '模板编码',
  `href_url` varchar(100) DEFAULT NULL COMMENT '跳转地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='消息模板表';

-- ----------------------------
-- Table structure for lxcs_method_type
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_method_type`;
CREATE TABLE `lxcs_method_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `method_id` varchar(36) DEFAULT NULL COMMENT 'lxcs_find_method查找方法的id',
  `method_type_id` varchar(36) DEFAULT NULL COMMENT 'lxcs_find_method_type查找类别的id',
  `create_user_id` varchar(36) DEFAULT NULL COMMENT '初期新建者',
  `create_user_name` varchar(36) DEFAULT NULL COMMENT '初期新建者',
  `create_date` varchar(20) DEFAULT NULL COMMENT '初期新建日',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='查找方法和查找类别的关联表';

-- ----------------------------
-- Table structure for lxcs_msg_company
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_msg_company`;
CREATE TABLE `lxcs_msg_company` (
  `id` int(36) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(36) DEFAULT NULL COMMENT '分公司ID',
  `custom_id` varchar(3600) DEFAULT NULL COMMENT '禁止发送短信的客户ID',
  `user_id` varchar(3600) DEFAULT NULL COMMENT '禁止发送短信的法务id',
  `msg_status` varchar(10) DEFAULT NULL COMMENT '取数据字段，默认0',
  `msg_amount` varchar(10) DEFAULT NULL COMMENT '每个手机号允许发送的短信数量',
  `company_status` varchar(10) DEFAULT NULL COMMENT '分公司短信权限（0：关闭，1：开启）',
  `update_user_id` varchar(36) DEFAULT NULL COMMENT '操作人',
  `update_time` varchar(36) DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=277 DEFAULT CHARSET=utf8 COMMENT='分公司客户短信权限表';

-- ----------------------------
-- Table structure for lxcs_msg_config
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_msg_config`;
CREATE TABLE `lxcs_msg_config` (
  `id` int(36) NOT NULL AUTO_INCREMENT COMMENT '是否开启退订回T（0：否， 1：是）',
  `config_code` varchar(36) DEFAULT NULL COMMENT '配置编码',
  `return_state` varchar(10) DEFAULT NULL COMMENT '是否开启退订回T（0：关闭，1：开启）',
  `msg_count` varchar(10) DEFAULT NULL COMMENT '每个手机号每天允许发送的数量',
  `msg_price` varchar(10) DEFAULT NULL COMMENT '单条短信费用',
  `update_time` varchar(20) DEFAULT NULL COMMENT '操作时间',
  `update_user_id` varchar(36) DEFAULT NULL COMMENT '操作人',
  `msg_count_all` bigint(20) unsigned DEFAULT NULL COMMENT '短信每天允许发送的总条数',
  `msg_provider` int(2) DEFAULT NULL COMMENT '短信通道（1：联科时代）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='短息平台配置数据表';

-- ----------------------------
-- Table structure for lxcs_msg_permission
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_msg_permission`;
CREATE TABLE `lxcs_msg_permission` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `custom_id` varchar(36) DEFAULT NULL COMMENT '客户ID',
  `state` varchar(10) DEFAULT NULL COMMENT '权限状态：0：否，1：是',
  `update_user_id` varchar(36) DEFAULT NULL COMMENT '操作人ID',
  `update_time` varchar(20) DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=utf8 COMMENT='客户短信权限表';

-- ----------------------------
-- Table structure for lxcs_notice
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_notice`;
CREATE TABLE `lxcs_notice` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `notice_type` char(1) DEFAULT NULL COMMENT '公告类型  2新闻动态/1公司公告/3培训内容',
  `notice_title` varchar(200) DEFAULT NULL COMMENT '公告标题',
  `notice_content` text,
  `notice_status` char(1) DEFAULT '1' COMMENT '状态 1启用/2禁用/3删除',
  `notice_name` varchar(50) DEFAULT NULL COMMENT '附件文件名',
  `notice_url` varchar(100) DEFAULT NULL COMMENT '附件地址',
  `create_user_id` varchar(36) DEFAULT NULL COMMENT '初期新建者',
  `create_date` varchar(20) DEFAULT NULL COMMENT '初期新建日',
  `update_user_id` varchar(36) DEFAULT NULL COMMENT '最终更新者',
  `update_date` varchar(20) DEFAULT NULL COMMENT '最终更新日',
  `update_name` varchar(20) DEFAULT NULL COMMENT '更新人姓名',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司cd',
  `department_top_name` varchar(20) DEFAULT NULL COMMENT '分公司名称',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COMMENT='公告信息表';

-- ----------------------------
-- Table structure for lxcs_other_notes
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_other_notes`;
CREATE TABLE `lxcs_other_notes` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `start_date` varchar(20) DEFAULT NULL,
  `closing_date` varchar(20) DEFAULT NULL,
  `custom_id` varchar(36) DEFAULT NULL,
  `custom_name` varchar(50) DEFAULT NULL COMMENT '客户名称',
  `source` varchar(20) DEFAULT NULL COMMENT '信息来源',
  `id_no` varchar(25) DEFAULT NULL COMMENT '证件号码',
  `card_no` varchar(64) DEFAULT NULL COMMENT '卡号',
  `card_user_name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `sub_card_user_name` varchar(50) DEFAULT NULL COMMENT '附卡人姓名',
  `open_account_time` varchar(20) DEFAULT NULL COMMENT '开户日期',
  `total_arrears_amount` varchar(25) DEFAULT NULL COMMENT '总计欠款金额',
  `birthday` varchar(20) DEFAULT NULL COMMENT '生日',
  `post` varchar(10) DEFAULT NULL COMMENT '帐址邮编',
  `company_tel_area_code` varchar(5) DEFAULT NULL COMMENT '公司电话区号',
  `company_tel` varchar(25) DEFAULT NULL COMMENT '公司电话',
  `building_tel_area_code` varchar(5) DEFAULT NULL COMMENT '住宅电话区号',
  `building_tel` varchar(25) DEFAULT NULL COMMENT '住宅电话',
  `mobile` varchar(200) DEFAULT NULL COMMENT '手机',
  `email` varchar(50) DEFAULT NULL COMMENT 'email',
  `sub_company_tel_area_code` varchar(5) DEFAULT NULL COMMENT '附卡人公司电话区号',
  `sub_company_tel` varchar(25) DEFAULT NULL COMMENT '附卡人公司电话',
  `sub_building_tel_area_code` varchar(5) DEFAULT NULL COMMENT '附卡人住宅电话区号',
  `sub_building_tel` varchar(25) DEFAULT NULL COMMENT '附卡人住宅电话',
  `sub_mobile` varchar(200) DEFAULT NULL COMMENT '附卡人手机',
  `contacter1` varchar(50) DEFAULT NULL COMMENT '联系人一',
  `contacter1_mobile` varchar(200) DEFAULT NULL COMMENT '联系人一手机',
  `contacter1_tel_area_code` varchar(5) DEFAULT NULL COMMENT '联系人一电话区号',
  `contacter1_tel` varchar(25) DEFAULT NULL COMMENT '联系人一电话',
  `contacter1_idno` varchar(20) DEFAULT NULL COMMENT '联系人一身份',
  `contacter2` varchar(50) DEFAULT NULL COMMENT '联系人二',
  `contacter2_mobile` varchar(200) DEFAULT NULL COMMENT '联系人二手机',
  `contacter2_tel_area_code` varchar(5) DEFAULT NULL COMMENT '联系人二电话区号',
  `contacter2_tel` varchar(25) DEFAULT NULL COMMENT '联系人二电话',
  `contacter2_idno` varchar(20) DEFAULT NULL COMMENT '联系人二身份',
  `collection_user` varchar(20) DEFAULT NULL COMMENT '催收员',
  `note1` varchar(1000) DEFAULT NULL COMMENT '备注1',
  `note2` varchar(1000) DEFAULT NULL COMMENT '备注2',
  `note3` varchar(1000) DEFAULT NULL COMMENT '备注3',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `id_no` (`id_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='附加信息表';

-- ----------------------------
-- Table structure for lxcs_phoneautocall
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_phoneautocall`;
CREATE TABLE `lxcs_phoneautocall` (
  `id` int(18) NOT NULL AUTO_INCREMENT,
  `PhoneNum` varchar(20) DEFAULT NULL COMMENT '电话号码',
  `handleTime` varchar(20) DEFAULT NULL COMMENT '批次',
  `batchTime` varchar(10) DEFAULT NULL COMMENT '导入批次',
  `IdNo` varchar(20) DEFAULT NULL COMMENT '债务人身份证',
  `contentTxt` varchar(2000) DEFAULT NULL COMMENT '外呼内容',
  `status` varchar(10) DEFAULT NULL COMMENT '表示是否已拨打 0--已拨打 1--未拨打',
  `addTime` varchar(13) DEFAULT NULL COMMENT '条目添加时间',
  `callTime` varchar(13) DEFAULT NULL COMMENT '拨打电话时间 同步小程序会填入',
  `endTime` varchar(13) DEFAULT NULL COMMENT '通话结束时间 同步小程序填入',
  `result` varchar(50) DEFAULT NULL COMMENT '打电话结果 由同步小程序填入',
  `userId` varchar(36) DEFAULT NULL COMMENT '用户id',
  `userName` varchar(20) DEFAULT NULL COMMENT '法务员代号',
  `isUpdate` char(1) DEFAULT NULL COMMENT '是否已同步到自动外呼中心 0--未同步 1--已同步',
  `source_id` varchar(36) DEFAULT NULL COMMENT '自动外呼中心条目id',
  `department_top_cd` varchar(36) DEFAULT NULL COMMENT '所属分公司',
  `case_status` varchar(20) DEFAULT NULL COMMENT '案件状态',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `CallNum` varchar(20) DEFAULT NULL COMMENT '拨打次数',
  `branchCompany` varchar(20) DEFAULT NULL COMMENT '分公司',
  `saipu` char(1) DEFAULT '0' COMMENT '是不是赛普的单子0不是 1是',
  `phone_type` varchar(20) DEFAULT NULL COMMENT '电话类型',
  `zfb_benren_phone_flag` char(1) DEFAULT '0' COMMENT '0不是支付宝绑定手机和本人手机电话 1是',
  `name` varchar(20) DEFAULT NULL COMMENT '债务人姓名',
  `customer_name` varchar(50) DEFAULT NULL COMMENT '客户名称',
  `relation_ship` varchar(20) DEFAULT NULL COMMENT '亲属关系',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1155 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_phoneautocall_config
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_phoneautocall_config`;
CREATE TABLE `lxcs_phoneautocall_config` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司主键',
  `custom_id` varchar(36) DEFAULT NULL COMMENT '客户编号',
  `auto_call_title` varchar(100) DEFAULT NULL COMMENT '自动外呼标题',
  `auto_call_content` varchar(1000) DEFAULT NULL COMMENT '自动外呼内容',
  `status` char(2) NOT NULL COMMENT '状态(-1:删除,1:正常)',
  `create_user_id` varchar(36) NOT NULL COMMENT '创建人',
  `create_time` varchar(20) NOT NULL COMMENT '创建时间',
  `update_user_id` varchar(36) DEFAULT NULL COMMENT '更新人',
  `update_time` varchar(20) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_plan_template
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_plan_template`;
CREATE TABLE `lxcs_plan_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `plan_name` varchar(50) DEFAULT NULL COMMENT '计划名称',
  `sort_key` int(11) DEFAULT '0' COMMENT '排序',
  `custom_id` varchar(40) DEFAULT NULL COMMENT '客户id',
  `custom_name` varchar(40) DEFAULT NULL COMMENT '客户名称',
  `custom_code` varchar(20) DEFAULT NULL COMMENT '客户代码',
  `apply_reason` varchar(600) DEFAULT NULL COMMENT '申请原因',
  `action_code` varchar(20) DEFAULT NULL COMMENT '行动代码',
  `status` char(1) DEFAULT '0' COMMENT '申请状态0待审核1审核通过2审核部通过3不要审核',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除标识',
  `create_user_id` varchar(36) DEFAULT NULL COMMENT '法务员id',
  `create_user_name` varchar(20) DEFAULT NULL COMMENT '法务员姓名',
  `create_user_department` varchar(36) DEFAULT NULL COMMENT '法务员所属分公司',
  `create_user_department_name` varchar(30) DEFAULT NULL COMMENT '所属公司名称',
  `create_date` varchar(20) DEFAULT NULL COMMENT '申请时间',
  `update_user_id` varchar(36) DEFAULT NULL COMMENT '最终更新者',
  `update_date` varchar(20) DEFAULT NULL COMMENT '最终更新日',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='客户表';

-- ----------------------------
-- Table structure for lxcs_problem_solve
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_problem_solve`;
CREATE TABLE `lxcs_problem_solve` (
  `prid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL COMMENT 'uuid',
  `pid` varchar(36) DEFAULT NULL COMMENT '案件id，关联mongo的lxcs_case的_id',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `custom_id` varchar(36) NOT NULL COMMENT '客户id，关联lxcs_custom表主键',
  `name` varchar(100) DEFAULT NULL COMMENT '债务人姓名',
  `batch_time` varchar(10) DEFAULT NULL COMMENT '接单批次',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '所分配的分公司id',
  `demand` varchar(500) DEFAULT NULL COMMENT '需求',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `reply` varchar(500) DEFAULT NULL COMMENT '回复',
  `problem_status` varchar(10) DEFAULT NULL COMMENT '问题状态---New:提出问题; Accept:通过; Reply:回复; Return:打回',
  `posing_date` varchar(20) DEFAULT NULL COMMENT '申请日期',
  `posing_user_id` varchar(36) DEFAULT NULL COMMENT '申请人员',
  `audit_date` varchar(20) DEFAULT NULL COMMENT '审核时间',
  `audit_user_id` varchar(36) DEFAULT NULL COMMENT '审核人员',
  `reply_date` varchar(20) DEFAULT NULL COMMENT '回复时间',
  `reply_user_id` varchar(36) DEFAULT NULL COMMENT '回复人员',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除标识  0未删除，1已删除',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`prid`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='问题查询表';

-- ----------------------------
-- Table structure for lxcs_progress0
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress0`;
CREATE TABLE `lxcs_progress0` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`),
  KEY `case_no_2` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=52552 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress1
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress1`;
CREATE TABLE `lxcs_progress1` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=46115 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress10
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress10`;
CREATE TABLE `lxcs_progress10` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=47534 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress11
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress11`;
CREATE TABLE `lxcs_progress11` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=46997 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress12
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress12`;
CREATE TABLE `lxcs_progress12` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=44877 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress13
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress13`;
CREATE TABLE `lxcs_progress13` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=49359 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress14
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress14`;
CREATE TABLE `lxcs_progress14` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=49925 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress15
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress15`;
CREATE TABLE `lxcs_progress15` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=47279 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress16
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress16`;
CREATE TABLE `lxcs_progress16` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=48840 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress17
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress17`;
CREATE TABLE `lxcs_progress17` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=46934 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress18
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress18`;
CREATE TABLE `lxcs_progress18` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=49248 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress19
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress19`;
CREATE TABLE `lxcs_progress19` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=47955 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress2
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress2`;
CREATE TABLE `lxcs_progress2` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=50279 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress20
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress20`;
CREATE TABLE `lxcs_progress20` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=47090 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress21
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress21`;
CREATE TABLE `lxcs_progress21` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=49995 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress22
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress22`;
CREATE TABLE `lxcs_progress22` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=46479 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress23
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress23`;
CREATE TABLE `lxcs_progress23` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=46256 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress24
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress24`;
CREATE TABLE `lxcs_progress24` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=45980 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress25
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress25`;
CREATE TABLE `lxcs_progress25` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=48263 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress26
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress26`;
CREATE TABLE `lxcs_progress26` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=48608 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress27
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress27`;
CREATE TABLE `lxcs_progress27` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=44277 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress28
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress28`;
CREATE TABLE `lxcs_progress28` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=46550 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress29
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress29`;
CREATE TABLE `lxcs_progress29` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=46020 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress3
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress3`;
CREATE TABLE `lxcs_progress3` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=47913 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress30
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress30`;
CREATE TABLE `lxcs_progress30` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=48852 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress31
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress31`;
CREATE TABLE `lxcs_progress31` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=45317 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress32
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress32`;
CREATE TABLE `lxcs_progress32` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=48568 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress33
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress33`;
CREATE TABLE `lxcs_progress33` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=1365006 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress34
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress34`;
CREATE TABLE `lxcs_progress34` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=46294 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress35
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress35`;
CREATE TABLE `lxcs_progress35` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=48866 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress36
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress36`;
CREATE TABLE `lxcs_progress36` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=47402 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress37
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress37`;
CREATE TABLE `lxcs_progress37` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=48402 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress38
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress38`;
CREATE TABLE `lxcs_progress38` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=49426 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress39
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress39`;
CREATE TABLE `lxcs_progress39` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=49048 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress4
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress4`;
CREATE TABLE `lxcs_progress4` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=1616372 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress40
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress40`;
CREATE TABLE `lxcs_progress40` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=47999 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress41
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress41`;
CREATE TABLE `lxcs_progress41` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=48249 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress42
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress42`;
CREATE TABLE `lxcs_progress42` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=46760 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress43
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress43`;
CREATE TABLE `lxcs_progress43` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=47246 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress44
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress44`;
CREATE TABLE `lxcs_progress44` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=47030 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress45
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress45`;
CREATE TABLE `lxcs_progress45` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=48251 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress46
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress46`;
CREATE TABLE `lxcs_progress46` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=49197 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress47
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress47`;
CREATE TABLE `lxcs_progress47` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=46664 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress48
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress48`;
CREATE TABLE `lxcs_progress48` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=46938 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress49
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress49`;
CREATE TABLE `lxcs_progress49` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=47073 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress5
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress5`;
CREATE TABLE `lxcs_progress5` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=47193 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress50
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress50`;
CREATE TABLE `lxcs_progress50` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=866132 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress51
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress51`;
CREATE TABLE `lxcs_progress51` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=46887 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress52
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress52`;
CREATE TABLE `lxcs_progress52` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=47155 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress53
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress53`;
CREATE TABLE `lxcs_progress53` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=50063 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress54
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress54`;
CREATE TABLE `lxcs_progress54` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=48257 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress55
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress55`;
CREATE TABLE `lxcs_progress55` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=46758 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress56
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress56`;
CREATE TABLE `lxcs_progress56` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=49386 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress57
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress57`;
CREATE TABLE `lxcs_progress57` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=46922 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress58
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress58`;
CREATE TABLE `lxcs_progress58` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=48069 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress59
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress59`;
CREATE TABLE `lxcs_progress59` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=48241 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress6
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress6`;
CREATE TABLE `lxcs_progress6` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=47323 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress60
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress60`;
CREATE TABLE `lxcs_progress60` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=48565 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress61
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress61`;
CREATE TABLE `lxcs_progress61` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=46682 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress62
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress62`;
CREATE TABLE `lxcs_progress62` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=46960 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress63
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress63`;
CREATE TABLE `lxcs_progress63` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=46318 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress64
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress64`;
CREATE TABLE `lxcs_progress64` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=48238 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress65
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress65`;
CREATE TABLE `lxcs_progress65` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=47402 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress66
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress66`;
CREATE TABLE `lxcs_progress66` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=47702 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress67
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress67`;
CREATE TABLE `lxcs_progress67` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=47271 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress68
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress68`;
CREATE TABLE `lxcs_progress68` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=51127 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress69
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress69`;
CREATE TABLE `lxcs_progress69` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=48885 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress7
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress7`;
CREATE TABLE `lxcs_progress7` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=46551 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress70
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress70`;
CREATE TABLE `lxcs_progress70` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=46566 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress71
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress71`;
CREATE TABLE `lxcs_progress71` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=48372 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress72
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress72`;
CREATE TABLE `lxcs_progress72` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=48043 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress73
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress73`;
CREATE TABLE `lxcs_progress73` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=45409 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress74
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress74`;
CREATE TABLE `lxcs_progress74` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=47257 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress75
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress75`;
CREATE TABLE `lxcs_progress75` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=48461 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress76
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress76`;
CREATE TABLE `lxcs_progress76` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=47672 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress77
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress77`;
CREATE TABLE `lxcs_progress77` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=48642 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress78
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress78`;
CREATE TABLE `lxcs_progress78` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=45393 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress79
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress79`;
CREATE TABLE `lxcs_progress79` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=52478 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress8
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress8`;
CREATE TABLE `lxcs_progress8` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=49333 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress80
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress80`;
CREATE TABLE `lxcs_progress80` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=47696 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress81
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress81`;
CREATE TABLE `lxcs_progress81` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=47743 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress82
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress82`;
CREATE TABLE `lxcs_progress82` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=46401 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress83
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress83`;
CREATE TABLE `lxcs_progress83` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=47444 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress84
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress84`;
CREATE TABLE `lxcs_progress84` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=45280 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress85
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress85`;
CREATE TABLE `lxcs_progress85` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=47714 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress86
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress86`;
CREATE TABLE `lxcs_progress86` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=47071 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress87
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress87`;
CREATE TABLE `lxcs_progress87` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=46358 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress88
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress88`;
CREATE TABLE `lxcs_progress88` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=46458 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress89
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress89`;
CREATE TABLE `lxcs_progress89` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=46370 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress9
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress9`;
CREATE TABLE `lxcs_progress9` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=48728 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress90
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress90`;
CREATE TABLE `lxcs_progress90` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=42947 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress91
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress91`;
CREATE TABLE `lxcs_progress91` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=46646 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress92
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress92`;
CREATE TABLE `lxcs_progress92` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=47866 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress93
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress93`;
CREATE TABLE `lxcs_progress93` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=48498 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress94
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress94`;
CREATE TABLE `lxcs_progress94` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=47289 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress95
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress95`;
CREATE TABLE `lxcs_progress95` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=47181 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress96
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress96`;
CREATE TABLE `lxcs_progress96` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=47260 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress97
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress97`;
CREATE TABLE `lxcs_progress97` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=47445 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress98
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress98`;
CREATE TABLE `lxcs_progress98` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=49617 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress99
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress99`;
CREATE TABLE `lxcs_progress99` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `record_url` varchar(200) DEFAULT NULL COMMENT '录音地址',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司',
  `call_department_top_cd` varchar(40) DEFAULT NULL COMMENT '打电话人的分公司id(用来找ip)',
  `id_no` varchar(25) NOT NULL COMMENT '被催人身份证号',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '业务员',
  `user_name` varchar(20) DEFAULT NULL COMMENT '操作员用户名',
  `progress_type` varchar(2) DEFAULT NULL COMMENT '进展类型.1电催进展2外访进展3搜索进展4信函进展，5其他进展，6分配法务员',
  `answer_status` varchar(10) DEFAULT NULL COMMENT '接听状态',
  `answer_type` char(2) DEFAULT NULL COMMENT '接听人类型',
  `answer_message` varchar(200) DEFAULT NULL COMMENT '接听后反馈',
  `action_id` varchar(36) DEFAULT NULL COMMENT '行动代码id，plan_template表',
  `action_result` varchar(200) DEFAULT NULL COMMENT '行动结果',
  `action_code` varchar(30) DEFAULT NULL COMMENT '行动代码',
  `action_plan` varchar(10) DEFAULT NULL COMMENT '行动计划',
  `operate_code` varchar(10) DEFAULT NULL COMMENT '操作代码',
  `operate` varchar(2000) DEFAULT NULL COMMENT '措施',
  `promise_repay_money` varchar(21) DEFAULT NULL COMMENT '承诺还款金额',
  `promise_repay_date` varchar(20) DEFAULT NULL COMMENT '承诺还款日期',
  `remind` char(1) DEFAULT NULL COMMENT '是否提醒0不提醒1提醒',
  `remind_date` varchar(20) DEFAULT NULL COMMENT '提醒日期',
  `record` char(1) DEFAULT NULL COMMENT '是否同时添加录音0否1是',
  `begin_call_time` varchar(13) DEFAULT NULL COMMENT '开始打电话时间',
  `end_call_time` varchar(13) DEFAULT NULL COMMENT '结束电话时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '0有效 1无效',
  `hidden` char(1) DEFAULT NULL COMMENT '标记为可隐藏催记0不隐藏1隐藏',
  `comment` varchar(20) DEFAULT NULL COMMENT '备注',
  `progress_department_name` varchar(20) DEFAULT NULL COMMENT '分公司',
  `progress_user_id` varchar(36) DEFAULT NULL COMMENT '流程历史记录用户id',
  `progress_user_name` varchar(20) DEFAULT NULL COMMENT '流程历史记录用户名',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '外访员id',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `auto_status` char(1) DEFAULT NULL COMMENT '自动添加催记标志位',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`),
  KEY `case_no` (`case_no`)
) ENGINE=InnoDB AUTO_INCREMENT=48446 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_progress_visit
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_progress_visit`;
CREATE TABLE `lxcs_progress_visit` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tid` varchar(36) NOT NULL,
  `random_num` varchar(36) DEFAULT NULL COMMENT '随机数值',
  `case_no` varchar(50) DEFAULT NULL COMMENT '案件编号',
  `customer_name` varchar(200) DEFAULT NULL COMMENT '客户',
  `case_type` varchar(5) DEFAULT NULL COMMENT '案件类型',
  `name` varchar(100) DEFAULT NULL COMMENT '债务人姓名',
  `case_money` varchar(40) DEFAULT NULL COMMENT '最新欠款金额',
  `promises_money` varchar(40) DEFAULT NULL COMMENT '承诺金融（空白）',
  `start_date` varchar(20) DEFAULT NULL COMMENT '接单时间',
  `department_top_cd` varchar(36) DEFAULT NULL COMMENT '法务员所属分公司',
  `department_top_name` varchar(50) DEFAULT NULL COMMENT '法务员所属分公司',
  `department_cd` varchar(36) DEFAULT NULL COMMENT '法务员所属分公司',
  `department_name` varchar(50) DEFAULT NULL COMMENT '法务员所属组名称',
  `user_id` varchar(36) DEFAULT NULL COMMENT '所属法务员',
  `user_name` varchar(100) DEFAULT NULL COMMENT '所属法务员(真实姓名)',
  `status` varchar(10) DEFAULT NULL COMMENT '案件状态（暂时不用）',
  `handle_time` varchar(20) DEFAULT NULL COMMENT '手次',
  `card_no` varchar(64) DEFAULT NULL COMMENT '卡号',
  `id_no` varchar(25) DEFAULT NULL COMMENT '身份证',
  `address_relation_ship` varchar(50) DEFAULT NULL COMMENT '关系',
  `address_name` varchar(100) DEFAULT NULL COMMENT '姓名',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `address_id` varchar(36) DEFAULT NULL COMMENT '地址表id',
  `lng` varchar(50) DEFAULT NULL COMMENT '经度',
  `lat` varchar(50) DEFAULT NULL COMMENT '纬度',
  `cooperative_personnel` varchar(2000) DEFAULT NULL COMMENT '协同人员',
  `request_note` varchar(2000) DEFAULT NULL COMMENT '说明（措施APP端录入）',
  `request_type` varchar(1) DEFAULT NULL COMMENT '0：外访  1：协防',
  `request_commnet` varchar(500) DEFAULT NULL COMMENT '说明',
  `request_time` varchar(20) DEFAULT NULL COMMENT '申请时间',
  `visit_department_top_cd` varchar(36) DEFAULT NULL COMMENT '外访员所属分公司',
  `visit_department_top_name` varchar(50) DEFAULT NULL COMMENT '外访员所属分公司',
  `visit_department_cd` varchar(36) DEFAULT NULL COMMENT '外访员所属组',
  `visit_department_name` varchar(50) DEFAULT NULL COMMENT '外访员所属分组名称',
  `visit_user_id` varchar(36) DEFAULT NULL COMMENT '所属外访员',
  `visit_user_name` varchar(100) DEFAULT NULL COMMENT '所属外访员(真实姓名)',
  `visit_status` varchar(10) DEFAULT NULL COMMENT '外访状态',
  `visit_time` varchar(20) DEFAULT NULL COMMENT '外访分配时间',
  `visit_start_time` varchar(20) DEFAULT NULL,
  `visti_data_download_time` varchar(20) DEFAULT NULL COMMENT '实际外访时间',
  `visit_over_time` varchar(10) DEFAULT NULL COMMENT '外访完结时间（结束时间）',
  `comment_a1` varchar(255) DEFAULT NULL COMMENT 'A.外访地址基本判定情况',
  `comment_b1` varchar(255) DEFAULT NULL COMMENT 'B.外访地址状态描述 地址性质',
  `comment_b2` varchar(255) DEFAULT NULL COMMENT 'B.外访地址状态描述 安保情况',
  `comment_b3` varchar(255) DEFAULT NULL COMMENT 'B.外访地址状态描述 信箱情况',
  `comment_b4` varchar(255) DEFAULT NULL COMMENT 'B.外访地址状态描述 观察所知上述地址',
  `comment_c1` varchar(255) DEFAULT NULL COMMENT 'C.外访地址与持卡人描述1',
  `comment_c2` varchar(255) DEFAULT NULL COMMENT 'C.外访地址与持卡人描述2',
  `comment_c3` varchar(255) DEFAULT NULL COMMENT 'C.外访地址与持卡人描述 持卡人在此时间',
  `comment_c4` varchar(255) DEFAULT NULL COMMENT 'C.外访地址与持卡人描述  外访期间持卡人',
  `comment_d1` varchar(255) DEFAULT NULL COMMENT 'D.拜访施压及沟通情况反馈 沟通对象和持卡人关系',
  `comment_d2` varchar(255) DEFAULT NULL COMMENT 'D.拜访施压及沟通情况反馈 沟通对象态度',
  `comment_d3` varchar(255) DEFAULT NULL COMMENT 'D.拜访施压及沟通情况反馈 沟通结果',
  `comment_d4` varchar(255) DEFAULT NULL COMMENT 'D.拜访施压及沟通情况反馈 还款通知书送达至',
  `comment_d5` varchar(255) DEFAULT NULL COMMENT 'D.拜访施压及沟通情况反馈 还款能力判断',
  `comment_e1` varchar(500) DEFAULT NULL COMMENT 'E.新线索反馈及确认 新地址线索',
  `comment_e2` varchar(500) DEFAULT NULL COMMENT 'E.新线索反馈及确认 新电话线索',
  `comment_e3` varchar(500) DEFAULT NULL COMMENT 'E.新线索反馈及确认 其他线索',
  `comment_e4` varchar(500) DEFAULT NULL COMMENT 'E.新线索反馈及确认 电催人员签名',
  `download_url` varchar(500) DEFAULT NULL,
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `open_account_date` varchar(20) DEFAULT NULL COMMENT '开户时间',
  `closing_date` varchar(10) DEFAULT NULL COMMENT '委案结束时间',
  `repay_wait_date` varchar(10) DEFAULT NULL COMMENT '最新欠款时间',
  `distribute_user_id` varchar(36) DEFAULT NULL COMMENT '分配员',
  `back_type` varchar(10) DEFAULT NULL COMMENT '案件退回类型（return1：退回至客服；return6：退回至法务）',
  `visit_resource` varchar(30) DEFAULT NULL COMMENT '案件来源（外访退回、外访退回人）',
  `feed_back` varchar(30) DEFAULT NULL COMMENT '有效性反馈',
  `visit_back_user` varchar(10) DEFAULT NULL COMMENT '外访退回操作人',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `tid` (`tid`),
  KEY `request_time` (`request_time`),
  KEY `case_no` (`case_no`),
  KEY `id_no` (`id_no`),
  KEY `visit_status` (`visit_status`),
  KEY `department_cd` (`department_cd`)
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_quality
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_quality`;
CREATE TABLE `lxcs_quality` (
  `id` varchar(36) NOT NULL,
  `quality_title` varchar(30) DEFAULT NULL COMMENT '公告标题',
  `quality_content` text,
  `quality_status` char(1) DEFAULT '1' COMMENT '状态 1启用/2禁用/3删除',
  `is_second` char(1) DEFAULT NULL COMMENT '是否强制显示',
  `quality_second` int(5) DEFAULT NULL COMMENT '倒数秒 ',
  `create_user_id` varchar(36) DEFAULT NULL COMMENT '初期新建者',
  `create_date` varchar(20) DEFAULT NULL COMMENT '初期新建日',
  `update_user_id` varchar(36) DEFAULT NULL COMMENT '最终更新者',
  `update_date` varchar(20) DEFAULT NULL COMMENT '最终更新日',
  `update_name` varchar(20) DEFAULT NULL COMMENT '更新人姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公告信息表';

-- ----------------------------
-- Table structure for lxcs_reduction_file_config
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_reduction_file_config`;
CREATE TABLE `lxcs_reduction_file_config` (
  `id` int(10) NOT NULL COMMENT '主键',
  `file_name` varchar(200) NOT NULL COMMENT '材料名称',
  `custom_id` varchar(36) NOT NULL COMMENT '关联客户表ID',
  `file_path` varchar(500) DEFAULT NULL COMMENT '材料路径',
  `status` int(2) NOT NULL COMMENT '状态(-1:删除,1正常)',
  `create_user_id` varchar(36) NOT NULL COMMENT '创建人',
  `create_time` varchar(20) NOT NULL COMMENT '创建时间',
  `update_user_id` varchar(36) DEFAULT NULL COMMENT '更新人',
  `update_time` varchar(20) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='减免材料申请表配置';

-- ----------------------------
-- Table structure for lxcs_remind
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_remind`;
CREATE TABLE `lxcs_remind` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(36) NOT NULL,
  `message` varchar(500) DEFAULT NULL COMMENT '消息',
  `message_time` varchar(20) DEFAULT NULL COMMENT '消息提醒时间',
  `message_content` varchar(2000) DEFAULT NULL COMMENT '消息详情',
  `remind_flag` varchar(1) DEFAULT NULL COMMENT '0：未提醒 1：已提醒',
  `remind_user_cd` varchar(36) DEFAULT NULL COMMENT '提醒用户',
  `create_user_cd` varchar(36) DEFAULT NULL COMMENT '创建人',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建时间',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标记：''0''：未删除；''1''：已删除',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1788 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_remind_manager
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_remind_manager`;
CREATE TABLE `lxcs_remind_manager` (
  `id` varchar(36) NOT NULL,
  `remind_name` varchar(50) DEFAULT NULL COMMENT '提醒名称',
  `remind_content` varchar(2000) DEFAULT NULL COMMENT '消息内容',
  `remind_note` varchar(2000) DEFAULT NULL COMMENT '说明',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '0：未提醒 1：已提醒',
  `create_user_cd` varchar(36) DEFAULT NULL COMMENT '创建人',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建时间',
  `update_user_cd` varchar(36) DEFAULT NULL,
  `update_date` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_repayment_details0
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_repayment_details0`;
CREATE TABLE `lxcs_repayment_details0` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `custom_id` varchar(36) DEFAULT NULL COMMENT '客户编号',
  `custom_name` varchar(50) DEFAULT NULL COMMENT '客户名称',
  `case_no` varchar(30) NOT NULL COMMENT '案件编号',
  `id_no` varchar(25) NOT NULL COMMENT '持卡人身份证号',
  `card_no` varchar(64) NOT NULL COMMENT '卡号',
  `account` varchar(64) NOT NULL COMMENT '账号',
  `outsource_no` varchar(36) DEFAULT NULL COMMENT '外包序列号',
  `repayment_time` varchar(10) DEFAULT NULL COMMENT '还款日期',
  `arrival_time` varchar(10) DEFAULT NULL COMMENT '到账日期',
  `repayment_amount` decimal(14,4) DEFAULT NULL COMMENT '还款总额',
  `single_amount` decimal(14,4) DEFAULT NULL COMMENT '单笔金额',
  `exchange_rate` decimal(14,4) DEFAULT NULL COMMENT '汇率',
  `currency` varchar(10) DEFAULT NULL COMMENT '币种',
  `to_rmb` decimal(14,4) DEFAULT NULL COMMENT '合人民币金额',
  `capital` decimal(14,4) DEFAULT NULL COMMENT '本金',
  `interest` decimal(14,4) DEFAULT NULL COMMENT '利息',
  `latest_arrears` decimal(14,4) DEFAULT NULL COMMENT '最新欠款',
  `flag` tinyint(1) unsigned NOT NULL COMMENT '标志',
  `create_time` varchar(10) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `card_no` (`card_no`) USING BTREE COMMENT '卡号索引',
  KEY `account` (`account`) COMMENT '账号索引',
  KEY `outsource_no` (`outsource_no`) COMMENT '外包序列号索引'
) ENGINE=InnoDB AUTO_INCREMENT=394204 DEFAULT CHARSET=utf8 COMMENT='还款详情表';

-- ----------------------------
-- Table structure for lxcs_repayment_details1
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_repayment_details1`;
CREATE TABLE `lxcs_repayment_details1` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `custom_id` varchar(36) DEFAULT NULL COMMENT '客户编号',
  `custom_name` varchar(50) DEFAULT NULL COMMENT '客户名称',
  `case_no` varchar(30) NOT NULL COMMENT '案件编号',
  `id_no` varchar(25) NOT NULL COMMENT '持卡人身份证号',
  `card_no` varchar(64) NOT NULL COMMENT '卡号',
  `account` varchar(64) NOT NULL COMMENT '账号',
  `outsource_no` varchar(36) DEFAULT NULL COMMENT '外包序列号',
  `repayment_time` varchar(10) DEFAULT NULL COMMENT '还款日期',
  `arrival_time` varchar(10) DEFAULT NULL COMMENT '到账日期',
  `repayment_amount` decimal(14,4) DEFAULT NULL COMMENT '还款总额',
  `single_amount` decimal(14,4) DEFAULT NULL COMMENT '单笔金额',
  `exchange_rate` decimal(14,4) DEFAULT NULL COMMENT '汇率',
  `currency` varchar(10) DEFAULT NULL COMMENT '币种',
  `to_rmb` decimal(14,4) DEFAULT NULL COMMENT '合人民币金额',
  `capital` decimal(14,4) DEFAULT NULL COMMENT '本金',
  `interest` decimal(14,4) DEFAULT NULL COMMENT '利息',
  `latest_arrears` decimal(14,4) DEFAULT NULL COMMENT '最新欠款',
  `flag` tinyint(1) unsigned NOT NULL COMMENT '标志',
  `create_time` varchar(10) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `card_no` (`card_no`) USING BTREE COMMENT '卡号索引',
  KEY `account` (`account`) COMMENT '账号索引',
  KEY `outsource_no` (`outsource_no`) COMMENT '外包序列号索引',
  KEY `card_no_2` (`card_no`)
) ENGINE=InnoDB AUTO_INCREMENT=393703 DEFAULT CHARSET=utf8 COMMENT='还款详情表';

-- ----------------------------
-- Table structure for lxcs_repayment_details2
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_repayment_details2`;
CREATE TABLE `lxcs_repayment_details2` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `custom_id` varchar(36) DEFAULT NULL COMMENT '客户编号',
  `custom_name` varchar(50) DEFAULT NULL COMMENT '客户名称',
  `case_no` varchar(30) NOT NULL COMMENT '案件编号',
  `id_no` varchar(25) NOT NULL COMMENT '持卡人身份证号',
  `card_no` varchar(64) NOT NULL COMMENT '卡号',
  `account` varchar(64) NOT NULL COMMENT '账号',
  `outsource_no` varchar(36) DEFAULT NULL COMMENT '外包序列号',
  `repayment_time` varchar(10) DEFAULT NULL COMMENT '还款日期',
  `arrival_time` varchar(10) DEFAULT NULL COMMENT '到账日期',
  `repayment_amount` decimal(14,4) DEFAULT NULL COMMENT '还款总额',
  `single_amount` decimal(14,4) DEFAULT NULL COMMENT '单笔金额',
  `exchange_rate` decimal(14,4) DEFAULT NULL COMMENT '汇率',
  `currency` varchar(10) DEFAULT NULL COMMENT '币种',
  `to_rmb` decimal(14,4) DEFAULT NULL COMMENT '合人民币金额',
  `capital` decimal(14,4) DEFAULT NULL COMMENT '本金',
  `interest` decimal(14,4) DEFAULT NULL COMMENT '利息',
  `latest_arrears` decimal(14,4) DEFAULT NULL COMMENT '最新欠款',
  `flag` tinyint(1) unsigned NOT NULL COMMENT '标志',
  `create_time` varchar(10) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `account` (`account`) COMMENT '账号索引',
  KEY `outsource_no` (`outsource_no`) COMMENT '外包序列号索引',
  KEY `card_no` (`card_no`)
) ENGINE=InnoDB AUTO_INCREMENT=392904 DEFAULT CHARSET=utf8 COMMENT='还款详情表';

-- ----------------------------
-- Table structure for lxcs_repayment_details3
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_repayment_details3`;
CREATE TABLE `lxcs_repayment_details3` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `custom_id` varchar(36) DEFAULT NULL COMMENT '客户编号',
  `custom_name` varchar(50) DEFAULT NULL COMMENT '客户名称',
  `case_no` varchar(30) NOT NULL COMMENT '案件编号',
  `id_no` varchar(25) NOT NULL COMMENT '持卡人身份证号',
  `card_no` varchar(64) NOT NULL COMMENT '卡号',
  `account` varchar(64) NOT NULL COMMENT '账号',
  `outsource_no` varchar(36) DEFAULT NULL COMMENT '外包序列号',
  `repayment_time` varchar(10) DEFAULT NULL COMMENT '还款日期',
  `arrival_time` varchar(10) DEFAULT NULL COMMENT '到账日期',
  `repayment_amount` decimal(14,4) DEFAULT NULL COMMENT '还款总额',
  `single_amount` decimal(14,4) DEFAULT NULL COMMENT '单笔金额',
  `exchange_rate` decimal(14,4) DEFAULT NULL COMMENT '汇率',
  `currency` varchar(10) DEFAULT NULL COMMENT '币种',
  `to_rmb` decimal(14,4) DEFAULT NULL COMMENT '合人民币金额',
  `capital` decimal(14,4) DEFAULT NULL COMMENT '本金',
  `interest` decimal(14,4) DEFAULT NULL COMMENT '利息',
  `latest_arrears` decimal(14,4) DEFAULT NULL COMMENT '最新欠款',
  `flag` tinyint(1) unsigned NOT NULL COMMENT '标志',
  `create_time` varchar(10) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `account` (`account`) COMMENT '账号索引',
  KEY `outsource_no` (`outsource_no`) COMMENT '外包序列号索引',
  KEY `card_no` (`card_no`)
) ENGINE=InnoDB AUTO_INCREMENT=393927 DEFAULT CHARSET=utf8 COMMENT='还款详情表';

-- ----------------------------
-- Table structure for lxcs_repayment_details4
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_repayment_details4`;
CREATE TABLE `lxcs_repayment_details4` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `custom_id` varchar(36) DEFAULT NULL COMMENT '客户编号',
  `custom_name` varchar(50) DEFAULT NULL COMMENT '客户名称',
  `case_no` varchar(30) NOT NULL COMMENT '案件编号',
  `id_no` varchar(25) NOT NULL COMMENT '持卡人身份证号',
  `card_no` varchar(64) NOT NULL COMMENT '卡号',
  `account` varchar(64) NOT NULL COMMENT '账号',
  `outsource_no` varchar(36) DEFAULT NULL COMMENT '外包序列号',
  `repayment_time` varchar(10) DEFAULT NULL COMMENT '还款日期',
  `arrival_time` varchar(10) DEFAULT NULL COMMENT '到账日期',
  `repayment_amount` decimal(14,4) DEFAULT NULL COMMENT '还款总额',
  `single_amount` decimal(14,4) DEFAULT NULL COMMENT '单笔金额',
  `exchange_rate` decimal(14,4) DEFAULT NULL COMMENT '汇率',
  `currency` varchar(10) DEFAULT NULL COMMENT '币种',
  `to_rmb` decimal(14,4) DEFAULT NULL COMMENT '合人民币金额',
  `capital` decimal(14,4) DEFAULT NULL COMMENT '本金',
  `interest` decimal(14,4) DEFAULT NULL COMMENT '利息',
  `latest_arrears` decimal(14,4) DEFAULT NULL COMMENT '最新欠款',
  `flag` tinyint(1) unsigned NOT NULL COMMENT '标志',
  `create_time` varchar(10) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `account` (`account`) COMMENT '账号索引',
  KEY `outsource_no` (`outsource_no`) COMMENT '外包序列号索引',
  KEY `card_no` (`card_no`)
) ENGINE=InnoDB AUTO_INCREMENT=393285 DEFAULT CHARSET=utf8 COMMENT='还款详情表';

-- ----------------------------
-- Table structure for lxcs_repayment_details5
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_repayment_details5`;
CREATE TABLE `lxcs_repayment_details5` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `custom_id` varchar(36) DEFAULT NULL COMMENT '客户编号',
  `custom_name` varchar(50) DEFAULT NULL COMMENT '客户名称',
  `case_no` varchar(30) NOT NULL COMMENT '案件编号',
  `id_no` varchar(25) NOT NULL COMMENT '持卡人身份证号',
  `card_no` varchar(64) NOT NULL COMMENT '卡号',
  `account` varchar(64) NOT NULL COMMENT '账号',
  `outsource_no` varchar(36) DEFAULT NULL COMMENT '外包序列号',
  `repayment_time` varchar(10) DEFAULT NULL COMMENT '还款日期',
  `arrival_time` varchar(10) DEFAULT NULL COMMENT '到账日期',
  `repayment_amount` decimal(14,4) DEFAULT NULL COMMENT '还款总额',
  `single_amount` decimal(14,4) DEFAULT NULL COMMENT '单笔金额',
  `exchange_rate` decimal(14,4) DEFAULT NULL COMMENT '汇率',
  `currency` varchar(10) DEFAULT NULL COMMENT '币种',
  `to_rmb` decimal(14,4) DEFAULT NULL COMMENT '合人民币金额',
  `capital` decimal(14,4) DEFAULT NULL COMMENT '本金',
  `interest` decimal(14,4) DEFAULT NULL COMMENT '利息',
  `latest_arrears` decimal(14,4) DEFAULT NULL COMMENT '最新欠款',
  `flag` tinyint(1) unsigned NOT NULL COMMENT '标志',
  `create_time` varchar(10) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `account` (`account`) COMMENT '账号索引',
  KEY `outsource_no` (`outsource_no`) COMMENT '外包序列号索引',
  KEY `card_no` (`card_no`)
) ENGINE=InnoDB AUTO_INCREMENT=392137 DEFAULT CHARSET=utf8 COMMENT='还款详情表';

-- ----------------------------
-- Table structure for lxcs_repayment_details6
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_repayment_details6`;
CREATE TABLE `lxcs_repayment_details6` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `custom_id` varchar(36) DEFAULT NULL COMMENT '客户编号',
  `custom_name` varchar(50) DEFAULT NULL COMMENT '客户名称',
  `case_no` varchar(30) NOT NULL COMMENT '案件编号',
  `id_no` varchar(25) NOT NULL COMMENT '持卡人身份证号',
  `card_no` varchar(64) NOT NULL COMMENT '卡号',
  `account` varchar(64) NOT NULL COMMENT '账号',
  `outsource_no` varchar(36) DEFAULT NULL COMMENT '外包序列号',
  `repayment_time` varchar(10) DEFAULT NULL COMMENT '还款日期',
  `arrival_time` varchar(10) DEFAULT NULL COMMENT '到账日期',
  `repayment_amount` decimal(14,4) DEFAULT NULL COMMENT '还款总额',
  `single_amount` decimal(14,4) DEFAULT NULL COMMENT '单笔金额',
  `exchange_rate` decimal(14,4) DEFAULT NULL COMMENT '汇率',
  `currency` varchar(10) DEFAULT NULL COMMENT '币种',
  `to_rmb` decimal(14,4) DEFAULT NULL COMMENT '合人民币金额',
  `capital` decimal(14,4) DEFAULT NULL COMMENT '本金',
  `interest` decimal(14,4) DEFAULT NULL COMMENT '利息',
  `latest_arrears` decimal(14,4) DEFAULT NULL COMMENT '最新欠款',
  `flag` tinyint(1) unsigned NOT NULL COMMENT '标志',
  `create_time` varchar(10) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `account` (`account`) COMMENT '账号索引',
  KEY `outsource_no` (`outsource_no`) COMMENT '外包序列号索引',
  KEY `card_no` (`card_no`)
) ENGINE=InnoDB AUTO_INCREMENT=392508 DEFAULT CHARSET=utf8 COMMENT='还款详情表';

-- ----------------------------
-- Table structure for lxcs_repayment_details7
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_repayment_details7`;
CREATE TABLE `lxcs_repayment_details7` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `custom_id` varchar(36) DEFAULT NULL COMMENT '客户编号',
  `custom_name` varchar(50) DEFAULT NULL COMMENT '客户名称',
  `case_no` varchar(30) NOT NULL COMMENT '案件编号',
  `id_no` varchar(25) NOT NULL COMMENT '持卡人身份证号',
  `card_no` varchar(64) NOT NULL COMMENT '卡号',
  `account` varchar(64) NOT NULL COMMENT '账号',
  `outsource_no` varchar(36) DEFAULT NULL COMMENT '外包序列号',
  `repayment_time` varchar(10) DEFAULT NULL COMMENT '还款日期',
  `arrival_time` varchar(10) DEFAULT NULL COMMENT '到账日期',
  `repayment_amount` decimal(14,4) DEFAULT NULL COMMENT '还款总额',
  `single_amount` decimal(14,4) DEFAULT NULL COMMENT '单笔金额',
  `exchange_rate` decimal(14,4) DEFAULT NULL COMMENT '汇率',
  `currency` varchar(10) DEFAULT NULL COMMENT '币种',
  `to_rmb` decimal(14,4) DEFAULT NULL COMMENT '合人民币金额',
  `capital` decimal(14,4) DEFAULT NULL COMMENT '本金',
  `interest` decimal(14,4) DEFAULT NULL COMMENT '利息',
  `latest_arrears` decimal(14,4) DEFAULT NULL COMMENT '最新欠款',
  `flag` tinyint(1) unsigned NOT NULL COMMENT '标志',
  `create_time` varchar(10) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `account` (`account`) COMMENT '账号索引',
  KEY `outsource_no` (`outsource_no`) COMMENT '外包序列号索引',
  KEY `card_no` (`card_no`)
) ENGINE=InnoDB AUTO_INCREMENT=390374 DEFAULT CHARSET=utf8 COMMENT='还款详情表';

-- ----------------------------
-- Table structure for lxcs_repayment_details8
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_repayment_details8`;
CREATE TABLE `lxcs_repayment_details8` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `custom_id` varchar(36) DEFAULT NULL COMMENT '客户编号',
  `custom_name` varchar(50) DEFAULT NULL COMMENT '客户名称',
  `case_no` varchar(30) NOT NULL COMMENT '案件编号',
  `id_no` varchar(25) NOT NULL COMMENT '持卡人身份证号',
  `card_no` varchar(64) NOT NULL COMMENT '卡号',
  `account` varchar(64) NOT NULL COMMENT '账号',
  `outsource_no` varchar(36) DEFAULT NULL COMMENT '外包序列号',
  `repayment_time` varchar(10) DEFAULT NULL COMMENT '还款日期',
  `arrival_time` varchar(10) DEFAULT NULL COMMENT '到账日期',
  `repayment_amount` decimal(14,4) DEFAULT NULL COMMENT '还款总额',
  `single_amount` decimal(14,4) DEFAULT NULL COMMENT '单笔金额',
  `exchange_rate` decimal(14,4) DEFAULT NULL COMMENT '汇率',
  `currency` varchar(10) DEFAULT NULL COMMENT '币种',
  `to_rmb` decimal(14,4) DEFAULT NULL COMMENT '合人民币金额',
  `capital` decimal(14,4) DEFAULT NULL COMMENT '本金',
  `interest` decimal(14,4) DEFAULT NULL COMMENT '利息',
  `latest_arrears` decimal(14,4) DEFAULT NULL COMMENT '最新欠款',
  `flag` tinyint(1) unsigned NOT NULL COMMENT '标志',
  `create_time` varchar(10) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `account` (`account`) COMMENT '账号索引',
  KEY `outsource_no` (`outsource_no`) COMMENT '外包序列号索引',
  KEY `card_no` (`card_no`)
) ENGINE=InnoDB AUTO_INCREMENT=391990 DEFAULT CHARSET=utf8 COMMENT='还款详情表';

-- ----------------------------
-- Table structure for lxcs_repayment_details9
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_repayment_details9`;
CREATE TABLE `lxcs_repayment_details9` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `custom_id` varchar(36) DEFAULT NULL COMMENT '客户编号',
  `custom_name` varchar(50) DEFAULT NULL COMMENT '客户名称',
  `case_no` varchar(30) NOT NULL COMMENT '案件编号',
  `id_no` varchar(25) NOT NULL COMMENT '持卡人身份证号',
  `card_no` varchar(64) NOT NULL COMMENT '卡号',
  `account` varchar(64) NOT NULL COMMENT '账号',
  `outsource_no` varchar(36) DEFAULT NULL COMMENT '外包序列号',
  `repayment_time` varchar(10) DEFAULT NULL COMMENT '还款日期',
  `arrival_time` varchar(10) DEFAULT NULL COMMENT '到账日期',
  `repayment_amount` decimal(14,4) DEFAULT NULL COMMENT '还款总额',
  `single_amount` decimal(14,4) DEFAULT NULL COMMENT '单笔金额',
  `exchange_rate` decimal(14,4) DEFAULT NULL COMMENT '汇率',
  `currency` varchar(10) DEFAULT NULL COMMENT '币种',
  `to_rmb` decimal(14,4) DEFAULT NULL COMMENT '合人民币金额',
  `capital` decimal(14,4) DEFAULT NULL COMMENT '本金',
  `interest` decimal(14,4) DEFAULT NULL COMMENT '利息',
  `latest_arrears` decimal(14,4) DEFAULT NULL COMMENT '最新欠款',
  `flag` tinyint(1) unsigned NOT NULL COMMENT '标志',
  `create_time` varchar(10) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `account` (`account`) COMMENT '账号索引',
  KEY `outsource_no` (`outsource_no`) COMMENT '外包序列号索引',
  KEY `card_no` (`card_no`)
) ENGINE=InnoDB AUTO_INCREMENT=396871 DEFAULT CHARSET=utf8 COMMENT='还款详情表';

-- ----------------------------
-- Table structure for lxcs_sms_send_history
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_sms_send_history`;
CREATE TABLE `lxcs_sms_send_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `phone` varchar(12) DEFAULT NULL COMMENT '发送电话号码',
  `content` text COMMENT '短信内容',
  `msg_num` int(1) DEFAULT NULL COMMENT '短信条数',
  `msg_price` decimal(10,4) DEFAULT NULL COMMENT '短信成本',
  `send_time` int(20) DEFAULT NULL COMMENT '发送时间',
  `send_status` int(1) DEFAULT NULL COMMENT '短信发送状态（0：发送成功，1：发送失败）',
  `customer_id` varchar(36) DEFAULT NULL COMMENT '客户ID',
  `customer_name` varchar(20) DEFAULT NULL COMMENT '客户名',
  `department_top_cd` varchar(36) DEFAULT NULL COMMENT '分公司ID',
  `department_top_name` varchar(20) DEFAULT NULL COMMENT '分公司名',
  `user_name` varchar(20) DEFAULT NULL COMMENT '债务人姓名',
  `user_id` varchar(36) DEFAULT NULL COMMENT '债务人ID',
  `id_no` varchar(20) DEFAULT NULL COMMENT '身份证号',
  `repay_allmoney_wait` decimal(20,4) DEFAULT NULL COMMENT '欠款总金额',
  `case_batch` varchar(50) DEFAULT NULL COMMENT '批次',
  `case_status` varchar(10) DEFAULT NULL COMMENT '发送时案件状态',
  `create_user_id` varchar(36) DEFAULT NULL COMMENT '发送人ID',
  `create_user_name` varchar(50) DEFAULT NULL COMMENT '发送人',
  `case_no` varchar(36) DEFAULT NULL COMMENT '案件编号',
  `msg_length` int(5) DEFAULT NULL COMMENT '短信字数',
  `approval_user_id` varchar(36) DEFAULT NULL COMMENT '审批人',
  `return_message` varchar(40) DEFAULT NULL COMMENT '调用短信接口返回数据',
  `access_name` varchar(10) DEFAULT NULL COMMENT '通道名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8 COMMENT='发送短信记录表';

-- ----------------------------
-- Table structure for lxcs_sms_template
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_sms_template`;
CREATE TABLE `lxcs_sms_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL COMMENT '短信模板标题',
  `content` varchar(1000) NOT NULL COMMENT '短信模板内容',
  `category` tinyint(1) NOT NULL COMMENT '短信模板分类',
  `debt_type` tinyint(1) DEFAULT '0' COMMENT '短信模板欠款类型配置  0无限制 1 <=10000 2 >10000 3 <3000 4 >=3000 5 <5000 6 >=5000且<=10000',
  `money_type` tinyint(1) DEFAULT '0' COMMENT '模板配置 委案金额-收回金额   0无限制 1 <=10000 2 >10000 3 <3000 4 >=3000 5 <5000 6 >=5000且<=10000',
  `department_top_cd` varchar(36) DEFAULT NULL COMMENT '短信模板所属分公司',
  `department_top_name` varchar(255) DEFAULT NULL COMMENT '短信模板所属分公司名称',
  `del_flag` varchar(1) DEFAULT NULL,
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_user_name` varchar(50) DEFAULT NULL COMMENT '创建者用户名',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_user_name` varchar(50) DEFAULT NULL COMMENT '更新者用户名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='短信模板表';

-- ----------------------------
-- Table structure for lxcs_sms_template_casestatus
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_sms_template_casestatus`;
CREATE TABLE `lxcs_sms_template_casestatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `template_id` int(11) NOT NULL COMMENT '短信模板id',
  `name_cd` varchar(36) NOT NULL COMMENT '案件状态',
  `name` varchar(255) NOT NULL COMMENT '案件状态名称',
  `del_flag` varchar(1) DEFAULT NULL,
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COMMENT='短信模板同分公司关联表';

-- ----------------------------
-- Table structure for lxcs_sms_template_customer
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_sms_template_customer`;
CREATE TABLE `lxcs_sms_template_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `template_id` int(11) NOT NULL COMMENT '短信模板id',
  `customer_id` varchar(36) NOT NULL COMMENT '客户id',
  `customer_name` varchar(255) NOT NULL COMMENT '客户名称',
  `del_flag` varchar(1) DEFAULT NULL,
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 COMMENT='短信模板同分公司关联表';

-- ----------------------------
-- Table structure for lxcs_sms_template_department
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_sms_template_department`;
CREATE TABLE `lxcs_sms_template_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `template_id` int(11) NOT NULL COMMENT '短信模板id',
  `department_cd` varchar(36) NOT NULL COMMENT '分公司id',
  `department_name` varchar(255) NOT NULL COMMENT '分公司名称',
  `del_flag` varchar(1) DEFAULT NULL,
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8 COMMENT='短信模板同分公司关联表';

-- ----------------------------
-- Table structure for lxcs_sms_template_signature
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_sms_template_signature`;
CREATE TABLE `lxcs_sms_template_signature` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_top_cd` varchar(36) NOT NULL COMMENT '分公司id',
  `department_top_name` varchar(255) NOT NULL COMMENT '分公司名称',
  `signature` varchar(255) NOT NULL COMMENT '短信签名',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除标识',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_user_name` varchar(50) DEFAULT NULL COMMENT '创建者用户名',
  `update_date` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_user_name` varchar(50) DEFAULT NULL COMMENT '更新者用户名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='短信模板签名表';

-- ----------------------------
-- Table structure for lxcs_status_name
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_status_name`;
CREATE TABLE `lxcs_status_name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_class` varchar(20) NOT NULL DEFAULT '' COMMENT '名称区分',
  `name_cd` varchar(10) NOT NULL DEFAULT '' COMMENT '名称编号',
  `name` varchar(20) DEFAULT NULL COMMENT '名称',
  `group_id` varchar(5) DEFAULT NULL COMMENT '状态分组id',
  `sort_key` varchar(2) DEFAULT NULL COMMENT '排序',
  `data` varchar(20) DEFAULT NULL COMMENT '数据',
  `reserve01` varchar(20) DEFAULT NULL COMMENT '扩展项目01',
  `reserve02` varchar(20) DEFAULT NULL COMMENT '扩展项目02',
  `reserve03` varchar(20) DEFAULT NULL COMMENT '扩展项目03',
  `notes` varchar(200) DEFAULT NULL COMMENT '备考',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识 0启用、1删除',
  `create_user_cd` varchar(36) DEFAULT NULL COMMENT '创建者编号',
  `create_group_cd` varchar(36) DEFAULT NULL COMMENT '创建者部门编号',
  `create_date` varchar(20) DEFAULT NULL COMMENT '创建者时间',
  `update_user_cd` varchar(36) DEFAULT NULL,
  `update_group_cd` varchar(36) DEFAULT NULL,
  `update_date` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20261 DEFAULT CHARSET=utf8 COMMENT='数据字典表';

-- ----------------------------
-- Table structure for lxcs_template
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_template`;
CREATE TABLE `lxcs_template` (
  `id` varchar(36) NOT NULL,
  `template_name` varchar(50) DEFAULT NULL COMMENT '模板名称',
  `sort_key` int(11) DEFAULT '0' COMMENT '排序',
  `template_title` varchar(5000) DEFAULT NULL COMMENT '模板头（所有的字段拼成一条数据）',
  `template_content` text COMMENT '模板内容',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除标识',
  `create_user_id` varchar(36) DEFAULT NULL COMMENT '初期新建者',
  `create_date` varchar(20) DEFAULT NULL COMMENT '初期新建日',
  `update_user_id` varchar(36) DEFAULT NULL COMMENT '最终更新者',
  `update_date` varchar(20) DEFAULT NULL COMMENT '最终更新日',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客户表';

-- ----------------------------
-- Table structure for lxcs_training_filter_config
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_training_filter_config`;
CREATE TABLE `lxcs_training_filter_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `customer_id` varchar(50) DEFAULT NULL COMMENT '客户id',
  `handle_time` varchar(255) DEFAULT NULL COMMENT '手次（多个手次以“|”隔开）',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_customer` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_version
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_version`;
CREATE TABLE `lxcs_version` (
  `id` varchar(36) NOT NULL COMMENT '主键id',
  `version` varchar(15) NOT NULL COMMENT '版本号',
  `remark` varchar(1000) NOT NULL COMMENT '更新日志',
  `package_name` varchar(50) NOT NULL COMMENT '包名',
  `package_url` varchar(200) NOT NULL COMMENT '下载包的地址',
  `force` char(1) NOT NULL DEFAULT '0' COMMENT '是否强制更新 0不强制更新  1强制更新 ',
  `create_date` varchar(20) DEFAULT NULL COMMENT '初期新建日',
  `create_user_id` varchar(36) DEFAULT NULL COMMENT '初期新建者',
  `update_user_id` varchar(36) DEFAULT NULL COMMENT '最终更新者',
  `update_date` varchar(20) DEFAULT NULL COMMENT '最终更新日',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lxcs_workcount
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_workcount`;
CREATE TABLE `lxcs_workcount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` varchar(5) DEFAULT NULL COMMENT '年',
  `month` char(2) DEFAULT NULL COMMENT '月',
  `day` char(2) DEFAULT NULL,
  `count` varchar(100) DEFAULT NULL COMMENT '数量',
  `case_money` varchar(1000) DEFAULT NULL COMMENT '委案金额',
  `run_time` varchar(13) DEFAULT NULL COMMENT '运行时间',
  `seek_ascription` char(1) DEFAULT 'h' COMMENT '搜索归属地：（''h''：总部，''l''：本地）',
  `department_top_cd` varchar(40) DEFAULT NULL COMMENT '分公司id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47851 DEFAULT CHARSET=utf8 COMMENT='触达统计';

-- ----------------------------
-- Table structure for lxcs_work_order_config
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_work_order_config`;
CREATE TABLE `lxcs_work_order_config` (
  `id` int(36) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `sensitive_words` varchar(1000) DEFAULT NULL COMMENT '敏感词内容',
  `remind_user_ids` varchar(3600) DEFAULT NULL COMMENT '提醒促进中心用户ID集合',
  `create_user_id` varchar(36) DEFAULT NULL COMMENT '创建人ID',
  `create_time` int(20) DEFAULT NULL COMMENT '创建时间',
  `update_user_id` varchar(36) DEFAULT NULL COMMENT '更新人ID',
  `update_time` int(20) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='工单配置表';

-- ----------------------------
-- Table structure for lxcs_work_order_customer
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_work_order_customer`;
CREATE TABLE `lxcs_work_order_customer` (
  `id` int(36) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(36) DEFAULT NULL COMMENT '客服ID',
  `customer_ids` varchar(3600) DEFAULT NULL COMMENT '客户ID集合',
  `create_user_id` varchar(36) DEFAULT NULL COMMENT '创建人ID',
  `create_time` int(20) DEFAULT NULL COMMENT '创建时间',
  `update_user_id` varchar(36) DEFAULT NULL COMMENT '更新人',
  `update_time` int(20) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_index` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='客服与客户关系对应表';

-- ----------------------------
-- Table structure for lxcs_work_order_first
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_work_order_first`;
CREATE TABLE `lxcs_work_order_first` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(36) DEFAULT NULL COMMENT '客户ID',
  `customer_name` varchar(36) DEFAULT NULL COMMENT '客户姓名',
  `work_order_type` int(10) unsigned DEFAULT NULL COMMENT '工单状态',
  `department_top_name` varchar(100) DEFAULT NULL COMMENT '分公司',
  `user_name` varchar(100) DEFAULT NULL COMMENT '姓名',
  `id_no` varchar(25) DEFAULT NULL COMMENT '身份证号',
  `unique_id` varchar(36) DEFAULT NULL COMMENT '唯一性标识',
  `in_line_telphone` varchar(15) DEFAULT NULL COMMENT '进线电话',
  `content` varchar(1000) DEFAULT NULL COMMENT '工单内容',
  `customer_remark1` varchar(1000) DEFAULT NULL COMMENT '客户备注1',
  `customer_remark2` varchar(1000) DEFAULT NULL COMMENT '客户备注2',
  `expire_date` int(20) unsigned DEFAULT NULL COMMENT '回复时间要求',
  `status` varchar(10) DEFAULT NULL COMMENT '工单状态',
  `reply_content` varchar(1000) DEFAULT NULL COMMENT '回复内容',
  `contact_date` int(20) unsigned DEFAULT NULL COMMENT '联系日期',
  `contact_times` varchar(200) DEFAULT NULL COMMENT '联系时间',
  `product_reason` tinyint(1) unsigned DEFAULT NULL COMMENT '工单产生的原因',
  `unite_with_bank` tinyint(1) unsigned DEFAULT NULL COMMENT '联系结果式是否与银行资料一致',
  `contact_results` tinyint(1) unsigned DEFAULT NULL COMMENT '联系结果',
  `consult` tinyint(1) unsigned DEFAULT NULL COMMENT '是否达成协商',
  `audit_status` varchar(10) DEFAULT NULL COMMENT '审核状态',
  `create_time` int(20) unsigned DEFAULT NULL COMMENT '创建时间',
  `create_user_id` varchar(36) DEFAULT NULL COMMENT '创建人ID',
  `create_user_name` varchar(36) DEFAULT NULL COMMENT '创建人',
  `update_time` int(20) unsigned DEFAULT NULL COMMENT '更新时间',
  `update_user_id` varchar(36) DEFAULT NULL COMMENT '修改人ID',
  `update_user_name` varchar(36) DEFAULT NULL COMMENT '更新人',
  `work_order_no` varchar(36) DEFAULT NULL COMMENT '工单编号',
  `legal_clerk_user_name` varchar(36) DEFAULT NULL COMMENT '法务员用户名',
  `refuse_reason` varchar(1000) DEFAULT NULL COMMENT '打回原因',
  `legal_clerk_user_id` varchar(36) DEFAULT NULL COMMENT '法务ID',
  `allot_date` int(20) DEFAULT NULL COMMENT '工单分配时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='工单一审记录表';

-- ----------------------------
-- Table structure for lxcs_work_order_template
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_work_order_template`;
CREATE TABLE `lxcs_work_order_template` (
  `id` varchar(36) NOT NULL,
  `template_name` varchar(50) DEFAULT NULL COMMENT '模板名称',
  `file_id` varchar(50) DEFAULT NULL COMMENT '文件id',
  `sort_key` int(11) DEFAULT '0' COMMENT '排序',
  `template_title` varchar(5000) DEFAULT NULL COMMENT '模板头（所有的字段拼成一条数据）',
  `template_content` text COMMENT '模板内容',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除标识',
  `create_user_id` varchar(36) DEFAULT NULL COMMENT '初期新建者',
  `create_date` varchar(20) DEFAULT NULL COMMENT '初期新建日',
  `update_user_id` varchar(36) DEFAULT NULL COMMENT '最终更新者',
  `update_date` varchar(20) DEFAULT NULL COMMENT '最终更新日',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工单导入模版表';

-- ----------------------------
-- Table structure for lxcs_work_overtime
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_work_overtime`;
CREATE TABLE `lxcs_work_overtime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(36) DEFAULT NULL COMMENT '加班用户',
  `user_name` varchar(50) DEFAULT NULL COMMENT '加班用户名',
  `department_top_cd` varchar(36) DEFAULT NULL COMMENT '分公司cd',
  `department_top_name` varchar(100) DEFAULT NULL COMMENT '分公司名称',
  `workover_date` varchar(13) DEFAULT NULL COMMENT '加班日期',
  `work_start_time` varchar(12) DEFAULT NULL COMMENT '加班开始时间',
  `work_end_time` varchar(12) DEFAULT NULL COMMENT '加班结束时间',
  `workover_time` varchar(12) DEFAULT NULL COMMENT '加班时长',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除标识',
  `create_user_cd` varchar(36) DEFAULT NULL COMMENT '初期新建者',
  `create_date` varchar(20) DEFAULT NULL COMMENT '初期新建日',
  `update_user_cd` varchar(36) DEFAULT NULL COMMENT '最终更新者',
  `update_date` varchar(20) DEFAULT NULL COMMENT '最终更新日',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_index` (`user_id`,`workover_date`) USING BTREE COMMENT '唯一索引防止数据重复插入',
  KEY `workover_date` (`workover_date`) USING BTREE COMMENT '工作日索引'
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='加班数据总表';

-- ----------------------------
-- Table structure for lxcs_work_overtime_case
-- ----------------------------
DROP TABLE IF EXISTS `lxcs_work_overtime_case`;
CREATE TABLE `lxcs_work_overtime_case` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `work_id` int(11) DEFAULT NULL COMMENT '加班数据id',
  `customer_id` varchar(36) DEFAULT NULL COMMENT '客户id',
  `customer_name` varchar(100) DEFAULT NULL COMMENT '客户名称',
  `handle_time` varchar(10) DEFAULT NULL COMMENT '手次',
  `start_time` varchar(12) DEFAULT NULL COMMENT '接单时间',
  `user_name` varchar(30) DEFAULT NULL COMMENT '债务人姓名',
  `id_no` varchar(25) DEFAULT NULL COMMENT '身份证',
  `case_money` decimal(21,4) DEFAULT '0.0000' COMMENT '欠款金额',
  `repay_allmoney_wait` decimal(21,4) DEFAULT NULL COMMENT '最新欠款（待回收总金额）',
  `start_status` varchar(10) DEFAULT NULL COMMENT '案件开始状态',
  `end_status` varchar(10) DEFAULT NULL COMMENT '案件结束状态',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除标识',
  `create_user_cd` varchar(36) DEFAULT NULL COMMENT '初期新建者',
  `create_date` varchar(20) DEFAULT NULL COMMENT '初期新建日',
  `update_user_cd` varchar(36) DEFAULT NULL COMMENT '最终更新者',
  `update_date` varchar(20) DEFAULT NULL COMMENT '最终更新日',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=846 DEFAULT CHARSET=utf8 COMMENT='触达统计';

-- ----------------------------
-- Table structure for z_bak
-- ----------------------------
DROP TABLE IF EXISTS `z_bak`;
CREATE TABLE `z_bak` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `id_no` varchar(25) NOT NULL COMMENT '身份证号',
  `card_no` varchar(30) NOT NULL COMMENT '银行卡号',
  `account` varchar(30) NOT NULL COMMENT '账号',
  `outsource_no` varchar(32) DEFAULT NULL COMMENT '外包序列号',
  PRIMARY KEY (`id`),
  KEY `cardno` (`card_no`),
  KEY `account` (`account`),
  KEY `unique` (`id_no`,`card_no`,`account`)
) ENGINE=InnoDB AUTO_INCREMENT=119661 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for z_role_update
-- ----------------------------
DROP TABLE IF EXISTS `z_role_update`;
CREATE TABLE `z_role_update` (
  `user_id` varchar(50) DEFAULT NULL,
  `role_id` varchar(50) DEFAULT NULL,
  `role_name` varchar(50) DEFAULT NULL,
  `department_cd` varchar(50) DEFAULT NULL,
  `department_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- View structure for v_progress
-- ----------------------------
DROP VIEW IF EXISTS `v_progress`;
