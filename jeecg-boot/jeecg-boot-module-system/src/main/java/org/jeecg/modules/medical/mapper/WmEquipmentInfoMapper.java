package org.jeecg.modules.medical.mapper;

import org.jeecg.modules.medical.entity.WmEquipmentInfo;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * @Description: 设备档案信息
 * @Author: lxl
 * @Date:   2020-11-10
 * @Version: V1.0
 */
public interface WmEquipmentInfoMapper extends BaseMapper<WmEquipmentInfo> {
    /**
     * 转科成功更新使用信息
     * @param wmEquipmentInfo
     */
    void updateByTransfer(WmEquipmentInfo wmEquipmentInfo);
}
