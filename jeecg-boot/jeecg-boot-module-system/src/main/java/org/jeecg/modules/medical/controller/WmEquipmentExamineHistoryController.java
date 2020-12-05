package org.jeecg.modules.medical.controller;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.jeecg.common.api.vo.Result;
import org.jeecg.common.system.query.QueryGenerator;
import org.jeecg.common.util.oConvertUtils;
import org.jeecg.modules.medical.entity.WmEquipmentExamine;
import org.jeecg.modules.medical.entity.WmEquipmentExamineHistory;
import org.jeecg.modules.medical.service.IWmEquipmentExamineHistoryService;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import lombok.extern.slf4j.Slf4j;

import org.jeecg.modules.medical.service.IWmEquipmentExamineService;
import org.jeecg.modules.medical.vo.WmExamineHistoryVO;
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
 * @Description: 设备巡检记录
 * @Author: lxl
 * @Date:   2020-12-04
 * @Version: V1.0
 */
@Api(tags="设备巡检记录")
@RestController
@RequestMapping("/medical/wmEquipmentExamineHistory")
@Slf4j
public class WmEquipmentExamineHistoryController extends JeecgController<WmEquipmentExamineHistory, IWmEquipmentExamineHistoryService> {
	@Autowired
	private IWmEquipmentExamineHistoryService wmEquipmentExamineHistoryService;

	@Resource
	private IWmEquipmentExamineService examineService;

	 /**
	  * 自定义分页列表查询
	  *
	  * @param historyVO 参数
	  * @param pageNo
	  * @param pageSize
	  * @param req
	  * @return
	  */
	 @AutoLog(value = "设备巡检记录-分页列表查询")
	 @ApiOperation(value="设备巡检记录-分页列表查询", notes="设备巡检记录-分页列表查询")
	 @GetMapping(value = "/selfList")
	 public Result<?> querySelfPageList(WmExamineHistoryVO historyVO,
										@RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
										@RequestParam(name="pageSize", defaultValue="10") Integer pageSize,
										HttpServletRequest req) {
		 Page<WmExamineHistoryVO> page = new Page<WmExamineHistoryVO>(pageNo, pageSize);
//		 QueryWrapper<WmEquipmentExamineHistory> queryWrapper = QueryGenerator.initQueryWrapper(wmEquipmentExamineHistory, req.getParameterMap());
		 //巡检计划id
		 String examineId = historyVO.getExamineId();
		 if (StringUtils.isEmpty(examineId)) {
		 	log.info("巡检计划ID为空");
		 	page.setRecords(Collections.emptyList());
		 	return Result.ok(page);
		 }

//		 WmEquipmentExamine examine = examineService.getById(examineId);
//		 /** 巡检区域 */
//		 historyVO.setChargeArea(examine.getExamineArea());
//		 /** 科室 */
//		 historyVO.setUseDept(examine.getExamineDept());
//		 /** 设备类型 */
//		 historyVO.setEquipmentType(examine.getEquipmentType());
//		 historyVO.setSysOrgCode(examine.getSysOrgCode());

		 IPage<WmExamineHistoryVO> pageList = wmEquipmentExamineHistoryService.queryForSelfPage(page, historyVO);
		 return Result.ok(pageList);
	 }

	/**
	 * 分页列表查询
	 *
	 * @param wmEquipmentExamineHistory
	 * @param pageNo
	 * @param pageSize
	 * @param req
	 * @return
	 */
	@AutoLog(value = "设备巡检记录-分页列表查询")
	@ApiOperation(value="设备巡检记录-分页列表查询", notes="设备巡检记录-分页列表查询")
	@GetMapping(value = "/list")
	public Result<?> queryPageList(WmEquipmentExamineHistory wmEquipmentExamineHistory,
								   @RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
								   @RequestParam(name="pageSize", defaultValue="10") Integer pageSize,
								   HttpServletRequest req) {
		QueryWrapper<WmEquipmentExamineHistory> queryWrapper = QueryGenerator.initQueryWrapper(wmEquipmentExamineHistory, req.getParameterMap());
		Page<WmEquipmentExamineHistory> page = new Page<WmEquipmentExamineHistory>(pageNo, pageSize);
		IPage<WmEquipmentExamineHistory> pageList = wmEquipmentExamineHistoryService.page(page, queryWrapper);
		return Result.ok(pageList);
	}

	/**
	 *   添加
	 *
	 * @param wmEquipmentExamineHistory
	 * @return
	 */
	@AutoLog(value = "设备巡检记录-添加")
	@ApiOperation(value="设备巡检记录-添加", notes="设备巡检记录-添加")
	@PostMapping(value = "/add")
	public Result<?> add(@RequestBody WmEquipmentExamineHistory wmEquipmentExamineHistory) {
		wmEquipmentExamineHistoryService.save(wmEquipmentExamineHistory);
		return Result.ok("添加成功！");
	}

	/**
	 *  编辑
	 *
	 * @param wmEquipmentExamineHistory
	 * @return
	 */
	@AutoLog(value = "设备巡检记录-编辑")
	@ApiOperation(value="设备巡检记录-编辑", notes="设备巡检记录-编辑")
	@PutMapping(value = "/edit")
	public Result<?> edit(@RequestBody WmEquipmentExamineHistory wmEquipmentExamineHistory) {
		wmEquipmentExamineHistoryService.updateById(wmEquipmentExamineHistory);
		return Result.ok("编辑成功!");
	}

	/**
	 *   通过id删除
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "设备巡检记录-通过id删除")
	@ApiOperation(value="设备巡检记录-通过id删除", notes="设备巡检记录-通过id删除")
	@DeleteMapping(value = "/delete")
	public Result<?> delete(@RequestParam(name="id",required=true) String id) {
		wmEquipmentExamineHistoryService.removeById(id);
		return Result.ok("删除成功!");
	}

	/**
	 *  批量删除
	 *
	 * @param ids
	 * @return
	 */
	@AutoLog(value = "设备巡检记录-批量删除")
	@ApiOperation(value="设备巡检记录-批量删除", notes="设备巡检记录-批量删除")
	@DeleteMapping(value = "/deleteBatch")
	public Result<?> deleteBatch(@RequestParam(name="ids",required=true) String ids) {
		this.wmEquipmentExamineHistoryService.removeByIds(Arrays.asList(ids.split(",")));
		return Result.ok("批量删除成功!");
	}

	/**
	 * 通过id查询
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "设备巡检记录-通过id查询")
	@ApiOperation(value="设备巡检记录-通过id查询", notes="设备巡检记录-通过id查询")
	@GetMapping(value = "/queryById")
	public Result<?> queryById(@RequestParam(name="id",required=true) String id) {
		WmEquipmentExamineHistory wmEquipmentExamineHistory = wmEquipmentExamineHistoryService.getById(id);
		if(wmEquipmentExamineHistory==null) {
			return Result.error("未找到对应数据");
		}
		return Result.ok(wmEquipmentExamineHistory);
	}

    /**
    * 导出excel
    *
    * @param request
    * @param wmEquipmentExamineHistory
    */
    @RequestMapping(value = "/exportXls")
    public ModelAndView exportXls(HttpServletRequest request, WmEquipmentExamineHistory wmEquipmentExamineHistory) {
        return super.exportXls(request, wmEquipmentExamineHistory, WmEquipmentExamineHistory.class, "设备巡检记录");
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
        return super.importExcel(request, response, WmEquipmentExamineHistory.class);
    }

}
