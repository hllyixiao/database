--------- 2018/3/1 创建文章表  开始----------------
DROP TABLE IF EXISTS `article`;

CREATE TABLE `article`(
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `userid` int(20) unsigned NOT NULL COMMENT '发表用户id',
  `title` VARCHAR (40)  DEFAULT '' COMMENT '标题',
  `describes` VARCHAR(40) NOT NULL  COMMENT '描述',
  `content` text  COMMENT '内容',
  `categoryid` int(8) unsigned COMMENT '分类id',
  `state` tinyint(4) unsigned NOT NULL DEFAULT 1 COMMENT '0:删除  1：草稿  2：发布',
  `comments` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '评论数',
  `likes` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '喜欢数',
  `reads` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '阅读数量',
  `createtime` TIMESTAMP  NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '用户创建时间',
  `updatetime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '用户更新时间',
  PRIMARY KEY (`id`),
  KEY `userid_index` (`userid`) USING BTREE,
  KEY `state_index` (`state`) USING BTREE
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='文章表';

----- rollback  ------
-- DROP TABLE IF EXISTS `article`;

--------- 2018/3/1 创建文章表  结束----------------
