package org.jeecg.modules.medical.service.impl;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.jeecg.modules.medical.entity.WmEquipmentOnloan;
import org.jeecg.modules.medical.mapper.WmEquipmentOnloanMapper;
import org.jeecg.modules.medical.mapper.WmEquipmentOnloanPageMapper;
import org.jeecg.modules.medical.service.IWmEquipmentOnloanService;
import org.jeecg.modules.medical.vo.WmEquipmentOnloanVO;
import org.springframework.stereotype.Service;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Description: 设备借用信息
 * @Author: jeecg-boot
 * @Date:   2020-11-22
 * @Version: V1.0
 */
@Service
public class WmEquipmentOnloanServiceImpl extends ServiceImpl<WmEquipmentOnloanMapper, WmEquipmentOnloan> implements IWmEquipmentOnloanService {
    @Resource
    private WmEquipmentOnloanPageMapper wmEquipmentOnloanPageMapper;

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
}
