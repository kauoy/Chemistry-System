package com.entity.view;

import com.entity.DiscussremenshangpinEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 化工品评论表
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2025-03-18 17:47:55
 */
@TableName("discussremenshangpin")
public class DiscussremenshangpinView  extends DiscussremenshangpinEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DiscussremenshangpinView(){
	}
 
 	public DiscussremenshangpinView(DiscussremenshangpinEntity discussremenshangpinEntity){
 	try {
			BeanUtils.copyProperties(this, discussremenshangpinEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
