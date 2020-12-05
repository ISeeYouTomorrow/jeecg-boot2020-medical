package org.jeecg.modules.medical.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.jeecg.modules.medical.entity.WmEquipmentExamine;
import org.jeecg.modules.medical.mapper.WmEquipmentExamineMapper;
import org.jeecg.modules.medical.service.IWmEquipmentExamineService;
import org.jeecg.modules.medical.vo.WmEquipmentExamineVO;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

/**
 * @Description: 设备巡检计划
 * @Author: lxl
 * @Date:   2020-12-03
 * @Version: V1.0
 */
@Service
public class WmEquipmentExamineServiceImpl extends ServiceImpl<WmEquipmentExamineMapper, WmEquipmentExamine> implements IWmEquipmentExamineService {

    @Override
    public IPage<WmEquipmentExamineVO> queryForSelfPage(Page<WmEquipmentExamineVO> page, WmEquipmentExamineVO historyVO) {
        return page.setRecords(baseMapper.selectForPage(page,historyVO));
    }
}
