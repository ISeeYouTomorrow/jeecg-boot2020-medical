package org.jeecg.modules.medical.vo;

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
 * @Description: 设备巡检计划VO
 * @Author: lxl
 * @Date:   2020-12-03
 * @Version: V1.0
 */
@Data
@TableName("wm_equipment_examine")
@Accessors(chain = true)
@EqualsAndHashCode(callSuper = false)
@ApiModel(value="wm_equipment_examine对象", description="设备巡检计划")
public class WmEquipmentExamineVO implements Serializable {
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
	/**巡检计划名称*/
	@Excel(name = "巡检计划名称", width = 15)
    @ApiModelProperty(value = "巡检计划名称")
    private String examineName;
	/**巡检科室*/
	@Excel(name = "巡检科室", width = 15)
    @ApiModelProperty(value = "巡检科室")
    @Dict(dictTable = "sys_depart", dicText = "depart_name", dicCode = "id")
    private String examineDept;
	/**设备类型*/
    @Excel(name = "设备类型", width = 15, dictTable = "wm_equipment_type", dicText = "id,pid,type_name,has_child", dicCode = "0")
    @Dict(dictTable = "wm_equipment_type", dicText = "id,pid,type_name,has_child", dicCode = "0",pageDictCode = "id", pageDictText = "type_name")
    @ApiModelProperty(value = "设备类型")
    private String equipmentType;
	/**巡检区域*/
    @Excel(name = "安放位置", width = 15,dictTable = "wm_area_space", dicText = "id,pid,area_name,has_child", dicCode = "0")
    @Dict(dictTable = "wm_area_space", dicText = "id,pid,area_name,has_child", dicCode = "0",pageDictCode = "id", pageDictText = "area_name")
    @ApiModelProperty(value = "巡检区域")
    private String examineArea;
	/**巡检人*/
	@Excel(name = "巡检人", width = 15, dictTable = "sys_user", dicText = "realname", dicCode = "username")
    @Dict(dictTable = "sys_user", dicText = "realname", dicCode = "username")
    @ApiModelProperty(value = "巡检人")
    private String examinePerson;
	/**巡检时间*/
	@Excel(name = "巡检时间", width = 20, format = "yyyy-MM-dd HH:mm:ss")
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @ApiModelProperty(value = "巡检时间")
    private Date examineTime;
	/**巡检备注*/
	@Excel(name = "巡检备注", width = 15)
    @ApiModelProperty(value = "巡检备注")
    private String examineRemark;
	/**巡检状态*/
	@Excel(name = "巡检状态", width = 15,dicCode = "examine_status")
    @ApiModelProperty(value = "巡检状态")
    @Dict(dicCode = "examine_status")
    private String examineState;
    /**
     * 已巡检个数
     */
	private Integer examineNumber;

    /**
     * 巡检总个数
     */
	private Integer examineTotal;

    public String getExamineState() {
        if (examineNumber.intValue() == 0) {
            return "0";
        } else if (examineNumber.intValue() < examineTotal.intValue()) {
            return "1";
        }else if (examineNumber.intValue() == examineTotal.intValue()){
            return "2";
        }else{
            return "3";
        }
    }
}
