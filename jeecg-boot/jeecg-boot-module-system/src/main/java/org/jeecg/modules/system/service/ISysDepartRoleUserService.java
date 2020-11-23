package org.jeecg.modules.system.service;

import org.jeecg.modules.system.entity.SysDepartRoleUser;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * @Description: 部门角色人员信息
 * @Author: lxl
 * @Date:   2020-02-13
 * @Version: V1.0
 */
public interface ISysDepartRoleUserService extends IService<SysDepartRoleUser> {

    void deptRoleUserAdd(String userId,String newRoleId,String oldRoleId);
}
