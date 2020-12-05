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
import org.jeecg.modules.medical.entity.WmEquipmentExamine;
import org.jeecg.modules.medical.service.IWmEquipmentExamineService;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import lombok.extern.slf4j.Slf4j;

import org.jeecg.modules.medical.vo.WmEquipmentExamineVO;
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
 * @Description: 设备巡检计划
 * @Author: lxl
 * @Date:   2020-12-03
 * @Version: V1.0
 */
@Api(tags="设备巡检计划")
@RestController
@RequestMapping("/medical/wmEquipmentExamine")
@Slf4j
public class WmEquipmentExamineController extends JeecgController<WmEquipmentExamine, IWmEquipmentExamineService> {
	@Autowired
	private IWmEquipmentExamineService wmEquipmentExamineService;

	/**
	 * 分页列表查询
	 *
	 * @param wmEquipmentExamine
	 * @param pageNo
	 * @param pageSize
	 * @param req
	 * @return
	 */
	@AutoLog(value = "设备巡检计划-分页列表查询")
	@ApiOperation(value="设备巡检计划-分页列表查询", notes="设备巡检计划-分页列表查询")
	@GetMapping(value = "/list")
	public Result<?> queryPageList(WmEquipmentExamineVO wmEquipmentExamine,
								   @RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
								   @RequestParam(name="pageSize", defaultValue="10") Integer pageSize,
								   HttpServletRequest req) {
//		QueryWrapper<WmEquipmentExamine> queryWrapper = QueryGenerator.initQueryWrapper(wmEquipmentExamine, req.getParameterMap());
		Page<WmEquipmentExamineVO> page = new Page<>(pageNo, pageSize);
		IPage<WmEquipmentExamineVO> pageList = wmEquipmentExamineService.queryForSelfPage(page, wmEquipmentExamine);
		return Result.ok(pageList);
	}

	/**
	 *   添加
	 *
	 * @param wmEquipmentExamine
	 * @return
	 */
	@AutoLog(value = "设备巡检计划-添加")
	@ApiOperation(value="设备巡检计划-添加", notes="设备巡检计划-添加")
	@PostMapping(value = "/add")
	public Result<?> add(@RequestBody WmEquipmentExamine wmEquipmentExamine) {
		wmEquipmentExamineService.save(wmEquipmentExamine);
		return Result.ok("添加成功！");
	}

	/**
	 *  编辑
	 *
	 * @param wmEquipmentExamine
	 * @return
	 */
	@AutoLog(value = "设备巡检计划-编辑")
	@ApiOperation(value="设备巡检计划-编辑", notes="设备巡检计划-编辑")
	@PutMapping(value = "/edit")
	public Result<?> edit(@RequestBody WmEquipmentExamine wmEquipmentExamine) {
		wmEquipmentExamineService.updateById(wmEquipmentExamine);
		return Result.ok("编辑成功!");
	}

	/**
	 *   通过id删除
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "设备巡检计划-通过id删除")
	@ApiOperation(value="设备巡检计划-通过id删除", notes="设备巡检计划-通过id删除")
	@DeleteMapping(value = "/delete")
	public Result<?> delete(@RequestParam(name="id",required=true) String id) {
		wmEquipmentExamineService.removeById(id);
		return Result.ok("删除成功!");
	}

	/**
	 *  批量删除
	 *
	 * @param ids
	 * @return
	 */
	@AutoLog(value = "设备巡检计划-批量删除")
	@ApiOperation(value="设备巡检计划-批量删除", notes="设备巡检计划-批量删除")
	@DeleteMapping(value = "/deleteBatch")
	public Result<?> deleteBatch(@RequestParam(name="ids",required=true) String ids) {
		this.wmEquipmentExamineService.removeByIds(Arrays.asList(ids.split(",")));
		return Result.ok("批量删除成功!");
	}

	/**
	 * 通过id查询
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "设备巡检计划-通过id查询")
	@ApiOperation(value="设备巡检计划-通过id查询", notes="设备巡检计划-通过id查询")
	@GetMapping(value = "/queryById")
	public Result<?> queryById(@RequestParam(name="id",required=true) String id) {
		WmEquipmentExamine wmEquipmentExamine = wmEquipmentExamineService.getById(id);
		if(wmEquipmentExamine==null) {
			return Result.error("未找到对应数据");
		}
		return Result.ok(wmEquipmentExamine);
	}

    /**
    * 导出excel
    *
    * @param request
    * @param wmEquipmentExamine
    */
    @RequestMapping(value = "/exportXls")
    public ModelAndView exportXls(HttpServletRequest request, WmEquipmentExamine wmEquipmentExamine) {
        return super.exportXls(request, wmEquipmentExamine, WmEquipmentExamine.class, "设备巡检计划");
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
        return super.importExcel(request, response, WmEquipmentExamine.class);
    }

}
