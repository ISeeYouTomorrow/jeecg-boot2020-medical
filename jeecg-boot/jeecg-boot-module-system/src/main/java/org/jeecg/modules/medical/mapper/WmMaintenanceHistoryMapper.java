package org.jeecg.modules.medical.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;
import org.jeecg.modules.medical.entity.WmMaintenanceHistory;
import org.jeecg.modules.medical.vo.WmMaintenanceHistoryVO;

import java.util.List;

/**
 * @Description: 设备保养记录
 * @Author: lxl
 * @Date:   2020-11-29
 * @Version: V1.0
 */
public interface WmMaintenanceHistoryMapper extends BaseMapper<WmMaintenanceHistory> {
    /**
     * 分页查询设备报修信息
     * @param page 分页对象
     * @param equipmentName 设备名称
     * @param equipmentCode 设备编号
     * @return List<WmMaintenancePageVO>
     */
    List<WmMaintenanceHistoryVO> selectForPage(Page<WmMaintenanceHistoryVO> page,@Param("cycleDay") Integer cycleDay, @Param("equipmentName") String equipmentName, @Param("equipmentCode")String equipmentCode);


    /**
     * 保养实施查询设备历史保养记录
     * @param page
     * @param equipmentName
     * @param equipmentCode
     * @return List<WmMaintenanceHistoryVO>
     */
    List<WmMaintenanceHistoryVO> selectForWorkPage(Page<WmMaintenanceHistoryVO> page, @Param("equipmentName") String equipmentName, @Param("equipmentCode")String equipmentCode);

    /**
     * 查询设备上次保养信息
     * @param equipmentId
     * @return WmMaintenanceHistory
     */
    WmMaintenanceHistory queryLastMaintainInfo(@Param("equipmentId")String equipmentId);

    /**
     * 保养验收查询设备保养已验收和待验收列表
     * @param page
     * @param equipmentName
     * @param equipmentCode
     * @return List<WmMaintenanceHistoryVO>
     */
    List<WmMaintenanceHistoryVO> selectForCheckPage(Page<WmMaintenanceHistoryVO> page, @Param("equipmentName") String equipmentName, @Param("equipmentCode")String equipmentCode);
}
