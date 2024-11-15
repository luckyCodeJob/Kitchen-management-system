package com.entity.view;

import com.entity.ChufangyudingEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 厨房预订
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-05-17 10:31:35
 */
@TableName("chufangyuding")
public class ChufangyudingView  extends ChufangyudingEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ChufangyudingView(){
	}
 
 	public ChufangyudingView(ChufangyudingEntity chufangyudingEntity){
 	try {
			BeanUtils.copyProperties(this, chufangyudingEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
