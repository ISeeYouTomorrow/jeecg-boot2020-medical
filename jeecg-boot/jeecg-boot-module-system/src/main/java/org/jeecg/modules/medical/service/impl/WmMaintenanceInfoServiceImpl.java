package org.jeecg.modules.medical.service.impl;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.jeecg.modules.medical.entity.WmMaintenanceInfo;
import org.jeecg.modules.medical.mapper.WmMaintenanceInfoMapper;
import org.jeecg.modules.medical.service.IWmMaintenanceInfoService;
import org.jeecg.modules.medical.vo.WmMaintenancePageVO;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

import javax.annotation.Resource;

/**
 * @Description: 设备维修
 * @Author: lxl
 * @Date:   2020-11-25
 * @Version: V1.0
 */
@Service
public class WmMaintenanceInfoServiceImpl extends ServiceImpl<WmMaintenanceInfoMapper, WmMaintenanceInfo> implements IWmMaintenanceInfoService {

    @Resource
    private WmMaintenanceInfoMapper wmMaintenanceInfoMapper;

    /**
     * 分页查询
     * @param page 分页
     * @param equipmentName 设备名
     * @param equipmentCode 设备编号
     * @return
     */
    @Override
    public Page<WmMaintenancePageVO> queryForPage(Page<WmMaintenancePageVO> page, String equipmentName, String equipmentCode) {
        return page.setRecords(wmMaintenanceInfoMapper.selectForPage(page, equipmentName, equipmentCode));
    }

    /**
     * 保存派工信息
     * @param wmMaintenanceInfo
     */
    @Override
    public void saveWorkMaintenance(WmMaintenanceInfo wmMaintenanceInfo) {
        wmMaintenanceInfoMapper.saveWorkMaintenance(wmMaintenanceInfo);
    }

    /**
     * 保存维修信息
     * @param wmMaintenanceInfo
     */
    @Override
    public void saveTreatmentMaintenance(WmMaintenanceInfo wmMaintenanceInfo) {
        wmMaintenanceInfoMapper.saveTreatmentMaintenance(wmMaintenanceInfo);
    }
}
