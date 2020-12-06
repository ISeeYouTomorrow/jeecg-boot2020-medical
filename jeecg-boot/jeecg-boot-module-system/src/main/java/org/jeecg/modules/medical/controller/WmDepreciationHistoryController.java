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
import org.jeecg.modules.medical.entity.WmDepreciationHistory;
import org.jeecg.modules.medical.service.IWmDepreciationHistoryService;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import lombok.extern.slf4j.Slf4j;

import org.jeecg.modules.medical.vo.WmEquipmentInfoPage;
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
 * @Description: 设备折旧记录
 * @Author: lxl
 * @Date:   2020-12-06
 * @Version: V1.0
 */
@Api(tags="设备折旧记录")
@RestController
@RequestMapping("/medical/wmDepreciationHistory")
@Slf4j
public class WmDepreciationHistoryController extends JeecgController<WmDepreciationHistory, IWmDepreciationHistoryService> {
	@Autowired
	private IWmDepreciationHistoryService wmDepreciationHistoryService;

	/**
	 * 分页列表查询
	 *
	 * @param history
	 * @param pageNo
	 * @param pageSize
	 * @param req
	 * @return
	 */
	@AutoLog(value = "设备折旧记录-分页列表查询")
	@ApiOperation(value="设备折旧记录-分页列表查询", notes="设备折旧记录-分页列表查询")
	@GetMapping(value = "/equipmentList")
	public Result<?> queryEquipmentPageList(WmEquipmentInfoPage history,
											@RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
											@RequestParam(name="pageSize", defaultValue="10") Integer pageSize,
											HttpServletRequest req) {
//		QueryWrapper<WmDepreciationHistory> queryWrapper = QueryGenerator.initQueryWrapper(wmDepreciationHistory, req.getParameterMap());
		Page<WmEquipmentInfoPage> page = new Page<>(pageNo, pageSize);
		IPage<WmEquipmentInfoPage> pageList = wmDepreciationHistoryService.queryForPage(page, history);
		return Result.ok(pageList);
	}

	 /**
	  * 分页列表查询
	  *
	  * @param wmDepreciationHistory
	  * @param pageNo
	  * @param pageSize
	  * @param req
	  * @return
	  */
	 @AutoLog(value = "设备折旧记录-分页列表查询")
	 @ApiOperation(value="设备折旧记录-分页列表查询", notes="设备折旧记录-分页列表查询")
	 @GetMapping(value = "/list")
	 public Result<?> queryPageList(WmDepreciationHistory wmDepreciationHistory,
									@RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
									@RequestParam(name="pageSize", defaultValue="10") Integer pageSize,
									HttpServletRequest req) {
		 QueryWrapper<WmDepreciationHistory> queryWrapper = QueryGenerator.initQueryWrapper(wmDepreciationHistory, req.getParameterMap());
		 Page<WmDepreciationHistory> page = new Page<WmDepreciationHistory>(pageNo, pageSize);
		 IPage<WmDepreciationHistory> pageList = wmDepreciationHistoryService.page(page, queryWrapper);
		 return Result.ok(pageList);
	 }

	/**
	 *   添加
	 *
	 * @param wmDepreciationHistory
	 * @return
	 */
	@AutoLog(value = "设备折旧记录-添加")
	@ApiOperation(value="设备折旧记录-添加", notes="设备折旧记录-添加")
	@PostMapping(value = "/add")
	public Result<?> add(@RequestBody WmDepreciationHistory wmDepreciationHistory) {
		wmDepreciationHistoryService.save(wmDepreciationHistory);
		return Result.ok("添加成功！");
	}

	/**
	 *  编辑
	 *
	 * @param wmDepreciationHistory
	 * @return
	 */
	@AutoLog(value = "设备折旧记录-编辑")
	@ApiOperation(value="设备折旧记录-编辑", notes="设备折旧记录-编辑")
	@PutMapping(value = "/edit")
	public Result<?> edit(@RequestBody WmDepreciationHistory wmDepreciationHistory) {
		wmDepreciationHistoryService.updateById(wmDepreciationHistory);
		return Result.ok("编辑成功!");
	}

	/**
	 *   通过id删除
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "设备折旧记录-通过id删除")
	@ApiOperation(value="设备折旧记录-通过id删除", notes="设备折旧记录-通过id删除")
	@DeleteMapping(value = "/delete")
	public Result<?> delete(@RequestParam(name="id",required=true) String id) {
		wmDepreciationHistoryService.removeById(id);
		return Result.ok("删除成功!");
	}

	/**
	 *  批量删除
	 *
	 * @param ids
	 * @return
	 */
	@AutoLog(value = "设备折旧记录-批量删除")
	@ApiOperation(value="设备折旧记录-批量删除", notes="设备折旧记录-批量删除")
	@DeleteMapping(value = "/deleteBatch")
	public Result<?> deleteBatch(@RequestParam(name="ids",required=true) String ids) {
		this.wmDepreciationHistoryService.removeByIds(Arrays.asList(ids.split(",")));
		return Result.ok("批量删除成功!");
	}

	/**
	 * 通过id查询
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "设备折旧记录-通过id查询")
	@ApiOperation(value="设备折旧记录-通过id查询", notes="设备折旧记录-通过id查询")
	@GetMapping(value = "/queryById")
	public Result<?> queryById(@RequestParam(name="id",required=true) String id) {
		WmDepreciationHistory wmDepreciationHistory = wmDepreciationHistoryService.getById(id);
		if(wmDepreciationHistory==null) {
			return Result.error("未找到对应数据");
		}
		return Result.ok(wmDepreciationHistory);
	}

    /**
    * 导出excel
    *
    * @param request
    * @param wmDepreciationHistory
    */
    @RequestMapping(value = "/exportXls")
    public ModelAndView exportXls(HttpServletRequest request, WmDepreciationHistory wmDepreciationHistory) {
        return super.exportXls(request, wmDepreciationHistory, WmDepreciationHistory.class, "设备折旧记录");
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
        return super.importExcel(request, response, WmDepreciationHistory.class);
    }

}
