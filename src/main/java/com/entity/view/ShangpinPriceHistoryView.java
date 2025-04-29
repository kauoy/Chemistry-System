package com.entity.view;

import com.entity.ShangpinPriceHistoryEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 商品价格历史
 * 后端返回视图实体辅助类
 */
@TableName("shangpin_price_history")
public class ShangpinPriceHistoryView extends ShangpinPriceHistoryEntity<ShangpinPriceHistoryView> implements Serializable {
    private static final long serialVersionUID = 1L;

    public ShangpinPriceHistoryView(){
    }
 
    public ShangpinPriceHistoryView(ShangpinPriceHistoryEntity<ShangpinPriceHistoryView> shangpinPriceHistoryEntity){
        try {
            BeanUtils.copyProperties(this, shangpinPriceHistoryEntity);
        } catch (IllegalAccessException | InvocationTargetException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
} 