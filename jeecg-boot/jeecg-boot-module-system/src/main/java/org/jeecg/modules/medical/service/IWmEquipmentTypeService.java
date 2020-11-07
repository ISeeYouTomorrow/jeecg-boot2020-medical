package org.jeecg.modules.medical.service;

import org.jeecg.modules.medical.entity.WmEquipmentType;
import com.baomidou.mybatisplus.extension.service.IService;
import org.jeecg.common.exception.JeecgBootException;

/**
 * @Description: 设备数据
 * @Author: jeecg-boot
 * @Date:   2020-11-07
 * @Version: V1.0
 */
public interface IWmEquipmentTypeService extends IService<WmEquipmentType> {

	/**根节点父ID的值*/
	public static final String ROOT_PID_VALUE = "0";
	
	/**树节点有子节点状态值*/
	public static final String HASCHILD = "1";
	
	/**树节点无子节点状态值*/
	public static final String NOCHILD = "0";

	/**新增节点*/
	void addWmEquipmentType(WmEquipmentType wmEquipmentType);
	
	/**修改节点*/
	void updateWmEquipmentType(WmEquipmentType wmEquipmentType) throws JeecgBootException;
	
	/**删除节点*/
	void deleteWmEquipmentType(String id) throws JeecgBootException;

}
