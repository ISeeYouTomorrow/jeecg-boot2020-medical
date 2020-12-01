package org.jeecg.modules.medical.service.impl;

import cn.hutool.core.collection.CollectionUtil;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.IdWorker;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.shiro.SecurityUtils;
import org.jeecg.common.system.vo.LoginUser;
import org.jeecg.modules.medical.dto.WmMaintenanceHistoryDTO;
import org.jeecg.modules.medical.entity.WmMaintenanceHistory;
import org.jeecg.modules.medical.entity.WmManufacturerInfo;
import org.jeecg.modules.medical.mapper.WmMaintenanceHistoryMapper;
import org.jeecg.modules.medical.mapper.WmManufacturerInfoMapper;
import org.jeecg.modules.medical.service.IWmMaintenanceHistoryService;
import org.jeecg.modules.medical.vo.WmMaintenanceHistoryVO;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * @Description: 设备保养记录
 * @Author: lxl
 * @Date:   2020-11-29
 * @Version: V1.0
 */
@Service
public class WmMaintenanceHistoryServiceImpl extends ServiceImpl<WmMaintenanceHistoryMapper, WmMaintenanceHistory> implements IWmMaintenanceHistoryService {

    @Resource
    private WmMaintenanceHistoryMapper historyMapper;

    @Resource
    private WmManufacturerInfoMapper manufacturerInfoMapper;

    @Override
    public IPage<WmMaintenanceHistoryVO> selfPage(Page<WmMaintenanceHistoryVO> page, WmMaintenanceHistoryVO wmMaintenanceHistory, Integer cycleDay) {
        return page.setRecords(historyMapper.selectForPage(page,cycleDay, wmMaintenanceHistory.getEquipmentName(), wmMaintenanceHistory.getEquipmentCode()));
    }

    @Transactional
    @Override
    public void saveList(WmMaintenanceHistoryDTO wmMaintenanceHistory) {
        List<String> equipmentList = wmMaintenanceHistory.getEquipmentList();
        if (CollectionUtil.isEmpty(equipmentList)) {
            throw new RuntimeException("计划设备不存在");
        }
        LoginUser sysUser = (LoginUser) SecurityUtils.getSubject().getPrincipal();

        Date date = new Date();
        for (String equipmentId : equipmentList) {
            WmMaintenanceHistory history = new WmMaintenanceHistory();
            history.setId(IdWorker.getIdStr());
            history.setCreateBy(sysUser.getUsername());
            history.setCreateTime(date);
            history.setEquipmentId(equipmentId);
            history.setMaintenancePlanId(wmMaintenanceHistory.getMaintenancePlanId());
            history.setManufacturerId(wmMaintenanceHistory.getManufacturerId());
            history.setManufacturerPerson(wmMaintenanceHistory.getManufacturerPerson());
            history.setSysOrgCode(sysUser.getOrgCode());
            //默认为已列入保养计划
            history.setMaintenanceStatus("0");
            baseMapper.insert(history);
        }
    }

    /**
     * 查询设备保养历史记录
     * @param page
     * @param wmMaintenanceHistory
     * @return IPage
     */
    @Override
    public IPage<WmMaintenanceHistoryVO> queryForWorkPage(Page<WmMaintenanceHistoryVO> page, WmMaintenanceHistoryVO wmMaintenanceHistory) {
        return page.setRecords(historyMapper.selectForWorkPage(page, wmMaintenanceHistory.getEquipmentName(), wmMaintenanceHistory.getEquipmentCode()));
    }

    /**
     * 查询设备上次保养信息
     * @param equipmentId
     * @return WmMaintenanceHistory
     */
    @Override
    public WmMaintenanceHistory queryLastMaintainInfo(String equipmentId) {
        WmMaintenanceHistory history = historyMapper.queryLastMaintainInfo(equipmentId);
        if (history != null) {
            WmManufacturerInfo info = manufacturerInfoMapper.selectById(history.getManufacturerId());
            history.setManufacturerId(info.getManufacturerName());
        }
        return history;
    }

    @Override
    public IPage<WmMaintenanceHistoryVO> queryForCheckPage(Page<WmMaintenanceHistoryVO> page, WmMaintenanceHistoryVO wmMaintenanceHistory) {
        return page.setRecords(historyMapper.selectForCheckPage(page, wmMaintenanceHistory.getEquipmentName(), wmMaintenanceHistory.getEquipmentCode()));
    }
}
