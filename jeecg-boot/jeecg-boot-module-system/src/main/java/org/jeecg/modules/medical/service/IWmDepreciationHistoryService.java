package org.jeecg.modules.medical.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.jeecg.modules.medical.entity.WmDepreciationHistory;
import com.baomidou.mybatisplus.extension.service.IService;
import org.jeecg.modules.medical.vo.WmEquipmentInfoPage;

/**
 * @Description: 设备折旧记录
 * @Author: lxl
 * @Date:   2020-12-06
 * @Version: V1.0
 */
public interface IWmDepreciationHistoryService extends IService<WmDepreciationHistory> {
    IPage<WmEquipmentInfoPage> queryForPage(Page<WmEquipmentInfoPage> page, WmEquipmentInfoPage history);
}
