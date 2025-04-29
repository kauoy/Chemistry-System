package com.dao;

import com.entity.ShangpinPriceHistoryEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.view.ShangpinPriceHistoryView;

/**
 * 商品价格历史 
 */
public interface ShangpinPriceHistoryDao extends BaseMapper<ShangpinPriceHistoryEntity> {
	
	List<ShangpinPriceHistoryView> selectListView(@Param("ew") Wrapper<ShangpinPriceHistoryEntity> wrapper);

	List<ShangpinPriceHistoryView> selectListView(Pagination page, @Param("ew") Wrapper<ShangpinPriceHistoryEntity> wrapper);
	
} 