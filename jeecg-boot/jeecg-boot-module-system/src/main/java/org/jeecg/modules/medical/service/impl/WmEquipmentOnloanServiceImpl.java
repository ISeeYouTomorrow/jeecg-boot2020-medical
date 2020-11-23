package org.jeecg.modules.medical.service.impl;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.shiro.SecurityUtils;
import org.jeecg.common.system.vo.LoginUser;
import org.jeecg.modules.medical.entity.WmEquipmentInfo;
import org.jeecg.modules.medical.entity.WmEquipmentOnloan;
import org.jeecg.modules.medical.mapper.WmEquipmentInfoMapper;
import org.jeecg.modules.medical.mapper.WmEquipmentOnloanMapper;
import org.jeecg.modules.medical.mapper.WmEquipmentOnloanPageMapper;
import org.jeecg.modules.medical.service.IWmEquipmentOnloanService;
import org.jeecg.modules.medical.util.EquipmentStatusEnum;
import org.jeecg.modules.medical.vo.WmEquipmentOnloanVO;
import org.springframework.stereotype.Service;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * @Description: 设备借用信息
 * @Author: lxl
 * @Date:   2020-11-22
 * @Version: V1.0
 */
@Service
public class WmEquipmentOnloanServiceImpl extends ServiceImpl<WmEquipmentOnloanMapper, WmEquipmentOnloan> implements IWmEquipmentOnloanService {
    @Resource
    private WmEquipmentOnloanPageMapper wmEquipmentOnloanPageMapper;
    @Resource
    private WmEquipmentInfoMapper wmEquipmentInfoMapper;

    /**
     * 设备借用信息查询-分页实现
     * @param page
     * @param equipmentName
     * @param equipmentCode
     * @param onloanPerson
     * @return Page<WmEquipmentOnloanVO>
     */
    @Override
    public Page<WmEquipmentOnloanVO> queryForPage(Page<WmEquipmentOnloanVO> page, String equipmentName, String equipmentCode, String onloanPerson) {
        return page.setRecords(wmEquipmentOnloanPageMapper.queryForPage(page,equipmentName,equipmentCode,onloanPerson));
    }

    /**
     * 设备领用记录，修改设备状态为领用
     * @param wmEquipmentOnloan 借用信息
     */
    @Transactional
    @Override
    public void saveAndUpdateEquipment(WmEquipmentOnloan wmEquipmentOnloan) {
        String equipmentId = wmEquipmentOnloan.getEquipmentId();
        WmEquipmentInfo old = wmEquipmentInfoMapper.selectById(equipmentId);
        old.setEquipmentStatus(EquipmentStatusEnum.STATUS_ENUM2.getCode());
        LoginUser sysUser = (LoginUser) SecurityUtils.getSubject().getPrincipal();
        old.setUpdateBy(sysUser.getUsername());
        old.setUpdateTime(new Date());
        wmEquipmentInfoMapper.updateById(old);
        baseMapper.insert(wmEquipmentOnloan);
    }
}
