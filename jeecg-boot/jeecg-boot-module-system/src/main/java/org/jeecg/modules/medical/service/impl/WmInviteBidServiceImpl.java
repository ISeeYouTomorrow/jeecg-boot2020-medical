package org.jeecg.modules.medical.service.impl;

import org.jeecg.modules.medical.entity.WmInviteBid;
import org.jeecg.modules.medical.mapper.WmInviteBidMapper;
import org.jeecg.modules.medical.service.IWmInviteBidService;
import org.springframework.stereotype.Service;
import java.util.List;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * @Description: 设备招标信息
 * @Author: lxl
 * @Date:   2020-11-10
 * @Version: V1.0
 */
@Service
public class WmInviteBidServiceImpl extends ServiceImpl<WmInviteBidMapper, WmInviteBid> implements IWmInviteBidService {
	
	@Autowired
	private WmInviteBidMapper wmInviteBidMapper;
	
	@Override
	public List<WmInviteBid> selectByMainId(String mainId) {
		return wmInviteBidMapper.selectByMainId(mainId);
	}
}
