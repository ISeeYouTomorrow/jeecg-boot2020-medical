package org.jeecg.modules.medical.mapper;

import java.util.List;
import org.jeecg.modules.medical.entity.WmEquipmentApprove;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

/**
 * @Description: 设备审批信息
 * @Author: jeecg-boot
 * @Date:   2020-11-10
 * @Version: V1.0
 */
public interface WmEquipmentApproveMapper extends BaseMapper<WmEquipmentApprove> {

	boolean deleteByMainId(@Param("mainId") String mainId);
    
	List<WmEquipmentApprove> selectByMainId(@Param("mainId") String mainId);
}
