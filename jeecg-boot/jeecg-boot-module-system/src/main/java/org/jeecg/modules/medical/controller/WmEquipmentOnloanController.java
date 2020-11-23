package org.jeecg.modules.medical.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.jeecg.common.api.vo.Result;
import org.jeecg.common.aspect.annotation.AutoLog;
import org.jeecg.common.system.base.controller.JeecgController;
import org.jeecg.common.system.query.QueryGenerator;
import org.jeecg.modules.medical.entity.WmEquipmentOnloan;
import org.jeecg.modules.medical.service.IWmEquipmentOnloanService;
import org.jeecg.modules.medical.vo.WmEquipmentOnloanVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Arrays;
import java.util.Date;

/**
 * @Description: 设备借用信息
 * @Author: lxl
 * @Date: 2020-11-22
 * @Version: V1.0
 */
@Api(tags = "设备借用信息")
@RestController
@RequestMapping("/medical/wmEquipmentOnloan")
@Slf4j
public class WmEquipmentOnloanController extends JeecgController<WmEquipmentOnloan, IWmEquipmentOnloanService> {
    @Autowired
    private IWmEquipmentOnloanService wmEquipmentOnloanService;

    /**
     * 分页列表查询
     *
     * @param wmEquipmentOnloan
     * @param pageNo
     * @param pageSize
     * @param req
     * @return
     */
    @AutoLog(value = "设备借用信息-分页列表查询")
    @ApiOperation(value = "设备借用信息-分页列表查询", notes = "设备借用信息-分页列表查询")
    @GetMapping(value = "/list")
    public Result<?> queryPageList(WmEquipmentOnloan wmEquipmentOnloan,
                                   @RequestParam(name = "pageNo", defaultValue = "1") Integer pageNo,
                                   @RequestParam(name = "pageSize", defaultValue = "10") Integer pageSize,
                                   HttpServletRequest req) {
        QueryWrapper<WmEquipmentOnloan> queryWrapper = QueryGenerator.initQueryWrapper(wmEquipmentOnloan, req.getParameterMap());
        Page<WmEquipmentOnloan> page = new Page<WmEquipmentOnloan>(pageNo, pageSize);
        IPage<WmEquipmentOnloan> pageList = wmEquipmentOnloanService.page(page, queryWrapper);
        return Result.ok(pageList);
    }


    @AutoLog(value = "设备借用信息-分页列表查询")
    @ApiOperation(value = "设备借用信息-分页列表查询", notes = "设备借用信息-分页列表查询")
    @GetMapping(value = "/querySelfPageList")
    public Result<?> querySelfPageList(WmEquipmentOnloanVO wmEquipmentOnloan,
                                       @RequestParam(name = "pageNo", defaultValue = "1") Integer pageNo,
                                       @RequestParam(name = "pageSize", defaultValue = "10") Integer pageSize,
                                       HttpServletRequest req) {
        String equipmentName = wmEquipmentOnloan.getEquipmentName();
        String equipmentCode = wmEquipmentOnloan.getEquipmentCode();
        String onloanPerson = wmEquipmentOnloan.getOnloanPerson();
        Page<WmEquipmentOnloanVO> page = new Page<>(pageNo, pageSize);
        IPage<WmEquipmentOnloanVO> pageList = wmEquipmentOnloanService.queryForPage(page, equipmentName, equipmentCode, onloanPerson);
        return Result.ok(pageList);
    }

    /**
     * 添加
     *
     * @param wmEquipmentOnloan
     * @return
     */
    @AutoLog(value = "设备借用信息-添加")
    @ApiOperation(value = "设备借用信息-添加", notes = "设备借用信息-添加")
    @PostMapping(value = "/add")
    public Result<?> add(@RequestBody WmEquipmentOnloan wmEquipmentOnloan) {
        wmEquipmentOnloanService.saveAndUpdateEquipment(wmEquipmentOnloan);
        return Result.ok("添加成功！");
    }

    /**
     * 编辑
     *
     * @param wmEquipmentOnloan
     * @return
     */
    @AutoLog(value = "设备借用信息-编辑")
    @ApiOperation(value = "设备借用信息-编辑", notes = "设备借用信息-编辑")
    @PutMapping(value = "/edit")
    public Result<?> edit(@RequestBody WmEquipmentOnloan wmEquipmentOnloan) {
        wmEquipmentOnloanService.updateById(wmEquipmentOnloan);
        return Result.ok("编辑成功!");
    }

    /**
     * 通过id删除
     *
     * @param id
     * @return
     */
    @AutoLog(value = "设备借用信息-通过id删除")
    @ApiOperation(value = "设备借用信息-通过id删除", notes = "设备借用信息-通过id删除")
    @DeleteMapping(value = "/delete")
    public Result<?> delete(@RequestParam(name = "id", required = true) String id) {
        wmEquipmentOnloanService.removeById(id);
        return Result.ok("删除成功!");
    }

    /**
     * 批量删除
     *
     * @param ids
     * @return
     */
    @AutoLog(value = "设备借用信息-批量删除")
    @ApiOperation(value = "设备借用信息-批量删除", notes = "设备借用信息-批量删除")
    @DeleteMapping(value = "/deleteBatch")
    public Result<?> deleteBatch(@RequestParam(name = "ids", required = true) String ids) {
        this.wmEquipmentOnloanService.removeByIds(Arrays.asList(ids.split(",")));
        return Result.ok("批量删除成功!");
    }

    /**
     * 通过id查询
     *
     * @param id
     * @return
     */
    @AutoLog(value = "设备借用信息-通过id查询")
    @ApiOperation(value = "设备借用信息-通过id查询", notes = "设备借用信息-通过id查询")
    @GetMapping(value = "/queryById")
    public Result<?> queryById(@RequestParam(name = "id", required = true) String id) {
        WmEquipmentOnloan wmEquipmentOnloan = wmEquipmentOnloanService.getById(id);
        if (wmEquipmentOnloan == null) {
            return Result.error("未找到对应数据");
        }
        return Result.ok(wmEquipmentOnloan);
    }

    /**
     * 导出excel
     *
     * @param request
     * @param wmEquipmentOnloan
     */
    @RequestMapping(value = "/exportXls")
    public ModelAndView exportXls(HttpServletRequest request, WmEquipmentOnloan wmEquipmentOnloan) {
        return super.exportXls(request, wmEquipmentOnloan, WmEquipmentOnloan.class, "设备借用信息");
    }

    /**
     * 通过excel导入数据
     *
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/importExcel", method = RequestMethod.POST)
    public Result<?> importExcel(HttpServletRequest request, HttpServletResponse response) {
        return super.importExcel(request, response, WmEquipmentOnloan.class);
    }


    @AutoLog(value = "设备借用信息-归还")
    @ApiOperation(value = "设备借用信息-归还", notes = "设备借用信息-归还")
    @PutMapping(value = "/returnBack")
    public Result<?> returnBack(@RequestBody WmEquipmentOnloan wmEquipmentOnloan) {
        wmEquipmentOnloan.setReturnDate(new Date());
        wmEquipmentOnloan.setOnloanStatus(1);
        wmEquipmentOnloanService.updateById(wmEquipmentOnloan);
        return Result.ok("归还成功!");
    }

}
