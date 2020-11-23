package org.jeecg.modules.medical.mapper;

import java.util.List;
import org.jeecg.modules.medical.entity.WmInviteBid;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

/**
 * @Description: 设备招标信息
 * @Author: lxl
 * @Date:   2020-11-10
 * @Version: V1.0
 */
public interface WmInviteBidMapper extends BaseMapper<WmInviteBid> {

	boolean deleteByMainId(@Param("mainId") String mainId);
    
	List<WmInviteBid> selectByMainId(@Param("mainId") String mainId);
}
