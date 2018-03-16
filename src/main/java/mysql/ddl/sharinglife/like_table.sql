
--------- 2018/3/16 创建点赞表  开始----------------
DROP TABLE IF EXISTS `like`;

CREATE TABLE `like` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `articleid` int(10) unsigned DEFAULT NULL '被点赞的文章id',
  `articleuserid` int(10) unsigned DEFAULT NULL COMMENT '发表文章的作者id',
  `userid` int(10) unsigned DEFAULT NULL COMMENT '点赞人id',
  `createtime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '点赞时间',
  `deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '点赞是否被删除(0:否 1:是)',
  PRIMARY KEY (`id`),
  KEY `articleid_deleted_index` (`articleid`,`deleted`) USING BTREE,
  KEY `articleuserid_deleted_index` (`articleuserid`,`deleted`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

----- rollback  ------
-- DROP TABLE IF EXISTS `like`;

--------- 2018/3/16 创建点赞表  结束----------------