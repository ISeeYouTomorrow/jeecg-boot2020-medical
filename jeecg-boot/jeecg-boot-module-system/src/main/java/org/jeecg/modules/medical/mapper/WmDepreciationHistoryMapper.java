package org.jeecg.modules.medical.mapper;

import java.util.List;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;
import org.jeecg.modules.medical.entity.WmDepreciationHistory;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.jeecg.modules.medical.vo.WmEquipmentInfoPage;
import org.jeecg.modules.medical.vo.WmMaintenanceHistoryVO;

/**
 * @Description: 设备折旧记录
 * @Author: lxl
 * @Date:   2020-12-06
 * @Version: V1.0
 */
public interface WmDepreciationHistoryMapper extends BaseMapper<WmDepreciationHistory> {


    /**
     * 保养验收查询设备保养已验收和待验收列表
     * @param page
     * @param equipmentName
     * @param equipmentCode
     * @return List<WmMaintenanceHistoryVO>
     */
    List<WmEquipmentInfoPage> selectEquipmentForPage(Page<WmEquipmentInfoPage> page, @Param("equipmentName") String equipmentName, @Param("equipmentCode")String equipmentCode);
}
