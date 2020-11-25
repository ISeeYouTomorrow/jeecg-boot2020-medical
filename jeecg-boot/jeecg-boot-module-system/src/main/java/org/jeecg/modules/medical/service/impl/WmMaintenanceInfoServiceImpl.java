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
    @Override
    public Page<WmMaintenancePageVO> queryForPage(Page<WmMaintenancePageVO> page, String equipmentName, String equipmentCode) {
        return page.setRecords(wmMaintenanceInfoMapper.selectForPage(page, equipmentName, equipmentCode));
    }
}
