--------- 2018/2/12 创建用户表  开始----------------
DROP TABLE IF EXISTS `user`;

CREATE TABLE `user`(
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `name` VARCHAR (10)  DEFAULT '' COMMENT '用户名称',
  `password` VARCHAR(12) NOT NULL  COMMENT '用户密码',
  `phone` VARCHAR(20) NOT NULL UNIQUE COMMENT '用户手机号',
  `email` VARCHAR(30)  COMMENT '用户邮箱',
  `type` tinyint(2) unsigned NOT NULL DEFAULT 1 COMMENT '用户类型：1普通用户、2会员、3管理员、4超级用户',
  `sharecoin` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '用户分享币',
  `motto` VARCHAR(80) COMMENT '用户格言',
  `lastloginip` VARCHAR(16)  COMMENT '最后登陆的ip',
  `avatarurl` VARCHAR(50)  COMMENT '头像图片路径',
  `createtime` TIMESTAMP  NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '用户创建时间',
  `updatetime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '用户更新时间',
  PRIMARY KEY (`id`),
  KEY `phone_index` (`phone`) USING BTREE,
  KEY `name_index` (`name`) USING BTREE
)ENGINE=InnoDB AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COMMENT='用户表';

----- rollback  ------
-- DROP TABLE IF EXISTS `user`;

--------- 2018/2/12 创建用户表  结束----------------