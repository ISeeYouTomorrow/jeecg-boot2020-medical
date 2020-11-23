package org.jeecg.modules.medical.service;

import org.jeecg.modules.medical.entity.WmEquipmentApprove;
import com.baomidou.mybatisplus.extension.service.IService;
import java.util.List;

/**
 * @Description: 设备审批信息
 * @Author: lxl
 * @Date:   2020-11-10
 * @Version: V1.0
 */
public interface IWmEquipmentApproveService extends IService<WmEquipmentApprove> {

	public List<WmEquipmentApprove> selectByMainId(String mainId);
}
