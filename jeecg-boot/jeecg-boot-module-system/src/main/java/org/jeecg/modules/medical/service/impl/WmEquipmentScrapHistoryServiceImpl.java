package org.jeecg.modules.medical.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.jeecg.modules.medical.entity.WmEquipmentScrapHistory;
import org.jeecg.modules.medical.entity.WmMaintenanceHistory;
import org.jeecg.modules.medical.entity.WmMaintenanceInfo;
import org.jeecg.modules.medical.mapper.WmEquipmentScrapHistoryMapper;
import org.jeecg.modules.medical.mapper.WmMaintenanceHistoryMapper;
import org.jeecg.modules.medical.mapper.WmMaintenanceInfoMapper;
import org.jeecg.modules.medical.service.IWmEquipmentScrapHistoryService;
import org.jeecg.modules.medical.vo.WmEquipmentCountVO;
import org.jeecg.modules.medical.vo.WmEquipmentScrapVO;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

import javax.annotation.Resource;

/**
 * @Description: 设备报废记录
 * @Author: lxl
 * @Date:   2020-12-06
 * @Version: V1.0
 */
@Service
public class WmEquipmentScrapHistoryServiceImpl extends ServiceImpl<WmEquipmentScrapHistoryMapper, WmEquipmentScrapHistory> implements IWmEquipmentScrapHistoryService {

    @Resource
    private WmMaintenanceHistoryMapper maintenanceHistoryMapper;

    @Resource
    private WmMaintenanceInfoMapper fixedMapper;

    @Override
    public IPage<WmEquipmentScrapVO> queryForPage(Page<WmEquipmentScrapVO> page, WmEquipmentScrapVO history) {
        return page.setRecords(baseMapper.selectForPage(page,history.getEquipmentName(),history.getEquipmentCode()));
    }

    @Override
    public WmEquipmentCountVO queryForCount(String equipmentId) {
        QueryWrapper<WmMaintenanceHistory> queryWrapper1 = new QueryWrapper<>();
        queryWrapper1.eq("equipment_id", equipmentId);
        Integer count1 = maintenanceHistoryMapper.selectCount(queryWrapper1);

        QueryWrapper<WmMaintenanceInfo> queryWrapper2 = new QueryWrapper<>();
        queryWrapper2.eq("equipment_id", equipmentId);
        Integer count2 = fixedMapper.selectCount(queryWrapper2);

        WmEquipmentCountVO vo = new WmEquipmentCountVO();
        vo.setEquipmentId(equipmentId);
        //保养次数
        vo.setMaintenanceCount(count1);
        //维修次数
        vo.setFixedCount(count2);

        return vo;
    }
}
