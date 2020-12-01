package org.jeecg.modules.medical.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import org.jeecg.common.aspect.annotation.Dict;
import org.jeecgframework.poi.excel.annotation.Excel;

import java.io.Serializable;
import java.util.List;

/**
 * 设备保养计划dto
 * @Author: lxl
 */
@Data
public class WmMaintenanceHistoryDTO implements Serializable {

    /**设备保养计划*/
    @Excel(name = "设备保养计划", width = 15, dictTable = "wm_maintenance_plan", dicText = "paln_name", dicCode = "id")
    @Dict(dictTable = "wm_maintenance_plan", dicText = "paln_name", dicCode = "id")
    @ApiModelProperty(value = "设备保养计划")
    private java.lang.String maintenancePlanId;

    /**保养厂商*/
    @Excel(name = "保养厂商", width = 15)
    @ApiModelProperty(value = "保养厂商")
    private java.lang.String manufacturerId;
    /**保养人*/
    @Excel(name = "保养人", width = 15)
    @ApiModelProperty(value = "保养人")
    private java.lang.String manufacturerPerson;

    /** 保养设备list */
    private List<String> equipmentList;
}
