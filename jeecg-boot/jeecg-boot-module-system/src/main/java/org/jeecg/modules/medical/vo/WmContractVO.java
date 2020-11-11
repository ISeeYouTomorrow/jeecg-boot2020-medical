package org.jeecg.modules.medical.vo;

import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;

/**
 * 返回合同明细信息 包括供应商名称
 *
 * @Author: lvxile
 *
 */
@Data
public class WmContractVO implements Serializable {
    /**主键*/
    @ApiModelProperty(value = "主键")
    private java.lang.String id;
    /**所属部门*/
    @ApiModelProperty(value = "所属部门")
    private java.lang.String sysOrgCode;
    /**合同名称*/
    @ApiModelProperty(value = "合同名称")
    private java.lang.String contractName;
    /**合同编号*/
    @ApiModelProperty(value = "合同编号")
    private java.lang.String contractCode;
    /**所属厂商*/
    @ApiModelProperty(value = "所属厂商")
    private java.lang.String wmManufacturerId;
    /**合同额度*/
    @ApiModelProperty(value = "合同额度")
    private java.math.BigDecimal contractLimit;
    /**签订日期*/
    @JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    @ApiModelProperty(value = "签订日期")
    private java.util.Date contractTime;
    /**合同附件*/
    @ApiModelProperty(value = "合同附件")
    private java.lang.String contractFile;

    @ApiModelProperty(value = "厂商名称")
    private String wmManufacturerName;
}
