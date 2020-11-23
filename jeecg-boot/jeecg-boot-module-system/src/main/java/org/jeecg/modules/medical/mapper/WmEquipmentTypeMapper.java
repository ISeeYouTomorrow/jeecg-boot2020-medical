package org.jeecg.modules.medical.mapper;

import org.apache.ibatis.annotations.Param;
import org.jeecg.modules.medical.entity.WmEquipmentType;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * @Description: 设备数据
 * @Author: lxl
 * @Date:   2020-11-07
 * @Version: V1.0
 */
public interface WmEquipmentTypeMapper extends BaseMapper<WmEquipmentType> {

	/**
	 * 编辑节点状态
	 * @param id
	 * @param status
	 */
	void updateTreeNodeStatus(@Param("id") String id,@Param("status") String status);

}
