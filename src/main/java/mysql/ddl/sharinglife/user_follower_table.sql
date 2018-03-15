--------- 2018/2/28 创建用户关注表  开始----------------
DROP TABLE IF EXISTS `user_follower`;

CREATE TABLE `user_follower`(
  `userid` int(20) unsigned COMMENT '用户id',
  `followerid` int (20) unsigned COMMENT '被关注者用户ID',
  `delete` tinyint(1) NOT NULL DEFAULT 0  COMMENT '是否被删除(0:否 1:是)',
  `createtime` TIMESTAMP  NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '用户关注创建时间',
  PRIMARY KEY (`userid`,`followerid`),
  KEY `userid_followerid_index` (`userid`,`followerid`,`delete`) USING BTREE
)ENGINE=InnoDB AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COMMENT='用户关注表';

----- rollback  ------
-- DROP TABLE IF EXISTS `user_follower`;

--------- 2018/2/28 创建用户关注表  结束----------------