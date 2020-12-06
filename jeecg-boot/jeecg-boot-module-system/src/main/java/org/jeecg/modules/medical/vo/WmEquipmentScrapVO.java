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
import java.util.Date;

/**
 * 设备巡检记录分页展示列表
 * @Author: lxl
 */
@Data
public class WmEquipmentScrapVO implements Serializable {

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
    /**报废设备*/
    @Excel(name = "报废设备", width = 15)
    @ApiModelProperty(value = "报废设备")
    private java.lang.String equipmentId;
    /**备注信息*/
    @Excel(name = "备注信息", width = 15)
    @ApiModelProperty(value = "备注信息")
    private java.lang.String remark;
    /**报废附件*/
    @Excel(name = "报废附件", width = 15)
    @ApiModelProperty(value = "报废附件")
    private java.lang.String scrapFile;
    /**报废状态 0:已报废 1:已撤销 */
    @Excel(name = "报废状态", width = 15)
    @ApiModelProperty(value = "报废状态")
    @Dict(dicCode = "wm_scrap_state")
    private java.lang.String scrapState;

    /** 报废前设备状态 */
    private String oldEquipmentState;

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
}
