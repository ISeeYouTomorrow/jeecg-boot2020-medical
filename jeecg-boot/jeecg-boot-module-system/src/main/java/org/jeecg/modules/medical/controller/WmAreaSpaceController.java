package org.jeecg.modules.medical.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.jeecg.common.api.vo.Result;
import org.jeecg.common.system.base.controller.JeecgController;
import org.jeecg.common.system.query.QueryGenerator;
import org.jeecg.common.util.oConvertUtils;
import org.jeecg.modules.medical.entity.WmAreaSpace;
import org.jeecg.modules.medical.service.IWmAreaSpaceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Arrays;
import java.util.List;

 /**
 * @Description: 空间数据
 * @Author: lxl
 * @Date:   2020-11-06
 * @Version: V1.0
 */
@RestController
@RequestMapping("/medical/wmAreaSpace")
@Slf4j
@Api(tags = "空间数据管理")
public class WmAreaSpaceController extends JeecgController<WmAreaSpace, IWmAreaSpaceService>{
	@Autowired
	private IWmAreaSpaceService wmAreaSpaceService;
	
	/**
	 * 分页列表查询
	 *
	 * @param wmAreaSpace 区域
	 * @param pageNo 页码
	 * @param pageSize 页容
	 * @param req 请求
	 * @return Result
	 */
	@ApiOperation(value = "空间数据列表", notes = "获取所有空间数据")
	@GetMapping(value = "/rootList")
	public Result<?> queryPageList(WmAreaSpace wmAreaSpace,
								   @RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
								   @RequestParam(name="pageSize", defaultValue="10") Integer pageSize,
								   HttpServletRequest req) {
		String parentId = wmAreaSpace.getPid();
		if (oConvertUtils.isEmpty(parentId)) {
			parentId = "0";
		}
		wmAreaSpace.setPid(null);
		QueryWrapper<WmAreaSpace> queryWrapper = QueryGenerator.initQueryWrapper(wmAreaSpace, req.getParameterMap());
		// 使用 eq 防止模糊查询
		queryWrapper.eq("pid", parentId);
		Page<WmAreaSpace> page = new Page<WmAreaSpace>(pageNo, pageSize);
		IPage<WmAreaSpace> pageList = wmAreaSpaceService.page(page, queryWrapper);
		return Result.ok(pageList);
	}

	 /**
	  * 获取子数据
	  * @param wmAreaSpace
	  * @param req
	  * @return
	  */
    @ApiOperation(value = "获取子数据", notes = "获取子数据")
	@GetMapping(value = "/childList")
	public Result<?> queryPageList(WmAreaSpace wmAreaSpace,HttpServletRequest req) {
		QueryWrapper<WmAreaSpace> queryWrapper = QueryGenerator.initQueryWrapper(wmAreaSpace, req.getParameterMap());
		List<WmAreaSpace> list = wmAreaSpaceService.list(queryWrapper);
		return Result.ok(list);
	}
	
	
	/**
	 *   添加
	 *
	 * @param wmAreaSpace
	 * @return
	 */
	@ApiOperation(value = "添加", notes = "添加")
	@PostMapping(value = "/add")
	public Result<?> add(@RequestBody WmAreaSpace wmAreaSpace) {
		wmAreaSpaceService.addWmAreaSpace(wmAreaSpace);
		return Result.ok("添加成功！");
	}
	
	/**
	 *  编辑
	 *
	 * @param wmAreaSpace
	 * @return
	 */
	@ApiOperation(value = "编辑", notes = "编辑")
	@PutMapping(value = "/edit")
	public Result<?> edit(@RequestBody WmAreaSpace wmAreaSpace) {
		wmAreaSpaceService.updateWmAreaSpace(wmAreaSpace);
		return Result.ok("编辑成功!");
	}
	
	/**
	 *   通过id删除
	 *
	 * @param id
	 * @return
	 */
	@DeleteMapping(value = "/delete")
	public Result<?> delete(@RequestParam(name="id",required=true) String id) {
		wmAreaSpaceService.deleteWmAreaSpace(id);
		return Result.ok("删除成功!");
	}
	
	/**
	 *  批量删除
	 *
	 * @param ids
	 * @return
	 */
	@DeleteMapping(value = "/deleteBatch")
	public Result<?> deleteBatch(@RequestParam(name="ids",required=true) String ids) {
		this.wmAreaSpaceService.removeByIds(Arrays.asList(ids.split(",")));
		return Result.ok("批量删除成功！");
	}
	
	/**
	 * 通过id查询
	 *
	 * @param id
	 * @return
	 */
	@GetMapping(value = "/queryById")
	public Result<?> queryById(@RequestParam(name="id",required=true) String id) {
		WmAreaSpace wmAreaSpace = wmAreaSpaceService.getById(id);
		if(wmAreaSpace==null) {
			return Result.error("未找到对应数据");
		}
		return Result.ok(wmAreaSpace);
	}

    /**
    * 导出excel
    *
    * @param request
    * @param wmAreaSpace
    */
    @RequestMapping(value = "/exportXls")
    public ModelAndView exportXls(HttpServletRequest request, WmAreaSpace wmAreaSpace) {
		return super.exportXls(request, wmAreaSpace, WmAreaSpace.class, "空间数据");
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
		return super.importExcel(request, response, WmAreaSpace.class);
    }

}
