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
 * @Description: 厂商信息管理
 * @Author: lxl
 * @Date:   2020-11-09
 * @Version: V1.0
 */
@Data
@TableName("wm_manufacturer_info")
@Accessors(chain = true)
@EqualsAndHashCode(callSuper = false)
@ApiModel(value="厂商信息管理", description="厂商信息管理")
public class WmManufacturerInfo implements Serializable {
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
	/**厂商名称*/
	@Excel(name = "厂商名称", width = 15)
    @ApiModelProperty(value = "厂商名称")
    private String manufacturerName;
	/**统一机构信用代码*/
	@Excel(name = "统一机构信用代码", width = 15)
    @ApiModelProperty(value = "统一机构信用代码")
    private String unionCreditCode;
	/**厂商地址*/
	@Excel(name = "厂商地址", width = 15)
    @ApiModelProperty(value = "厂商地址")
    private String manufacturerAddress;
	/**法人*/
	@Excel(name = "法人", width = 15)
    @ApiModelProperty(value = "法人")
    private String leagalPerson;
	/**法人联系方式*/
	@Excel(name = "法人联系方式", width = 15)
    @ApiModelProperty(value = "法人联系方式")
    private String leagalPersonPhone;
	/**联系人*/
	@Excel(name = "联系人", width = 15)
    @ApiModelProperty(value = "联系人")
    private String linkPerson;
	/**联系方式*/
	@Excel(name = "联系方式", width = 15)
    @ApiModelProperty(value = "联系方式")
    private String linkPersonPhone;
	/**厂商属性*/
	@Excel(name = "厂商属性", width = 15, dicCode = "manufactureDict")
	@Dict(dicCode = "manufactureDict")
    @ApiModelProperty(value = "厂商属性")
    private String manufacturerFeature;
}
