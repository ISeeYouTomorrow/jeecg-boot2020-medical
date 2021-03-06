package org.jeecg.modules.medical.service.impl;

import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.date.DateUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.IdWorker;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.apache.commons.lang3.StringUtils;
import org.jeecg.modules.medical.entity.*;
import org.jeecg.modules.medical.mapper.WmEquipmentApproveMapper;
import org.jeecg.modules.medical.mapper.WmEquipmentInfoMapper;
import org.jeecg.modules.medical.mapper.WmEquipmentUsedMapper;
import org.jeecg.modules.medical.mapper.WmInviteBidMapper;
import org.jeecg.modules.medical.service.IWmEquipmentInfoService;
import org.jeecg.modules.medical.service.MedicalQrCodeService;
import org.jeecg.modules.medical.util.MedicalUtils;
import org.jeecg.modules.medical.vo.WmEquipmentInfoPage;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import java.util.List;

/**
 * @Description: 设备档案信息
 * @Author: lxl
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
	@Resource
	private MedicalQrCodeService qrCodeService;
	@Resource
	private WmEquipmentUsedMapper wmEquipmentUsedMapper;



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

	@Transactional
	@Override
	public void saveBatchMain(String code, int count, WmEquipmentInfoPage wmEquipmentInfoPage) {
		//设备个数
		int num = wmEquipmentInfoPage.getProcurementNumber();
		for (int i = 0; i < num; i++) {
			String equipmentCode = MedicalUtils.generateEquipmentCode(code, ++count);
			WmEquipmentInfo wmEquipmentInfo = new WmEquipmentInfo();

			BeanUtils.copyProperties(wmEquipmentInfoPage, wmEquipmentInfo);
			wmEquipmentInfo.setId(IdWorker.get32UUID());
			wmEquipmentInfo.setEquipmentCode(equipmentCode);
			//生成设备二维码和设备编号
			String path = qrCodeService.equipmentQrCode(wmEquipmentInfo);
			wmEquipmentInfo.setEquipmentQrcode(path);
			List<WmInviteBid> wmInviteBidList = wmEquipmentInfoPage.getWmInviteBidList();
			List<WmEquipmentApprove> wmEquipmentApproveList = wmEquipmentInfoPage.getWmEquipmentApproveList();

			/** 设置下次保养日期，下次计量日期 */
			if (StringUtils.equals(wmEquipmentInfo.getMeasureState(), "1")) {
				if (wmEquipmentInfo.getStartUseTime() != null) {
					Date startUseTime = wmEquipmentInfo.getStartUseTime();
					Date temp = DateUtil.offsetDay(startUseTime,wmEquipmentInfo.getMeasureDay());
					wmEquipmentInfo.setNextMeasureDay(temp);
				}
			}
			if (wmEquipmentInfo.getStartUseTime() != null) {
				Date startUseTime = wmEquipmentInfo.getStartUseTime();
				Date temp = DateUtil.offsetDay(startUseTime,wmEquipmentInfo.getMaintainDay());
				wmEquipmentInfo.setNextMaintainDay(temp);
			}
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
	}

	@Transactional
	@Override
	public void updateUsed(WmEquipmentInfo wmEquipmentInfo) {
		WmEquipmentInfo old = wmEquipmentInfoMapper.selectById(wmEquipmentInfo.getId());
		//历史领用信息
		WmEquipmentUsed used = new WmEquipmentUsed();
		BeanUtils.copyProperties(old,used);
		used.setEquipmentId(old.getId());
		used.setId(IdWorker.getIdStr());
		Date date = new Date();
		used.setUpdateTime(date);
		used.setEndUseTime(date);
		wmEquipmentUsedMapper.insert(used);

		wmEquipmentInfoMapper.updateById(wmEquipmentInfo);
	}
}
