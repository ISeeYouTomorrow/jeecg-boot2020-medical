package org.jeecg.modules.medical.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import org.jeecg.modules.medical.entity.WmEquipmentExamineHistory;
import org.jeecg.modules.medical.vo.WmExamineHistoryVO;

/**
 * @Description: 设备巡检记录
 * @Author: lxl
 * @Date:   2020-12-04
 * @Version: V1.0
 */
public interface IWmEquipmentExamineHistoryService extends IService<WmEquipmentExamineHistory> {
    /**
     * 分页查询
     * @param page 分页
     * @param historyVO 参数
     * @return IPage
     */
    IPage<WmExamineHistoryVO> queryForSelfPage(Page<WmExamineHistoryVO> page, WmExamineHistoryVO historyVO);
}
