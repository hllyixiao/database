
--------- 2018/3/14 创建用户关注表  开始----------------
DROP TABLE IF EXISTS `comment`;

CREATE TABLE `comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned DEFAULT '0' COMMENT '上一级评论id',
  `articleid` int(10) unsigned DEFAULT NULL,
  `articleuserid` int(10) unsigned DEFAULT NULL COMMENT '发表文章的作者id',
  `owneruserid` int(10) unsigned DEFAULT NULL COMMENT '被回复的作者id',
  `userid` int(10) unsigned DEFAULT NULL COMMENT '评论者id',
  `username` varchar(40) DEFAULT NULL COMMENT '评论者用户名',
  `useravatarurl` varchar(50) DEFAULT NULL COMMENT '评论者头像',
  `content` varchar(1000) DEFAULT NULL COMMENT '评论内容',
  `createtime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '评论时间',
  `deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '评论是否被删除(0:否 1:是)',
  PRIMARY KEY (`id`),
  KEY `articleid_deleted_index` (`articleid`,`deleted`) USING BTREE,
  KEY `articleuserid_deleted_index` (`articleuserid`,`deleted`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

----- rollback  ------
-- DROP TABLE IF EXISTS `comment`;

--------- 2018/3/14 创建用户关注表  结束----------------