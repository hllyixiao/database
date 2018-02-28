--------- 2018/2/28 创建用户关注表  开始----------------
DROP TABLE IF EXISTS `user_follower`;

CREATE TABLE `user_follower`(
  `userid` int(20) unsigned COMMENT '用户id',
  `followerid` int (20) unsigned COMMENT '被关注者用户ID',
  `delete` tinyint(1) NOT NULL DEFAULT 0  COMMENT '是否被删除',
  `createtime` TIMESTAMP  NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '用户关注创建时间',
  KEY `userid_index` (`userid`) USING BTREE,
  KEY `followerid_index` (`followerid`) USING BTREE,
  KEY `delete_index` (`delete`) USING BTREE
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='用户关注表';

----- rollback  ------
-- DROP TABLE IF EXISTS `user_follower`;

--------- 2018/2/28 创建用户关注表  结束----------------