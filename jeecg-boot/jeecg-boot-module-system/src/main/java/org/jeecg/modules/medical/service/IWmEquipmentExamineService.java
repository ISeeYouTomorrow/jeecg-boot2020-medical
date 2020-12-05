package org.jeecg.modules.medical.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.jeecg.modules.medical.entity.WmEquipmentExamine;
import com.baomidou.mybatisplus.extension.service.IService;
import org.jeecg.modules.medical.vo.WmEquipmentExamineVO;
import org.jeecg.modules.medical.vo.WmExamineHistoryVO;

/**
 * @Description: 设备巡检计划
 * @Author: lxl
 * @Date:   2020-12-03
 * @Version: V1.0
 */
public interface IWmEquipmentExamineService extends IService<WmEquipmentExamine> {

    /**
     * 分页查询
     * @param page 分页
     * @param historyVO 参数
     * @return IPage
     */
    IPage<WmEquipmentExamineVO> queryForSelfPage(Page<WmEquipmentExamineVO> page, WmEquipmentExamineVO historyVO);
}
