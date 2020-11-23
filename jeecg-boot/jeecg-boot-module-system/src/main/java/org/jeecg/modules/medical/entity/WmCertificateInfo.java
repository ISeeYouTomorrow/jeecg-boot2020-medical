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

import javax.persistence.Transient;

/**
 * @Description: 厂商证书管理
 * @Author: lxl
 * @Date:   2020-11-09
 * @Version: V1.0
 */
@Data
@TableName("wm_certificate_info")
@Accessors(chain = true)
@EqualsAndHashCode(callSuper = false)
@ApiModel(value="wm_certificate_info对象", description="厂商证书管理")
public class WmCertificateInfo implements Serializable {
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
	/**证书名称*/
	@Excel(name = "证书名称", width = 15)
    @ApiModelProperty(value = "证书名称")
    private String certificateName;
	/**证书编号*/
	@Excel(name = "证书编号", width = 15)
    @ApiModelProperty(value = "证书编号")
    private String certificateCode;
	/**所属厂商*/
	@Excel(name = "所属厂商", width = 15, dictTable = "wm_manufacturer_info", dicText = "manufacturer_name", dicCode = "id")
	@Dict(dictTable = "wm_manufacturer_info", dicText = "manufacturer_name", dicCode = "id")
    @ApiModelProperty(value = "所属厂商")
    private String wmManufacturerId;
	/**到期时间*/
	@Excel(name = "到期时间", width = 20, format = "yyyy-MM-dd")
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    @ApiModelProperty(value = "到期时间")
    private Date expireTime;
	/**证书附件*/
	@Excel(name = "证书附件", width = 15)
    @ApiModelProperty(value = "证书附件")
    private String certificateFile;

//	@Transient
//	private String expireTimeStr;
//
//    public String getExpireTimeStr() {
//        return System.currentTimeMillis()-expireTime.getTime()>0?"未过期":"已过期";
//    }
}
