package org.jeecg.modules.medical.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.jeecg.common.api.vo.Result;
import org.jeecg.common.aspect.annotation.AutoLog;
import org.jeecg.common.system.base.controller.JeecgController;
import org.jeecg.common.system.query.QueryGenerator;
import org.jeecg.modules.medical.entity.WmEquipmentInfo;
import org.jeecg.modules.medical.entity.WmEquipmentScrapHistory;
import org.jeecg.modules.medical.service.IWmEquipmentInfoService;
import org.jeecg.modules.medical.service.IWmEquipmentScrapHistoryService;
import org.jeecg.modules.medical.util.EquipmentStatusEnum;
import org.jeecg.modules.medical.vo.WmEquipmentScrapVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Arrays;

 /**
 * @Description: 设备报废记录
 * @Author: lxl
 * @Date:   2020-12-06
 * @Version: V1.0
 */
@Api(tags="设备报废记录")
@RestController
@RequestMapping("/medical/wmEquipmentScrapHistory")
@Slf4j
public class WmEquipmentScrapHistoryController extends JeecgController<WmEquipmentScrapHistory, IWmEquipmentScrapHistoryService> {
	@Autowired
	private IWmEquipmentScrapHistoryService wmEquipmentScrapHistoryService;

	 @Autowired
	 private IWmEquipmentInfoService wmEquipmentInfoService;

	/**
	 * 分页列表查询
	 *
	 * @param history
	 * @param pageNo
	 * @param pageSize
	 * @param req
	 * @return
	 */
	@AutoLog(value = "设备报废记录-分页列表查询")
	@ApiOperation(value="设备报废记录-分页列表查询", notes="设备报废记录-分页列表查询")
	@GetMapping(value = "/list")
	public Result<?> queryPageList(WmEquipmentScrapVO history,
								   @RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
								   @RequestParam(name="pageSize", defaultValue="10") Integer pageSize,
								   HttpServletRequest req) {
//		QueryWrapper<WmEquipmentScrapHistory> queryWrapper = QueryGenerator.initQueryWrapper(wmEquipmentScrapHistory, req.getParameterMap());
		Page<WmEquipmentScrapVO> page = new Page<>(pageNo, pageSize);
		IPage<WmEquipmentScrapVO> pageList = wmEquipmentScrapHistoryService.queryForPage(page, history);
		return Result.ok(pageList);
	}

	 /**
	  * 分页列表查询未使用的设备
	  *
	  * @param wmEquipmentInfo
	  * @param pageNo
	  * @param pageSize
	  * @param req
	  * @return
	  */
	 @AutoLog(value = "设备档案信息-分页列表查询")
	 @ApiOperation(value="设备档案信息-分页列表查询", notes="设备档案信息-分页列表查询")
	 @GetMapping(value = "/listEquipment")
	 public Result<?> listEquipment(WmEquipmentInfo wmEquipmentInfo,
								@RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
								@RequestParam(name="pageSize", defaultValue="10") Integer pageSize,
								HttpServletRequest req) {
		 QueryWrapper<WmEquipmentInfo> queryWrapper = QueryGenerator.initQueryWrapper(wmEquipmentInfo, req.getParameterMap());
		 //非报废的设备
		 queryWrapper.ne("equipment_status", EquipmentStatusEnum.STATUS_ENUM8.getCode());
		 Page<WmEquipmentInfo> page = new Page<>(pageNo, pageSize);
		 IPage<WmEquipmentInfo> pageList = wmEquipmentInfoService.page(page, queryWrapper);
		 return Result.ok(pageList);
	 }

	 /**
	  *   添加
	  *
	  * @param equipmentId
	  * @return
	  */
	 @AutoLog(value = "设备的保养和维修次数")
	 @ApiOperation(value="设备的保养和维修次数", notes="设备的保养和维修次数")
	 @GetMapping(value = "/queryCount")
	 public Result<?> queryCount(@RequestParam(name="equipmentId") String equipmentId) {
		 return Result.ok(wmEquipmentScrapHistoryService.queryForCount(equipmentId));
	 }


	/**
	 *   添加
	 *
	 * @param wmEquipmentScrapHistory
	 * @return
	 */
	@AutoLog(value = "设备报废记录-添加")
	@ApiOperation(value="设备报废记录-添加", notes="设备报废记录-添加")
	@PostMapping(value = "/add")
	@Transactional
	public Result<?> add(@RequestBody WmEquipmentScrapHistory wmEquipmentScrapHistory) {
		WmEquipmentInfo info = wmEquipmentInfoService.getById(wmEquipmentScrapHistory.getEquipmentId());
		wmEquipmentScrapHistory.setScrapState("0");
		wmEquipmentScrapHistory.setOldEquipmentState(info.getEquipmentStatus());
		wmEquipmentScrapHistoryService.save(wmEquipmentScrapHistory);

		info.setEquipmentStatus(EquipmentStatusEnum.STATUS_ENUM8.getCode());
		wmEquipmentInfoService.updateById(info);
		return Result.ok("添加成功！");
	}

	/**
	 *  编辑
	 *
	 * @param wmEquipmentScrapHistory
	 * @return
	 */
	@AutoLog(value = "设备报废记录-编辑")
	@ApiOperation(value="设备报废记录-编辑", notes="设备报废记录-编辑")
	@PutMapping(value = "/edit")
	public Result<?> edit(@RequestBody WmEquipmentScrapHistory wmEquipmentScrapHistory) {
		wmEquipmentScrapHistoryService.updateById(wmEquipmentScrapHistory);
		return Result.ok("编辑成功!");
	}

	/**
	 *   通过id删除或撤销
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "设备报废记录-通过id删除")
	@ApiOperation(value="设备报废记录-通过id删除", notes="设备报废记录-通过id删除")
	@DeleteMapping(value = "/delete")
	public Result<?> delete(@RequestParam(name="id",required=true) String id,
							@RequestParam(name="equipmentId",required=true) String equipmentId) {

		WmEquipmentScrapHistory history = wmEquipmentScrapHistoryService.getById(id);
		wmEquipmentScrapHistoryService.removeById(id);

		WmEquipmentInfo info = wmEquipmentInfoService.getById(equipmentId);
		info.setEquipmentStatus(history.getOldEquipmentState());
		wmEquipmentInfoService.updateById(info);
		return Result.ok("撤销成功!");
	}

	/**
	 *  批量删除
	 *
	 * @param ids
	 * @return
	 */
	@AutoLog(value = "设备报废记录-批量删除")
	@ApiOperation(value="设备报废记录-批量删除", notes="设备报废记录-批量删除")
	@DeleteMapping(value = "/deleteBatch")
	public Result<?> deleteBatch(@RequestParam(name="ids",required=true) String ids) {
		this.wmEquipmentScrapHistoryService.removeByIds(Arrays.asList(ids.split(",")));
		return Result.ok("批量删除成功!");
	}

	/**
	 * 通过id查询
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "设备报废记录-通过id查询")
	@ApiOperation(value="设备报废记录-通过id查询", notes="设备报废记录-通过id查询")
	@GetMapping(value = "/queryById")
	public Result<?> queryById(@RequestParam(name="id",required=true) String id) {
		WmEquipmentScrapHistory wmEquipmentScrapHistory = wmEquipmentScrapHistoryService.getById(id);
		if(wmEquipmentScrapHistory==null) {
			return Result.error("未找到对应数据");
		}
		return Result.ok(wmEquipmentScrapHistory);
	}

    /**
    * 导出excel
    *
    * @param request
    * @param wmEquipmentScrapHistory
    */
    @RequestMapping(value = "/exportXls")
    public ModelAndView exportXls(HttpServletRequest request, WmEquipmentScrapHistory wmEquipmentScrapHistory) {
        return super.exportXls(request, wmEquipmentScrapHistory, WmEquipmentScrapHistory.class, "设备报废记录");
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
        return super.importExcel(request, response, WmEquipmentScrapHistory.class);
    }

}
