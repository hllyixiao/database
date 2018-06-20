-- 2018/3/15 创建日志表  开始----------------
DROP TABLE IF EXISTS `logs`;

CREATE TABLE `logs`(
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(20) unsigned  COMMENT '操作用户ID',
  `username` VARCHAR (40)  DEFAULT '' COMMENT '操作用户名称',
  `action` VARCHAR (20)  DEFAULT '' COMMENT '操作动作名称',
  `describe` VARCHAR (40)  DEFAULT '' COMMENT '描述',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `ip` VARCHAR(20),
  `createtime` TIMESTAMP  NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '用户创建日志时间',
  PRIMARY KEY (`id`)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='日志表';

-- rollback  ------
-- DROP TABLE IF EXISTS `logs`;

-- 2018/3/15 创建日志表  结束----------------