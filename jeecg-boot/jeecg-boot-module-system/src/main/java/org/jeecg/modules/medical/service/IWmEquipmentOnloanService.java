package org.jeecg.modules.medical.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import org.apache.ibatis.annotations.Param;
import org.jeecg.modules.medical.entity.WmEquipmentOnloan;
import org.jeecg.modules.medical.vo.WmEquipmentOnloanVO;

/**
 * @Description: 设备借用信息
 * @Author: lxl
 * @Date:   2020-11-22
 * @Version: V1.0
 */
public interface IWmEquipmentOnloanService extends IService<WmEquipmentOnloan> {

    /**
     * 设备借用信息查询
     * @param page
     * @param equipmentName
     * @param equipmentCode
     * @param onloanPerson
     * @return
     */
    Page<WmEquipmentOnloanVO> queryForPage(Page<WmEquipmentOnloanVO> page, @Param("equipmentName") String equipmentName,
                                           @Param("equipmentCode")String equipmentCode, @Param("onloanPerson")String onloanPerson);

    /**
     * 保存借用记录，更新设备状态为借用
     * @param wmEquipmentOnloan 借用信息
     */
    void saveAndUpdateEquipment(WmEquipmentOnloan wmEquipmentOnloan);
}
