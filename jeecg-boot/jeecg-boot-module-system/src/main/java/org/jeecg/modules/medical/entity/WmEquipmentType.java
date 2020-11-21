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

/**
 * @Description: 设备数据
 * @Author: jeecg-boot
 * @Date:   2020-11-07
 * @Version: V1.0
 */
@Data
@TableName("wm_equipment_type")
public class WmEquipmentType implements Serializable {

    private static final long serialVersionUID = 1L;

	/**主键*/
	@TableId(type = IdType.ID_WORKER_STR)
	private java.lang.String id;
	/**创建人*/
	@Excel(name = "创建人", width = 15)
	private java.lang.String createBy;
	/**创建日期*/
	@Excel(name = "创建日期", width = 20, format = "yyyy-MM-dd HH:mm:ss")
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private java.util.Date createTime;
	/**更新人*/
	@Excel(name = "更新人", width = 15)
	private java.lang.String updateBy;
	/**更新日期*/
	@Excel(name = "更新日期", width = 20, format = "yyyy-MM-dd HH:mm:ss")
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private java.util.Date updateTime;
	/**所属部门*/
	@Excel(name = "所属部门", width = 15)
	private java.lang.String sysOrgCode;
	/**父级节点*/
	@Excel(name = "父级节点", width = 15)
	private java.lang.String pid;
	/**是否有子节点*/
	@Excel(name = "是否有子节点", width = 15, dicCode = "yn")
	@Dict(dicCode = "yn")
	private java.lang.String hasChild;
	/**序号*/
	@Excel(name = "序号", width = 15)
	private java.lang.Integer sortNumber;
	/**设备类别*/
	@Excel(name = "设备类别", width = 15)
	private java.lang.String typeName;
	/**2018类别代号*/
	@Excel(name = "2018类别代号", width = 15)
	private java.lang.String typeAlias18;
	/**是否计量设备*/
	@Excel(name = "是否计量设备", width = 15, dicCode = "yn")
	@Dict(dicCode = "yn")
	private java.lang.String measureState;
	/**2012类别代号*/
	@Excel(name = "2012类别代号", width = 15)
	private java.lang.String remark;
}
