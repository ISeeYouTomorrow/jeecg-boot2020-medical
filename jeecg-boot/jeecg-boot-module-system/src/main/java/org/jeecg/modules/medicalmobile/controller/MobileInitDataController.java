package org.jeecg.modules.medicalmobile.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.SecurityUtils;
import org.jeecg.common.api.vo.Result;
import org.jeecg.common.system.vo.LoginUser;
import org.jeecg.modules.medical.entity.WmAreaSpace;
import org.jeecg.modules.medical.entity.WmManufacturerInfo;
import org.jeecg.modules.medical.service.IWmAreaSpaceService;
import org.jeecg.modules.medical.service.IWmManufacturerInfoService;
import org.jeecg.modules.medicalmobile.vo.MobileInitVO;
import org.jeecg.modules.medicalmobile.vo.SysCommonVO;
import org.jeecg.modules.system.entity.SysDepart;
import org.jeecg.modules.system.entity.SysUser;
import org.jeecg.modules.system.model.SysDepartTreeModel;
import org.jeecg.modules.system.service.ISysDepartService;
import org.jeecg.modules.system.service.ISysUserDepartService;
import org.jeecg.modules.system.service.ISysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

/**
 * app端数据初始化
 * @author lxl
 */
@Slf4j
@RestController
@RequestMapping("/sys/mobile")
public class MobileInitDataController {
    @Autowired
    private ISysDepartService sysDepartService;
    @Autowired
    private IWmAreaSpaceService wmAreaSpaceService;
    @Autowired
    private ISysUserDepartService sysUserDepartService;
    @Autowired
    private ISysUserService sysUserService;
    @Autowired
    private IWmManufacturerInfoService manufacturerInfoService;

    /**
     * 查询数据 查询所有的部门,并以树结构数据格式响应给前端
     *
     * @return
     */
    @RequestMapping(value = "/queryAllDeptTreeList", method = RequestMethod.GET)
    public Result<List<SysDepartTreeModel>> queryAllDeptTreeList() {
        Result<List<SysDepartTreeModel>> result = new Result<>();
        LoginUser user = (LoginUser) SecurityUtils.getSubject().getPrincipal();
        if (user == null) {
            return result;
        }
        List<SysDepartTreeModel> departs = sysDepartService.queryTreeList();
        List<SysCommonVO> departsList = new ArrayList<>(departs.size());
        departs.forEach(it->{
            SysCommonVO vo = new SysCommonVO();
            vo.setId(it.getId());
            vo.setParentId(it.getParentId());
            vo.setValue(it.getDepartName());
            vo.setTitle(it.getTitle());
            departsList.add(vo);
        });
        return result;
    }


    /**
     * 初始化查询数据 包括部门 位置信息
     *
     * @return
     */
    @RequestMapping(value = "/initData", method = RequestMethod.GET)
    public Result<MobileInitVO> initData() {
        Result<MobileInitVO> result = new Result<>();
        LoginUser user = (LoginUser) SecurityUtils.getSubject().getPrincipal();
        if (user == null) {
            log.info("MobileInitDataController.initData.user is null, return null.");
            return result;
        }
        List<SysDepart> sysDeparts = sysDepartService.queryAllDeparts();
        List<SysCommonVO> departsList = new ArrayList<>(sysDeparts.size());
        sysDeparts.forEach(it->{
            SysCommonVO vo = new SysCommonVO();
            vo.setId(it.getId());
            vo.setParentId(it.getParentId());
            vo.setValue(it.getOrgCode());
            vo.setTitle(it.getDepartName());
            departsList.add(vo);
        });

        QueryWrapper<WmAreaSpace> queryWrapper = new QueryWrapper<>();
        queryWrapper.orderByAsc("pid", "sort_number");
        queryWrapper.select("id", "pid", "area_name", "full_name", "qr_code_path");
        List<WmAreaSpace> areaSpaceList = wmAreaSpaceService.list(queryWrapper);
        List<SysCommonVO> areaSpaceList_ = new ArrayList<>();
        areaSpaceList.forEach(it->{
            SysCommonVO vo = new SysCommonVO();
            vo.setId(it.getId());
            vo.setParentId(it.getId());
            vo.setValue(it.getAreaName());
            vo.setTitle(it.getFullName());
            vo.setQrCode(it.getQrCodePath());
            areaSpaceList_.add(vo);
        });

        QueryWrapper<WmManufacturerInfo> qw = new QueryWrapper<>();
        qw.orderByDesc("create_time");
        qw.select("id","union_credit_code", "manufacturer_name", "link_person","leagal_person_phone");
        List<WmManufacturerInfo> mfList = manufacturerInfoService.list(qw);
        List<SysCommonVO> manufacturerList = new ArrayList<>();
        mfList.forEach(it->{
            SysCommonVO vo = new SysCommonVO();
            vo.setId(it.getId());
            vo.setParentId(it.getId());
            vo.setValue(it.getLinkPerson()+" "+(it.getLeagalPersonPhone() == null?"":it.getLeagalPersonPhone()));
            vo.setTitle(it.getManufacturerName());
            vo.setQrCode(it.getUnionCreditCode());
            manufacturerList.add(vo);
        });

        MobileInitVO initVO = new MobileInitVO();
        initVO.setDepartList(departsList);
        initVO.setAreaSpaceList(areaSpaceList_);
        initVO.setManufacturerList(manufacturerList);
        result.setResult(initVO);
        return result;
    }

    /**
     * 查询数据 根据部门id查询用户
     *
     * @return
     */
    @RequestMapping(value = "/queryDeptUser", method = RequestMethod.GET)
    public Result<List<SysCommonVO>> queryDeptUser(@RequestParam(name = "deptId", required = true) String deptId) {
        Result<List<SysCommonVO>> result = new Result<>();
        LoginUser user = (LoginUser) SecurityUtils.getSubject().getPrincipal();
        if (user == null) {
            return result;
        }
        SysDepart sysDepart = sysDepartService.getById(deptId);
        List<SysUser> userList = sysUserDepartService.queryUserByDepCode(sysDepart.getOrgCode());
        List<SysCommonVO> sysUserList = new ArrayList<>(userList.size());
        userList.forEach(it->{
            SysCommonVO vo = new SysCommonVO();
            vo.setId(it.getId());
            vo.setValue(it.getUsername());
            vo.setTitle(it.getRealname());
            sysUserList.add(vo);
        });
        result.setResult(sysUserList);
        return result;
    }
}
