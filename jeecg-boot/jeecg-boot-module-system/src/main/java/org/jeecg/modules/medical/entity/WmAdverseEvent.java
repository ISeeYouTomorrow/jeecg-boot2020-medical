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
 * @Description: 设备不良事件
 * @Author: lxl
 * @Date:   2020-12-04
 * @Version: V1.0
 */
@Data
@TableName("wm_adverse_event")
@Accessors(chain = true)
@EqualsAndHashCode(callSuper = false)
@ApiModel(value="wm_adverse_event对象", description="设备不良事件")
public class WmAdverseEvent implements Serializable {
    private static final long serialVersionUID = 1L;

	/**主键*/
	@TableId(type = IdType.ID_WORKER_STR)
    @ApiModelProperty(value = "主键")
    private java.lang.String id;
	/**创建人*/
	@Excel(name = "创建人", width = 15)
    @ApiModelProperty(value = "创建人")
    private java.lang.String createBy;
	/**发生日期*/
	@Excel(name = "发生日期", width = 20, format = "yyyy-MM-dd HH:mm:ss")
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @ApiModelProperty(value = "发生日期")
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
	/**设备名称*/
	@Excel(name = "设备名称", width = 15,dictTable = "wm_equipment_info", dicText = "equipment_name", dicCode = "id")
    @ApiModelProperty(value = "设备名称")
	@Dict(dictTable = "wm_equipment_info", dicText = "equipment_name", dicCode = "id")
    private java.lang.String equipmentId;
	/**患者姓名*/
	@Excel(name = "患者姓名", width = 15)
    @ApiModelProperty(value = "患者姓名")
    private java.lang.String personName;
	/**患者年龄*/
	@Excel(name = "患者年龄", width = 15)
    @ApiModelProperty(value = "患者年龄")
    private java.lang.Integer personAge;
	/**联系方式*/
	@Excel(name = "联系方式", width = 15)
    @ApiModelProperty(value = "联系方式")
    private java.lang.String personMobile;
	/**联系地址*/
	@Excel(name = "联系地址", width = 15)
    @ApiModelProperty(value = "联系地址")
    private java.lang.String personAddress;
	/**设备使用场所*/
	@Excel(name = "设备使用场所", width = 15, dicCode = "use_address")
	@Dict(dicCode = "use_address")
    @ApiModelProperty(value = "设备使用场所")
    private java.lang.String useAddress;
	/**事件后果*/
	@Excel(name = "事件后果", width = 15, dicCode = "event_result")
	@Dict(dicCode = "event_result")
    @ApiModelProperty(value = "事件后果")
    private java.lang.String eventResult;
	/**事件描述*/
	@Excel(name = "事件描述", width = 15)
    @ApiModelProperty(value = "事件描述")
    private java.lang.String eventRemark;
}
