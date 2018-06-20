
-- 2018/3/14 创建视频模块评论表  开始----------------
DROP TABLE IF EXISTS `comment_video`;

CREATE TABLE `comment_video` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned DEFAULT '0' COMMENT '上一级评论id',
  `videoid` int(10) unsigned DEFAULT NULL COMMENT '视频模块id',
  `owneruserid` int (20) unsigned COMMENT '被回复的作者id',
  `userid` int (20) unsigned COMMENT '评论者id',
  `content` varchar(1000) DEFAULT NULL COMMENT '评论内容',
  `createtime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '评论时间',
  `deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '评论是否被删除(0:否 1:是)',
  PRIMARY KEY (`id`),
  KEY `videoid_deleted_index` (`videoid`,`deleted`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- rollback  ------
-- DROP TABLE IF EXISTS `comment_video`;

-- 2018/3/14 创建视频模块表  结束----------------