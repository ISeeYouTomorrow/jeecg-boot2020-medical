package org.jeecg.modules.medical.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.jeecg.modules.medical.dto.WmMaintenanceHistoryDTO;
import org.jeecg.modules.medical.entity.WmMaintenanceHistory;
import com.baomidou.mybatisplus.extension.service.IService;
import org.jeecg.modules.medical.vo.WmMaintenanceHistoryVO;

import java.util.Date;

/**
 * @Description: 设备保养记录
 * @Author: lxl
 * @Date:   2020-11-29
 * @Version: V1.0
 */
public interface IWmMaintenanceHistoryService extends IService<WmMaintenanceHistory> {

    /**
     * 分页查询
     * @param page
     * @param wmMaintenanceHistory
     * @param cycleDay
     * @return IPage
     */
    IPage<WmMaintenanceHistoryVO> selfPage(Page<WmMaintenanceHistoryVO> page, WmMaintenanceHistoryVO wmMaintenanceHistory, Integer cycleDay);

    /**
     * 保存一批设备到计划
     * @param wmMaintenanceHistory
     */
    void saveList(WmMaintenanceHistoryDTO wmMaintenanceHistory);

    /**
     * 分页查询
     * @param page
     * @param wmMaintenanceHistory
     * @return IPage
     */
    IPage<WmMaintenanceHistoryVO> queryForWorkPage(Page<WmMaintenanceHistoryVO> page, WmMaintenanceHistoryVO wmMaintenanceHistory);

    /**
     * 获取设备上次的保养信息
     * @param equipmentId
     * @return WmMaintenanceHistory
     */
    WmMaintenanceHistory queryLastMaintainInfo(String equipmentId);

    /**
     * 分页查询
     * @param page
     * @param wmMaintenanceHistory
     * @return IPage
     */
    IPage<WmMaintenanceHistoryVO> queryForCheckPage(Page<WmMaintenanceHistoryVO> page, WmMaintenanceHistoryVO wmMaintenanceHistory);
}
