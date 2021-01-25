package org.jeecg.modules.medicalmobile.vo;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * 初始化数据结构
 */
@Data
public class MobileInitVO implements Serializable {

    /**
     * 部门列表
     */
    private List<SysCommonVO> departList;
    /**
     * 区域列表
     */
    private List<SysCommonVO> areaSpaceList;
    /**
     * 厂商列表
     */
    private List<SysCommonVO> manufacturerList;
}
