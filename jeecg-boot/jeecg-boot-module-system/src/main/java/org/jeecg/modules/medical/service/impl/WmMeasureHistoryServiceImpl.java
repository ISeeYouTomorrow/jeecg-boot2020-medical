package org.jeecg.modules.medical.service.impl;

import cn.hutool.core.collection.CollectionUtil;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.IdWorker;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.apache.shiro.SecurityUtils;
import org.jeecg.common.system.vo.LoginUser;
import org.jeecg.modules.medical.dto.WmMeasureHistoryDTO;
import org.jeecg.modules.medical.entity.WmMeasureHistory;
import org.jeecg.modules.medical.entity.WmManufacturerInfo;
import org.jeecg.modules.medical.mapper.WmMeasureHistoryMapper;
import org.jeecg.modules.medical.mapper.WmManufacturerInfoMapper;
import org.jeecg.modules.medical.service.IWmMeasureHistoryService;
import org.jeecg.modules.medical.vo.WmMeasureHistoryVO;
import org.springframework.stereotype.Service;
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
public class WmMeasureHistoryServiceImpl extends ServiceImpl<WmMeasureHistoryMapper, WmMeasureHistory> implements IWmMeasureHistoryService {

    @Resource
    private WmMeasureHistoryMapper historyMapper;

    @Resource
    private WmManufacturerInfoMapper manufacturerInfoMapper;

    @Override
    public IPage<WmMeasureHistoryVO> selfPage(Page<WmMeasureHistoryVO> page, WmMeasureHistoryVO WmMeasureHistory, Integer cycleDay) {
        return page.setRecords(historyMapper.selectForPage(page,cycleDay, WmMeasureHistory.getEquipmentName(), WmMeasureHistory.getEquipmentCode()));
    }

    @Transactional
    @Override
    public void saveList(WmMeasureHistoryDTO WmMeasureHistory) {
        List<String> equipmentList = WmMeasureHistory.getEquipmentList();
        if (CollectionUtil.isEmpty(equipmentList)) {
            throw new RuntimeException("计划设备不存在");
        }
        LoginUser sysUser = (LoginUser) SecurityUtils.getSubject().getPrincipal();

        Date date = new Date();
        for (String equipmentId : equipmentList) {
            WmMeasureHistory history = new WmMeasureHistory();
            history.setId(IdWorker.getIdStr());
            history.setCreateBy(sysUser.getUsername());
            history.setCreateTime(date);
            history.setEquipmentId(equipmentId);
            history.setMeasurePlanId(WmMeasureHistory.getMeasurePlanId());
            history.setManufacturerId(WmMeasureHistory.getManufacturerId());
            history.setManufacturerPerson(WmMeasureHistory.getManufacturerPerson());
            history.setSysOrgCode(sysUser.getOrgCode());
            //默认为已列入保养计划
            history.setMeasureStatus("0");
            baseMapper.insert(history);
        }
    }

    /**
     * 查询设备保养历史记录
     * @param page 分页
     * @param WmMeasureHistory 参数
     * @return IPage
     */
    @Override
    public IPage<WmMeasureHistoryVO> queryForWorkPage(Page<WmMeasureHistoryVO> page, WmMeasureHistoryVO WmMeasureHistory) {
        return page.setRecords(historyMapper.selectForWorkPage(page, WmMeasureHistory.getEquipmentName(), WmMeasureHistory.getEquipmentCode()));
    }

    /**
     * 查询设备上次保养信息
     * @param equipmentId 设备id
     * @return WmMeasureHistory
     */
    @Override
    public WmMeasureHistory queryLastMeasureInfo(String equipmentId) {
        WmMeasureHistory history = historyMapper.queryLastMeasureInfo(equipmentId);
        if (history != null) {
            WmManufacturerInfo info = manufacturerInfoMapper.selectById(history.getManufacturerId());
            history.setManufacturerId(info.getManufacturerName());
        }
        return history;
    }

    @Override
    public IPage<WmMeasureHistoryVO> queryForCheckPage(Page<WmMeasureHistoryVO> page, WmMeasureHistoryVO WmMeasureHistory) {
        return page.setRecords(historyMapper.selectForCheckPage(page, WmMeasureHistory.getEquipmentName(), WmMeasureHistory.getEquipmentCode()));
    }
}
