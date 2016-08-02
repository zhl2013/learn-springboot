--liquibase formatted sql

--changeset jeff:ldol1 runOnChange:true context:init
SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS `sys_code`;
CREATE TABLE `sys_code` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PARENT_ID` int(11) DEFAULT NULL,
  `CODE_CODE` varchar(64) DEFAULT NULL,
  `CODE_NAME` varchar(256) DEFAULT NULL,
  `CODE_TYPE` smallint(6) DEFAULT NULL COMMENT '0分组，1代码，2数据',
  `DISP_ORDER` smallint(6) DEFAULT NULL,
  `STATUS` smallint(6) DEFAULT NULL,
  `VALUE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

BEGIN;
INSERT INTO `sys_code` VALUES ('3', '0', 'ROOT', '根目录', '0', '0', '1', null), ('27', '1', 'baidu', '百度推广', '2', '0', '1', '.*qd=baidu.*'), ('28', '1', 'weixin', '微信', '2', '1', '1', '.*qd=weixin.*'), ('29', '1', 'qq', 'QQ空间', '2', '0', '1', '.*qd=qq.*'), ('31', '1', 'natural', '自然访问', '2', '0', '1', '.*qd=natural.*'), ('32', '2', 'summer', 'summer', '2', '2', '0', '.*hd=summer.*'), ('33', '2', 'mail', 'mail', '2', '0', '0', '.*hd=mail1.*'), ('34', '2', 'weixin1', 'weixin1', '2', '0', '1', '.*hd=weixin1.*'), ('35', '2', 'weixin2', 'weixin2', '2', '0', '1', '.*hd=weixin2.*'), ('36', '2', 'mail2', 'mail2', '2', '0', '1', '.*hd=mail2.*'), ('61', '60', 'VIEW', '浏览', '2', '0', '1', '1'), ('62', '60', 'CART', '加入购物车', '2', '0', '1', '1'), ('63', '60', 'ORDER', '下单', '2', '0', '1', '1'), ('64', '60', 'PAY', '支付', '2', '0', '1', '1'), ('86', '84', '123', 'test1', '0', '0', '1', '12'), ('91', '90', '12', 'test31', '0', '0', '1', '12'), ('92', '90', '12', 'test32', '0', '0', '1', '12'), ('96', '90', '12', 'test33', '0', '0', '1', '1'), ('97', '90', '12', 'test34', '0', '0', '1', '12'), ('98', '97', '12', '12', '0', '0', '1', '12'), ('130', '4', 'items', '商品详情页', '2', '0', '1', '/items/\\d+.*'), ('131', '4', 'shops', '店铺首页', '2', '0', '1', '((/shops/\\d+.*)|/)'), ('132', '4', 'cart', '购物车页', '2', '0', '1', '/buyer/cart.*'), ('133', '4', 'confirm_order', '订单确认页', '2', '0', '1', '/buyer/pre-order.*'), ('134', '4', 'orderlist', '订单列表页', '2', '0', '1', '/buyer/orders.*'), ('135', '4', 'favourite', '收藏列表页', '2', '0', '1', '/buyer/favourite.*'), ('136', '4', 'address', '收货地址页', '2', '0', '1', '/address.*'), ('137', '4', 'login', '登录页', '2', '0', '1', '/login.*'), ('138', '4', 'register_mobile', '手机注册页', '2', '0', '1', '/register-mobile.*'), ('139', '4', 'register', '注册获取验证码', '2', '0', '1', '/register\\?mobilePhone=\\d+.*'), ('140', '4', 'category', '类目列表页', '2', '0', '1', '/category.*'), ('141', '4', 'user_index', '用户首页', '2', '0', '1', '/user/index.*'), ('142', '4', 'seller_index', 'seller_index', '2', '0', '1', '/seller/index.*'), ('143', '4', 'seller_profile', 'seller_profile', '2', '0', '1', '/seller/profile.*'), ('144', '4', 'seller_shelf', 'seller_shelf', '2', '0', '1', '/seller/shelf\\?type=\\d+.*'), ('145', '4', 'search', '搜索页', '2', '0', '1', '/search.*'), ('146', '4', 'skusearch', 'skusearch', '2', '0', '1', '/seller/sku-search.*'), ('147', '4', 'gateway', '支付页', '2', '0', '1', '/api/mock/gateway.*'), ('148', '4', 'coupons', '我的红包', '2', '0', '1', '/buyer/coupons'), ('149', '4', 'logistics', '物流信息', '2', '0', '1', '/buyer/logistics.*'), ('150', '4', 'order_detail', '订单详情', '2', '0', '1', '/buyer/order-detail.*'), ('151', '4', 'profile', '我的资料', '2', '0', '1', '/buyer/profile.*'), ('152', '4', 'return_detail', '退换货款详情', '2', '0', '1', '/buyer/return-detail.*'), ('153', '4', 'buyer_return', '退换货款中心', '2', '0', '1', '/buyer/return'), ('154', '4', 'buyer_safe', '安全中心', '2', '0', '1', '/buyer/safe'), ('155', '4', 'trade_success', '支付成功', '2', '0', '1', '/buyer/trade-success'), ('156', '4', 'comment', '用户评价', '2', '0', '1', '/comment.*'), ('157', '4', 'comments', '商品评价', '2', '0', '1', '/detail/comments.*'), ('158', '4', 'feature', '图文详情页', '2', '0', '1', '/detail/feature.*'), ('159', '4', 'spec', '参数详情', '2', '0', '1', '/detail/spec.*'), ('160', '4', 'forget_password', '忘记密码', '2', '0', '1', '/forget-password'), ('161', '4', 'payment', '收银台', '2', '0', '1', '/payment\\?orderIds=\\d+.*'), ('162', '4', 'share', '分享页', '2', '0', '1', '/share.*'), ('163', '4', 'seller_comments', '卖家商品评价页', '2', '0', '1', '/seller/comments\\?itemId=.*'), ('164', '4', 'seller_create_success', '卖家申请成功页', '2', '0', '1', '/seller/create-success'), ('165', '4', 'seller_feature', '卖家图文详情页', '2', '0', '1', '/seller/feature\\?itemId=.*'), ('166', '4', 'seller_item', '卖家商品详情页', '2', '0', '1', '/seller/item\\?itemId=.*'), ('167', '4', 'seller_item_list', '卖家商品列表页', '2', '0', '1', '/seller/item-list.*'), ('168', '4', 'seller_logistics', '卖家物流信息页', '2', '0', '1', '/seller/logistics.*'), ('169', '4', 'seller_on_shelf_check', '卖家上架确认页', '2', '0', '1', '/seller/on-shelf-check.*'), ('170', '4', 'seller_order_detail', '卖家订单详情页', '2', '0', '1', '/seller/order-detail.*'), ('171', '4', 'seller_orders', '卖家我的订单页', '2', '0', '1', '/seller/orders.*'), ('172', '4', 'seller_safe', '卖家安全中心', '2', '0', '1', '/seller/safe.*'), ('173', '4', 'seller_shop_create', '申请开通微店', '2', '0', '1', '/seller/shop-create.*'), ('174', '4', 'seller_spec', '卖家参数详情页', '2', '0', '1', '/seller/spec\\?itemId=.*'), ('185', '177', '22', '222', '1', '1', '1', '222'), ('186', '3', 'java_serviceName', 'JAVA来源', '1', '0', '1', 'java_serviceName'), ('187', '3', 'JAVA_IP', 'JAVA_IP', '1', '0', '1', 'JAVA_IP'), ('188', '3', 'moduleName', '模块名称', '1', '0', '1', 'moduleName'), ('189', '3', 'receiver', '接收者', '1', '0', '1', 'receiver'), ('190', '3', 'sender', '发送者', '1', '0', '1', 'sender'), ('196', '189', 'O2M', 'O2M测试', '2', '0', '1', 'O2M'), ('197', '190', 'DRG', 'DRG测试', '2', '0', '1', 'DRG'), ('198', '188', '2om-oc-srv', '2om-oc-srv111', '2', '1', '1', '2om-oc-srv'), ('203', '3', 'MYSQL_IP', 'MYSQL_IP', '1', '0', '1', 'MYSQL_IP'), ('205', '187', '10.124.26.11', '10.124.26.11测试', '2', '0', '1', '10.124.26.11'), ('206', '187', '10.124.26.12', '10.124.26.12', '2', '0', '1', '10.124.26.12'), ('207', '187', '10.124.26.13', '10.124.26.13', '2', '0', '1', '10.124.26.13'), ('208', '187', '10.124.36.39', '10.124.36.39', '2', '0', '1', '10.124.36.39'), ('209', '187', '10.124.36.42', '10.124.36.42', '2', '0', '1', '10.124.36.42'), ('210', '204', '10.124.36.30', '10.124.36.30', '0', '0', '1', '10.124.36.30'), ('211', '3', 'BIZ_IP', '业务_IP', '1', '0', '1', 'BIZ_IP'), ('212', '211', '10.124.36.30', '10.124.36.30测试', '2', '0', '1', '10.124.36.30'), ('213', '211', '10.124.36.29', '10.124.36.29', '2', '0', '1', '10.124.36.29'), ('214', '203', '10.124.35.18', '10.124.35.18测试', '2', '0', '1', '10.124.35.18'), ('216', '215', 'TEST1', 'TEST1', '0', '0', '1', 'TEST1'), ('217', '215', 'test2', 'test2', '0', '0', '1', 'test2'), ('218', '215', 'test2', 'test2', '0', '0', '1', 'test2'), ('219', '215', 'test3', 'test3', '0', '0', '1', 'test3'), ('220', '215', 'test4', 'test4', '0', '0', '1', 'test4'), ('221', '186', 'o2m-fc-job', 'o2m-fc-job编辑', '2', '0', '1', 'o2m-fc-job'), ('222', '186', 'o2m-ic-srv', 'o2m-ic-srv', '2', '0', '1', 'o2m-ic-srv'), ('223', '186', 'o2m-web', 'o2m-web', '2', '0', '1', 'o2m-web'), ('224', '186', 'o2m-oc-job', 'o2m-oc-job', '2', '0', '1', 'o2m-oc-job'), ('225', '186', 'o2m-fc-srv', 'o2m-fc-srv', '2', '0', '1', 'o2m-fc-srv'), ('226', '186', '2om-fc-srv', '2om-fc-srv', '2', '0', '1', '2om-fc-srv'), ('227', '190', 'WD', 'WD', '2', '0', '1', 'WD'), ('228', '3', 'BIZ_serviceName', '业务服务', '1', '0', '1', 'BIZ_serviceName'), ('232', '3', 'MYSQL_serviceName', 'MYSQL来源', '1', '0', '1', 'MYSQL_serviceName'), ('233', '232', 'wd-wa', 'wd-wa', '2', '0', '1', 'wd-wa'), ('234', '228', 'sellerWriteService', 'sellerWriteService测试', '2', '0', '1', 'sellerWriteService'), ('235', '228', 'onlineOrderWriteService', 'onlineOrderWriteService', '2', '0', '1', 'onlineOrderWriteService'), ('236', '188', 'o2m-ic-srv', 'o2m-ic-srv', '2', '0', '1', 'o2m-ic-srv'), ('237', '186', 'o2m-ic-srv', 'o2m-ic-srv', '2', '0', '1', 'o2m-ic-srv'), ('238', '188', 'o2m-oc-srv-data', 'o2m-oc-srv-data', '2', '0', '1', 'o2m-oc-srv-data'), ('239', '187', '10.124.36.30', '10.124.36.30', '2', '0', '1', '10.124.36.30'), ('240', '187', '10.124.36.29', '10.124.36.29', '2', '0', '1', '10.124.36.29'), ('241', '228', 'returnOrderDeliverCapacityService', 'returnOrderDeliverCapacityService11', '2', '0', '1', 'returnOrderDeliverCapacityService'), ('242', '188', 'test', 'test测试', '2', '0', '1', 'test'), ('243', '186', 'o2m-ic-job', 'o2m-ic-job', '2', '0', '1', 'o2m-ic-job'), ('244', '186', 'meshop_web', 'meshop_web', '2', '0', '1', 'meshop_web'), ('245', '186', 'meshop_schedule', 'meshop_schedule', '2', '0', '1', 'meshop_schedule'), ('246', '186', 'meshop_configuration', 'meshop_configuration', '2', '0', '1', 'meshop_configuration'), ('247', '186', 'meshop_user', 'meshop_user', '2', '0', '1', 'meshop_user'), ('248', '186', 'meshop_shop', 'meshop_shop', '2', '0', '1', 'meshop_shop'), ('249', '186', 'meshop_item', 'meshop_item', '2', '0', '1', 'meshop_item'), ('250', '186', 'meshop_msg', 'meshop_msg', '2', '0', '1', 'meshop_msg'), ('251', '186', 'meshop_trade', 'meshop_trade', '2', '0', '1', 'meshop_trade'), ('252', '186', 'meshop_nginx', 'meshop_nginx', '2', '0', '1', 'meshop_nginx'), ('253', '186', 'zkeeper', 'zkeeper', '2', '0', '1', 'zkeeper'), ('254', '186', 'o2m-oc-srv-sys', 'o2m-oc-srv-sys', '2', '0', '1', 'o2m-oc-srv-sys'), ('255', '186', 'wd-wa-log', 'wd-wa-log测试', '2', '0', '1', 'wd-wa-log');
COMMIT;

 
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `POSITION_CODE` varchar(36) NOT NULL,
  `POSITION_DESC` varchar(50) DEFAULT NULL,
  `FUNCTION_CODES` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`POSITION_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

 
BEGIN;
INSERT INTO `sys_role` VALUES ('11111', '系统管理', 'system.roleCommonality,system.userManage,system.commonality,ldol.vipManage,system.senderManagement'), ('720', '配置管理', 'system.dataManagement,system.sourceManagement,system.senderManagement,system.itemConfiguration'), ('8', '超级管理员', 'system.roleCommonality,system.userManage,system.dataManagement,system.sourceManagement,system.senderManagement,system.itemConfiguration'), ('9618', '管理员', 'system.userManage,system.dataManagement,system.senderManagement,system.itemConfiguration'), ('99', '监控配置', 'system.sourceManagement,system.senderManagement,system.masterConfiguration');
COMMIT;

 
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `USER_ID` varchar(36) NOT NULL,
  `ACCOUNT` varchar(20) DEFAULT NULL,
  `PASSWORD` varchar(32) DEFAULT NULL,
  `DISPLAYNAME` varchar(20) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `STATE` char(1) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

 
BEGIN;
INSERT INTO `sys_user` VALUES ('22', 'admin', 'fbf66870bfb017bcb13c41f631f74d3f', '超级管理员', '2015-12-23 09:55:03', '2016-03-01 17:04:40', '1'), ('7927a50c521649cd98a4724312bb046c', 'xitong', 'e10adc3949ba59abbe56e057f20f883e', '奈文摩尔', '2015-12-23 17:07:42', '2016-03-01 17:08:26', '1'), ('8183a8921ab0431dadaa4c17ba8b976c', '23', 'e10adc3949ba59abbe56e057f20f883e', '12', '2016-03-12 00:46:49', '2016-03-12 00:46:49', '1'), ('8e9eef3f87ce40eea9374257a8273b35', 'peizhi', 'e10adc3949ba59abbe56e057f20f883e', '风暴之灵', '2016-01-18 14:21:22', '2016-03-02 11:08:07', '1'), ('d71e6060e74a48fabb73e6ec7709d589', 'ceshi', 'e10adc3949ba59abbe56e057f20f883e', '拉泽尔·黑酿', '2015-12-23 17:27:41', '2016-03-02 11:18:11', '3');
COMMIT;

 
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `POSITION_CODE` varchar(36) DEFAULT NULL,
  `USER_ID` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

 
BEGIN;
INSERT INTO `sys_user_role` VALUES ('8', '22'), ('99', '22'), ('9618', '7927a50c521649cd98a4724312bb046c'), ('720', '8e9eef3f87ce40eea9374257a8273b35'), ('9618', '8e9eef3f87ce40eea9374257a8273b35'), ('11111', 'd71e6060e74a48fabb73e6ec7709d589'), ('720', 'd71e6060e74a48fabb73e6ec7709d589'), ('8', 'd71e6060e74a48fabb73e6ec7709d589'), ('9618', 'd71e6060e74a48fabb73e6ec7709d589'), ('99', 'd71e6060e74a48fabb73e6ec7709d589'), ('720', 'e9e349b8e6274384a811496e1a3e8a35');
COMMIT;

 
DROP TABLE IF EXISTS `t_agent_user`;
CREATE TABLE `t_agent_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(45) DEFAULT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `discount` int(11) DEFAULT NULL COMMENT '折扣 0-100 9折 为90',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

 
DROP TABLE IF EXISTS `t_alipaymsg_info`;
CREATE TABLE `t_alipaymsg_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` varchar(245) DEFAULT NULL,
  `buyer_email` varchar(245) DEFAULT NULL,
  `buyer_id` varchar(65) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `gmt_create` varchar(45) DEFAULT NULL,
  `is_total_fee_adjust` varchar(45) DEFAULT NULL,
  `notify_id` varchar(45) DEFAULT NULL,
  `notify_time` varchar(45) DEFAULT NULL,
  `notify_type` varchar(45) DEFAULT NULL,
  `out_trade_no` varchar(45) DEFAULT NULL,
  `payment_type` varchar(45) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` varchar(45) DEFAULT NULL,
  `seller_email` varchar(45) DEFAULT NULL,
  `seller_id` varchar(45) DEFAULT NULL,
  `subject` varchar(45) DEFAULT NULL,
  `total_fee` int(11) DEFAULT NULL,
  `trade_no` varchar(45) DEFAULT NULL,
  `trade_status` varchar(45) DEFAULT NULL,
  `use_coupon` varchar(45) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='阿里支付消息回执';

 
DROP TABLE IF EXISTS `t_ap_info`;
CREATE TABLE `t_ap_info` (
  `id` varchar(32) NOT NULL,
  `area_id` varchar(32) DEFAULT NULL,
  `ap_mac` varchar(64) DEFAULT NULL,
  `ap_type` int(1) DEFAULT NULL COMMENT '1 奇天  2 赢达 3 智能插排',
  `create_time` datetime DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `beattim` int(11) DEFAULT NULL COMMENT '智能插排心跳',
  `status` int(1) DEFAULT NULL COMMENT '是智能插排时，有状态  1 正常  0 不正常',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='wifi 设备 信息表';

 
DROP TABLE IF EXISTS `t_appversion_info`;
CREATE TABLE `t_appversion_info` (
  `id` varchar(32) NOT NULL,
  `version` varchar(45) DEFAULT NULL COMMENT '版本号',
  `update_link` varchar(200) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `activate_time` datetime DEFAULT NULL COMMENT '激活日期',
  `effect_time` datetime DEFAULT NULL COMMENT '有效日期',
  `app_type` int(11) DEFAULT NULL COMMENT '1  android   2 iOS   3 智能插排',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

 
DROP TABLE IF EXISTS `t_area_info`;
CREATE TABLE `t_area_info` (
  `id` varchar(32) NOT NULL,
  `area_name` varchar(200) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

 
DROP TABLE IF EXISTS `t_order_info`;
CREATE TABLE `t_order_info` (
  `id` varchar(64) NOT NULL,
  `user_name` varchar(45) DEFAULT NULL COMMENT '给谁充值',
  `status` int(1) DEFAULT NULL COMMENT '订单状态 1 新建未支付  2  客户端确认支付  3  阿里消息回执已支付成功  4 阿里消息回执支付失败',
  `create_time` datetime DEFAULT NULL,
  `vip_id` varchar(45) DEFAULT NULL,
  `finish_time` datetime DEFAULT NULL COMMENT 'app 处理成功时间',
  `al_msg_time` datetime DEFAULT NULL COMMENT '阿里msg 消息回执时间',
  `create_id` varchar(45) DEFAULT NULL COMMENT '创建者 主键 用户',
  `create_name` varchar(45) DEFAULT NULL COMMENT '创建者手机号',
  `area_id` varchar(45) DEFAULT NULL COMMENT '地区id',
  `alipay_status` varchar(45) DEFAULT NULL COMMENT '3 阿里消息回执已支付成功 4 阿里消息回执支付失败',
  `price` int(11) DEFAULT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='订单信息表';

 
DROP TABLE IF EXISTS `t_ps_command`;
CREATE TABLE `t_ps_command` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_code` int(11) DEFAULT NULL,
  `ap_id` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `fetch_time` datetime DEFAULT NULL,
  `exe_result` int(11) DEFAULT NULL,
  `exe_msg` varchar(200) DEFAULT NULL,
  `exeover_time` datetime DEFAULT NULL,
  `statue` int(11) DEFAULT NULL COMMENT '状态  0 手动删除，1 正常等待取走，2 取走，3 执行完成',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='智能插排 命令表';

 
DROP TABLE IF EXISTS `t_ps_command_ex`;
CREATE TABLE `t_ps_command_ex` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_id` int(11) DEFAULT NULL,
  `interval` int(11) DEFAULT NULL,
  `version` varchar(45) DEFAULT NULL,
  `uri` varchar(245) DEFAULT NULL,
  `version_id` varchar(32) DEFAULT NULL,
  `beattim` int(11) DEFAULT NULL,
  `server_uri` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='命令 扩展表';

 
DROP TABLE IF EXISTS `t_ps_heart_log`;
CREATE TABLE `t_ps_heart_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ap_id` varchar(45) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='心跳日志表';

 
DROP TABLE IF EXISTS `t_recharge_log`;
CREATE TABLE `t_recharge_log` (
  `id` varchar(32) NOT NULL,
  `user_id` varchar(32) DEFAULT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='充值记录';

 
DROP TABLE IF EXISTS `t_server_config`;
CREATE TABLE `t_server_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_name` varchar(200) DEFAULT NULL,
  `field_value` varchar(200) DEFAULT NULL,
  `field_desc` varchar(205) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='服务器配置表';

 
DROP TABLE IF EXISTS `t_user_info`;
CREATE TABLE `t_user_info` (
  `id` varchar(32) NOT NULL,
  `user_name` varchar(18) DEFAULT NULL,
  `user_mac` varchar(64) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL COMMENT '等级',
  `level_du_date` datetime DEFAULT NULL COMMENT '等级到期时间',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
  `last_login_ap_mac` varchar(64) DEFAULT NULL,
  `last_login_ip` varchar(20) DEFAULT NULL,
  `route_type` int(1) DEFAULT NULL COMMENT '1 奇天  2 赢达',
  `ap_id` varchar(32) DEFAULT NULL,
  `login_du_time` datetime DEFAULT NULL COMMENT '登陆过期时间',
  `vip_id` varchar(32) DEFAULT NULL,
  `real_name` varchar(200) DEFAULT NULL COMMENT '真实姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

 
DROP TABLE IF EXISTS `t_user_login_log`;
CREATE TABLE `t_user_login_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(32) DEFAULT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `login_time` datetime DEFAULT NULL,
  `ap_mac` varchar(60) DEFAULT NULL,
  `user_mac` varchar(60) DEFAULT NULL,
  `ap_type` int(11) DEFAULT NULL COMMENT '1 奇天   2 赢达',
  `ap_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='放行用户成功 日志表';

 
DROP TABLE IF EXISTS `t_vip_info`;
CREATE TABLE `t_vip_info` (
  `id` varchar(32) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `mount` int(8) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '0 删除 1 正常',
  `du_time` int(3) DEFAULT NULL COMMENT '有效时长',
  `level` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='vip 信息表';

SET FOREIGN_KEY_CHECKS = 1;
