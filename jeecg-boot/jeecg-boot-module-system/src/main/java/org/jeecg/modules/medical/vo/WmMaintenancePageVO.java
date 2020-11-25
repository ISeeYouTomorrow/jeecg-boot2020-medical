package org.jeecg.modules.medical.vo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import org.jeecg.common.aspect.annotation.Dict;
import org.jeecgframework.poi.excel.annotation.Excel;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

/**
 * 设备维修 列表分页展示 vo
 * @Author: lxl
 *
 */
@Data
public class WmMaintenancePageVO implements Serializable {

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
    /**维修设备*/
    @Excel(name = "维修设备", width = 15)
    @ApiModelProperty(value = "维修设备")
    private String equipmentId;
    /**报修科室*/
    @Excel(name = "报修科室", width = 15)
    @ApiModelProperty(value = "报修科室")
    @Dict(dictTable = "sys_depart", dicText = "depart_name", dicCode = "id")
    private String applyDept;
    /**报修人*/
    @Excel(name = "报修人", width = 15)
    @ApiModelProperty(value = "报修人")
    private String applyPerson;
    /**问题类型*/
    @Excel(name = "问题类型", width = 15, dicCode = "problem_type")
    @Dict(dicCode = "problem_type")
    @ApiModelProperty(value = "问题类型")
    private String problemType;
    /**问题描述*/
    @Excel(name = "问题描述", width = 15)
    @ApiModelProperty(value = "问题描述")
    private String problemRemark;
    /**问题图片*/
    @Excel(name = "问题图片", width = 15)
    @ApiModelProperty(value = "问题图片")
    private String problemPictures;
    /**维修状态*/
    @Excel(name = "维修状态", width = 15)
    @ApiModelProperty(value = "维修状态")
    @Dict(dicCode = "maintenance_status")
    private String maintenanceStatus;
    /**维修单位*/
    @Excel(name = "维修单位", width = 15)
    @ApiModelProperty(value = "维修单位")
    private String maintenanceProducer;
    /**维修人*/
    @Excel(name = "维修人", width = 15)
    @ApiModelProperty(value = "维修人")
    private String maintenancePerson;
    /**预计时间*/
    @Excel(name = "预计时间", width = 20, format = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @ApiModelProperty(value = "预计时间")
    private Date maintenanceDate;
    /**维修费用*/
    @Excel(name = "维修费用", width = 15)
    @ApiModelProperty(value = "维修费用")
    private BigDecimal maintenanceFee;
    /**维修备注*/
    @Excel(name = "维修备注", width = 15)
    @ApiModelProperty(value = "维修备注")
    private String maintenanceRemark;
    /**维修结果*/
    @Excel(name = "维修结果", width = 15, dictTable = "maintenance_result", dicText = "", dicCode = "")
    @Dict(dicCode = "maintenance_result")
    @ApiModelProperty(value = "维修结果")
    private String maintenanceResult;

    /**
     * 设备名称
     */
    /**转科备注*/
    @Excel(name = "设备名称", width = 15)
    @ApiModelProperty(value = "设备名称")
    private String equipmentName;

    /**
     * 设备编号
     */
    @Excel(name = "设备编号", width = 15)
    @ApiModelProperty(value = "设备编号")
    private String equipmentCode;
    /**
     * 设备型号
     */
    @Excel(name = "设备型号", width = 15)
    @ApiModelProperty(value = "设备型号")
    private String equipmentModel;

}
