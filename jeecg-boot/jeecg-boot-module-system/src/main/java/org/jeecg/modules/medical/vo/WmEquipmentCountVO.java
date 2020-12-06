package org.jeecg.modules.medical.vo;

import lombok.Data;

import java.io.Serializable;

/**
 * 设备的维修次数、保养次数
 */
@Data
public class WmEquipmentCountVO implements Serializable {


    private String equipmentId;

    /**
     * 修理个数
     */
    private Integer fixedCount;

    /**
     * 保养次数
     */
    private Integer maintenanceCount;

}
