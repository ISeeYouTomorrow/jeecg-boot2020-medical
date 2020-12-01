package org.jeecg.modules.medical.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;
import org.jeecg.common.aspect.annotation.Dict;
import org.jeecgframework.poi.excel.annotation.Excel;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

/**
 * @Description: 设备计量记录
 * @Author: lxl
 * @Date:   2020-11-29
 * @Version: V1.0
 */
@Data
@TableName("wm_measure_history")
@Accessors(chain = true)
@EqualsAndHashCode(callSuper = false)
@ApiModel(value="wm_measure_history对象", description="设备计量记录")
public class WmMeasureHistory implements Serializable {
    private static final long serialVersionUID = 1L;

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
	/**计量状态 计量状态(0:已列入计划,1:待计量,2:已计量)*/
	@Excel(name = "计量状态", width = 15)
    @ApiModelProperty(value = "计量状态")
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
    private BigDecimal measureFee;
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


}
