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
 * @Description: 设备保养记录
 * @Author: lxl
 * @Date:   2020-11-29
 * @Version: V1.0
 */
@Data
@TableName("wm_maintenance_history")
@Accessors(chain = true)
@EqualsAndHashCode(callSuper = false)
@ApiModel(value="wm_maintenance_history对象", description="设备保养记录")
public class WmMaintenanceHistory implements Serializable {
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
	/**保养状态 保养状态(0:已列入计划,1:待保养,2:已保养)*/
	@Excel(name = "保养状态", width = 15)
    @ApiModelProperty(value = "保养状态")
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


}
