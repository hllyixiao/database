--------- 2018/2/22 创建用户表  开始----------------
DROP TABLE IF EXISTS `modular`;

CREATE TABLE `modular`(
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '模块id',
  `name` VARCHAR (10)  DEFAULT '' COMMENT '模块名称',
  `remarks` VARCHAR(20) NOT NULL  COMMENT '模块备注',
  `createTime` TIMESTAMP  NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '模块创建时间',
  `updateTime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '模块更新时间',
  PRIMARY KEY (`id`)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='模块表';

----- rollback  ------
-- DROP TABLE IF EXISTS `modular`;

--------- 2018/2/22 创建用户表  结束----------------