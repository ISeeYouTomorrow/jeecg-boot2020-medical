package org.jeecg.modules.medical.service;

import org.jeecg.modules.medical.entity.WmInviteBid;
import com.baomidou.mybatisplus.extension.service.IService;
import java.util.List;

/**
 * @Description: 设备招标信息
 * @Author: jeecg-boot
 * @Date:   2020-11-10
 * @Version: V1.0
 */
public interface IWmInviteBidService extends IService<WmInviteBid> {

	public List<WmInviteBid> selectByMainId(String mainId);
}
