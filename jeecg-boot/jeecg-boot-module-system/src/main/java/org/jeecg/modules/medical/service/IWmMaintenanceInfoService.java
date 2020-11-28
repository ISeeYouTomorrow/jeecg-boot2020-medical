package org.jeecg.modules.medical.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import org.jeecg.modules.medical.entity.WmMaintenanceInfo;
import org.jeecg.modules.medical.vo.WmMaintenancePageVO;

/**
 * @Description: 设备维修
 * @Author: lxl
 * @Date:   2020-11-25
 * @Version: V1.0
 */
public interface IWmMaintenanceInfoService extends IService<WmMaintenanceInfo> {

    /**
     * 设备报修信息查询-分页实现
     * @param page 分页
     * @param equipmentName 设备名
     * @param equipmentCode 设备编号
     * @return Page<WmEquipmentTransferVO>
     */
    Page<WmMaintenancePageVO> queryForPage(Page<WmMaintenancePageVO> page, String equipmentName, String equipmentCode);

    /**
     * 保存维修派工信息
     * @param wmMaintenanceInfo
     */
    void saveWorkMaintenance(WmMaintenanceInfo wmMaintenanceInfo);

    /**
     * 保存维修信息
     * @param wmMaintenanceInfo
     */
    void saveTreatmentMaintenance(WmMaintenanceInfo wmMaintenanceInfo);
}
