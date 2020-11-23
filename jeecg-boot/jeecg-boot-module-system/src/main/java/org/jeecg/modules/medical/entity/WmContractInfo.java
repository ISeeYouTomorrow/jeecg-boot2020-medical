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
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * @Description: 厂商合同信息管理
 * @Author: lxl
 * @Date:   2020-11-09
 * @Version: V1.0
 */
@Data
@TableName("wm_contract_info")
@Accessors(chain = true)
@EqualsAndHashCode(callSuper = false)
@ApiModel(value="wm_contract_info对象", description="厂商合同信息管理")
public class WmContractInfo implements Serializable {
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
	/**合同名称*/
	@Excel(name = "合同名称", width = 15)
    @ApiModelProperty(value = "合同名称")
    private java.lang.String contractName;
	/**合同编号*/
	@Excel(name = "合同编号", width = 15)
    @ApiModelProperty(value = "合同编号")
    private java.lang.String contractCode;
	/**所属厂商*/
	@Excel(name = "所属厂商", width = 15, dictTable = "wm_manufacturer_info", dicText = "manufacturer_name", dicCode = "id")
	@Dict(dictTable = "wm_manufacturer_info", dicText = "manufacturer_name", dicCode = "id")
    @ApiModelProperty(value = "所属厂商")
    private java.lang.String wmManufacturerId;
	/**合同额度*/
	@Excel(name = "合同额度", width = 15)
    @ApiModelProperty(value = "合同额度")
    private java.math.BigDecimal contractLimit;
	/**签订日期*/
	@Excel(name = "签订日期", width = 15, format = "yyyy-MM-dd")
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    @ApiModelProperty(value = "签订日期")
    private java.util.Date contractTime;
	/**合同附件*/
	@Excel(name = "合同附件", width = 15)
    @ApiModelProperty(value = "合同附件")
    private java.lang.String contractFile;
}
