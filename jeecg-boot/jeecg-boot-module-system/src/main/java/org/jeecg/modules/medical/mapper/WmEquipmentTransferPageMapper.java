package org.jeecg.modules.medical.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;
import org.jeecg.modules.medical.vo.WmEquipmentTransferVO;
import java.util.List;

/**
 * @Description: 设备转科信息
 * @Author: lvxile
 * @Date:   2020-11-24
 * @Version: V1.0
 */
public interface WmEquipmentTransferPageMapper extends BaseMapper<WmEquipmentTransferVO> {
    /**
     * 分页查询设备转科信息
     * @param page 分页对象
     * @param equipmentName 设备名称
     * @param equipmentCode 设备编号
     * @return List<WmEquipmentTransferVO>
     */
    List<WmEquipmentTransferVO> selectForPage(Page<WmEquipmentTransferVO> page, @Param("equipmentName") String equipmentName, @Param("equipmentCode")String equipmentCode);
}
