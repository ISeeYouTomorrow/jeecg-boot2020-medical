package org.jeecg.modules.medical.controller;

import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.jeecg.common.api.vo.Result;
import org.jeecg.common.system.query.QueryGenerator;
import org.jeecg.common.util.oConvertUtils;
import org.jeecg.modules.medical.entity.WmMaintenancePlan;
import org.jeecg.modules.medical.service.IWmMaintenancePlanService;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import lombok.extern.slf4j.Slf4j;

import org.jeecgframework.poi.excel.ExcelImportUtil;
import org.jeecgframework.poi.excel.def.NormalExcelConstants;
import org.jeecgframework.poi.excel.entity.ExportParams;
import org.jeecgframework.poi.excel.entity.ImportParams;
import org.jeecgframework.poi.excel.view.JeecgEntityExcelView;
import org.jeecg.common.system.base.controller.JeecgController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import com.alibaba.fastjson.JSON;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.jeecg.common.aspect.annotation.AutoLog;

 /**
 * @Description: 设备保养计划
 * @Author: lxl
 * @Date:   2020-11-28
 * @Version: V1.0
 */
@Api(tags="设备保养计划")
@RestController
@RequestMapping("/medical/wmMaintenancePlan")
@Slf4j
public class WmMaintenancePlanController extends JeecgController<WmMaintenancePlan, IWmMaintenancePlanService> {
	@Autowired
	private IWmMaintenancePlanService wmMaintenancePlanService;
	
	/**
	 * 分页列表查询
	 *
	 * @param wmMaintenancePlan
	 * @param pageNo
	 * @param pageSize
	 * @param req
	 * @return
	 */
	@AutoLog(value = "设备保养计划-分页列表查询")
	@ApiOperation(value="设备保养计划-分页列表查询", notes="设备保养计划-分页列表查询")
	@GetMapping(value = "/list")
	public Result<?> queryPageList(WmMaintenancePlan wmMaintenancePlan,
								   @RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
								   @RequestParam(name="pageSize", defaultValue="10") Integer pageSize,
								   HttpServletRequest req) {
		QueryWrapper<WmMaintenancePlan> queryWrapper = QueryGenerator.initQueryWrapper(wmMaintenancePlan, req.getParameterMap());
		Page<WmMaintenancePlan> page = new Page<WmMaintenancePlan>(pageNo, pageSize);
		IPage<WmMaintenancePlan> pageList = wmMaintenancePlanService.page(page, queryWrapper);
		return Result.ok(pageList);
	}
	
	/**
	 *   添加
	 *
	 * @param wmMaintenancePlan
	 * @return
	 */
	@AutoLog(value = "设备保养计划-添加")
	@ApiOperation(value="设备保养计划-添加", notes="设备保养计划-添加")
	@PostMapping(value = "/add")
	public Result<?> add(@RequestBody WmMaintenancePlan wmMaintenancePlan) {
		wmMaintenancePlanService.save(wmMaintenancePlan);
		return Result.ok("添加成功！");
	}
	
	/**
	 *  编辑
	 *
	 * @param wmMaintenancePlan
	 * @return
	 */
	@AutoLog(value = "设备保养计划-编辑")
	@ApiOperation(value="设备保养计划-编辑", notes="设备保养计划-编辑")
	@PutMapping(value = "/edit")
	public Result<?> edit(@RequestBody WmMaintenancePlan wmMaintenancePlan) {
		wmMaintenancePlanService.updateById(wmMaintenancePlan);
		return Result.ok("编辑成功!");
	}
	
	/**
	 *   通过id删除
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "设备保养计划-通过id删除")
	@ApiOperation(value="设备保养计划-通过id删除", notes="设备保养计划-通过id删除")
	@DeleteMapping(value = "/delete")
	public Result<?> delete(@RequestParam(name="id",required=true) String id) {
		wmMaintenancePlanService.removeById(id);
		return Result.ok("删除成功!");
	}
	
	/**
	 *  批量删除
	 *
	 * @param ids
	 * @return
	 */
	@AutoLog(value = "设备保养计划-批量删除")
	@ApiOperation(value="设备保养计划-批量删除", notes="设备保养计划-批量删除")
	@DeleteMapping(value = "/deleteBatch")
	public Result<?> deleteBatch(@RequestParam(name="ids",required=true) String ids) {
		this.wmMaintenancePlanService.removeByIds(Arrays.asList(ids.split(",")));
		return Result.ok("批量删除成功!");
	}
	
	/**
	 * 通过id查询
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "设备保养计划-通过id查询")
	@ApiOperation(value="设备保养计划-通过id查询", notes="设备保养计划-通过id查询")
	@GetMapping(value = "/queryById")
	public Result<?> queryById(@RequestParam(name="id",required=true) String id) {
		WmMaintenancePlan wmMaintenancePlan = wmMaintenancePlanService.getById(id);
		if(wmMaintenancePlan==null) {
			return Result.error("未找到对应数据");
		}
		return Result.ok(wmMaintenancePlan);
	}

    /**
    * 导出excel
    *
    * @param request
    * @param wmMaintenancePlan
    */
    @RequestMapping(value = "/exportXls")
    public ModelAndView exportXls(HttpServletRequest request, WmMaintenancePlan wmMaintenancePlan) {
        return super.exportXls(request, wmMaintenancePlan, WmMaintenancePlan.class, "设备保养计划");
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
        return super.importExcel(request, response, WmMaintenancePlan.class);
    }

}
