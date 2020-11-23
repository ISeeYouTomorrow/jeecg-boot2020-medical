package org.jeecg.modules.medical.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.jeecg.modules.medical.entity.WmEquipmentTransfer;
import com.baomidou.mybatisplus.extension.service.IService;
import org.jeecg.modules.medical.vo.WmEquipmentTransferVO;

/**
 * @Description: 设备转科
 * @Author: lxl
 * @Date:   2020-11-23
 * @Version: V1.0
 */
public interface IWmEquipmentTransferService extends IService<WmEquipmentTransfer> {
    /**
     * 分页查询 设备转科信息
     * @param page
     * @param equipmentName
     * @param equipmentCode
     * @return
     */
    Page<WmEquipmentTransferVO> queryForPage(Page<WmEquipmentTransferVO> page, String equipmentName, String equipmentCode);

    /**
     * 保存转科记录，并且更新设备档案信息的使用人，使用科室，使用位置
     * @param wmEquipmentTransfer
     */
    void saveMore(WmEquipmentTransfer wmEquipmentTransfer);
}
