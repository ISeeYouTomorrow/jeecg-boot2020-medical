package org.jeecg.modules.medical.vo;

import cn.hutool.core.date.DateUtil;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import org.apache.commons.lang.StringUtils;
import org.jeecg.common.aspect.annotation.Dict;
import org.jeecgframework.poi.excel.annotation.Excel;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Calendar;
import java.util.Date;

/**
 * 设备保养记录分页展示列表
 * @Author: lxl
 */
@Data
public class WmMaintenanceHistoryVO implements Serializable {

    /**主键*/
    @TableId(type = IdType.ID_WORKER_STR)
    @ApiModelProperty(value = "主键")
    private java.lang.String id;
    /**创建人*/
    @Excel(name = "创建人", width = 15)
    @ApiModelProperty(value = "创建人")
    private java.lang.String createBy;
    /**创建日期*/
    @Excel(name = "创建日期", width = 20, format = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @ApiModelProperty(value = "创建日期")
    private java.util.Date createTime;
    /**更新人*/
    @Excel(name = "更新人", width = 15)
    @ApiModelProperty(value = "更新人")
    private java.lang.String updateBy;
    /**更新日期*/
    @Excel(name = "更新日期", width = 20, format = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @ApiModelProperty(value = "更新日期")
    private java.util.Date updateTime;
    /**所属部门*/
    @Excel(name = "所属部门", width = 15)
    @ApiModelProperty(value = "所属部门")
    private java.lang.String sysOrgCode;
    /**设备保养计划*/
    @Excel(name = "设备保养计划", width = 15, dictTable = "wm_maintenance_plan", dicText = "paln_name", dicCode = "id")
    @Dict(dictTable = "wm_maintenance_plan", dicText = "paln_name", dicCode = "id")
    @ApiModelProperty(value = "设备保养计划")
    private java.lang.String maintenancePlanId;
    /**保养设备id*/
    @Excel(name = "保养设备id", width = 15)
    @ApiModelProperty(value = "保养设备id")
    private java.lang.String equipmentId;
    /**保养厂商*/
    @ApiModelProperty(value = "保养厂商")
    @Excel(name = "保养厂商", width = 15, dictTable = "wm_manufacturer_info", dicText = "manufacturer_name", dicCode = "id")
    @Dict(dictTable = "wm_manufacturer_info", dicText = "manufacturer_name", dicCode = "id")
    private java.lang.String manufacturerId;
    /**保养人*/
    @Excel(name = "保养人", width = 15)
    @ApiModelProperty(value = "保养人")
    private java.lang.String manufacturerPerson;
    /**保养状态*/
    @Excel(name = "保养状态", width = 15)
    @ApiModelProperty(value = "保养状态")
    @Dict( dicCode = "baoyang_status")
    private java.lang.String maintenanceStatus;
    /**保养时间*/
    @Excel(name = "保养时间", width = 15, format = "yyyy-MM-dd")
    @JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    @ApiModelProperty(value = "保养时间")
    private java.util.Date maintenanceTime;
    /**保养费用*/
    @Excel(name = "保养费用", width = 15)
    @ApiModelProperty(value = "保养费用")
    private java.math.BigDecimal maintenanceFee;
    /**保养结果*/
    @Excel(name = "保养结果", width = 15, dicCode = "maintenance_measure_result")
    @Dict(dicCode = "maintenance_measure_result")
    @ApiModelProperty(value = "保养结果")
    private java.lang.String maintenanceResult;
    /**验收状态*/
    @Excel(name = "验收状态", width = 15)
    @ApiModelProperty(value = "验收状态")
    private java.lang.String maintenanceCheck;

    /** 验收人 */
    private String checkPerson;
    /** 验收时间 */
    private Date checkTime;

    /**设备类型*/
    @Excel(name = "设备类型", width = 15)
    @ApiModelProperty(value = "设备类型")
    private java.lang.String equipmentType;
    /**设备名称*/
    @Excel(name = "设备名称", width = 15)
    @ApiModelProperty(value = "设备名称")
    private java.lang.String equipmentName;
    /**设备型号*/
    @Excel(name = "设备型号", width = 15)
    @ApiModelProperty(value = "设备型号")
    private java.lang.String equipmentModel;
    /**设备编号*/
    @Excel(name = "设备编号", width = 15)
    @ApiModelProperty(value = "设备编号")
    private java.lang.String equipmentCode;

    /**使用科室*/
    @Excel(name = "使用科室", width = 15)
    @ApiModelProperty(value = "使用科室")
    @Dict(dictTable = "sys_depart", dicText = "depart_name", dicCode = "id")
    private java.lang.String useDept;
    /**使用人*/
    @Excel(name = "使用人", width = 15)
    @ApiModelProperty(value = "使用人")
    @Dict(dictTable = "sys_user", dicText = "realname", dicCode = "username")
    private java.lang.String chargePerson;
    /**安放位置*/
    @Excel(name = "安放位置", width = 15,dictTable = "wm_area_space", dicText = "id,pid,area_name,has_child", dicCode = "0")
    @Dict(dictTable = "wm_area_space", dicText = "id,pid,area_name,has_child", dicCode = "0",pageDictCode = "id", pageDictText = "area_name")
    @ApiModelProperty(value = "安放位置")
    private java.lang.String chargeArea;
    /**保养周期(天)*/
    @Excel(name = "保养周期(天)", width = 15)
    @ApiModelProperty(value = "保养周期(天)")
    private java.lang.Integer maintainDay;
    /** 下次保养时间,首次默认为启用时间+保养周期*/
    @Excel(name = "下次保养时间", width = 15)
    @ApiModelProperty(value = "下次保养时间")
    @JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd HH:mm:ss")
    private Date nextMaintainDay;
    /**启用时间*/
    @Excel(name = "启用时间", width = 15, format = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @ApiModelProperty(value = "启用时间")
    private java.util.Date startUseTime;

    /**计划名称*/
    @Excel(name = "计划名称", width = 15)
    @ApiModelProperty(value = "计划名称")
    private java.lang.String planName;

    /**计划预计时间*/
    @Excel(name = "计划预计时间", width = 15)
    @ApiModelProperty(value = "计划预计时间")
    private Date planTime;
    /**
     * 剩余天数
     */
    private Long subDay;

    public Long getSubDay() {
        if (this.nextMaintainDay == null) {
            return 0L;
        }
        return DateUtil.betweenDay(new Date(), this.nextMaintainDay,Boolean.TRUE);
    }

    public String getMaintenanceStatus() {
        if (!StringUtils.equals("3", this.maintenanceStatus) && Calendar.getInstance().getTimeInMillis() > this.nextMaintainDay.getTime()) {
            return "9";
        }
        return this.maintenanceStatus;
    }
}
