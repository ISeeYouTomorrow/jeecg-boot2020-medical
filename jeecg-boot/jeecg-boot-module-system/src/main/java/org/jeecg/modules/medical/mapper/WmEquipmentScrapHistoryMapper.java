package org.jeecg.modules.medical.mapper;

import java.util.List;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;
import org.jeecg.modules.medical.entity.WmEquipmentScrapHistory;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.jeecg.modules.medical.vo.WmEquipmentInfoPage;
import org.jeecg.modules.medical.vo.WmEquipmentScrapVO;

/**
 * @Description: 设备报废记录
 * @Author: lxl
 * @Date:   2020-12-06
 * @Version: V1.0
 */
public interface WmEquipmentScrapHistoryMapper extends BaseMapper<WmEquipmentScrapHistory> {
    /**
     * 保养验收查询设备保养已验收和待验收列表
     * @param page
     * @param equipmentName
     * @param equipmentCode
     * @return List<WmMaintenanceHistoryVO>
     */
    List<WmEquipmentScrapVO> selectForPage(Page<WmEquipmentScrapVO> page, @Param("equipmentName") String equipmentName, @Param("equipmentCode")String equipmentCode);
}
