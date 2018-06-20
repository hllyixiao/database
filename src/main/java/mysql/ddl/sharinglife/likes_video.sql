-- 2018/3/27 创建视频点赞表  开始----------------
DROP TABLE IF EXISTS `likes_video`;

CREATE TABLE `likes_video`(
  `videoid` int(20) unsigned COMMENT '视频id',
  `userid` int (20) unsigned COMMENT '点赞用户id',
  `deleted` tinyint(1) NOT NULL DEFAULT 0  COMMENT '是否被删除(0:否 1:是)',
  `createtime` TIMESTAMP  NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`videoid`,`userid`),
  KEY `videoid_userid_deleted_index` (`videoid`,`userid`,`deleted`) USING BTREE
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='视频点赞表';

-- rollback  ------
-- DROP TABLE IF EXISTS `likes_video`;

-- 2018/2/27 创建视频点赞表  结束----------------