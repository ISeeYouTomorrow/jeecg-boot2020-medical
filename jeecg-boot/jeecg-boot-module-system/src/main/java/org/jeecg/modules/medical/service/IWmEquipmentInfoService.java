package org.jeecg.modules.medical.service;

import org.jeecg.modules.medical.entity.WmInviteBid;
import org.jeecg.modules.medical.entity.WmEquipmentApprove;
import org.jeecg.modules.medical.entity.WmEquipmentInfo;
import com.baomidou.mybatisplus.extension.service.IService;
import java.io.Serializable;
import java.util.Collection;
import java.util.List;

/**
 * @Description: 设备档案信息
 * @Author: jeecg-boot
 * @Date:   2020-11-10
 * @Version: V1.0
 */
public interface IWmEquipmentInfoService extends IService<WmEquipmentInfo> {

	/**
	 * 添加一对多
	 * 
	 */
	public void saveMain(WmEquipmentInfo wmEquipmentInfo,List<WmInviteBid> wmInviteBidList,List<WmEquipmentApprove> wmEquipmentApproveList) ;
	
	/**
	 * 修改一对多
	 * 
	 */
	public void updateMain(WmEquipmentInfo wmEquipmentInfo,List<WmInviteBid> wmInviteBidList,List<WmEquipmentApprove> wmEquipmentApproveList);
	
	/**
	 * 删除一对多
	 */
	public void delMain (String id);
	
	/**
	 * 批量删除一对多
	 */
	public void delBatchMain (Collection<? extends Serializable> idList);
	
}
