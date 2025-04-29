package com.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.ShangpinPriceHistoryEntity;
import com.entity.view.ShangpinPriceHistoryView;

import com.service.ShangpinPriceHistoryService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MPUtil;
import com.utils.CommonUtil;

/**
 * 商品价格历史
 * 后端接口
 */
@RestController
@RequestMapping("/shangpinpricehistory")
public class ShangpinPriceHistoryController {
    @Autowired
    private ShangpinPriceHistoryService shangpinPriceHistoryService;
    
    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,ShangpinPriceHistoryEntity shangpinPriceHistory,
                  HttpServletRequest request){
        EntityWrapper<ShangpinPriceHistoryEntity> ew = new EntityWrapper<ShangpinPriceHistoryEntity>();
        PageUtils page = shangpinPriceHistoryService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, shangpinPriceHistory), params), params));
        return R.ok().put("data", page);
    }
    
    /**
     * 根据商品ID获取价格历史
     */
    @IgnoreAuth
    @RequestMapping("/history/{shangpinId}")
    public R history(@PathVariable("shangpinId") Long shangpinId){
        EntityWrapper<ShangpinPriceHistoryEntity> ew = new EntityWrapper<ShangpinPriceHistoryEntity>();
        ew.eq("shangpinid", shangpinId);
        ew.orderBy("addtime", true);
        List<ShangpinPriceHistoryView> list = shangpinPriceHistoryService.selectListView(ew);
        return R.ok().put("data", list);
    }
    
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        ShangpinPriceHistoryEntity shangpinPriceHistory = shangpinPriceHistoryService.selectById(id);
        return R.ok().put("data", shangpinPriceHistory);
    }

    /**
     * 前端详情
     */
    @IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        ShangpinPriceHistoryEntity shangpinPriceHistory = shangpinPriceHistoryService.selectById(id);
        return R.ok().put("data", shangpinPriceHistory);
    }
    
    /**
     * 保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody ShangpinPriceHistoryEntity shangpinPriceHistory, HttpServletRequest request){
        shangpinPriceHistory.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
        shangpinPriceHistory.setAddtime(new Date());
        shangpinPriceHistoryService.insert(shangpinPriceHistory);
        return R.ok();
    }
} 