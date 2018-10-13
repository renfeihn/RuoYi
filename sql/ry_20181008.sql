-- ----------------------------
-- 1、部门表
-- ----------------------------
DROP TABLE IF EXISTS sys_dept;
CREATE TABLE sys_dept (
  dept_id     INT(11) NOT NULL AUTO_INCREMENT
  COMMENT '部门id',
  parent_id   INT(11)          DEFAULT 0
  COMMENT '父部门id',
  ancestors   VARCHAR(50)      DEFAULT ''
  COMMENT '祖级列表',
  dept_name   VARCHAR(30)      DEFAULT ''
  COMMENT '部门名称',
  order_num   INT(4)           DEFAULT 0
  COMMENT '显示顺序',
  leader      VARCHAR(20)      DEFAULT ''
  COMMENT '负责人',
  phone       VARCHAR(11)      DEFAULT ''
  COMMENT '联系电话',
  email       VARCHAR(50)      DEFAULT ''
  COMMENT '邮箱',
  status      CHAR(1)          DEFAULT '0'
  COMMENT '部门状态（0正常 1停用）',
  del_flag    CHAR(1)          DEFAULT '0'
  COMMENT '删除标志（0代表存在 2代表删除）',
  create_by   VARCHAR(64)      DEFAULT ''
  COMMENT '创建者',
  create_time DATETIME COMMENT '创建时间',
  update_by   VARCHAR(64)      DEFAULT ''
  COMMENT '更新者',
  update_time DATETIME COMMENT '更新时间',
  PRIMARY KEY (dept_id)
)
  ENGINE = innodb
  AUTO_INCREMENT = 200
  DEFAULT CHARSET = utf8
  COMMENT = '部门表';

-- ----------------------------
-- 初始化-部门表数据
-- ----------------------------
INSERT INTO sys_dept VALUES
  (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00');
INSERT INTO sys_dept VALUES
  (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00');
INSERT INTO sys_dept VALUES
  (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00');
INSERT INTO sys_dept VALUES
  (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00');
INSERT INTO sys_dept VALUES
  (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00');
INSERT INTO sys_dept VALUES
  (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00');
INSERT INTO sys_dept VALUES
  (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00');
INSERT INTO sys_dept VALUES
  (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00');
INSERT INTO sys_dept VALUES
  (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00');
INSERT INTO sys_dept VALUES
  (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00');

-- ----------------------------
-- 2、用户信息表
-- ----------------------------
DROP TABLE IF EXISTS sys_user;
CREATE TABLE sys_user (
  user_id     INT(11)     NOT NULL AUTO_INCREMENT
  COMMENT '用户ID',
  dept_id     INT(11)              DEFAULT NULL
  COMMENT '部门ID',
  login_name  VARCHAR(30) NOT NULL
  COMMENT '登录账号',
  user_name   VARCHAR(30) NOT NULL
  COMMENT '用户昵称',
  user_type   VARCHAR(2)           DEFAULT '00'
  COMMENT '用户类型（00系统用户）',
  email       VARCHAR(50)          DEFAULT ''
  COMMENT '用户邮箱',
  phonenumber VARCHAR(11)          DEFAULT ''
  COMMENT '手机号码',
  sex         CHAR(1)              DEFAULT '0'
  COMMENT '用户性别（0男 1女 2未知）',
  avatar      VARCHAR(100)         DEFAULT ''
  COMMENT '头像路径',
  password    VARCHAR(50)          DEFAULT ''
  COMMENT '密码',
  salt        VARCHAR(20)          DEFAULT ''
  COMMENT '盐加密',
  status      CHAR(1)              DEFAULT '0'
  COMMENT '帐号状态（0正常 1停用）',
  del_flag    CHAR(1)              DEFAULT '0'
  COMMENT '删除标志（0代表存在 2代表删除）',
  login_ip    VARCHAR(20)          DEFAULT ''
  COMMENT '最后登陆IP',
  login_date  DATETIME COMMENT '最后登陆时间',
  create_by   VARCHAR(64)          DEFAULT ''
  COMMENT '创建者',
  create_time DATETIME COMMENT '创建时间',
  update_by   VARCHAR(64)          DEFAULT ''
  COMMENT '更新者',
  update_time DATETIME COMMENT '更新时间',
  remark      VARCHAR(500)         DEFAULT ''
  COMMENT '备注',
  PRIMARY KEY (user_id)
)
  ENGINE = innodb
  AUTO_INCREMENT = 100
  DEFAULT CHARSET = utf8
  COMMENT = '用户信息表';

-- ----------------------------
-- 初始化-用户信息表数据
-- ----------------------------
INSERT INTO sys_user VALUES
  (1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '29c67a30398638269fe600f73a054934', '111111', '0',
   '0', '127.0.0.1', '2018-03-16 11-33-00', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '管理员');
INSERT INTO sys_user VALUES
  (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '8e6d98b90472783cc73c17047ddccf36', '222222', '0',
   '0', '127.0.0.1', '2018-03-16 11-33-00', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '测试员');

-- ----------------------------
-- 3、岗位信息表
-- ----------------------------
DROP TABLE IF EXISTS sys_post;
CREATE TABLE sys_post
(
  post_id     INT(11)     NOT NULL AUTO_INCREMENT
  COMMENT '岗位ID',
  post_code   VARCHAR(64) NOT NULL
  COMMENT '岗位编码',
  post_name   VARCHAR(50) NOT NULL
  COMMENT '岗位名称',
  post_sort   INT(4)      NOT NULL
  COMMENT '显示顺序',
  status      CHAR(1)     NOT NULL
  COMMENT '状态（0正常 1停用）',
  create_by   VARCHAR(64)          DEFAULT ''
  COMMENT '创建者',
  create_time DATETIME COMMENT '创建时间',
  update_by   VARCHAR(64)          DEFAULT ''
  COMMENT '更新者',
  update_time DATETIME COMMENT '更新时间',
  remark      VARCHAR(500)         DEFAULT ''
  COMMENT '备注',
  PRIMARY KEY (post_id)
)
  ENGINE = innodb
  DEFAULT CHARSET = utf8
  COMMENT = '岗位信息表';

-- ----------------------------
-- 初始化-岗位信息表数据
-- ----------------------------
INSERT INTO sys_post VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
INSERT INTO sys_post VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
INSERT INTO sys_post VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
INSERT INTO sys_post
VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');

-- ----------------------------
-- 4、角色信息表
-- ----------------------------
DROP TABLE IF EXISTS sys_role;
CREATE TABLE sys_role (
  role_id     INT(11)      NOT NULL AUTO_INCREMENT
  COMMENT '角色ID',
  role_name   VARCHAR(30)  NOT NULL
  COMMENT '角色名称',
  role_key    VARCHAR(100) NOT NULL
  COMMENT '角色权限字符串',
  role_sort   INT(4)       NOT NULL
  COMMENT '显示顺序',
  data_scope  CHAR(1)               DEFAULT '1'
  COMMENT '数据范围（1：全部数据权限 2：自定数据权限）',
  status      CHAR(1)      NOT NULL
  COMMENT '角色状态（0正常 1停用）',
  del_flag    CHAR(1)               DEFAULT '0'
  COMMENT '删除标志（0代表存在 2代表删除）',
  create_by   VARCHAR(64)           DEFAULT ''
  COMMENT '创建者',
  create_time DATETIME COMMENT '创建时间',
  update_by   VARCHAR(64)           DEFAULT ''
  COMMENT '更新者',
  update_time DATETIME COMMENT '更新时间',
  remark      VARCHAR(500)          DEFAULT ''
  COMMENT '备注',
  PRIMARY KEY (role_id)
)
  ENGINE = innodb
  AUTO_INCREMENT = 100
  DEFAULT CHARSET = utf8
  COMMENT = '角色信息表';

-- ----------------------------
-- 初始化-角色信息表数据
-- ----------------------------
INSERT INTO sys_role
VALUES ('1', '管理员', 'admin', 1, 1, '0', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '管理员');
INSERT INTO sys_role
VALUES ('2', '普通角色', 'common', 2, 2, '0', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '普通角色');

-- ----------------------------
-- 5、菜单权限表
-- ----------------------------
DROP TABLE IF EXISTS sys_menu;
CREATE TABLE sys_menu (
  menu_id     INT(11)     NOT NULL AUTO_INCREMENT
  COMMENT '菜单ID',
  menu_name   VARCHAR(50) NOT NULL
  COMMENT '菜单名称',
  parent_id   INT(11)              DEFAULT 0
  COMMENT '父菜单ID',
  order_num   INT(4)               DEFAULT 0
  COMMENT '显示顺序',
  url         VARCHAR(200)         DEFAULT '#'
  COMMENT '请求地址',
  menu_type   CHAR(1)              DEFAULT ''
  COMMENT '菜单类型（M目录 C菜单 F按钮）',
  visible     CHAR(1)              DEFAULT 0
  COMMENT '菜单状态（0显示 1隐藏）',
  perms       VARCHAR(100)         DEFAULT ''
  COMMENT '权限标识',
  icon        VARCHAR(100)         DEFAULT '#'
  COMMENT '菜单图标',
  create_by   VARCHAR(64)          DEFAULT ''
  COMMENT '创建者',
  create_time DATETIME COMMENT '创建时间',
  update_by   VARCHAR(64)          DEFAULT ''
  COMMENT '更新者',
  update_time DATETIME COMMENT '更新时间',
  remark      VARCHAR(500)         DEFAULT ''
  COMMENT '备注',
  PRIMARY KEY (menu_id)
)
  ENGINE = innodb
  AUTO_INCREMENT = 2000
  DEFAULT CHARSET = utf8
  COMMENT = '菜单权限表';

-- ----------------------------
-- 初始化-菜单信息表数据
-- ----------------------------
-- 一级菜单
INSERT INTO sys_menu VALUES
  ('1', '系统管理', '0', '1', '#', 'M', '0', '', 'fa fa-gear', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00',
   '系统管理目录');
INSERT INTO sys_menu VALUES
  ('2', '系统监控', '0', '2', '#', 'M', '0', '', 'fa fa-video-camera', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '系统监控目录');
INSERT INTO sys_menu VALUES
  ('3', '系统工具', '0', '3', '#', 'M', '0', '', 'fa fa-bars', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00',
   '系统工具目录');
-- 二级菜单
INSERT INTO sys_menu VALUES
  ('100', '用户管理', '1', '1', '/system/user', 'C', '0', 'system:user:view', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '用户管理菜单');
INSERT INTO sys_menu VALUES
  ('101', '角色管理', '1', '2', '/system/role', 'C', '0', 'system:role:view', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '角色管理菜单');
INSERT INTO sys_menu VALUES
  ('102', '菜单管理', '1', '3', '/system/menu', 'C', '0', 'system:menu:view', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '菜单管理菜单');
INSERT INTO sys_menu VALUES
  ('103', '部门管理', '1', '4', '/system/dept', 'C', '0', 'system:dept:view', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '部门管理菜单');
INSERT INTO sys_menu VALUES
  ('104', '岗位管理', '1', '5', '/system/post', 'C', '0', 'system:post:view', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '岗位管理菜单');
INSERT INTO sys_menu VALUES
  ('105', '字典管理', '1', '6', '/system/dict', 'C', '0', 'system:dict:view', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '字典管理菜单');
INSERT INTO sys_menu VALUES
  ('106', '参数设置', '1', '7', '/system/config', 'C', '0', 'system:config:view', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '参数设置菜单');
INSERT INTO sys_menu VALUES
  ('107', '通知公告', '1', '8', '/system/notice', 'C', '0', 'system:notice:view', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '通知公告菜单');
INSERT INTO sys_menu VALUES
  ('108', '日志管理', '1', '9', '#', 'M', '0', '', '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00',
   '日志管理菜单');
INSERT INTO sys_menu VALUES
  ('109', '在线用户', '2', '1', '/monitor/online', 'C', '0', 'monitor:online:view', '#', 'admin', '2018-03-16 11-33-00',
   'ry', '2018-03-16 11-33-00', '在线用户菜单');
INSERT INTO sys_menu VALUES
  ('110', '定时任务', '2', '2', '/monitor/job', 'C', '0', 'monitor:job:view', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '定时任务菜单');
INSERT INTO sys_menu VALUES
  ('111', '数据监控', '2', '3', '/monitor/data', 'C', '0', 'monitor:data:view', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '数据监控菜单');
INSERT INTO sys_menu VALUES
  ('112', '表单构建', '3', '1', '/tool/build', 'C', '0', 'tool:build:view', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '表单构建菜单');
INSERT INTO sys_menu VALUES
  ('113', '代码生成', '3', '2', '/tool/gen', 'C', '0', 'tool:gen:view', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '代码生成菜单');
INSERT INTO sys_menu VALUES
  ('114', '系统接口', '3', '3', '/tool/swagger', 'C', '0', 'tool:swagger:view', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '系统接口菜单');
-- 三级菜单
INSERT INTO sys_menu VALUES
  ('500', '操作日志', '108', '1', '/monitor/operlog', 'C', '0', 'monitor:operlog:view', '#', 'admin', '2018-03-16 11-33-00',
   'ry', '2018-03-16 11-33-00', '操作日志菜单');
INSERT INTO sys_menu VALUES
  ('501', '登录日志', '108', '2', '/monitor/logininfor', 'C', '0', 'monitor:logininfor:view', '#', 'admin',
          '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '登录日志菜单');
-- 用户管理按钮
INSERT INTO sys_menu VALUES
  ('1000', '用户查询', '100', '1', '#', 'F', '0', 'system:user:list', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
INSERT INTO sys_menu VALUES
  ('1001', '用户新增', '100', '2', '#', 'F', '0', 'system:user:add', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
INSERT INTO sys_menu VALUES
  ('1002', '用户修改', '100', '3', '#', 'F', '0', 'system:user:edit', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
INSERT INTO sys_menu VALUES
  ('1003', '用户删除', '100', '4', '#', 'F', '0', 'system:user:remove', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
INSERT INTO sys_menu VALUES
  ('1004', '用户导出', '100', '5', '#', 'F', '0', 'system:user:export', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
INSERT INTO sys_menu VALUES
  ('1005', '重置密码', '100', '5', '#', 'F', '0', 'system:user:resetPwd', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
-- 角色管理按钮
INSERT INTO sys_menu VALUES
  ('1006', '角色查询', '101', '1', '#', 'F', '0', 'system:role:list', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
INSERT INTO sys_menu VALUES
  ('1007', '角色新增', '101', '2', '#', 'F', '0', 'system:role:add', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
INSERT INTO sys_menu VALUES
  ('1008', '角色修改', '101', '3', '#', 'F', '0', 'system:role:edit', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
INSERT INTO sys_menu VALUES
  ('1009', '角色删除', '101', '4', '#', 'F', '0', 'system:role:remove', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
INSERT INTO sys_menu VALUES
  ('1010', '角色导出', '101', '4', '#', 'F', '0', 'system:role:export', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
-- 菜单管理按钮
INSERT INTO sys_menu VALUES
  ('1011', '菜单查询', '102', '1', '#', 'F', '0', 'system:menu:list', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
INSERT INTO sys_menu VALUES
  ('1012', '菜单新增', '102', '2', '#', 'F', '0', 'system:menu:add', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
INSERT INTO sys_menu VALUES
  ('1013', '菜单修改', '102', '3', '#', 'F', '0', 'system:menu:edit', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
INSERT INTO sys_menu VALUES
  ('1014', '菜单删除', '102', '4', '#', 'F', '0', 'system:menu:remove', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
-- 部门管理按钮
INSERT INTO sys_menu VALUES
  ('1015', '部门查询', '103', '1', '#', 'F', '0', 'system:dept:list', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
INSERT INTO sys_menu VALUES
  ('1016', '部门新增', '103', '2', '#', 'F', '0', 'system:dept:add', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
INSERT INTO sys_menu VALUES
  ('1017', '部门修改', '103', '3', '#', 'F', '0', 'system:dept:edit', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
INSERT INTO sys_menu VALUES
  ('1018', '部门删除', '103', '4', '#', 'F', '0', 'system:dept:remove', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
-- 岗位管理按钮
INSERT INTO sys_menu VALUES
  ('1019', '岗位查询', '104', '1', '#', 'F', '0', 'system:post:list', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
INSERT INTO sys_menu VALUES
  ('1020', '岗位新增', '104', '2', '#', 'F', '0', 'system:post:add', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
INSERT INTO sys_menu VALUES
  ('1021', '岗位修改', '104', '3', '#', 'F', '0', 'system:post:edit', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
INSERT INTO sys_menu VALUES
  ('1022', '岗位删除', '104', '4', '#', 'F', '0', 'system:post:remove', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
INSERT INTO sys_menu VALUES
  ('1023', '岗位导出', '104', '4', '#', 'F', '0', 'system:post:export', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
-- 字典管理按钮
INSERT INTO sys_menu VALUES
  ('1024', '字典查询', '105', '1', '#', 'F', '0', 'system:dict:list', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
INSERT INTO sys_menu VALUES
  ('1025', '字典新增', '105', '2', '#', 'F', '0', 'system:dict:add', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
INSERT INTO sys_menu VALUES
  ('1026', '字典修改', '105', '3', '#', 'F', '0', 'system:dict:edit', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
INSERT INTO sys_menu VALUES
  ('1027', '字典删除', '105', '4', '#', 'F', '0', 'system:dict:remove', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
INSERT INTO sys_menu VALUES
  ('1028', '字典导出', '105', '4', '#', 'F', '0', 'system:dict:export', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
-- 参数设置按钮
INSERT INTO sys_menu VALUES
  ('1029', '参数查询', '106', '1', '#', 'F', '0', 'system:config:list', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
INSERT INTO sys_menu VALUES
  ('1030', '参数新增', '106', '2', '#', 'F', '0', 'system:config:add', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
INSERT INTO sys_menu VALUES
  ('1031', '参数修改', '106', '3', '#', 'F', '0', 'system:config:edit', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
INSERT INTO sys_menu VALUES
  ('1032', '参数删除', '106', '4', '#', 'F', '0', 'system:config:remove', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
INSERT INTO sys_menu VALUES
  ('1033', '参数导出', '106', '4', '#', 'F', '0', 'system:config:export', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
-- 通知公告按钮
INSERT INTO sys_menu VALUES
  ('1034', '公告查询', '107', '1', '#', 'F', '0', 'system:notice:list', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
INSERT INTO sys_menu VALUES
  ('1035', '公告新增', '107', '2', '#', 'F', '0', 'system:notice:add', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
INSERT INTO sys_menu VALUES
  ('1036', '公告修改', '107', '3', '#', 'F', '0', 'system:notice:edit', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
INSERT INTO sys_menu VALUES
  ('1037', '公告删除', '107', '4', '#', 'F', '0', 'system:notice:remove', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
-- 操作日志按钮
INSERT INTO sys_menu VALUES
  ('1038', '操作查询', '500', '1', '#', 'F', '0', 'monitor:operlog:list', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
INSERT INTO sys_menu VALUES
  ('1039', '操作删除', '500', '2', '#', 'F', '0', 'monitor:operlog:remove', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
INSERT INTO sys_menu VALUES
  ('1040', '详细信息', '500', '3', '#', 'F', '0', 'monitor:operlog:detail', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
INSERT INTO sys_menu VALUES
  ('1041', '日志导出', '500', '3', '#', 'F', '0', 'monitor:operlog:export', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
-- 登录日志按钮
INSERT INTO sys_menu VALUES
  ('1042', '登录查询', '501', '1', '#', 'F', '0', 'monitor:logininfor:list', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
INSERT INTO sys_menu VALUES
  ('1043', '登录删除', '501', '2', '#', 'F', '0', 'monitor:logininfor:remove', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
INSERT INTO sys_menu VALUES
  ('1044', '日志导出', '501', '2', '#', 'F', '0', 'monitor:logininfor:export', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
-- 在线用户按钮
INSERT INTO sys_menu VALUES
  ('1045', '在线查询', '109', '1', '#', 'F', '0', 'monitor:online:list', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
INSERT INTO sys_menu VALUES
  ('1046', '批量强退', '109', '2', '#', 'F', '0', 'monitor:online:batchForceLogout', '#', 'admin', '2018-03-16 11-33-00',
   'ry', '2018-03-16 11-33-00', '');
INSERT INTO sys_menu VALUES
  ('1047', '单条强退', '109', '3', '#', 'F', '0', 'monitor:online:forceLogout', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
-- 定时任务按钮
INSERT INTO sys_menu VALUES
  ('1048', '任务查询', '110', '1', '#', 'F', '0', 'monitor:job:list', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
INSERT INTO sys_menu VALUES
  ('1049', '任务新增', '110', '2', '#', 'F', '0', 'monitor:job:add', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
INSERT INTO sys_menu VALUES
  ('1050', '任务修改', '110', '3', '#', 'F', '0', 'monitor:job:edit', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
INSERT INTO sys_menu VALUES
  ('1051', '任务删除', '110', '4', '#', 'F', '0', 'monitor:job:remove', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
INSERT INTO sys_menu VALUES
  ('1052', '状态修改', '110', '5', '#', 'F', '0', 'monitor:job:changeStatus', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
INSERT INTO sys_menu VALUES
  ('1053', '任务导出', '110', '5', '#', 'F', '0', 'monitor:job:export', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
-- 代码生成按钮
INSERT INTO sys_menu VALUES
  ('1054', '生成查询', '113', '1', '#', 'F', '0', 'tool:gen:list', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
INSERT INTO sys_menu VALUES
  ('1055', '生成代码', '113', '2', '#', 'F', '0', 'tool:gen:code', '#', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');

-- ----------------------------
-- 6、用户和角色关联表  用户N-1角色
-- ----------------------------
DROP TABLE IF EXISTS sys_user_role;
CREATE TABLE sys_user_role (
  user_id INT(11) NOT NULL
  COMMENT '用户ID',
  role_id INT(11) NOT NULL
  COMMENT '角色ID',
  PRIMARY KEY (user_id, role_id)
)
  ENGINE = innodb
  DEFAULT CHARSET = utf8
  COMMENT = '用户和角色关联表';

-- ----------------------------
-- 初始化-用户和角色关联表数据
-- ----------------------------
INSERT INTO sys_user_role VALUES ('1', '1');
INSERT INTO sys_user_role VALUES ('2', '2');

-- ----------------------------
-- 7、角色和菜单关联表  角色1-N菜单
-- ----------------------------
DROP TABLE IF EXISTS sys_role_menu;
CREATE TABLE sys_role_menu (
  role_id INT(11) NOT NULL
  COMMENT '角色ID',
  menu_id INT(11) NOT NULL
  COMMENT '菜单ID',
  PRIMARY KEY (role_id, menu_id)
)
  ENGINE = innodb
  DEFAULT CHARSET = utf8
  COMMENT = '角色和菜单关联表';

-- ----------------------------
-- 初始化-角色和菜单关联表数据
-- ----------------------------
INSERT INTO sys_role_menu VALUES ('2', '1');
INSERT INTO sys_role_menu VALUES ('2', '2');
INSERT INTO sys_role_menu VALUES ('2', '3');
INSERT INTO sys_role_menu VALUES ('2', '100');
INSERT INTO sys_role_menu VALUES ('2', '101');
INSERT INTO sys_role_menu VALUES ('2', '102');
INSERT INTO sys_role_menu VALUES ('2', '103');
INSERT INTO sys_role_menu VALUES ('2', '104');
INSERT INTO sys_role_menu VALUES ('2', '105');
INSERT INTO sys_role_menu VALUES ('2', '106');
INSERT INTO sys_role_menu VALUES ('2', '107');
INSERT INTO sys_role_menu VALUES ('2', '108');
INSERT INTO sys_role_menu VALUES ('2', '109');
INSERT INTO sys_role_menu VALUES ('2', '110');
INSERT INTO sys_role_menu VALUES ('2', '111');
INSERT INTO sys_role_menu VALUES ('2', '112');
INSERT INTO sys_role_menu VALUES ('2', '113');
INSERT INTO sys_role_menu VALUES ('2', '114');
INSERT INTO sys_role_menu VALUES ('2', '500');
INSERT INTO sys_role_menu VALUES ('2', '501');
INSERT INTO sys_role_menu VALUES ('2', '1000');
INSERT INTO sys_role_menu VALUES ('2', '1001');
INSERT INTO sys_role_menu VALUES ('2', '1002');
INSERT INTO sys_role_menu VALUES ('2', '1003');
INSERT INTO sys_role_menu VALUES ('2', '1004');
INSERT INTO sys_role_menu VALUES ('2', '1005');
INSERT INTO sys_role_menu VALUES ('2', '1006');
INSERT INTO sys_role_menu VALUES ('2', '1007');
INSERT INTO sys_role_menu VALUES ('2', '1008');
INSERT INTO sys_role_menu VALUES ('2', '1009');
INSERT INTO sys_role_menu VALUES ('2', '1010');
INSERT INTO sys_role_menu VALUES ('2', '1011');
INSERT INTO sys_role_menu VALUES ('2', '1012');
INSERT INTO sys_role_menu VALUES ('2', '1013');
INSERT INTO sys_role_menu VALUES ('2', '1014');
INSERT INTO sys_role_menu VALUES ('2', '1015');
INSERT INTO sys_role_menu VALUES ('2', '1016');
INSERT INTO sys_role_menu VALUES ('2', '1017');
INSERT INTO sys_role_menu VALUES ('2', '1018');
INSERT INTO sys_role_menu VALUES ('2', '1019');
INSERT INTO sys_role_menu VALUES ('2', '1020');
INSERT INTO sys_role_menu VALUES ('2', '1021');
INSERT INTO sys_role_menu VALUES ('2', '1022');
INSERT INTO sys_role_menu VALUES ('2', '1023');
INSERT INTO sys_role_menu VALUES ('2', '1024');
INSERT INTO sys_role_menu VALUES ('2', '1025');
INSERT INTO sys_role_menu VALUES ('2', '1026');
INSERT INTO sys_role_menu VALUES ('2', '1027');
INSERT INTO sys_role_menu VALUES ('2', '1028');
INSERT INTO sys_role_menu VALUES ('2', '1029');
INSERT INTO sys_role_menu VALUES ('2', '1030');
INSERT INTO sys_role_menu VALUES ('2', '1031');
INSERT INTO sys_role_menu VALUES ('2', '1032');
INSERT INTO sys_role_menu VALUES ('2', '1033');
INSERT INTO sys_role_menu VALUES ('2', '1034');
INSERT INTO sys_role_menu VALUES ('2', '1035');
INSERT INTO sys_role_menu VALUES ('2', '1036');
INSERT INTO sys_role_menu VALUES ('2', '1037');
INSERT INTO sys_role_menu VALUES ('2', '1038');
INSERT INTO sys_role_menu VALUES ('2', '1039');
INSERT INTO sys_role_menu VALUES ('2', '1040');
INSERT INTO sys_role_menu VALUES ('2', '1041');
INSERT INTO sys_role_menu VALUES ('2', '1042');
INSERT INTO sys_role_menu VALUES ('2', '1043');
INSERT INTO sys_role_menu VALUES ('2', '1044');
INSERT INTO sys_role_menu VALUES ('2', '1045');
INSERT INTO sys_role_menu VALUES ('2', '1046');
INSERT INTO sys_role_menu VALUES ('2', '1047');
INSERT INTO sys_role_menu VALUES ('2', '1048');
INSERT INTO sys_role_menu VALUES ('2', '1049');
INSERT INTO sys_role_menu VALUES ('2', '1050');
INSERT INTO sys_role_menu VALUES ('2', '1051');
INSERT INTO sys_role_menu VALUES ('2', '1052');
INSERT INTO sys_role_menu VALUES ('2', '1053');
INSERT INTO sys_role_menu VALUES ('2', '1054');
INSERT INTO sys_role_menu VALUES ('2', '1055');

-- ----------------------------
-- 8、角色和部门关联表  角色1-N部门
-- ----------------------------
DROP TABLE IF EXISTS sys_role_dept;
CREATE TABLE sys_role_dept (
  role_id INT(11) NOT NULL
  COMMENT '角色ID',
  dept_id INT(11) NOT NULL
  COMMENT '部门ID',
  PRIMARY KEY (role_id, dept_id)
)
  ENGINE = innodb
  DEFAULT CHARSET = utf8
  COMMENT = '角色和部门关联表';

-- ----------------------------
-- 初始化-角色和部门关联表数据
-- ----------------------------
INSERT INTO sys_role_dept VALUES ('2', '100');
INSERT INTO sys_role_dept VALUES ('2', '101');
INSERT INTO sys_role_dept VALUES ('2', '105');

-- ----------------------------
-- 9、用户与岗位关联表  用户1-N岗位
-- ----------------------------
DROP TABLE IF EXISTS sys_user_post;
CREATE TABLE sys_user_post
(
  user_id INT(11) NOT NULL
  COMMENT '用户ID',
  post_id INT(11) NOT NULL
  COMMENT '岗位ID',
  PRIMARY KEY (user_id, post_id)
)
  ENGINE = innodb
  DEFAULT CHARSET = utf8
  COMMENT = '用户与岗位关联表';

-- ----------------------------
-- 初始化-用户与岗位关联表数据
-- ----------------------------
INSERT INTO sys_user_post VALUES ('1', '1');
INSERT INTO sys_user_post VALUES ('2', '2');

-- ----------------------------
-- 10、操作日志记录
-- ----------------------------
DROP TABLE IF EXISTS sys_oper_log;
CREATE TABLE sys_oper_log (
  oper_id       INT(11) NOT NULL AUTO_INCREMENT
  COMMENT '日志主键',
  title         VARCHAR(50)      DEFAULT ''
  COMMENT '模块标题',
  business_type INT(2)           DEFAULT 0
  COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  method        VARCHAR(100)     DEFAULT ''
  COMMENT '方法名称',
  operator_type INT(1)           DEFAULT 0
  COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  oper_name     VARCHAR(50)      DEFAULT ''
  COMMENT '操作人员',
  dept_name     VARCHAR(50)      DEFAULT ''
  COMMENT '部门名称',
  oper_url      VARCHAR(255)     DEFAULT ''
  COMMENT '请求URL',
  oper_ip       VARCHAR(30)      DEFAULT ''
  COMMENT '主机地址',
  oper_location VARCHAR(255)     DEFAULT ''
  COMMENT '操作地点',
  oper_param    VARCHAR(255)     DEFAULT ''
  COMMENT '请求参数',
  status        INT(1)           DEFAULT 0
  COMMENT '操作状态（0正常 1异常）',
  error_msg     VARCHAR(2000)    DEFAULT ''
  COMMENT '错误消息',
  oper_time     DATETIME COMMENT '操作时间',
  PRIMARY KEY (oper_id)
)
  ENGINE = innodb
  AUTO_INCREMENT = 100
  DEFAULT CHARSET = utf8
  COMMENT = '操作日志记录';

-- ----------------------------
-- 11、字典类型表
-- ----------------------------
DROP TABLE IF EXISTS sys_dict_type;
CREATE TABLE sys_dict_type
(
  dict_id     INT(11) NOT NULL AUTO_INCREMENT
  COMMENT '字典主键',
  dict_name   VARCHAR(100)     DEFAULT ''
  COMMENT '字典名称',
  dict_type   VARCHAR(100)     DEFAULT ''
  COMMENT '字典类型',
  status      CHAR(1)          DEFAULT '0'
  COMMENT '状态（0正常 1停用）',
  create_by   VARCHAR(64)      DEFAULT ''
  COMMENT '创建者',
  create_time DATETIME COMMENT '创建时间',
  update_by   VARCHAR(64)      DEFAULT ''
  COMMENT '更新者',
  update_time DATETIME COMMENT '更新时间',
  remark      VARCHAR(500)     DEFAULT ''
  COMMENT '备注',
  PRIMARY KEY (dict_id),
  UNIQUE (dict_type)
)
  ENGINE = innodb
  AUTO_INCREMENT = 100
  DEFAULT CHARSET = utf8
  COMMENT = '字典类型表';

INSERT INTO sys_dict_type
VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '用户性别列表');
INSERT INTO sys_dict_type
VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '菜单状态列表');
INSERT INTO sys_dict_type
VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '系统开关列表');
INSERT INTO sys_dict_type
VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '任务状态列表');
INSERT INTO sys_dict_type
VALUES (5, '系统是否', 'sys_yes_no', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '系统是否列表');
INSERT INTO sys_dict_type
VALUES (6, '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '通知类型列表');
INSERT INTO sys_dict_type
VALUES (7, '通知状态', 'sys_notice_status', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '通知状态列表');
INSERT INTO sys_dict_type
VALUES (8, '操作类型', 'sys_oper_type', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '操作类型列表');
INSERT INTO sys_dict_type
VALUES (9, '系统状态', 'sys_common_status', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '登录状态列表');

-- ----------------------------
-- 12、字典数据表
-- ----------------------------
DROP TABLE IF EXISTS sys_dict_data;
CREATE TABLE sys_dict_data
(
  dict_code   INT(11) NOT NULL AUTO_INCREMENT
  COMMENT '字典编码',
  dict_sort   INT(4)           DEFAULT 0
  COMMENT '字典排序',
  dict_label  VARCHAR(100)     DEFAULT ''
  COMMENT '字典标签',
  dict_value  VARCHAR(100)     DEFAULT ''
  COMMENT '字典键值',
  dict_type   VARCHAR(100)     DEFAULT ''
  COMMENT '字典类型',
  css_class   VARCHAR(100)     DEFAULT ''
  COMMENT '样式属性（其他样式扩展）',
  list_class  VARCHAR(100)     DEFAULT ''
  COMMENT '表格回显样式',
  is_default  CHAR(1)          DEFAULT 'N'
  COMMENT '是否默认（Y是 N否）',
  status      CHAR(1)          DEFAULT '0'
  COMMENT '状态（0正常 1停用）',
  create_by   VARCHAR(64)      DEFAULT ''
  COMMENT '创建者',
  create_time DATETIME COMMENT '创建时间',
  update_by   VARCHAR(64)      DEFAULT ''
  COMMENT '更新者',
  update_time DATETIME COMMENT '更新时间',
  remark      VARCHAR(500)     DEFAULT ''
  COMMENT '备注',
  PRIMARY KEY (dict_code)
)
  ENGINE = innodb
  AUTO_INCREMENT = 100
  DEFAULT CHARSET = utf8
  COMMENT = '字典数据表';


INSERT INTO sys_dict_data VALUES
  (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00',
   '性别男');
INSERT INTO sys_dict_data VALUES
  (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00',
   '性别女');
INSERT INTO sys_dict_data VALUES
  (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00',
   '性别未知');
INSERT INTO sys_dict_data VALUES
  (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '显示菜单');
INSERT INTO sys_dict_data VALUES
  (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '隐藏菜单');
INSERT INTO sys_dict_data VALUES
  (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '正常状态');
INSERT INTO sys_dict_data VALUES
  (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '停用状态');
INSERT INTO sys_dict_data VALUES
  (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '正常状态');
INSERT INTO sys_dict_data VALUES
  (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '停用状态');
INSERT INTO sys_dict_data VALUES
  (10, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00',
   '系统默认是');
INSERT INTO sys_dict_data VALUES
  (11, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00',
   '系统默认否');
INSERT INTO sys_dict_data VALUES
  (12, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '通知');
INSERT INTO sys_dict_data VALUES
  (13, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '公告');
INSERT INTO sys_dict_data VALUES
  (14, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '正常状态');
INSERT INTO sys_dict_data VALUES
  (15, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '关闭状态');
INSERT INTO sys_dict_data VALUES
  (16, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00',
   '新增操作');
INSERT INTO sys_dict_data VALUES
  (17, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00',
   '修改操作');
INSERT INTO sys_dict_data VALUES
  (18, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '删除操作');
INSERT INTO sys_dict_data VALUES
  (19, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '授权操作');
INSERT INTO sys_dict_data VALUES
  (20, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '导出操作');
INSERT INTO sys_dict_data VALUES
  (21, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '导入操作');
INSERT INTO sys_dict_data VALUES
  (22, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '强退操作');
INSERT INTO sys_dict_data VALUES
  (23, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '生成操作');
INSERT INTO sys_dict_data VALUES
  (24, 8, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '清空操作');
INSERT INTO sys_dict_data VALUES
  (25, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '正常状态');
INSERT INTO sys_dict_data VALUES
  (26, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '停用状态');

-- ----------------------------
-- 13、参数配置表
-- ----------------------------
DROP TABLE IF EXISTS sys_config;
CREATE TABLE sys_config (
  config_id    INT(5) NOT NULL AUTO_INCREMENT
  COMMENT '参数主键',
  config_name  VARCHAR(100)    DEFAULT ''
  COMMENT '参数名称',
  config_key   VARCHAR(100)    DEFAULT ''
  COMMENT '参数键名',
  config_value VARCHAR(100)    DEFAULT ''
  COMMENT '参数键值',
  config_type  CHAR(1)         DEFAULT 'N'
  COMMENT '系统内置（Y是 N否）',
  create_by    VARCHAR(64)     DEFAULT ''
  COMMENT '创建者',
  create_time  DATETIME COMMENT '创建时间',
  update_by    VARCHAR(64)     DEFAULT ''
  COMMENT '更新者',
  update_time  DATETIME COMMENT '更新时间',
  remark       VARCHAR(500)    DEFAULT ''
  COMMENT '备注',
  PRIMARY KEY (config_id)
)
  ENGINE = innodb
  AUTO_INCREMENT = 100
  DEFAULT CHARSET = utf8
  COMMENT = '参数配置表';

INSERT INTO sys_config VALUES
  (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-default', 'Y', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '默认 skin-default、蓝色 skin-blue、黄色 skin-yellow');
INSERT INTO sys_config VALUES
  (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '初始化密码 123456');

-- ----------------------------
-- 14、系统访问记录
-- ----------------------------
DROP TABLE IF EXISTS sys_logininfor;
CREATE TABLE sys_logininfor (
  info_id        INT(11) NOT NULL AUTO_INCREMENT
  COMMENT '访问ID',
  login_name     VARCHAR(50)      DEFAULT ''
  COMMENT '登录账号',
  ipaddr         VARCHAR(50)      DEFAULT ''
  COMMENT '登录IP地址',
  login_location VARCHAR(255)     DEFAULT ''
  COMMENT '登录地点',
  browser        VARCHAR(50)      DEFAULT ''
  COMMENT '浏览器类型',
  os             VARCHAR(50)      DEFAULT ''
  COMMENT '操作系统',
  status         CHAR(1)          DEFAULT '0'
  COMMENT '登录状态（0成功 1失败）',
  msg            VARCHAR(255)     DEFAULT ''
  COMMENT '提示消息',
  login_time     DATETIME COMMENT '访问时间',
  PRIMARY KEY (info_id)
)
  ENGINE = innodb
  AUTO_INCREMENT = 100
  DEFAULT CHARSET = utf8
  COMMENT = '系统访问记录';

-- ----------------------------
-- 15、在线用户记录
-- ----------------------------
DROP TABLE IF EXISTS sys_user_online;
CREATE TABLE sys_user_online (
  sessionId        VARCHAR(50)  DEFAULT ''
  COMMENT '用户会话id',
  login_name       VARCHAR(50)  DEFAULT ''
  COMMENT '登录账号',
  dept_name        VARCHAR(50)  DEFAULT ''
  COMMENT '部门名称',
  ipaddr           VARCHAR(50)  DEFAULT ''
  COMMENT '登录IP地址',
  login_location   VARCHAR(255) DEFAULT ''
  COMMENT '登录地点',
  browser          VARCHAR(50)  DEFAULT ''
  COMMENT '浏览器类型',
  os               VARCHAR(50)  DEFAULT ''
  COMMENT '操作系统',
  status           VARCHAR(10)  DEFAULT ''
  COMMENT '在线状态on_line在线off_line离线',
  start_timestamp  DATETIME COMMENT 'session创建时间',
  last_access_time DATETIME COMMENT 'session最后访问时间',
  expire_time      INT(5)       DEFAULT 0
  COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (sessionId)
)
  ENGINE = innodb
  DEFAULT CHARSET = utf8
  COMMENT = '在线用户记录';

-- ----------------------------
-- 16、定时任务调度表
-- ----------------------------
DROP TABLE IF EXISTS sys_job;
CREATE TABLE sys_job (
  job_id          INT(11) NOT NULL AUTO_INCREMENT
  COMMENT '任务ID',
  job_name        VARCHAR(64)      DEFAULT ''
  COMMENT '任务名称',
  job_group       VARCHAR(64)      DEFAULT ''
  COMMENT '任务组名',
  method_name     VARCHAR(500)     DEFAULT ''
  COMMENT '任务方法',
  method_params   VARCHAR(200)     DEFAULT ''
  COMMENT '方法参数',
  cron_expression VARCHAR(255)     DEFAULT ''
  COMMENT 'cron执行表达式',
  misfire_policy  VARCHAR(20)      DEFAULT '0'
  COMMENT '计划执行错误策略（0默认 1继续 2等待 3放弃）',
  status          CHAR(1)          DEFAULT '0'
  COMMENT '状态（0正常 1暂停）',
  create_by       VARCHAR(64)      DEFAULT ''
  COMMENT '创建者',
  create_time     DATETIME COMMENT '创建时间',
  update_by       VARCHAR(64)      DEFAULT ''
  COMMENT '更新者',
  update_time     DATETIME COMMENT '更新时间',
  remark          VARCHAR(500)     DEFAULT ''
  COMMENT '备注信息',
  PRIMARY KEY (job_id, job_name, job_group)
)
  ENGINE = innodb
  AUTO_INCREMENT = 100
  DEFAULT CHARSET = utf8
  COMMENT = '定时任务调度表';

INSERT INTO sys_job VALUES
  (1, 'ryTask', '系统默认（无参）', 'ryNoParams', '', '0/10 * * * * ?', '0', '1', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');
INSERT INTO sys_job VALUES
  (2, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', '0/20 * * * * ?', '0', '1', 'admin', '2018-03-16 11-33-00', 'ry',
   '2018-03-16 11-33-00', '');

-- ----------------------------
-- 17、定时任务调度日志表
-- ----------------------------
DROP TABLE IF EXISTS sys_job_log;
CREATE TABLE sys_job_log (
  job_log_id     INT(11)     NOT NULL AUTO_INCREMENT
  COMMENT '任务日志ID',
  job_name       VARCHAR(64) NOT NULL
  COMMENT '任务名称',
  job_group      VARCHAR(64) NOT NULL
  COMMENT '任务组名',
  method_name    VARCHAR(500) COMMENT '任务方法',
  method_params  VARCHAR(200)         DEFAULT ''
  COMMENT '方法参数',
  job_message    VARCHAR(500) COMMENT '日志信息',
  status         CHAR(1)              DEFAULT '0'
  COMMENT '执行状态（0正常 1失败）',
  exception_info TEXT COMMENT '异常信息',
  create_time    DATETIME COMMENT '创建时间',
  PRIMARY KEY (job_log_id)
)
  ENGINE = innodb
  DEFAULT CHARSET = utf8
  COMMENT = '定时任务调度日志表';

-- ----------------------------
-- 18、通知公告表
-- ----------------------------
DROP TABLE IF EXISTS sys_notice;
CREATE TABLE sys_notice (
  notice_id      INT(4)       NOT NULL AUTO_INCREMENT
  COMMENT '公告ID',
  notice_title   VARCHAR(50)  NOT NULL
  COMMENT '公告标题',
  notice_type    CHAR(2)      NOT NULL
  COMMENT '公告类型（1通知 2公告）',
  notice_content VARCHAR(500) NOT NULL
  COMMENT '公告内容',
  status         CHAR(1)               DEFAULT '0'
  COMMENT '公告状态（0正常 1关闭）',
  create_by      VARCHAR(64)           DEFAULT ''
  COMMENT '创建者',
  create_time    DATETIME COMMENT '创建时间',
  update_by      VARCHAR(64)           DEFAULT ''
  COMMENT '更新者',
  update_time    DATETIME COMMENT '更新时间',
  remark         VARCHAR(255)          DEFAULT ''
  COMMENT '备注',
  PRIMARY KEY (notice_id)
)
  ENGINE = innodb
  AUTO_INCREMENT = 10
  DEFAULT CHARSET = utf8
  COMMENT = '通知公告表';

-- ----------------------------
-- 初始化-公告信息表数据
-- ----------------------------
INSERT INTO sys_notice VALUES
  ('1', '温馨提醒：2018-07-01 若依新版本发布啦', '2', '新版本内容', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00',
   '管理员');
INSERT INTO sys_notice VALUES
  ('2', '维护通知：2018-07-01 若依系统凌晨维护', '1', '维护内容', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00',
   '管理员');