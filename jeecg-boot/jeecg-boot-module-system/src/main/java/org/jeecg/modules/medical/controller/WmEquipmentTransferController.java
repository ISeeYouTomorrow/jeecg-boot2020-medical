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
import org.jeecg.modules.medical.entity.WmEquipmentTransfer;
import org.jeecg.modules.medical.service.IWmEquipmentTransferService;
import org.jeecg.modules.medical.vo.WmEquipmentTransferVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Arrays;

 /**
 * @Description: 设备转科
 * @Author: lxl
 * @Date:   2020-11-23
 * @Version: V1.0
 */
@Api(tags="设备转科")
@RestController
@RequestMapping("/medical/wmEquipmentTransfer")
@Slf4j
public class WmEquipmentTransferController extends JeecgController<WmEquipmentTransfer, IWmEquipmentTransferService> {
	@Autowired
	private IWmEquipmentTransferService wmEquipmentTransferService;
	
	/**
	 * 分页列表查询
	 *
	 * @param wmEquipmentTransfer
	 * @param pageNo
	 * @param pageSize
	 * @param req
	 * @return
	 */
	@AutoLog(value = "设备转科-分页列表查询")
	@ApiOperation(value="设备转科-分页列表查询", notes="设备转科-分页列表查询")
	@GetMapping(value = "/list")
	public Result<?> queryPageList(WmEquipmentTransferVO wmEquipmentTransfer,
								   @RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
								   @RequestParam(name="pageSize", defaultValue="10") Integer pageSize,
								   HttpServletRequest req) {
//		QueryWrapper<WmEquipmentTransfer> queryWrapper = QueryGenerator.initQueryWrapper(wmEquipmentTransfer, req.getParameterMap());
//		Page<WmEquipmentTransfer> page = new Page<WmEquipmentTransfer>(pageNo, pageSize);
//		IPage<WmEquipmentTransfer> pageList = wmEquipmentTransferService.page(page, queryWrapper);
		String equipmentName = wmEquipmentTransfer.getEquipmentName();
		String equipmentCode = wmEquipmentTransfer.getEquipmentCode();
		Page< WmEquipmentTransferVO > page = new Page<>(pageNo, pageSize);
		IPage<WmEquipmentTransferVO> pageList = wmEquipmentTransferService.queryForPage(page, equipmentName,equipmentCode);
		return Result.ok(pageList);
	}
	
	/**
	 *   添加
	 *
	 * @param wmEquipmentTransfer
	 * @return
	 */
	@AutoLog(value = "设备转科-添加")
	@ApiOperation(value="设备转科-添加", notes="设备转科-添加")
	@PostMapping(value = "/add")
	public Result<?> add(@RequestBody WmEquipmentTransfer wmEquipmentTransfer) {
		wmEquipmentTransferService.saveMore(wmEquipmentTransfer);
		return Result.ok("添加成功！");
	}
	
	/**
	 *  编辑
	 *
	 * @param wmEquipmentTransfer
	 * @return
	 */
	@AutoLog(value = "设备转科-编辑")
	@ApiOperation(value="设备转科-编辑", notes="设备转科-编辑")
	@PutMapping(value = "/edit")
	public Result<?> edit(@RequestBody WmEquipmentTransfer wmEquipmentTransfer) {
		wmEquipmentTransferService.updateById(wmEquipmentTransfer);
		return Result.ok("编辑成功!");
	}
	
	/**
	 *   通过id删除
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "设备转科-通过id删除")
	@ApiOperation(value="设备转科-通过id删除", notes="设备转科-通过id删除")
	@DeleteMapping(value = "/delete")
	public Result<?> delete(@RequestParam(name="id",required=true) String id) {
		wmEquipmentTransferService.removeById(id);
		return Result.ok("删除成功!");
	}
	
	/**
	 *  批量删除
	 *
	 * @param ids
	 * @return
	 */
	@AutoLog(value = "设备转科-批量删除")
	@ApiOperation(value="设备转科-批量删除", notes="设备转科-批量删除")
	@DeleteMapping(value = "/deleteBatch")
	public Result<?> deleteBatch(@RequestParam(name="ids",required=true) String ids) {
		this.wmEquipmentTransferService.removeByIds(Arrays.asList(ids.split(",")));
		return Result.ok("批量删除成功!");
	}
	
	/**
	 * 通过id查询
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "设备转科-通过id查询")
	@ApiOperation(value="设备转科-通过id查询", notes="设备转科-通过id查询")
	@GetMapping(value = "/queryById")
	public Result<?> queryById(@RequestParam(name="id",required=true) String id) {
		WmEquipmentTransfer wmEquipmentTransfer = wmEquipmentTransferService.getById(id);
		if(wmEquipmentTransfer==null) {
			return Result.error("未找到对应数据");
		}
		return Result.ok(wmEquipmentTransfer);
	}

    /**
    * 导出excel
    *
    * @param request
    * @param wmEquipmentTransfer
    */
    @RequestMapping(value = "/exportXls")
    public ModelAndView exportXls(HttpServletRequest request, WmEquipmentTransfer wmEquipmentTransfer) {
        return super.exportXls(request, wmEquipmentTransfer, WmEquipmentTransfer.class, "设备转科");
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
        return super.importExcel(request, response, WmEquipmentTransfer.class);
    }

}
