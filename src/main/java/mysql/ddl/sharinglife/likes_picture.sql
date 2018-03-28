--------- 2018/3/27 创建图片点赞表  开始----------------
DROP TABLE IF EXISTS `likes_picture`;

CREATE TABLE `likes_picture`(
  `pictureid` int(20) unsigned COMMENT '视频id',
  `userid` int (20) unsigned COMMENT '点赞用户id',
  `deleted` tinyint(1) NOT NULL DEFAULT 0  COMMENT '是否被删除(0:否 1:是)',
  `createtime` TIMESTAMP  NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pictureid`,`userid`),
  KEY `pictureid_userid_deleted_index` (`pictureid`,`userid`,`deleted`) USING BTREE
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='图片点赞表';

----- rollback  ------
-- DROP TABLE IF EXISTS `likes_picture`;

--------- 2018/2/27 创建图片点赞表  结束----------------