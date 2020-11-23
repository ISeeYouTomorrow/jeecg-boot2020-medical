package org.jeecg.modules.medical.service.impl;

import org.jeecg.modules.medical.entity.WmEquipmentApprove;
import org.jeecg.modules.medical.mapper.WmEquipmentApproveMapper;
import org.jeecg.modules.medical.service.IWmEquipmentApproveService;
import org.springframework.stereotype.Service;
import java.util.List;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * @Description: 设备审批信息
 * @Author: lxl
 * @Date:   2020-11-10
 * @Version: V1.0
 */
@Service
public class WmEquipmentApproveServiceImpl extends ServiceImpl<WmEquipmentApproveMapper, WmEquipmentApprove> implements IWmEquipmentApproveService {
	
	@Autowired
	private WmEquipmentApproveMapper wmEquipmentApproveMapper;
	
	@Override
	public List<WmEquipmentApprove> selectByMainId(String mainId) {
		return wmEquipmentApproveMapper.selectByMainId(mainId);
	}
}
