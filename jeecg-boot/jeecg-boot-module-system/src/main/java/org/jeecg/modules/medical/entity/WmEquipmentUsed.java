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
 * @Description: 科室领用历史记录
 * @Author: jeecg-boot
 * @Date:   2020-11-20
 * @Version: V1.0
 */
@Data
@TableName("wm_equipment_used")
@Accessors(chain = true)
@EqualsAndHashCode(callSuper = false)
@ApiModel(value="科室领用历史记录", description="科室领用")
public class WmEquipmentUsed implements Serializable {
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
	/**领用设备id*/
	@Excel(name = "领用设备id", width = 15)
    @ApiModelProperty(value = "领用设备id")
    private String equipmentId;
	/**领用科室*/
	@Excel(name = "领用科室", width = 15, dictTable = "sys_depart", dicText = "depart_name", dicCode = "id")
	@Dict(dictTable = "sys_depart", dicText = "depart_name", dicCode = "id")
    @ApiModelProperty(value = "领用科室")
    private String useDept;
	/**责任人*/
	@Excel(name = "责任人", width = 15, dictTable = "sys_user", dicText = "realname", dicCode = "username")
	@Dict(dictTable = "sys_user", dicText = "realname", dicCode = "username")
    @ApiModelProperty(value = "责任人")
    private String chargePerson;
	/**安放位置*/
	@Excel(name = "安放位置", width = 15)
	@Dict(dictTable = "wm_area_space", dicText = "id,pid,area_name,has_child", dicCode = "0")
    @ApiModelProperty(value = "安放位置")
    private String chargeArea;
	/**领用状态 0:当前领用；1：历史领用*/
	@Excel(name = "领用状态", width = 15)
    @ApiModelProperty(value = "领用状态")
    private Integer usedStatus;
	@ApiModelProperty(value = "启用时间")
	private java.util.Date startUseTime;
	@ApiModelProperty(value = "截止时间")
	private java.util.Date endUseTime;
}
