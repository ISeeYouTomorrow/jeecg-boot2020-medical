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
 * @Description: 设备借用信息
 * @Author: jeecg-boot
 * @Date:   2020-11-22
 * @Version: V1.0
 */
@Data
@TableName("wm_equipment_onloan")
@Accessors(chain = true)
@EqualsAndHashCode(callSuper = false)
@ApiModel(value="wm_equipment_onloan对象", description="设备借用信息")
public class WmEquipmentOnloan implements Serializable {
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
	/**借用设备id*/
	@Excel(name = "借用设备id", width = 15)
    @ApiModelProperty(value = "借用设备id")
    private String equipmentId;
	/**借用科室*/
	@Excel(name = "借用科室", width = 15, dictTable = "sys_depart", dicText = "depart_name", dicCode = "id")
	@Dict(dictTable = "sys_depart", dicText = "depart_name", dicCode = "id")
    @ApiModelProperty(value = "借用科室")
    private String onloanDept;
	/**借用人*/
	@Excel(name = "借用人", width = 15, dictTable = "sys_user", dicText = "realname", dicCode = "username")
	@Dict(dictTable = "sys_user", dicText = "realname", dicCode = "username")
    @ApiModelProperty(value = "借用人")
    private String onloanPerson;
	/**安放位置*/
	@Excel(name = "安放位置", width = 15)
    @ApiModelProperty(value = "安放位置")
	@Dict(dictTable = "wm_area_space", dicText = "id,pid,area_name,has_child", dicCode = "0",pageDictCode = "id", pageDictText = "area_name")
    private String onloanArea;
	/**是否已归还*/
	@Excel(name = "是否已归还", width = 15)
    @ApiModelProperty(value = "是否已归还:0：未归还；1：已归还")
    private Integer onloanStatus;
	/**借用日期*/
	@Excel(name = "借用日期", width = 15, format = "yyyy-MM-dd")
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    @ApiModelProperty(value = "借用日期")
    private Date onloanDate;
	/**归还日期*/
	@Excel(name = "归还日期", width = 15, format = "yyyy-MM-dd")
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    @ApiModelProperty(value = "归还日期")
    private Date returnDate;
}
