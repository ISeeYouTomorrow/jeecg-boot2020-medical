package org.jeecg.modules.medical.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import org.apache.ibatis.annotations.Param;
import org.jeecg.modules.medical.entity.WmEquipmentOnloan;
import org.jeecg.modules.medical.vo.WmEquipmentOnloanVO;

/**
 * @Description: 设备借用信息
 * @Author: jeecg-boot
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
}
