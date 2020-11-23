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
import java.util.Date;

/**
 * @Description: 设备转科
 * @Author: lxl
 * @Date:   2020-11-23
 * @Version: V1.0
 */
@Data
@TableName("wm_equipment_transfer")
@Accessors(chain = true)
@EqualsAndHashCode(callSuper = false)
@ApiModel(value="wm_equipment_transfer对象", description="设备转科")
public class WmEquipmentTransfer implements Serializable {
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
	/**设备id*/
	@Excel(name = "设备id", width = 15)
    @ApiModelProperty(value = "设备id")
    private String equipmentId;
	/**原科室*/
	@Excel(name = "原科室", width = 15, dictTable = "sys_depart", dicText = "depart_name", dicCode = "id")
	@Dict(dictTable = "sys_depart", dicText = "depart_name", dicCode = "id")
	@ApiModelProperty(value = "原科室")
	private String oldDept;
	/** 原科室人*/
	@Excel(name = "原使用人", width = 15, dictTable = "sys_user", dicText = "realname", dicCode = "username")
	@Dict(dictTable = "sys_user", dicText = "realname", dicCode = "username")
	@ApiModelProperty(value = "原使用人")
	private String oldPerson;
	/** 原位置*/
	@Excel(name = "原位置", width = 15,dictTable = "wm_area_space", dicText = "id,pid,area_name,has_child", dicCode = "0")
	@Dict(dictTable = "wm_area_space", dicText = "id,pid,area_name,has_child", dicCode = "0",pageDictCode = "id", pageDictText = "area_name")
	@ApiModelProperty(value = "原位置")
	private String oldArea;

	/**原启用时间*/
	@Excel(name = "原启用时间", width = 20, format = "yyyy-MM-dd HH:mm:ss")
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	@ApiModelProperty(value = "原启用时间")
	private Date oldStartTime;

	/**转入科室*/
	@Excel(name = "转入科室", width = 15, dictTable = "sys_depart", dicText = "depart_name", dicCode = "id")
	@Dict(dictTable = "sys_depart", dicText = "depart_name", dicCode = "id")
    @ApiModelProperty(value = "转入科室")
    private String transferDept;
	/**接收人*/
	@Excel(name = "接收人", width = 15, dictTable = "sys_user", dicText = "realname", dicCode = "username")
	@Dict(dictTable = "sys_user", dicText = "realname", dicCode = "username")
    @ApiModelProperty(value = "接收人")
    private String transferPerson;
	/**接收位置*/
	@Excel(name = "接收位置", width = 15,dictTable = "wm_area_space", dicText = "id,pid,area_name,has_child", dicCode = "0")
	@Dict(dictTable = "wm_area_space", dicText = "id,pid,area_name,has_child", dicCode = "0",pageDictCode = "id", pageDictText = "area_name")
    private String transferArea;
	/**转科附件*/
	@Excel(name = "转科附件", width = 15)
    @ApiModelProperty(value = "转科附件")
    private String transferFile;
	/**转科备注*/
	@Excel(name = "转科备注", width = 15)
    @ApiModelProperty(value = "转科备注")
    private String remark;
}
