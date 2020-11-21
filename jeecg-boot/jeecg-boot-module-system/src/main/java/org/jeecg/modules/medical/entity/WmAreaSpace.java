package org.jeecg.modules.medical.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.jeecg.common.aspect.annotation.Dict;
import org.jeecgframework.poi.excel.annotation.Excel;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;

/**
 * @Description: 空间数据
 * @Author: jeecg-boot
 * @Date:   2020-11-06
 * @Version: V1.0
 */
@Data
@TableName("wm_area_space")
public class WmAreaSpace implements Serializable {
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
	/**区域名称*/
	@Excel(name = "区域名称", width = 15)
	private java.lang.String areaName;
	/**区域编码*/
	@Excel(name = "区域编码", width = 15)
	private java.lang.String areaCode;
	/**标签编号*/
	@Excel(name = "标签编号", width = 15)
	private java.lang.String tagCode;
	/**序号*/
	@Excel(name = "序号", width = 15)
	private java.lang.Integer sortNumber;
	/**备注信息*/
	@Excel(name = "备注信息", width = 15)
	private java.lang.String remark;

	/**二维码保存路径 */
	private java.lang.String qrCodePath;

	/**全路径名称 */
	private java.lang.String fullName;
}
