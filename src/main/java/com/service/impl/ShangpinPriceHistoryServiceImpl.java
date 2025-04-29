package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;

import com.dao.ShangpinPriceHistoryDao;
import com.entity.ShangpinPriceHistoryEntity;
import com.service.ShangpinPriceHistoryService;
import com.entity.view.ShangpinPriceHistoryView;

/**
 * 商品价格历史服务实现类
 */
@Service("shangpinPriceHistoryService")
public class ShangpinPriceHistoryServiceImpl extends ServiceImpl<ShangpinPriceHistoryDao, ShangpinPriceHistoryEntity> implements ShangpinPriceHistoryService {

    @Override
    public PageUtils queryPage(Map<String, Object> params, Wrapper<ShangpinPriceHistoryEntity> wrapper) {
        Page<ShangpinPriceHistoryEntity> page = this.selectPage(
                new Query<ShangpinPriceHistoryEntity>(params).getPage(),
                wrapper
        );
        return new PageUtils(page);
    }
    
    @Override
	public List<ShangpinPriceHistoryView> selectListView(Wrapper<ShangpinPriceHistoryEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ShangpinPriceHistoryView selectView(Wrapper<ShangpinPriceHistoryEntity> wrapper) {
		return baseMapper.selectListView(wrapper).get(0);
	}
	
    @Override
	public List<ShangpinPriceHistoryView> selectListView(Map<String, Object> params, Wrapper<ShangpinPriceHistoryEntity> wrapper) {
		List<ShangpinPriceHistoryView> viewList = baseMapper.selectListView(wrapper);
		return viewList;
	}
} 