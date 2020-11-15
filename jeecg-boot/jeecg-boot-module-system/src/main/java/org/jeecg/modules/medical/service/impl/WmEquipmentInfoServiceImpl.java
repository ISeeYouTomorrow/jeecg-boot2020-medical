package org.jeecg.modules.medical.service.impl;

import cn.hutool.core.collection.CollectionUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.IdWorker;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.jeecg.modules.medical.entity.WmEquipmentApprove;
import org.jeecg.modules.medical.entity.WmEquipmentInfo;
import org.jeecg.modules.medical.entity.WmInviteBid;
import org.jeecg.modules.medical.mapper.WmEquipmentApproveMapper;
import org.jeecg.modules.medical.mapper.WmEquipmentInfoMapper;
import org.jeecg.modules.medical.mapper.WmInviteBidMapper;
import org.jeecg.modules.medical.service.IWmEquipmentInfoService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.Collection;
import java.util.List;

/**
 * @Description: 设备档案信息
 * @Author: jeecg-boot
 * @Date:   2020-11-10
 * @Version: V1.0
 */
@Service
public class WmEquipmentInfoServiceImpl extends ServiceImpl<WmEquipmentInfoMapper, WmEquipmentInfo> implements IWmEquipmentInfoService {

	@Resource
	private WmEquipmentInfoMapper wmEquipmentInfoMapper;
	@Resource
	private WmInviteBidMapper wmInviteBidMapper;
	@Resource
	private WmEquipmentApproveMapper wmEquipmentApproveMapper;


	
	@Override
	@Transactional
	public void saveMain(WmEquipmentInfo wmEquipmentInfo, List<WmInviteBid> wmInviteBidList,List<WmEquipmentApprove> wmEquipmentApproveList) {
		wmEquipmentInfoMapper.insert(wmEquipmentInfo);
		if(CollectionUtil.isNotEmpty(wmInviteBidList)) {
			for(WmInviteBid entity:wmInviteBidList) {
				entity.setId(IdWorker.get32UUID());
				//外键设置
				entity.setWmEquipmentId(wmEquipmentInfo.getId());
				wmInviteBidMapper.insert(entity);
			}
		}
		if(CollectionUtil.isNotEmpty(wmEquipmentApproveList)) {
			for(WmEquipmentApprove entity:wmEquipmentApproveList) {
				entity.setId(IdWorker.get32UUID());
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
		if(CollectionUtil.isNotEmpty(wmInviteBidList)) {
			for(WmInviteBid entity:wmInviteBidList) {
				//外键设置
				entity.setWmEquipmentId(wmEquipmentInfo.getId());
				wmInviteBidMapper.insert(entity);
			}
		}
		if(CollectionUtil.isNotEmpty(wmEquipmentApproveList)) {
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

	@Override
	public int getEquipmentTypeCount(String typeId) {
		synchronized (this) {
			QueryWrapper<WmEquipmentInfo> queryWrapper = new QueryWrapper<>();
			queryWrapper.eq("equipment_type", typeId);
			int count = wmEquipmentInfoMapper.selectCount(queryWrapper);
		}
		return 0;
	}
}
