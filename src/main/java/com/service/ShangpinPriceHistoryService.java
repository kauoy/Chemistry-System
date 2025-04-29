package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ShangpinPriceHistoryEntity;
import java.util.List;
import java.util.Map;
import com.entity.view.ShangpinPriceHistoryView;


/**
 * 商品价格历史
 */
public interface ShangpinPriceHistoryService extends IService<ShangpinPriceHistoryEntity> {

    PageUtils queryPage(Map<String, Object> params, Wrapper<ShangpinPriceHistoryEntity> wrapper);
    
    List<ShangpinPriceHistoryView> selectListView(Wrapper<ShangpinPriceHistoryEntity> wrapper);

    ShangpinPriceHistoryView selectView(Wrapper<ShangpinPriceHistoryEntity> wrapper);
	
    List<ShangpinPriceHistoryView> selectListView(Map<String, Object> params, Wrapper<ShangpinPriceHistoryEntity> wrapper);
    
} 