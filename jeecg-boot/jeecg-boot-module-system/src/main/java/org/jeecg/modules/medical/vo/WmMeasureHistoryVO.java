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
 * 设备计量记录分页展示列表
 * @Author: lxl
 */
@Data
public class WmMeasureHistoryVO implements Serializable {

    /**主键*/
    @TableId(type = IdType.ID_WORKER_STR)
    @ApiModelProperty(value = "主键")
    private String id;
    /**创建人*/
    @Excel(name = "创建人", width = 15)
    @ApiModelProperty(value = "创建人")
    private String createBy;
    /**创建日期*/
    @Excel(name = "创建日期", width = 20, format = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @ApiModelProperty(value = "创建日期")
    private Date createTime;
    /**更新人*/
    @Excel(name = "更新人", width = 15)
    @ApiModelProperty(value = "更新人")
    private String updateBy;
    /**更新日期*/
    @Excel(name = "更新日期", width = 20, format = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @ApiModelProperty(value = "更新日期")
    private Date updateTime;
    /**所属部门*/
    @Excel(name = "所属部门", width = 15)
    @ApiModelProperty(value = "所属部门")
    private String sysOrgCode;
    /**设备计量计划*/
    @Excel(name = "设备计量计划", width = 15, dictTable = "wm_measure_plan", dicText = "plan_name", dicCode = "id")
    @Dict(dictTable = "wm_measure_plan", dicText = "plan_name", dicCode = "id")
    @ApiModelProperty(value = "设备计量计划")
    private String measurePlanId;
    /**计量设备id*/
    @Excel(name = "计量设备id", width = 15)
    @ApiModelProperty(value = "计量设备id")
    private String equipmentId;
    /**计量厂商*/
    @ApiModelProperty(value = "计量厂商")
    @Excel(name = "计量厂商", width = 15, dictTable = "wm_manufacturer_info", dicText = "manufacturer_name", dicCode = "id")
    @Dict(dictTable = "wm_manufacturer_info", dicText = "manufacturer_name", dicCode = "id")
    private String manufacturerId;
    /**计量人*/
    @Excel(name = "计量人", width = 15)
    @ApiModelProperty(value = "计量人")
    private String manufacturerPerson;
    /**计量状态*/
    @Excel(name = "计量状态", width = 15)
    @ApiModelProperty(value = "计量状态")
    @Dict( dicCode = "measure_status")
    private String measureStatus;
    /**计量时间*/
    @Excel(name = "计量时间", width = 15, format = "yyyy-MM-dd")
    @JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    @ApiModelProperty(value = "计量时间")
    private Date measureTime;
    /**计量费用*/
    @Excel(name = "计量费用", width = 15)
    @ApiModelProperty(value = "计量费用")
    private java.math.BigDecimal measureFee;
    /**计量结果*/
    @Excel(name = "计量结果", width = 15, dicCode = "maintain_measure_result")
    @Dict(dicCode = "maintain_measure_result")
    @ApiModelProperty(value = "计量结果")
    private String measureResult;
    /**验收状态*/
    @Excel(name = "验收状态", width = 15)
    @ApiModelProperty(value = "验收状态")
    private String measureCheck;

    /** 验收人 */
    private String checkPerson;
    /** 验收时间 */
    private Date checkTime;

    /**设备类型*/
    @Excel(name = "设备类型", width = 15)
    @ApiModelProperty(value = "设备类型")
    private String equipmentType;
    /**设备名称*/
    @Excel(name = "设备名称", width = 15)
    @ApiModelProperty(value = "设备名称")
    private String equipmentName;
    /**设备型号*/
    @Excel(name = "设备型号", width = 15)
    @ApiModelProperty(value = "设备型号")
    private String equipmentModel;
    /**设备编号*/
    @Excel(name = "设备编号", width = 15)
    @ApiModelProperty(value = "设备编号")
    private String equipmentCode;

    /**使用科室*/
    @Excel(name = "使用科室", width = 15)
    @ApiModelProperty(value = "使用科室")
    @Dict(dictTable = "sys_depart", dicText = "depart_name", dicCode = "id")
    private String useDept;
    /**使用人*/
    @Excel(name = "使用人", width = 15)
    @ApiModelProperty(value = "使用人")
    @Dict(dictTable = "sys_user", dicText = "realname", dicCode = "username")
    private String chargePerson;
    /**安放位置*/
    @Excel(name = "安放位置", width = 15,dictTable = "wm_area_space", dicText = "id,pid,area_name,has_child", dicCode = "0")
    @Dict(dictTable = "wm_area_space", dicText = "id,pid,area_name,has_child", dicCode = "0",pageDictCode = "id", pageDictText = "area_name")
    @ApiModelProperty(value = "安放位置")
    private String chargeArea;
    /**计量周期(天)*/
    @Excel(name = "计量周期(天)", width = 15)
    @ApiModelProperty(value = "计量周期(天)")
    private Integer measureDay;
    /** 下次计量时间,首次默认为启用时间+计量周期*/
    @Excel(name = "下次计量时间", width = 15)
    @ApiModelProperty(value = "下次计量时间")
    @JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd HH:mm:ss")
    private Date nextMeasureDay;
    /**启用时间*/
    @Excel(name = "启用时间", width = 15, format = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @ApiModelProperty(value = "启用时间")
    private Date startUseTime;

    /**计划名称*/
    @Excel(name = "计划名称", width = 15)
    @ApiModelProperty(value = "计划名称")
    private String planName;

    /**计划预计时间*/
    @Excel(name = "计划预计时间", width = 15)
    @ApiModelProperty(value = "计划预计时间")
    private Date planTime;
    /**
     * 剩余天数
     */
    private Long subDay;

    public Long getSubDay() {
        if (this.nextMeasureDay == null) {
            return 0L;
        }
        return DateUtil.betweenDay(new Date(), this.nextMeasureDay,Boolean.TRUE);
    }

    public String getMeasureStatus() {
        if (!StringUtils.equals("3", this.measureStatus) && Calendar.getInstance().getTimeInMillis() > this.nextMeasureDay.getTime()) {
            return "9";
        }
        return this.measureStatus;
    }
}
