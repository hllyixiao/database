
--------- 2018/3/14 创建用户关注表  开始----------------
DROP TABLE IF EXISTS `comment`;

CREATE TABLE `comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned DEFAULT '0' COMMENT '上一级评论id',
  `articleid` int(10) unsigned DEFAULT NULL,
  `authorname` varchar(50) DEFAULT NULL,
  `authoravatarurl` varchar(50) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL COMMENT '评论内容',
  `createtime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '评论时间',
  `delete` tinyint(1) unsigned DEFAULT '0' COMMENT '评论是否被删除(0:否 1:是)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

----- rollback  ------
-- DROP TABLE IF EXISTS `comment`;

--------- 2018/3/14 创建用户关注表  结束----------------