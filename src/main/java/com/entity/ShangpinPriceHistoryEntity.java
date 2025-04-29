package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 商品价格历史
 * 数据库通用操作实体类（普通增删改查）
 */
@TableName("shangpin_price_history")
public class ShangpinPriceHistoryEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public ShangpinPriceHistoryEntity() {
		
	}
	
	public ShangpinPriceHistoryEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 商品id
	 */
					
	private Long shangpinid;
	
	/**
	 * 价格
	 */
					
	private Float price;
	
	/**
	 * 修改人
	 */
					
	private String username;
	
	/**
	 * 修改时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：商品id
	 */
	public void setShangpinid(Long shangpinid) {
		this.shangpinid = shangpinid;
	}
	/**
	 * 获取：商品id
	 */
	public Long getShangpinid() {
		return shangpinid;
	}
	/**
	 * 设置：价格
	 */
	public void setPrice(Float price) {
		this.price = price;
	}
	/**
	 * 获取：价格
	 */
	public Float getPrice() {
		return price;
	}
	/**
	 * 设置：修改人
	 */
	public void setUsername(String username) {
		this.username = username;
	}
	/**
	 * 获取：修改人
	 */
	public String getUsername() {
		return username;
	}
} 