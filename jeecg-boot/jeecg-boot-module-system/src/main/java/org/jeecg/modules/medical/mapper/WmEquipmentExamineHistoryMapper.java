package org.jeecg.modules.medical.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;
import org.jeecg.modules.medical.entity.WmEquipmentExamineHistory;
import org.jeecg.modules.medical.vo.WmExamineHistoryVO;

import java.util.List;

/**
 * @Description: 设备巡检记录
 * @Author: lxl
 * @Date:   2020-12-04
 * @Version: V1.0
 */
public interface WmEquipmentExamineHistoryMapper extends BaseMapper<WmEquipmentExamineHistory> {

    /**
     * 分页查询设备巡检信息
     * @param page 分页对象
     * @param history 查询参数
     * @return List
     */
    List<WmExamineHistoryVO> selectForPage(Page<WmExamineHistoryVO> page,@Param("history") WmExamineHistoryVO history);

}
