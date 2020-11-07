package org.jeecg.modules.medical.service;

import org.jeecg.modules.medical.entity.WmAreaSpace;
import com.baomidou.mybatisplus.extension.service.IService;
import org.jeecg.common.exception.JeecgBootException;

/**
 * @Description: 空间数据
 * @Author: jeecg-boot
 * @Date:   2020-11-06
 * @Version: V1.0
 */
public interface IWmAreaSpaceService extends IService<WmAreaSpace> {

	/**根节点父ID的值*/
	public static final String ROOT_PID_VALUE = "0";
	
	/**树节点有子节点状态值*/
	public static final String HASCHILD = "1";
	
	/**树节点无子节点状态值*/
	public static final String NOCHILD = "0";

	/**新增节点*/
	void addWmAreaSpace(WmAreaSpace wmAreaSpace);
	
	/**修改节点*/
	void updateWmAreaSpace(WmAreaSpace wmAreaSpace) throws JeecgBootException;
	
	/**删除节点*/
	void deleteWmAreaSpace(String id) throws JeecgBootException;

}
