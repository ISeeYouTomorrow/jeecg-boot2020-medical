package org.jeecg.modules.medical.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;
import org.jeecg.modules.medical.entity.WmMeasureHistory;
import org.jeecg.modules.medical.vo.WmMeasureHistoryVO;

import java.util.List;

/**
 * @Description: 设备计量记录
 * @Author: lxl
 * @Date:   2020-11-29
 * @Version: V1.0
 */
public interface WmMeasureHistoryMapper extends BaseMapper<WmMeasureHistory> {
    /**
     * 分页查询设备报修信息
     * @param page 分页对象
     * @param equipmentName 设备名称
     * @param equipmentCode 设备编号
     * @return List<WmMeasureHistoryVO>
     */
    List<WmMeasureHistoryVO> selectForPage(Page<WmMeasureHistoryVO> page,@Param("cycleDay") Integer cycleDay, @Param("equipmentName") String equipmentName, @Param("equipmentCode")String equipmentCode);


    /**
     * 计量实施查询设备历史计量记录
     * @param page
     * @param equipmentName
     * @param equipmentCode
     * @return List<WmMeasureHistoryVO>
     */
    List<WmMeasureHistoryVO> selectForWorkPage(Page<WmMeasureHistoryVO> page, @Param("equipmentName") String equipmentName, @Param("equipmentCode")String equipmentCode);

    /**
     * 查询设备上次计量信息
     * @param equipmentId
     * @return WmMaintenanceHistory
     */
    WmMeasureHistory queryLastMeasureInfo(@Param("equipmentId")String equipmentId);

    /**
     * 计量验收查询设备计量已验收和待验收列表
     * @param page
     * @param equipmentName
     * @param equipmentCode
     * @return List<WmMeasureHistoryVO>
     */
    List<WmMeasureHistoryVO> selectForCheckPage(Page<WmMeasureHistoryVO> page, @Param("equipmentName") String equipmentName, @Param("equipmentCode")String equipmentCode);
}
