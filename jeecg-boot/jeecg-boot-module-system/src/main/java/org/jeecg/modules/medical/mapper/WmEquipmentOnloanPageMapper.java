package org.jeecg.modules.medical.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;
import org.jeecg.modules.medical.vo.WmEquipmentOnloanVO;

import java.util.List;

/**
 * @Description: 设备借用信息
 * @Author: lvxile
 * @Date:   2020-11-22
 * @Version: V1.0
 */
public interface WmEquipmentOnloanPageMapper extends BaseMapper<WmEquipmentOnloanVO> {
    /**
     * 分页查询设备借用
     * @param page
     * @param equipmentName 设备名称
     * @param equipmentCode 设备编号
     * @param onloanPerson 借用人
     * @return List<WmEquipmentOnloanVO>
     */
    List<WmEquipmentOnloanVO> queryForPage(Page<WmEquipmentOnloanVO> page, @Param("equipmentName") String equipmentName,
                                           @Param("equipmentCode")String equipmentCode, @Param("onloanPerson")String onloanPerson);
}
