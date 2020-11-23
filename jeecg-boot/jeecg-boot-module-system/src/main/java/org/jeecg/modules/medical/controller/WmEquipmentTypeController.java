package org.jeecg.modules.medical.controller;

import java.util.Arrays;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.jeecg.common.api.vo.Result;
import org.jeecg.common.system.query.QueryGenerator;
import org.jeecg.common.util.oConvertUtils;
import org.jeecg.modules.medical.entity.WmEquipmentType;
import org.jeecg.modules.medical.service.IWmEquipmentTypeService;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import lombok.extern.slf4j.Slf4j;

import org.jeecg.common.system.base.controller.JeecgController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

/**
 * @Description: 设备数据
 * @Author: lxl
 * @Date:   2020-11-07
 * @Version: V1.0
 */
@RestController
@RequestMapping("/medical/wmEquipmentType")
@Slf4j
public class WmEquipmentTypeController extends JeecgController<WmEquipmentType, IWmEquipmentTypeService>{
	@Autowired
	private IWmEquipmentTypeService wmEquipmentTypeService;
	
	/**
	 * 分页列表查询
	 *
	 * @param wmEquipmentType
	 * @param pageNo
	 * @param pageSize
	 * @param req
	 * @return Result
	 */
	@GetMapping(value = "/rootList")
	public Result<?> queryPageList(WmEquipmentType wmEquipmentType,
								   @RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
								   @RequestParam(name="pageSize", defaultValue="10") Integer pageSize,
								   HttpServletRequest req) {
		String parentId = wmEquipmentType.getPid();
		if (oConvertUtils.isEmpty(parentId)) {
			parentId = "0";
		}
		wmEquipmentType.setPid(null);
		QueryWrapper<WmEquipmentType> queryWrapper = QueryGenerator.initQueryWrapper(wmEquipmentType, req.getParameterMap());
		// 使用 eq 防止模糊查询
		queryWrapper.eq("pid", parentId);
		Page<WmEquipmentType> page = new Page<WmEquipmentType>(pageNo, pageSize);
		IPage<WmEquipmentType> pageList = wmEquipmentTypeService.page(page, queryWrapper);
		return Result.ok(pageList);
	}

	/**
	 * 获取子数据
	 * @param wmEquipmentType
	 * @param req
	 * @return
	 */
	@GetMapping(value = "/childList")
	public Result<?> queryPageList(WmEquipmentType wmEquipmentType,HttpServletRequest req) {
		QueryWrapper<WmEquipmentType> queryWrapper = QueryGenerator.initQueryWrapper(wmEquipmentType, req.getParameterMap());
		List<WmEquipmentType> list = wmEquipmentTypeService.list(queryWrapper);
		return Result.ok(list);
	}
	
	
	/**
	 *   添加
	 *
	 * @param wmEquipmentType
	 * @return
	 */
	@PostMapping(value = "/add")
	public Result<?> add(@RequestBody WmEquipmentType wmEquipmentType) {
		wmEquipmentTypeService.addWmEquipmentType(wmEquipmentType);
		return Result.ok("添加成功！");
	}
	
	/**
	 *  编辑
	 *
	 * @param wmEquipmentType
	 * @return
	 */
	@PutMapping(value = "/edit")
	public Result<?> edit(@RequestBody WmEquipmentType wmEquipmentType) {
		wmEquipmentTypeService.updateWmEquipmentType(wmEquipmentType);
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
		wmEquipmentTypeService.deleteWmEquipmentType(id);
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
		this.wmEquipmentTypeService.removeByIds(Arrays.asList(ids.split(",")));
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
		WmEquipmentType wmEquipmentType = wmEquipmentTypeService.getById(id);
		if(wmEquipmentType==null) {
			return Result.error("未找到对应数据");
		}
		return Result.ok(wmEquipmentType);
	}

    /**
    * 导出excel
    *
    * @param request
    * @param wmEquipmentType
    */
    @RequestMapping(value = "/exportXls")
    public ModelAndView exportXls(HttpServletRequest request, WmEquipmentType wmEquipmentType) {
		return super.exportXls(request, wmEquipmentType, WmEquipmentType.class, "设备数据");
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
		return super.importExcel(request, response, WmEquipmentType.class);
    }

}
