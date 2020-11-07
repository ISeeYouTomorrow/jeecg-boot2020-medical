package org.jeecg.modules.medical.service.impl;

import org.jeecg.common.exception.JeecgBootException;
import org.jeecg.common.util.oConvertUtils;
import org.jeecg.modules.medical.entity.WmEquipmentType;
import org.jeecg.modules.medical.mapper.WmEquipmentTypeMapper;
import org.jeecg.modules.medical.service.IWmEquipmentTypeService;
import org.springframework.stereotype.Service;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

/**
 * @Description: 设备数据
 * @Author: jeecg-boot
 * @Date:   2020-11-07
 * @Version: V1.0
 */
@Service
public class WmEquipmentTypeServiceImpl extends ServiceImpl<WmEquipmentTypeMapper, WmEquipmentType> implements IWmEquipmentTypeService {

	@Override
	public void addWmEquipmentType(WmEquipmentType wmEquipmentType) {
		if(oConvertUtils.isEmpty(wmEquipmentType.getPid())){
			wmEquipmentType.setPid(IWmEquipmentTypeService.ROOT_PID_VALUE);
		}else{
			//如果当前节点父ID不为空 则设置父节点的hasChildren 为1
			WmEquipmentType parent = baseMapper.selectById(wmEquipmentType.getPid());
			if(parent!=null && !"1".equals(parent.getHasChild())){
				parent.setHasChild("1");
				baseMapper.updateById(parent);
			}
		}
		baseMapper.insert(wmEquipmentType);
	}
	
	@Override
	public void updateWmEquipmentType(WmEquipmentType wmEquipmentType) {
		WmEquipmentType entity = this.getById(wmEquipmentType.getId());
		if(entity==null) {
			throw new JeecgBootException("未找到对应实体");
		}
		String old_pid = entity.getPid();
		String new_pid = wmEquipmentType.getPid();
		if(!old_pid.equals(new_pid)) {
			updateOldParentNode(old_pid);
			if(oConvertUtils.isEmpty(new_pid)){
				wmEquipmentType.setPid(IWmEquipmentTypeService.ROOT_PID_VALUE);
			}
			if(!IWmEquipmentTypeService.ROOT_PID_VALUE.equals(wmEquipmentType.getPid())) {
				baseMapper.updateTreeNodeStatus(wmEquipmentType.getPid(), IWmEquipmentTypeService.HASCHILD);
			}
		}
		baseMapper.updateById(wmEquipmentType);
	}
	
	@Override
	public void deleteWmEquipmentType(String id) throws JeecgBootException {
		WmEquipmentType wmEquipmentType = this.getById(id);
		if(wmEquipmentType==null) {
			throw new JeecgBootException("未找到对应实体");
		}
		updateOldParentNode(wmEquipmentType.getPid());
		baseMapper.deleteById(id);
	}
	
	
	
	/**
	 * 根据所传pid查询旧的父级节点的子节点并修改相应状态值
	 * @param pid
	 */
	private void updateOldParentNode(String pid) {
		if(!IWmEquipmentTypeService.ROOT_PID_VALUE.equals(pid)) {
			Integer count = baseMapper.selectCount(new QueryWrapper<WmEquipmentType>().eq("pid", pid));
			if(count==null || count<=1) {
				baseMapper.updateTreeNodeStatus(pid, IWmEquipmentTypeService.NOCHILD);
			}
		}
	}

}
