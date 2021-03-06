
-- 2018/3/14 创建文章评论表  开始----------------
DROP TABLE IF EXISTS `comment_article`;

CREATE TABLE `comment_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned DEFAULT '0' COMMENT '上一级评论id',
  `articleid` int(10) unsigned DEFAULT NULL COMMENT '文章id',
  `owneruserid` int (20) unsigned COMMENT '被回复的作者id',
  `userid` int (20) unsigned COMMENT '评论者id',
  `content` varchar(1000) DEFAULT NULL COMMENT '评论内容',
  `createtime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '评论时间',
  `deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '评论是否被删除(0:否 1:是)',
  PRIMARY KEY (`id`),
  KEY `articleid_deleted_index` (`articleid`,`deleted`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- rollback  ------
-- DROP TABLE IF EXISTS `comment_article`;

-- 2018/3/14 创建文章评论表  结束----------------