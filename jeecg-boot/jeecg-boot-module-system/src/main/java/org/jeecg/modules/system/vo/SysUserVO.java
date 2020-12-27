package org.jeecg.modules.system.vo;

import lombok.Data;
import org.jeecg.common.aspect.annotation.Dict;

import java.io.Serializable;
import java.util.Date;

/**
 * 用户信息及权限信息
 */
@Data
public class SysUserVO implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * id
     */
    private String id;

    /**
     * 登录账号
     */
    private String username;

    /**
     * 真实姓名
     */
    private String realname;

    /**
     * 头像
     */
    private String avatar;

    /**
     * 生日
     */
    private Date birthday;

    /**
     * 性别（1：男 2：女）
     */
    @Dict(dicCode = "sex")
    private Integer sex;

    /**
     * 负责部门
     */
    private String departIds;
    /**
     * 电话
     */
    private String phone;
    /**
     * 登录认证token
     */
    private String token;
    /**
     * 权限列表
     */
    private String permission;
}
