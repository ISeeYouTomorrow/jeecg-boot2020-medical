package org.jeecg.modules.medical.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.jeecg.modules.medical.entity.WmEquipmentExamineHistory;
import org.jeecg.modules.medical.mapper.WmEquipmentExamineHistoryMapper;
import org.jeecg.modules.medical.service.IWmEquipmentExamineHistoryService;
import org.jeecg.modules.medical.vo.WmExamineHistoryVO;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @Description: 设备巡检记录
 * @Author: lxl
 * @Date:   2020-12-04
 * @Version: V1.0
 */
@Service
public class WmEquipmentExamineHistoryServiceImpl extends ServiceImpl<WmEquipmentExamineHistoryMapper, WmEquipmentExamineHistory> implements IWmEquipmentExamineHistoryService {

    @Resource
    private WmEquipmentExamineHistoryMapper historyMapper;

    @Override
    public IPage<WmExamineHistoryVO> queryForSelfPage(Page<WmExamineHistoryVO> page, WmExamineHistoryVO historyVO) {
        return page.setRecords(historyMapper.selectForPage(page,historyVO));
    }
}
