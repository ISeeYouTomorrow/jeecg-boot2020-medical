package org.jeecg.modules.medical.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import org.jeecg.modules.medical.entity.WmEquipmentScrapHistory;
import org.jeecg.modules.medical.vo.WmEquipmentCountVO;
import org.jeecg.modules.medical.vo.WmEquipmentInfoPage;
import org.jeecg.modules.medical.vo.WmEquipmentScrapVO;

/**
 * @Description: 设备报废记录
 * @Author: lxl
 * @Date:   2020-12-06
 * @Version: V1.0
 */
public interface IWmEquipmentScrapHistoryService extends IService<WmEquipmentScrapHistory> {

    /**
     * 分页查询设备报废信息
     * @param page
     * @param history
     * @return IPage
     */
    IPage<WmEquipmentScrapVO> queryForPage(Page<WmEquipmentScrapVO> page, WmEquipmentScrapVO history);

    /**
     * 查询设备的维修和保养次数
     * @param equipmentId
     * @return
     */
    WmEquipmentCountVO queryForCount(String equipmentId);
}
