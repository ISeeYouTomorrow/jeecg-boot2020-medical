package org.jeecg.modules.medical.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import org.jeecg.modules.medical.dto.WmMeasureHistoryDTO;
import org.jeecg.modules.medical.entity.WmMeasureHistory;
import org.jeecg.modules.medical.vo.WmMeasureHistoryVO;

/**
 * @Description: 设备保养记录
 * @Author: lxl
 * @Date:   2020-11-29
 * @Version: V1.0
 */
public interface IWmMeasureHistoryService extends IService<WmMeasureHistory> {

    /**
     * 分页查询
     * @param page
     * @param WmMeasureHistory
     * @param cycleDay
     * @return IPage
     */
    IPage<WmMeasureHistoryVO> selfPage(Page<WmMeasureHistoryVO> page, WmMeasureHistoryVO WmMeasureHistory, Integer cycleDay);

    /**
     * 保存一批设备到计划
     * @param WmMeasureHistory
     */
    void saveList(WmMeasureHistoryDTO WmMeasureHistory);

    /**
     * 分页查询
     * @param page
     * @param WmMeasureHistory
     * @return IPage
     */
    IPage<WmMeasureHistoryVO> queryForWorkPage(Page<WmMeasureHistoryVO> page, WmMeasureHistoryVO WmMeasureHistory);

    /**
     * 获取设备上次的保养信息
     * @param equipmentId
     * @return WmMeasureHistory
     */
    WmMeasureHistory queryLastMeasureInfo(String equipmentId);

    /**
     * 分页查询
     * @param page
     * @param WmMeasureHistory
     * @return IPage
     */
    IPage<WmMeasureHistoryVO> queryForCheckPage(Page<WmMeasureHistoryVO> page, WmMeasureHistoryVO WmMeasureHistory);
}
