package org.jeecg.modules.medical.entity;

import java.io.Serializable;

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

/**
 * @Description: 设备档案信息
 * @Author: jeecg-boot
 * @Date:   2020-11-10
 * @Version: V1.0
 */
@ApiModel(value="wm_equipment_info对象", description="设备档案信息")
@Data
@TableName("wm_equipment_info")
public class WmEquipmentInfo implements Serializable {
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
	/**设备类型*/
	@Excel(name = "设备类型", width = 15, dictTable = "wm_equipment_type", dicText = "id,pid,type_name,has_child", dicCode = "0")
    @Dict(dictTable = "wm_equipment_type", dicText = "id,pid,type_name,has_child", dicCode = "0")
    @ApiModelProperty(value = "设备类型")
    private java.lang.String equipmentType;
	/**设备名称*/
	@Excel(name = "设备名称", width = 15)
    @ApiModelProperty(value = "设备名称")
    private java.lang.String equipmentName;
	/**设备别名*/
	@Excel(name = "设备别名", width = 15)
    @ApiModelProperty(value = "设备别名")
    private java.lang.String equipmentAliasName;
	/**设备型号*/
	@Excel(name = "设备型号", width = 15)
    @ApiModelProperty(value = "设备型号")
    private java.lang.String equipmentModel;
    /**设备编号*/
    @Excel(name = "设备编号", width = 15)
    @ApiModelProperty(value = "设备编号")
    private java.lang.String equipmentCode;
    /**设备二维码*/
    @Excel(name = "设备二维码", width = 15)
    @ApiModelProperty(value = "设备二维码")
    private java.lang.String equipmentQrcode;
	/**折旧率*/
	@Excel(name = "折旧率", width = 15)
    @ApiModelProperty(value = "折旧率")
    private java.lang.Integer depreciationRate;
	/**采购单价*/
	@Excel(name = "采购单价", width = 15)
    @ApiModelProperty(value = "采购单价")
    private java.math.BigDecimal procurementPrice;
	/**采购数量*/
	@Excel(name = "采购数量", width = 15)
    @ApiModelProperty(value = "采购数量")
    private java.lang.Integer procurementNumber;
	/**计量设备*/
	@Excel(name = "计量设备", width = 15, dicCode = "yn")
    @Dict(dicCode = "yn")
    @ApiModelProperty(value = "计量设备")
    private java.lang.String measureState;
	/**设备残值*/
	@Excel(name = "设备残值", width = 15)
    @ApiModelProperty(value = "设备残值")
    private java.lang.Double equipmentScrap;
	/**设备图片*/
	@Excel(name = "设备图片", width = 15)
    @ApiModelProperty(value = "设备图片")
    private java.lang.String equipmentLogo;
	/**生产厂家*/
	@Excel(name = "生产厂家", width = 15, dictTable = "wm_manufacturer_info", dicText = "manufacturer_name", dicCode = "id")
    @Dict(dictTable = "wm_manufacturer_info", dicText = "manufacturer_name", dicCode = "id")
    @ApiModelProperty(value = "生产厂家")
    private java.lang.String originManufacturerId;
	/**销售厂家*/
	@Excel(name = "销售厂家", width = 15, dictTable = "wm_manufacturer_info", dicText = "manufacturer_name", dicCode = "id")
    @Dict(dictTable = "wm_manufacturer_info", dicText = "manufacturer_name", dicCode = "id")
    @ApiModelProperty(value = "销售厂家")
    private java.lang.String saleManufacturerId;
	/**使用科室*/
	@Excel(name = "使用科室", width = 15, dictTable = "sys_depart", dicText = "depart_name", dicCode = "id")
    @Dict(dictTable = "sys_depart", dicText = "depart_name", dicCode = "id")
    @ApiModelProperty(value = "使用科室")
    private java.lang.String useDept;
	/**使用人*/
	@Excel(name = "使用人", width = 15, dictTable = "sys_user", dicText = "realname", dicCode = "username")
    @Dict(dictTable = "sys_user", dicText = "realname", dicCode = "username")
    @ApiModelProperty(value = "使用人")
    private java.lang.String chargePerson;
	/**安放位置*/
	@Excel(name = "安放位置", width = 15,dictTable = "wm_area_space", dicText = "id,pid,area_name,has_child", dicCode = "0")
    @Dict(dictTable = "wm_area_space", dicText = "id,pid,area_name,has_child", dicCode = "0",pageDictCode = "id", pageDictText = "area_name")
    @ApiModelProperty(value = "安放位置")
    private java.lang.String chargeArea;
	/**启用时间*/
	@Excel(name = "启用时间", width = 15, format = "yyyy-MM-dd")
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    @ApiModelProperty(value = "启用时间")
    private java.util.Date startUseTime;
	/**保养周期(天)*/
	@Excel(name = "保养周期(天)", width = 15)
    @ApiModelProperty(value = "保养周期(天)")
    private java.lang.Integer maintainDay;
	/**计量周期(天)*/
	@Excel(name = "计量周期(天)", width = 15)
    @ApiModelProperty(value = "计量周期(天)")
    private java.lang.Integer measuerDay;
	/**合同编号*/
	@Excel(name = "合同编号", width = 15, dictTable = "wm_contract_info", dicText = "contract_name", dicCode = "id")
    @Dict(dictTable = "wm_contract_info", dicText = "contract_name", dicCode = "id")
    @ApiModelProperty(value = "合同编号")
    private java.lang.String contractCode;
}
