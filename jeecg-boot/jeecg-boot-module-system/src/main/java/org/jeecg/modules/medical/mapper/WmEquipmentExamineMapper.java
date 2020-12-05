package org.jeecg.modules.medical.mapper;

import java.util.List;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;
import org.jeecg.modules.medical.entity.WmEquipmentExamine;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.jeecg.modules.medical.vo.WmEquipmentExamineVO;
import org.jeecg.modules.medical.vo.WmExamineHistoryVO;

/**
 * @Description: 设备巡检计划
 * @Author: lxl
 * @Date:   2020-12-03
 * @Version: V1.0
 */
public interface WmEquipmentExamineMapper extends BaseMapper<WmEquipmentExamine> {

    /**
     * 分页查询巡检记录
     * @param page 分页对象
     * @param examine 查询参数
     * @return List
     */
    List<WmEquipmentExamineVO> selectForPage(Page<WmEquipmentExamineVO> page, @Param("examine") WmEquipmentExamineVO examine);
}
