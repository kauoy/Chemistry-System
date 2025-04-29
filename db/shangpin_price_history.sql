-- 创建商品价格历史表
CREATE TABLE `shangpin_price_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpinid` bigint(20) DEFAULT NULL COMMENT '商品ID',
  `price` float DEFAULT NULL COMMENT '价格',
  `username` varchar(200) DEFAULT NULL COMMENT '修改人',
  `addtime` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `idx_shangpinid` (`shangpinid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品价格历史'; 