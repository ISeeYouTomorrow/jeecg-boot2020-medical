package org.jeecg.modules.medical.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.jeecg.common.exception.JeecgBootException;
import org.jeecg.common.util.oConvertUtils;
import org.jeecg.modules.medical.entity.WmAreaSpace;
import org.jeecg.modules.medical.mapper.WmAreaSpaceMapper;
import org.jeecg.modules.medical.service.IWmAreaSpaceService;
import org.jeecg.modules.medical.service.MedicalQrCodeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @Description: 空间数据
 * @Author: jeecg-boot
 * @Date:   2020-11-06
 * @Version: V1.0
 */
@Service
public class WmAreaSpaceServiceImpl extends ServiceImpl<WmAreaSpaceMapper, WmAreaSpace> implements IWmAreaSpaceService {

	@Resource
	private MedicalQrCodeService qrCodeService;


	@Override
	public void addWmAreaSpace(WmAreaSpace wmAreaSpace) {
		if(oConvertUtils.isEmpty(wmAreaSpace.getPid())){
			wmAreaSpace.setPid(IWmAreaSpaceService.ROOT_PID_VALUE);
		}else{
			//如果当前节点父ID不为空 则设置父节点的hasChildren 为1
			WmAreaSpace parent = baseMapper.selectById(wmAreaSpace.getPid());
			if(parent!=null && !"1".equals(parent.getHasChild())){
				parent.setHasChild("1");
				baseMapper.updateById(parent);
			}
		}
		String file = qrCodeService.wmAreaQrCode(wmAreaSpace);
		wmAreaSpace.setQrCodePath(file);
		baseMapper.insert(wmAreaSpace);
	}
	
	@Override
	public void updateWmAreaSpace(WmAreaSpace wmAreaSpace) {
		WmAreaSpace entity = this.getById(wmAreaSpace.getId());
		if(entity==null) {
			throw new JeecgBootException("未找到对应实体");
		}
		String old_pid = entity.getPid();
		String new_pid = wmAreaSpace.getPid();
		if(!old_pid.equals(new_pid)) {
			updateOldParentNode(old_pid);
			if(oConvertUtils.isEmpty(new_pid)){
				wmAreaSpace.setPid(IWmAreaSpaceService.ROOT_PID_VALUE);
			}
			if(!IWmAreaSpaceService.ROOT_PID_VALUE.equals(wmAreaSpace.getPid())) {
				baseMapper.updateTreeNodeStatus(wmAreaSpace.getPid(), IWmAreaSpaceService.HASCHILD);
			}
		}
		String file = qrCodeService.wmAreaQrCode(wmAreaSpace);
		wmAreaSpace.setQrCodePath(file);
		baseMapper.updateById(wmAreaSpace);
	}
	
	@Override
	public void deleteWmAreaSpace(String id) throws JeecgBootException {
		WmAreaSpace wmAreaSpace = this.getById(id);
		if(wmAreaSpace==null) {
			throw new JeecgBootException("未找到对应实体");
		}
		updateOldParentNode(wmAreaSpace.getPid());
		baseMapper.deleteById(id);
	}
	
	
	
	/**
	 * 根据所传pid查询旧的父级节点的子节点并修改相应状态值
	 * @param pid
	 */
	private void updateOldParentNode(String pid) {
		if(!IWmAreaSpaceService.ROOT_PID_VALUE.equals(pid)) {
			Integer count = baseMapper.selectCount(new QueryWrapper<WmAreaSpace>().eq("pid", pid));
			if(count==null || count<=1) {
				baseMapper.updateTreeNodeStatus(pid, IWmAreaSpaceService.NOCHILD);
			}
		}
	}

}
