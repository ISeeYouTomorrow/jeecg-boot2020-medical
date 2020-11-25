package org.jeecg.modules.medical.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.jeecg.common.api.vo.Result;
import org.jeecg.common.aspect.annotation.AutoLog;
import org.jeecg.common.system.base.controller.JeecgController;
import org.jeecg.modules.medical.entity.WmMaintenanceInfo;
import org.jeecg.modules.medical.service.IWmMaintenanceInfoService;
import org.jeecg.modules.medical.vo.WmMaintenancePageVO;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Arrays;

 /**
 * @Description: 设备维修
 * @Author: lxl
 * @Date:   2020-11-25
 * @Version: V1.0
 */
@Api(tags="设备维修")
@RestController
@RequestMapping("/medical/wmMaintenanceInfo")
@Slf4j
public class WmMaintenanceInfoController extends JeecgController<WmMaintenanceInfo, IWmMaintenanceInfoService> {
	@Resource
	private IWmMaintenanceInfoService wmMaintenanceInfoService;
	
	/**
	 * 分页列表查询
	 *
	 * @param wmMaintenanceInfo
	 * @param pageNo
	 * @param pageSize
	 * @param req
	 * @return
	 */
	@AutoLog(value = "设备维修-分页列表查询")
	@ApiOperation(value="设备维修-分页列表查询", notes="设备维修-分页列表查询")
	@GetMapping(value = "/list")
	public Result<?> queryPageList(WmMaintenancePageVO wmMaintenanceInfo,
								   @RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
								   @RequestParam(name="pageSize", defaultValue="10") Integer pageSize,
								   HttpServletRequest req) {
//		QueryWrapper<WmMaintenanceInfo> queryWrapper = QueryGenerator.initQueryWrapper(wmMaintenanceInfo, req.getParameterMap());
		Page<WmMaintenancePageVO> page = new Page<>(pageNo, pageSize);
		String equipmentName = wmMaintenanceInfo.getEquipmentName();
		String equipmentCode = wmMaintenanceInfo.getEquipmentCode();
		IPage<WmMaintenancePageVO> pageList = wmMaintenanceInfoService.queryForPage(page, equipmentName,equipmentCode);
		return Result.ok(pageList);
	}
	
	/**
	 *   添加
	 *
	 * @param wmMaintenanceInfo
	 * @return
	 */
	@AutoLog(value = "设备维修-添加")
	@ApiOperation(value="设备维修-添加", notes="设备维修-添加")
	@PostMapping(value = "/add")
	public Result<?> add(@RequestBody WmMaintenanceInfo wmMaintenanceInfo) {
		wmMaintenanceInfoService.save(wmMaintenanceInfo);
		return Result.ok("添加成功！");
	}
	
	/**
	 *  编辑
	 *
	 * @param wmMaintenanceInfo
	 * @return
	 */
	@AutoLog(value = "设备维修-编辑")
	@ApiOperation(value="设备维修-编辑", notes="设备维修-编辑")
	@PutMapping(value = "/edit")
	public Result<?> edit(@RequestBody WmMaintenanceInfo wmMaintenanceInfo) {
		wmMaintenanceInfoService.updateById(wmMaintenanceInfo);
		return Result.ok("编辑成功!");
	}
	
	/**
	 *   通过id删除
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "设备维修-通过id删除")
	@ApiOperation(value="设备维修-通过id删除", notes="设备维修-通过id删除")
	@DeleteMapping(value = "/delete")
	public Result<?> delete(@RequestParam(name="id",required=true) String id) {
		wmMaintenanceInfoService.removeById(id);
		return Result.ok("删除成功!");
	}
	
	/**
	 *  批量删除
	 *
	 * @param ids
	 * @return
	 */
	@AutoLog(value = "设备维修-批量删除")
	@ApiOperation(value="设备维修-批量删除", notes="设备维修-批量删除")
	@DeleteMapping(value = "/deleteBatch")
	public Result<?> deleteBatch(@RequestParam(name="ids",required=true) String ids) {
		this.wmMaintenanceInfoService.removeByIds(Arrays.asList(ids.split(",")));
		return Result.ok("批量删除成功!");
	}
	
	/**
	 * 通过id查询
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "设备维修-通过id查询")
	@ApiOperation(value="设备维修-通过id查询", notes="设备维修-通过id查询")
	@GetMapping(value = "/queryById")
	public Result<?> queryById(@RequestParam(name="id",required=true) String id) {
		WmMaintenanceInfo wmMaintenanceInfo = wmMaintenanceInfoService.getById(id);
		if(wmMaintenanceInfo==null) {
			return Result.error("未找到对应数据");
		}
		return Result.ok(wmMaintenanceInfo);
	}

    /**
    * 导出excel
    *
    * @param request
    * @param wmMaintenanceInfo
    */
    @RequestMapping(value = "/exportXls")
    public ModelAndView exportXls(HttpServletRequest request, WmMaintenanceInfo wmMaintenanceInfo) {
        return super.exportXls(request, wmMaintenanceInfo, WmMaintenanceInfo.class, "设备维修");
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
        return super.importExcel(request, response, WmMaintenanceInfo.class);
    }

}
