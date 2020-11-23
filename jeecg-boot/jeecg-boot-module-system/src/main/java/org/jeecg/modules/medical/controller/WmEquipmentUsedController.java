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
import org.jeecg.modules.medical.entity.WmEquipmentUsed;
import org.jeecg.modules.medical.service.IWmEquipmentUsedService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Arrays;

 /**
 * @Description: 科室领用
 * @Author: lxl
 * @Date:   2020-11-20
 * @Version: V1.0
 */
@Api(tags="科室领用")
@RestController
@RequestMapping("/medical/wmEquipmentUsed")
@Slf4j
public class WmEquipmentUsedController extends JeecgController<WmEquipmentUsed, IWmEquipmentUsedService> {
	@Autowired
	private IWmEquipmentUsedService wmEquipmentUsedService;
	
	/**
	 * 分页列表查询
	 *
	 * @param wmEquipmentUsed
	 * @param pageNo
	 * @param pageSize
	 * @param req
	 * @return
	 */
	@AutoLog(value = "科室领用-分页列表查询")
	@ApiOperation(value="科室领用-分页列表查询", notes="科室领用-分页列表查询")
	@GetMapping(value = "/list")
	public Result<?> queryPageList(WmEquipmentUsed wmEquipmentUsed,
								   @RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
								   @RequestParam(name="pageSize", defaultValue="10") Integer pageSize,
								   HttpServletRequest req) {
		QueryWrapper<WmEquipmentUsed> queryWrapper = QueryGenerator.initQueryWrapper(wmEquipmentUsed, req.getParameterMap());
		Page<WmEquipmentUsed> page = new Page<WmEquipmentUsed>(pageNo, pageSize);
		IPage<WmEquipmentUsed> pageList = wmEquipmentUsedService.page(page, queryWrapper);
		return Result.ok(pageList);
	}
	
	/**
	 *   添加
	 *
	 * @param wmEquipmentUsed
	 * @return
	 */
	@AutoLog(value = "科室领用-添加")
	@ApiOperation(value="科室领用-添加", notes="科室领用-添加")
	@PostMapping(value = "/add")
	public Result<?> add(@RequestBody WmEquipmentUsed wmEquipmentUsed) {
		wmEquipmentUsedService.save(wmEquipmentUsed);
		return Result.ok("添加成功！");
	}
	
	/**
	 *  编辑
	 *
	 * @param wmEquipmentUsed
	 * @return
	 */
	@AutoLog(value = "科室领用-编辑")
	@ApiOperation(value="科室领用-编辑", notes="科室领用-编辑")
	@PutMapping(value = "/edit")
	public Result<?> edit(@RequestBody WmEquipmentUsed wmEquipmentUsed) {
		wmEquipmentUsedService.updateById(wmEquipmentUsed);
		return Result.ok("编辑成功!");
	}
	
	/**
	 *   通过id删除
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "科室领用-通过id删除")
	@ApiOperation(value="科室领用-通过id删除", notes="科室领用-通过id删除")
	@DeleteMapping(value = "/delete")
	public Result<?> delete(@RequestParam(name="id",required=true) String id) {
		wmEquipmentUsedService.removeById(id);
		return Result.ok("删除成功!");
	}
	
	/**
	 *  批量删除
	 *
	 * @param ids
	 * @return
	 */
	@AutoLog(value = "科室领用-批量删除")
	@ApiOperation(value="科室领用-批量删除", notes="科室领用-批量删除")
	@DeleteMapping(value = "/deleteBatch")
	public Result<?> deleteBatch(@RequestParam(name="ids",required=true) String ids) {
		this.wmEquipmentUsedService.removeByIds(Arrays.asList(ids.split(",")));
		return Result.ok("批量删除成功!");
	}
	
	/**
	 * 通过id查询
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "科室领用-通过id查询")
	@ApiOperation(value="科室领用-通过id查询", notes="科室领用-通过id查询")
	@GetMapping(value = "/queryById")
	public Result<?> queryById(@RequestParam(name="id",required=true) String id) {
		WmEquipmentUsed wmEquipmentUsed = wmEquipmentUsedService.getById(id);
		if(wmEquipmentUsed==null) {
			return Result.error("未找到对应数据");
		}
		return Result.ok(wmEquipmentUsed);
	}

    /**
    * 导出excel
    *
    * @param request
    * @param wmEquipmentUsed
    */
    @RequestMapping(value = "/exportXls")
    public ModelAndView exportXls(HttpServletRequest request, WmEquipmentUsed wmEquipmentUsed) {
        return super.exportXls(request, wmEquipmentUsed, WmEquipmentUsed.class, "科室领用");
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
        return super.importExcel(request, response, WmEquipmentUsed.class);
    }

}
