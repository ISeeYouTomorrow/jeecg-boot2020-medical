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
import org.jeecg.modules.medical.entity.WmMeasurePlan;
import org.jeecg.modules.medical.service.IWmMeasurePlanService;

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
 * @Description: 设备计量计划
 * @Author: lxl
 * @Date:   2020-12-01
 * @Version: V1.0
 */
@Api(tags="设备计量计划")
@RestController
@RequestMapping("/medical/wmMeasurePlan")
@Slf4j
public class WmMeasurePlanController extends JeecgController<WmMeasurePlan, IWmMeasurePlanService> {
	@Autowired
	private IWmMeasurePlanService wmMeasurePlanService;
	
	/**
	 * 分页列表查询
	 *
	 * @param wmMeasurePlan
	 * @param pageNo
	 * @param pageSize
	 * @param req
	 * @return
	 */
	@AutoLog(value = "设备计量计划-分页列表查询")
	@ApiOperation(value="设备计量计划-分页列表查询", notes="设备计量计划-分页列表查询")
	@GetMapping(value = "/list")
	public Result<?> queryPageList(WmMeasurePlan wmMeasurePlan,
								   @RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
								   @RequestParam(name="pageSize", defaultValue="10") Integer pageSize,
								   HttpServletRequest req) {
		QueryWrapper<WmMeasurePlan> queryWrapper = QueryGenerator.initQueryWrapper(wmMeasurePlan, req.getParameterMap());
		Page<WmMeasurePlan> page = new Page<WmMeasurePlan>(pageNo, pageSize);
		IPage<WmMeasurePlan> pageList = wmMeasurePlanService.page(page, queryWrapper);
		return Result.ok(pageList);
	}
	
	/**
	 *   添加
	 *
	 * @param wmMeasurePlan
	 * @return
	 */
	@AutoLog(value = "设备计量计划-添加")
	@ApiOperation(value="设备计量计划-添加", notes="设备计量计划-添加")
	@PostMapping(value = "/add")
	public Result<?> add(@RequestBody WmMeasurePlan wmMeasurePlan) {
		wmMeasurePlanService.save(wmMeasurePlan);
		return Result.ok("添加成功！");
	}
	
	/**
	 *  编辑
	 *
	 * @param wmMeasurePlan
	 * @return
	 */
	@AutoLog(value = "设备计量计划-编辑")
	@ApiOperation(value="设备计量计划-编辑", notes="设备计量计划-编辑")
	@PutMapping(value = "/edit")
	public Result<?> edit(@RequestBody WmMeasurePlan wmMeasurePlan) {
		wmMeasurePlanService.updateById(wmMeasurePlan);
		return Result.ok("编辑成功!");
	}
	
	/**
	 *   通过id删除
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "设备计量计划-通过id删除")
	@ApiOperation(value="设备计量计划-通过id删除", notes="设备计量计划-通过id删除")
	@DeleteMapping(value = "/delete")
	public Result<?> delete(@RequestParam(name="id",required=true) String id) {
		wmMeasurePlanService.removeById(id);
		return Result.ok("删除成功!");
	}
	
	/**
	 *  批量删除
	 *
	 * @param ids
	 * @return
	 */
	@AutoLog(value = "设备计量计划-批量删除")
	@ApiOperation(value="设备计量计划-批量删除", notes="设备计量计划-批量删除")
	@DeleteMapping(value = "/deleteBatch")
	public Result<?> deleteBatch(@RequestParam(name="ids",required=true) String ids) {
		this.wmMeasurePlanService.removeByIds(Arrays.asList(ids.split(",")));
		return Result.ok("批量删除成功!");
	}
	
	/**
	 * 通过id查询
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "设备计量计划-通过id查询")
	@ApiOperation(value="设备计量计划-通过id查询", notes="设备计量计划-通过id查询")
	@GetMapping(value = "/queryById")
	public Result<?> queryById(@RequestParam(name="id",required=true) String id) {
		WmMeasurePlan wmMeasurePlan = wmMeasurePlanService.getById(id);
		if(wmMeasurePlan==null) {
			return Result.error("未找到对应数据");
		}
		return Result.ok(wmMeasurePlan);
	}

    /**
    * 导出excel
    *
    * @param request
    * @param wmMeasurePlan
    */
    @RequestMapping(value = "/exportXls")
    public ModelAndView exportXls(HttpServletRequest request, WmMeasurePlan wmMeasurePlan) {
        return super.exportXls(request, wmMeasurePlan, WmMeasurePlan.class, "设备计量计划");
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
        return super.importExcel(request, response, WmMeasurePlan.class);
    }

}
