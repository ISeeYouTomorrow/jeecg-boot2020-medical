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
 * 设备巡检记录分页展示列表
 * @Author: lxl
 */
@Data
public class WmExamineHistoryVO implements Serializable {

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
    /**巡检设备*/
    @Excel(name = "巡检设备", width = 15)
    @ApiModelProperty(value = "巡检设备")
    private java.lang.String equipmentId;
    /**巡检计划*/
    @Excel(name = "巡检计划", width = 15, dictTable = "wm_equipment_examine", dicText = "examine_name", dicCode = "id")
    @Dict(dictTable = "wm_equipment_examine", dicText = "examine_name", dicCode = "id")
    @ApiModelProperty(value = "巡检计划")
    private java.lang.String examineId;
    /**巡检人*/
    @Excel(name = "巡检人", width = 15, dictTable = "sys_user", dicText = "realname", dicCode = "username")
    @Dict(dictTable = "sys_user", dicText = "realname", dicCode = "username")
    @ApiModelProperty(value = "巡检人")
    private java.lang.String examinePerson;
    /**巡检结果*/
    @Excel(name = "巡检结果", width = 15, dicCode = "examine_result")
    @Dict(dicCode = "examine_result")
    @ApiModelProperty(value = "巡检结果")
    private java.lang.String examineResult;
    /**备注*/
    @Excel(name = "备注", width = 15)
    @ApiModelProperty(value = "备注")
    private java.lang.String remark;
    /**巡检时间*/
    @Excel(name = "巡检时间", width = 15)
    @ApiModelProperty(value = "巡检时间")
    private java.lang.String examineTime;

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

    /**计划名称*/
    @Excel(name = "计划名称", width = 15)
    @ApiModelProperty(value = "巡检计划名称")
    private String examineName;

    /**计划预计时间*/
    @Excel(name = "计划预计时间", width = 15)
    @ApiModelProperty(value = "计划巡检时间")
    private Date planTime;

    /**计划巡检人*/
    @Excel(name = "计划巡检人", width = 15)
    @ApiModelProperty(value = "计划巡检人")
    @Dict(dictTable = "sys_user", dicText = "realname", dicCode = "username")
    private String planPerson;

    /**计划巡检人*/
    @Excel(name = "计划巡检备注", width = 15)
    @ApiModelProperty(value = "计划巡检备注")
    private String planRemark;
}
