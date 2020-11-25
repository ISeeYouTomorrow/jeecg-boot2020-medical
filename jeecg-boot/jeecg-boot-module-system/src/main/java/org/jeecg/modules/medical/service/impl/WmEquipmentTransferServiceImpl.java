package org.jeecg.modules.medical.service.impl;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.apache.shiro.SecurityUtils;
import org.jeecg.common.system.vo.LoginUser;
import org.jeecg.modules.medical.entity.WmEquipmentInfo;
import org.jeecg.modules.medical.entity.WmEquipmentTransfer;
import org.jeecg.modules.medical.mapper.WmEquipmentInfoMapper;
import org.jeecg.modules.medical.mapper.WmEquipmentTransferMapper;
import org.jeecg.modules.medical.mapper.WmEquipmentTransferPageMapper;
import org.jeecg.modules.medical.service.IWmEquipmentTransferService;
import org.jeecg.modules.medical.vo.WmEquipmentTransferVO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Date;

/**
 * @Description: 设备转科
 * @Author: lxl
 * @Date:   2020-11-23
 * @Version: V1.0
 */
@Service
public class WmEquipmentTransferServiceImpl extends ServiceImpl<WmEquipmentTransferMapper, WmEquipmentTransfer> implements IWmEquipmentTransferService {

    @Resource
    private WmEquipmentTransferPageMapper wmEquipmentTransferPageMapper;
    @Resource
    private WmEquipmentInfoMapper wmEquipmentInfoMapper;
    /**
     * 设备转科信息查询-分页实现
     * @param page 分页
     * @param equipmentName 设备名
     * @param equipmentCode 设备编号
     * @return Page<WmEquipmentTransferVO>
     */
    @Override
    public Page<WmEquipmentTransferVO> queryForPage(Page<WmEquipmentTransferVO> page, String equipmentName, String equipmentCode) {
        return page.setRecords(wmEquipmentTransferPageMapper.selectForPage(page,equipmentName,equipmentCode));
    }

    /**
     * 保存且更新
     * @param wmEquipmentTransfer 转科信息
     */
    @Transactional
    @Override
    public void saveMore(WmEquipmentTransfer wmEquipmentTransfer) {
        WmEquipmentInfo info = new WmEquipmentInfo();
        info.setId(wmEquipmentTransfer.getEquipmentId());
        LoginUser sysUser = (LoginUser) SecurityUtils.getSubject().getPrincipal();
        Date date = new Date();
        info.setUpdateTime(date);
//        if (wmEquipmentTransfer.getOldStartTime() == null) {
//            info.setStartUseTime(date);
//        }

        info.setChargeArea(wmEquipmentTransfer.getTransferArea());
        info.setChargePerson(wmEquipmentTransfer.getTransferPerson());
        info.setUseDept(wmEquipmentTransfer.getTransferDept());
        info.setUpdateBy(sysUser.getUsername());
        baseMapper.insert(wmEquipmentTransfer);
        wmEquipmentInfoMapper.updateByTransfer(info);
    }
}
