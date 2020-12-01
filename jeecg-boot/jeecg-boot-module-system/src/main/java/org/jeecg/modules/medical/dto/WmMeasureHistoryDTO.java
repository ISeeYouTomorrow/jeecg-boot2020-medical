package org.jeecg.modules.medical.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import org.jeecg.common.aspect.annotation.Dict;
import org.jeecgframework.poi.excel.annotation.Excel;

import java.io.Serializable;
import java.util.List;

/**
 * 设备计量计划dto
 * @Author: lxl
 */
@Data
public class WmMeasureHistoryDTO implements Serializable {

    /**设备计量计划*/
    @Excel(name = "设备计量计划", width = 15, dictTable = "wm_measure_plan", dicText = "plan_name", dicCode = "id")
    @Dict(dictTable = "wm_measure_plan", dicText = "plan_name", dicCode = "id")
    @ApiModelProperty(value = "设备计量计划")
    private String measurePlanId;

    /**计量厂商*/
    @Excel(name = "计量厂商", width = 15)
    @ApiModelProperty(value = "计量厂商")
    private String manufacturerId;
    /**计量人*/
    @Excel(name = "计量人", width = 15)
    @ApiModelProperty(value = "计量人")
    private String manufacturerPerson;

    /** 计量设备list */
    private List<String> equipmentList;
}
