package org.jeecg.modules.medicalmobile.vo;

import lombok.Data;

import java.io.Serializable;

/**
 * 通用属性 bean - VO
 * @author lxl
 */
@Data
public class SysCommonVO implements Serializable {
    /**
     * bean id
     */
    private String id;
    /**
     * 父id
     */
    private String parentId;
    /**
     * 真实值 展示的值
     */
    private String title;
    /**
     * 其它信息
     */
    private String value;

    /**
     * 二维码
     */
    private String qrCode;
}
