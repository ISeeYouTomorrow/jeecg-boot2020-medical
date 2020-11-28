package org.jeecg.modules.medical.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;
import org.jeecg.modules.medical.entity.WmMaintenanceInfo;
import org.jeecg.modules.medical.vo.WmMaintenancePageVO;

import java.util.List;

/**
 * @Description: 设备维修
 * @Author: lxl
 * @Date:   2020-11-25
 * @Version: V1.0
 */
public interface WmMaintenanceInfoMapper extends BaseMapper<WmMaintenanceInfo> {


    /**
     * 分页查询设备报修信息
     * @param page 分页对象
     * @param equipmentName 设备名称
     * @param equipmentCode 设备编号
     * @return List<WmMaintenancePageVO>
     */
    List<WmMaintenancePageVO> selectForPage(Page<WmMaintenancePageVO> page, @Param("equipmentName") String equipmentName, @Param("equipmentCode")String equipmentCode);

    /**
     * 派工信息保存
     * @param wmMaintenanceInfo
     */
    void saveWorkMaintenance(WmMaintenanceInfo wmMaintenanceInfo);

    /**
     * 维修信息保存
     * @param wmMaintenanceInfo
     */
    void saveTreatmentMaintenance(WmMaintenanceInfo wmMaintenanceInfo);
}
