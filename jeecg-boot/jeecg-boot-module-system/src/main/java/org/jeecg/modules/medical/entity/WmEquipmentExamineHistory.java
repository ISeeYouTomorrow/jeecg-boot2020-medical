package org.jeecg.modules.medical.entity;

import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.math.BigDecimal;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;
import org.jeecgframework.poi.excel.annotation.Excel;
import org.jeecg.common.aspect.annotation.Dict;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * @Description: 设备巡检记录
 * @Author: lxl
 * @Date:   2020-12-04
 * @Version: V1.0
 */
@Data
@TableName("wm_equipment_examine_history")
@Accessors(chain = true)
@EqualsAndHashCode(callSuper = false)
@ApiModel(value="wm_equipment_examine_history对象", description="设备巡检记录")
public class WmEquipmentExamineHistory implements Serializable {
    private static final long serialVersionUID = 1L;

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
}
