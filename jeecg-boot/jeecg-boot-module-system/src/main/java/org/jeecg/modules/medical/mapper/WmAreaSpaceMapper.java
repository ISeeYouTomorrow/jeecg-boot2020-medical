package org.jeecg.modules.medical.mapper;

import org.apache.ibatis.annotations.Param;
import org.jeecg.modules.medical.entity.WmAreaSpace;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * @Description: 空间数据
 * @Author: jeecg-boot
 * @Date:   2020-11-06
 * @Version: V1.0
 */
public interface WmAreaSpaceMapper extends BaseMapper<WmAreaSpace> {

	/**
	 * 编辑节点状态
	 * @param id
	 * @param status
	 */
	void updateTreeNodeStatus(@Param("id") String id,@Param("status") String status);

}
