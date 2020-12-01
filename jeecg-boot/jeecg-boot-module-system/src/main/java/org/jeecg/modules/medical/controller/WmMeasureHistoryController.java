package org.jeecg.modules.medical.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.jeecg.common.api.vo.Result;
import org.jeecg.common.aspect.annotation.AutoLog;
import org.jeecg.common.system.base.controller.JeecgController;
import org.jeecg.common.system.query.QueryGenerator;
import org.jeecg.common.system.vo.LoginUser;
import org.jeecg.modules.medical.dto.WmMeasureHistoryDTO;
import org.jeecg.modules.medical.entity.WmMeasureHistory;
import org.jeecg.modules.medical.service.IWmMeasureHistoryService;
import org.jeecg.modules.medical.vo.WmMeasureHistoryVO;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Arrays;
import java.util.Date;

/**
* @Description: 设备计量记录
* @Author: lxl
* @Date:   2020-11-29
* @Version: V1.0
*/
@Api(tags="设备计量记录")
@RestController
@RequestMapping("/medical/wmMeasureHistory")
@Slf4j
public class WmMeasureHistoryController extends JeecgController<WmMeasureHistory, IWmMeasureHistoryService> {
   @Resource
   private IWmMeasureHistoryService WmMeasureHistoryService;

   /**
    * 分页列表查询
    *
    * @param WmMeasureHistory 参数
    * @param pageNo number
    * @param pageSize size
    * @param req req
    * @return Result
    */
   @AutoLog(value = "设备计量记录-分页列表查询")
   @ApiOperation(value="设备计量记录-分页列表查询", notes="设备计量记录-分页列表查询")
   @GetMapping(value = "/list")
   public Result<?> queryPageList(WmMeasureHistory WmMeasureHistory,
                                  @RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
                                  @RequestParam(name="pageSize", defaultValue="10") Integer pageSize,
                                  HttpServletRequest req) {
       QueryWrapper<WmMeasureHistory> queryWrapper = QueryGenerator.initQueryWrapper(WmMeasureHistory, req.getParameterMap());
       Page<WmMeasureHistory> page = new Page<>(pageNo, pageSize);
       IPage<WmMeasureHistory> pageList = WmMeasureHistoryService.page(page, queryWrapper);
       return Result.ok(pageList);
   }

    /**
     * 分页列表查询
     *
     * @param WmMeasureHistory 参数
     * @param pageNo number
     * @param pageSize size
     * @return Result
     */
    @AutoLog(value = "设备计量记录-分页列表查询")
    @ApiOperation(value="设备计量记录-分页列表查询", notes="设备计量记录-分页列表查询")
    @GetMapping(value = "/selfList")
    public Result<?> querySelfPageList(WmMeasureHistoryVO WmMeasureHistory,
                                       @RequestParam(name="cycleDay", defaultValue="30") Integer cycleDay,
                                       @RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
                                       @RequestParam(name="pageSize", defaultValue="10") Integer pageSize
                                       ) {
//		 QueryWrapper<WmMeasureHistoryVO> queryWrapper = QueryGenerator.initQueryWrapper(WmMeasureHistory, req.getParameterMap());
        Page<WmMeasureHistoryVO> page = new Page<>(pageNo, pageSize);
        IPage<WmMeasureHistoryVO> pageList = WmMeasureHistoryService.selfPage(page,WmMeasureHistory,cycleDay);
        return Result.ok(pageList);
    }

    /**
     * 分页列表查询 设备计量历史记录
     *
     * @param WmMeasureHistory 参数
     * @param pageNo number
     * @param pageSize size
     * @return Result
     */
    @AutoLog(value = "设备计量记录-分页列表查询")
    @ApiOperation(value="设备计量记录-分页列表查询", notes="设备计量记录-分页列表查询")
    @GetMapping(value = "/workList")
    public Result<?> queryForWorkPageList(WmMeasureHistoryVO WmMeasureHistory,
                                       @RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
                                       @RequestParam(name="pageSize", defaultValue="10") Integer pageSize
                                       ) {
//		 QueryWrapper<WmMeasureHistoryVO> queryWrapper = QueryGenerator.initQueryWrapper(WmMeasureHistory, req.getParameterMap());
        Page<WmMeasureHistoryVO> page = new Page<>(pageNo, pageSize);
        IPage<WmMeasureHistoryVO> pageList = WmMeasureHistoryService.queryForWorkPage(page,WmMeasureHistory);
        return Result.ok(pageList);
    }

    /**
     * 分页列表查询 设备已计量待验收、已验收列表
     *
     * @param WmMeasureHistory 参数
     * @param pageNo number
     * @param pageSize size
     * @return Result
     */
    @AutoLog(value = "设备计量记录-设备已计量待验收、已验收列表")
    @ApiOperation(value="设备计量记录-设备已计量待验收、已验收列表", notes="设备计量记录-设备已计量待验收、已验收列表")
    @GetMapping(value = "/checkList")
    public Result<?> queryForCheckPageList(WmMeasureHistoryVO WmMeasureHistory,
                                          @RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
                                          @RequestParam(name="pageSize", defaultValue="10") Integer pageSize
                                          ) {
//		 QueryWrapper<WmMeasureHistoryVO> queryWrapper = QueryGenerator.initQueryWrapper(WmMeasureHistory, req.getParameterMap());
        Page<WmMeasureHistoryVO> page = new Page<>(pageNo, pageSize);
        IPage<WmMeasureHistoryVO> pageList = WmMeasureHistoryService.queryForCheckPage(page,WmMeasureHistory);
        return Result.ok(pageList);
    }

   /**
    *   添加
    *
    * @param WmMeasureHistory 参数
    * @return Result
    */
   @AutoLog(value = "设备计量记录-添加")
   @ApiOperation(value="设备计量记录-添加", notes="设备计量记录-添加")
   @PostMapping(value = "/add")
   public Result<?> add(@RequestBody WmMeasureHistory WmMeasureHistory) {
       WmMeasureHistoryService.save(WmMeasureHistory);
       return Result.ok("添加成功！");
   }

    /**
     *   添加一批计量设备到计划
     *
     * @param WmMeasureHistory 参数
     * @return Result
     */
    @AutoLog(value = "添加一批计量设备到计划")
    @ApiOperation(value="添加一批计量设备到计划", notes="添加一批计量设备到计划")
    @PostMapping(value = "/addPlan")
    public Result<?> addPlan(@RequestBody WmMeasureHistoryDTO WmMeasureHistory) {
        WmMeasureHistoryService.saveList(WmMeasureHistory);
        return Result.ok("添加成功！");
    }


   /**
    *  编辑
    *
    * @param WmMeasureHistory 参数
    * @return Result
    */
   @AutoLog(value = "设备计量记录-编辑")
   @ApiOperation(value="设备计量记录-编辑", notes="设备计量记录-编辑")
   @PutMapping(value = "/edit")
   public Result<?> edit(@RequestBody WmMeasureHistory WmMeasureHistory) {
       if (StringUtils.equals(WmMeasureHistory.getMeasureResult(), "0")) {
           WmMeasureHistory.setMeasureStatus("1");
       }
       if (StringUtils.equals(WmMeasureHistory.getMeasureResult(), "1")) {
           //设置计量时间
           WmMeasureHistory.setMeasureTime(new Date());
           WmMeasureHistory.setMeasureStatus("2");
       }
       //已验收
       if (StringUtils.equals(WmMeasureHistory.getMeasureCheck(), "1")) {
           WmMeasureHistory.setMeasureStatus("3");
       }
       WmMeasureHistory.setUpdateTime(new Date());
       LoginUser sysUser = (LoginUser) SecurityUtils.getSubject().getPrincipal();
       WmMeasureHistory.setUpdateBy(sysUser.getUsername());
       WmMeasureHistoryService.updateById(WmMeasureHistory);
       return Result.ok("编辑成功!");
   }

    /**
     *  编辑
     *
     * @param WmMeasureHistory 参数
     * @return Result
     */
    @AutoLog(value = "设备计量记录-编辑")
    @ApiOperation(value="设备计量记录-编辑", notes="设备计量记录-编辑")
    @PutMapping(value = "/checkHistory")
    public Result<?> checkHistory(@RequestBody WmMeasureHistory WmMeasureHistory) {
        //已验收
        if (StringUtils.equals(WmMeasureHistory.getMeasureCheck(), "1")) {
            WmMeasureHistory.setMeasureStatus("3");
        }
        WmMeasureHistory.setUpdateTime(new Date());
        LoginUser sysUser = (LoginUser) SecurityUtils.getSubject().getPrincipal();
        WmMeasureHistory.setUpdateBy(sysUser.getUsername());
        WmMeasureHistoryService.updateById(WmMeasureHistory);
        return Result.ok("编辑成功!");
    }

   /**
    *   通过id删除
    *
    * @param id id
    * @return Result
    */
   @AutoLog(value = "设备计量记录-通过id删除")
   @ApiOperation(value="设备计量记录-通过id删除", notes="设备计量记录-通过id删除")
   @DeleteMapping(value = "/delete")
   public Result<?> delete(@RequestParam(name="id") String id) {
       WmMeasureHistoryService.removeById(id);
       return Result.ok("删除成功!");
   }

   /**
    *  批量删除
    *
    * @param ids ids
    * @return result
    */
   @AutoLog(value = "设备计量记录-批量删除")
   @ApiOperation(value="设备计量记录-批量删除", notes="设备计量记录-批量删除")
   @DeleteMapping(value = "/deleteBatch")
   public Result<?> deleteBatch(@RequestParam(name="ids") String ids) {
       this.WmMeasureHistoryService.removeByIds(Arrays.asList(ids.split(",")));
       return Result.ok("批量删除成功!");
   }

   /**
    * 通过id查询
    *
    * @param id 主键
    * @return Result
    */
   @AutoLog(value = "设备计量记录-通过id查询")
   @ApiOperation(value="设备计量记录-通过id查询", notes="设备计量记录-通过id查询")
   @GetMapping(value = "/queryById")
   public Result<?> queryById(@RequestParam(name="id") String id) {
       WmMeasureHistory WmMeasureHistory = WmMeasureHistoryService.getById(id);
       if(WmMeasureHistory==null) {
           return Result.error("未找到对应数据");
       }
       return Result.ok(WmMeasureHistory);
   }
   /**
    * 获取设备上次的计量信息
    *
    * @param equipmentId 设备id
    * @return Result
    */
   @AutoLog(value = "设备计量记录-获取设备上次的计量信息")
   @ApiOperation(value="设备计量记录-获取设备上次的计量信息", notes="设备计量记录-获取设备上次的计量信息")
   @GetMapping(value = "/getLastMeasureInfo")
   public Result<?> getLastMeasureInfo(@RequestParam(name="equipmentId") String equipmentId) {
       WmMeasureHistory WmMeasureHistory = WmMeasureHistoryService.queryLastMeasureInfo(equipmentId);
       if(WmMeasureHistory==null) {
           return Result.error("未找到对应数据");
       }
       return Result.ok(WmMeasureHistory);
   }

   /**
   * 导出excel
   *
   * @param request re
   * @param WmMeasureHistory 参数
   */
   @RequestMapping(value = "/exportXls")
   public ModelAndView exportXls(HttpServletRequest request, WmMeasureHistory WmMeasureHistory) {
       return super.exportXls(request, WmMeasureHistory, WmMeasureHistory.class, "设备计量记录");
   }

   /**
     * 通过excel导入数据
   *
   * @param request rs
   * @param response rp
   * @return result
   */
   @RequestMapping(value = "/importExcel", method = RequestMethod.POST)
   public Result<?> importExcel(HttpServletRequest request, HttpServletResponse response) {
       return super.importExcel(request, response, WmMeasureHistory.class);
   }

}
