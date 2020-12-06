package org.jeecg.modules.medical.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.jeecg.modules.medical.entity.WmDepreciationHistory;
import org.jeecg.modules.medical.mapper.WmDepreciationHistoryMapper;
import org.jeecg.modules.medical.service.IWmDepreciationHistoryService;
import org.jeecg.modules.medical.vo.WmEquipmentInfoPage;
import org.springframework.stereotype.Service;

/**
 * @Description: 设备折旧记录
 * @Author: lxl
 * @Date:   2020-12-06
 * @Version: V1.0
 */
@Service
public class WmDepreciationHistoryServiceImpl extends ServiceImpl<WmDepreciationHistoryMapper, WmDepreciationHistory> implements IWmDepreciationHistoryService {

    /**
     * 查询设备折旧信息
     * @param page 分页
     * @param history 参数
     * @return IPage
     */
    @Override
    public IPage<WmEquipmentInfoPage> queryForPage(Page<WmEquipmentInfoPage> page, WmEquipmentInfoPage history) {
        return page.setRecords(baseMapper.selectEquipmentForPage(page, history.getEquipmentName(), history.getEquipmentCode()));
    }
}
