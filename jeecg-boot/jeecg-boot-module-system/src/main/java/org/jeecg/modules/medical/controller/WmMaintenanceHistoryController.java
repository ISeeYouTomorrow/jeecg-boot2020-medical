package org.jeecg.modules.medical.controller;

import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.jeecg.common.api.vo.Result;
import org.jeecg.common.system.query.QueryGenerator;
import org.jeecg.common.system.vo.LoginUser;
import org.jeecg.common.util.oConvertUtils;
import org.jeecg.modules.medical.dto.WmMaintenanceHistoryDTO;
import org.jeecg.modules.medical.entity.WmMaintenanceHistory;
import org.jeecg.modules.medical.service.IWmMaintenanceHistoryService;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import lombok.extern.slf4j.Slf4j;

import org.jeecg.modules.medical.vo.WmMaintenanceHistoryVO;
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
 * @Description: 设备保养记录
 * @Author: lxl
 * @Date:   2020-11-29
 * @Version: V1.0
 */
@Api(tags="设备保养记录")
@RestController
@RequestMapping("/medical/wmMaintenanceHistory")
@Slf4j
public class WmMaintenanceHistoryController extends JeecgController<WmMaintenanceHistory, IWmMaintenanceHistoryService> {
	@Autowired
	private IWmMaintenanceHistoryService wmMaintenanceHistoryService;

	/**
	 * 分页列表查询
	 *
	 * @param wmMaintenanceHistory
	 * @param pageNo
	 * @param pageSize
	 * @param req
	 * @return
	 */
	@AutoLog(value = "设备保养记录-分页列表查询")
	@ApiOperation(value="设备保养记录-分页列表查询", notes="设备保养记录-分页列表查询")
	@GetMapping(value = "/list")
	public Result<?> queryPageList(WmMaintenanceHistory wmMaintenanceHistory,
								   @RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
								   @RequestParam(name="pageSize", defaultValue="10") Integer pageSize,
								   HttpServletRequest req) {
		QueryWrapper<WmMaintenanceHistory> queryWrapper = QueryGenerator.initQueryWrapper(wmMaintenanceHistory, req.getParameterMap());
		Page<WmMaintenanceHistory> page = new Page<WmMaintenanceHistory>(pageNo, pageSize);
		IPage<WmMaintenanceHistory> pageList = wmMaintenanceHistoryService.page(page, queryWrapper);
		return Result.ok(pageList);
	}

	 /**
	  * 分页列表查询
	  *
	  * @param wmMaintenanceHistory
	  * @param pageNo
	  * @param pageSize
	  * @param req
	  * @return
	  */
	 @AutoLog(value = "设备保养记录-分页列表查询")
	 @ApiOperation(value="设备保养记录-分页列表查询", notes="设备保养记录-分页列表查询")
	 @GetMapping(value = "/selfList")
	 public Result<?> querySelfPageList(WmMaintenanceHistoryVO wmMaintenanceHistory,
										@RequestParam(name="cycleDay", defaultValue="30") Integer cycleDay,
										@RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
										@RequestParam(name="pageSize", defaultValue="10") Integer pageSize,
										HttpServletRequest req) {
//		 QueryWrapper<WmMaintenanceHistoryVO> queryWrapper = QueryGenerator.initQueryWrapper(wmMaintenanceHistory, req.getParameterMap());
		 Page<WmMaintenanceHistoryVO> page = new Page<>(pageNo, pageSize);
		 IPage<WmMaintenanceHistoryVO> pageList = wmMaintenanceHistoryService.selfPage(page,wmMaintenanceHistory,cycleDay);
		 return Result.ok(pageList);
	 }

	 /**
	  * 分页列表查询 设备保养历史记录
	  *
	  * @param wmMaintenanceHistory
	  * @param pageNo
	  * @param pageSize
	  * @param req
	  * @return
	  */
	 @AutoLog(value = "设备保养记录-分页列表查询")
	 @ApiOperation(value="设备保养记录-分页列表查询", notes="设备保养记录-分页列表查询")
	 @GetMapping(value = "/workList")
	 public Result<?> queryForWorkPageList(WmMaintenanceHistoryVO wmMaintenanceHistory,
										@RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
										@RequestParam(name="pageSize", defaultValue="10") Integer pageSize,
										HttpServletRequest req) {
//		 QueryWrapper<WmMaintenanceHistoryVO> queryWrapper = QueryGenerator.initQueryWrapper(wmMaintenanceHistory, req.getParameterMap());
		 Page<WmMaintenanceHistoryVO> page = new Page<>(pageNo, pageSize);
		 IPage<WmMaintenanceHistoryVO> pageList = wmMaintenanceHistoryService.queryForWorkPage(page,wmMaintenanceHistory);
		 return Result.ok(pageList);
	 }

	 /**
	  * 分页列表查询 设备已保养待验收、已验收列表
	  *
	  * @param wmMaintenanceHistory
	  * @param pageNo
	  * @param pageSize
	  * @param req
	  * @return
	  */
	 @AutoLog(value = "设备保养记录-设备已保养待验收、已验收列表")
	 @ApiOperation(value="设备保养记录-设备已保养待验收、已验收列表", notes="设备保养记录-设备已保养待验收、已验收列表")
	 @GetMapping(value = "/checkList")
	 public Result<?> queryForCheckPageList(WmMaintenanceHistoryVO wmMaintenanceHistory,
										   @RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
										   @RequestParam(name="pageSize", defaultValue="10") Integer pageSize,
										   HttpServletRequest req) {
//		 QueryWrapper<WmMaintenanceHistoryVO> queryWrapper = QueryGenerator.initQueryWrapper(wmMaintenanceHistory, req.getParameterMap());
		 Page<WmMaintenanceHistoryVO> page = new Page<>(pageNo, pageSize);
		 IPage<WmMaintenanceHistoryVO> pageList = wmMaintenanceHistoryService.queryForCheckPage(page,wmMaintenanceHistory);
		 return Result.ok(pageList);
	 }

	/**
	 *   添加
	 *
	 * @param wmMaintenanceHistory
	 * @return
	 */
	@AutoLog(value = "设备保养记录-添加")
	@ApiOperation(value="设备保养记录-添加", notes="设备保养记录-添加")
	@PostMapping(value = "/add")
	public Result<?> add(@RequestBody WmMaintenanceHistory wmMaintenanceHistory) {
		wmMaintenanceHistoryService.save(wmMaintenanceHistory);
		return Result.ok("添加成功！");
	}

	 /**
	  *   添加一批保养设备到计划
	  *
	  * @param wmMaintenanceHistory
	  * @return
	  */
	 @AutoLog(value = "添加一批保养设备到计划")
	 @ApiOperation(value="添加一批保养设备到计划", notes="添加一批保养设备到计划")
	 @PostMapping(value = "/addPlan")
	 public Result<?> addPlan(@RequestBody WmMaintenanceHistoryDTO wmMaintenanceHistory) {
		 wmMaintenanceHistoryService.saveList(wmMaintenanceHistory);
		 return Result.ok("添加成功！");
	 }


	/**
	 *  编辑
	 *
	 * @param wmMaintenanceHistory
	 * @return
	 */
	@AutoLog(value = "设备保养记录-编辑")
	@ApiOperation(value="设备保养记录-编辑", notes="设备保养记录-编辑")
	@PutMapping(value = "/edit")
	public Result<?> edit(@RequestBody WmMaintenanceHistory wmMaintenanceHistory) {
		if (StringUtils.equals(wmMaintenanceHistory.getMaintenanceResult(), "0")) {
			wmMaintenanceHistory.setMaintenanceStatus("1");
		}
		if (StringUtils.equals(wmMaintenanceHistory.getMaintenanceResult(), "1")) {
			//设置保养时间
			wmMaintenanceHistory.setMaintenanceTime(new Date());
			wmMaintenanceHistory.setMaintenanceStatus("2");
		}
		//已验收
		if (StringUtils.equals(wmMaintenanceHistory.getMaintenanceCheck(), "1")) {
			wmMaintenanceHistory.setMaintenanceStatus("3");
		}
		wmMaintenanceHistory.setUpdateTime(new Date());
		LoginUser sysUser = (LoginUser) SecurityUtils.getSubject().getPrincipal();
		wmMaintenanceHistory.setUpdateBy(sysUser.getUsername());
		wmMaintenanceHistoryService.updateById(wmMaintenanceHistory);
		return Result.ok("编辑成功!");
	}

	 /**
	  *  编辑
	  *
	  * @param wmMaintenanceHistory
	  * @return
	  */
	 @AutoLog(value = "设备保养记录-编辑")
	 @ApiOperation(value="设备保养记录-编辑", notes="设备保养记录-编辑")
	 @PutMapping(value = "/checkHistory")
	 public Result<?> checkHistory(@RequestBody WmMaintenanceHistory wmMaintenanceHistory) {
		 //已验收
		 if (StringUtils.equals(wmMaintenanceHistory.getMaintenanceCheck(), "1")) {
			 wmMaintenanceHistory.setMaintenanceStatus("3");
		 }
		 wmMaintenanceHistory.setUpdateTime(new Date());
		 LoginUser sysUser = (LoginUser) SecurityUtils.getSubject().getPrincipal();
		 wmMaintenanceHistory.setUpdateBy(sysUser.getUsername());
		 wmMaintenanceHistoryService.updateById(wmMaintenanceHistory);
		 return Result.ok("编辑成功!");
	 }

	/**
	 *   通过id删除
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "设备保养记录-通过id删除")
	@ApiOperation(value="设备保养记录-通过id删除", notes="设备保养记录-通过id删除")
	@DeleteMapping(value = "/delete")
	public Result<?> delete(@RequestParam(name="id",required=true) String id) {
		wmMaintenanceHistoryService.removeById(id);
		return Result.ok("删除成功!");
	}

	/**
	 *  批量删除
	 *
	 * @param ids
	 * @return
	 */
	@AutoLog(value = "设备保养记录-批量删除")
	@ApiOperation(value="设备保养记录-批量删除", notes="设备保养记录-批量删除")
	@DeleteMapping(value = "/deleteBatch")
	public Result<?> deleteBatch(@RequestParam(name="ids",required=true) String ids) {
		this.wmMaintenanceHistoryService.removeByIds(Arrays.asList(ids.split(",")));
		return Result.ok("批量删除成功!");
	}

	/**
	 * 通过id查询
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "设备保养记录-通过id查询")
	@ApiOperation(value="设备保养记录-通过id查询", notes="设备保养记录-通过id查询")
	@GetMapping(value = "/queryById")
	public Result<?> queryById(@RequestParam(name="id",required=true) String id) {
		WmMaintenanceHistory wmMaintenanceHistory = wmMaintenanceHistoryService.getById(id);
		if(wmMaintenanceHistory==null) {
			return Result.error("未找到对应数据");
		}
		return Result.ok(wmMaintenanceHistory);
	}
	/**
	 * 获取设备上次的保养信息
	 *
	 * @param equipmentId
	 * @return Result
	 */
	@AutoLog(value = "设备保养记录-获取设备上次的保养信息")
	@ApiOperation(value="设备保养记录-获取设备上次的保养信息", notes="设备保养记录-获取设备上次的保养信息")
	@GetMapping(value = "/getLastMaintainInfo")
	public Result<?> getLastMaintainInfo(@RequestParam(name="equipmentId") String equipmentId) {
		WmMaintenanceHistory wmMaintenanceHistory = wmMaintenanceHistoryService.queryLastMaintainInfo(equipmentId);
		if(wmMaintenanceHistory==null) {
			return Result.error("未找到对应数据");
		}
		return Result.ok(wmMaintenanceHistory);
	}

    /**
    * 导出excel
    *
    * @param request
    * @param wmMaintenanceHistory
    */
    @RequestMapping(value = "/exportXls")
    public ModelAndView exportXls(HttpServletRequest request, WmMaintenanceHistory wmMaintenanceHistory) {
        return super.exportXls(request, wmMaintenanceHistory, WmMaintenanceHistory.class, "设备保养记录");
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
        return super.importExcel(request, response, WmMaintenanceHistory.class);
    }

}
