--------- 2018/3/27 创建文章点赞表  开始----------------
DROP TABLE IF EXISTS `likes_article`;

CREATE TABLE `likes_article`(
  `articleid` int(20) unsigned COMMENT '文章id',
  `userid` int (20) unsigned COMMENT '点赞用户id',
  `deleted` tinyint(1) NOT NULL DEFAULT 0  COMMENT '是否被删除(0:否 1:是)',
  `createtime` TIMESTAMP  NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
  PRIMARY KEY (`articleid`,`userid`),
  KEY `articleid_userid_deleted_index` (`articleid`,`userid`,`deleted`) USING BTREE
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='文章点赞表';

----- rollback  ------
-- DROP TABLE IF EXISTS `likes_article`;

--------- 2018/2/27 创建文章点赞表  结束----------------