package org.jeecg.modules.medical.service.impl;

import org.jeecg.modules.medical.entity.WmEquipmentInfo;
import org.jeecg.modules.medical.entity.WmInviteBid;
import org.jeecg.modules.medical.entity.WmEquipmentApprove;
import org.jeecg.modules.medical.mapper.WmInviteBidMapper;
import org.jeecg.modules.medical.mapper.WmEquipmentApproveMapper;
import org.jeecg.modules.medical.mapper.WmEquipmentInfoMapper;
import org.jeecg.modules.medical.service.IWmEquipmentInfoService;
import org.springframework.stereotype.Service;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import java.io.Serializable;
import java.util.List;
import java.util.Collection;

/**
 * @Description: 设备档案信息
 * @Author: jeecg-boot
 * @Date:   2020-11-10
 * @Version: V1.0
 */
@Service
public class WmEquipmentInfoServiceImpl extends ServiceImpl<WmEquipmentInfoMapper, WmEquipmentInfo> implements IWmEquipmentInfoService {

	@Autowired
	private WmEquipmentInfoMapper wmEquipmentInfoMapper;
	@Autowired
	private WmInviteBidMapper wmInviteBidMapper;
	@Autowired
	private WmEquipmentApproveMapper wmEquipmentApproveMapper;
	
	@Override
	@Transactional
	public void saveMain(WmEquipmentInfo wmEquipmentInfo, List<WmInviteBid> wmInviteBidList,List<WmEquipmentApprove> wmEquipmentApproveList) {
		wmEquipmentInfoMapper.insert(wmEquipmentInfo);
		if(wmInviteBidList!=null && wmInviteBidList.size()>0) {
			for(WmInviteBid entity:wmInviteBidList) {
				//外键设置
				entity.setWmEquipmentId(wmEquipmentInfo.getId());
				wmInviteBidMapper.insert(entity);
			}
		}
		if(wmEquipmentApproveList!=null && wmEquipmentApproveList.size()>0) {
			for(WmEquipmentApprove entity:wmEquipmentApproveList) {
				//外键设置
				entity.setWmEquipmentId(wmEquipmentInfo.getId());
				wmEquipmentApproveMapper.insert(entity);
			}
		}
	}

	@Override
	@Transactional
	public void updateMain(WmEquipmentInfo wmEquipmentInfo,List<WmInviteBid> wmInviteBidList,List<WmEquipmentApprove> wmEquipmentApproveList) {
		wmEquipmentInfoMapper.updateById(wmEquipmentInfo);
		
		//1.先删除子表数据
		wmInviteBidMapper.deleteByMainId(wmEquipmentInfo.getId());
		wmEquipmentApproveMapper.deleteByMainId(wmEquipmentInfo.getId());
		
		//2.子表数据重新插入
		if(wmInviteBidList!=null && wmInviteBidList.size()>0) {
			for(WmInviteBid entity:wmInviteBidList) {
				//外键设置
				entity.setWmEquipmentId(wmEquipmentInfo.getId());
				wmInviteBidMapper.insert(entity);
			}
		}
		if(wmEquipmentApproveList!=null && wmEquipmentApproveList.size()>0) {
			for(WmEquipmentApprove entity:wmEquipmentApproveList) {
				//外键设置
				entity.setWmEquipmentId(wmEquipmentInfo.getId());
				wmEquipmentApproveMapper.insert(entity);
			}
		}
	}

	@Override
	@Transactional
	public void delMain(String id) {
		wmInviteBidMapper.deleteByMainId(id);
		wmEquipmentApproveMapper.deleteByMainId(id);
		wmEquipmentInfoMapper.deleteById(id);
	}

	@Override
	@Transactional
	public void delBatchMain(Collection<? extends Serializable> idList) {
		for(Serializable id:idList) {
			wmInviteBidMapper.deleteByMainId(id.toString());
			wmEquipmentApproveMapper.deleteByMainId(id.toString());
			wmEquipmentInfoMapper.deleteById(id);
		}
	}
	
}
