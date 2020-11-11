package org.jeecg.modules.medical.controller;

import java.util.Arrays;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.hutool.core.bean.BeanUtil;
import org.jeecg.common.api.vo.Result;
import org.jeecg.common.system.query.QueryGenerator;
import org.jeecg.modules.medical.entity.WmContractInfo;
import org.jeecg.modules.medical.entity.WmManufacturerInfo;
import org.jeecg.modules.medical.service.IWmContractInfoService;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import lombok.extern.slf4j.Slf4j;

import org.jeecg.common.system.base.controller.JeecgController;
import org.jeecg.modules.medical.service.IWmManufacturerInfoService;
import org.jeecg.modules.medical.vo.WmContractVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.jeecg.common.aspect.annotation.AutoLog;

 /**
 * @Description: 厂商合同信息管理
 * @Author: jeecg-boot
 * @Date:   2020-11-09
 * @Version: V1.0
 */
@Api(tags="厂商合同信息管理")
@RestController
@RequestMapping("/medical/wmContractInfo")
@Slf4j
public class WmContractInfoController extends JeecgController<WmContractInfo, IWmContractInfoService> {
	@Autowired
	private IWmContractInfoService wmContractInfoService;

	@Autowired
	private IWmManufacturerInfoService wmManufacturerInfoService;
	
	/**
	 * 分页列表查询
	 *
	 * @param wmContractInfo
	 * @param pageNo
	 * @param pageSize
	 * @param req
	 * @return
	 */
	@AutoLog(value = "厂商合同信息管理-分页列表查询")
	@ApiOperation(value="厂商合同信息管理-分页列表查询", notes="厂商合同信息管理-分页列表查询")
	@GetMapping(value = "/list")
	public Result<?> queryPageList(WmContractInfo wmContractInfo,
								   @RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
								   @RequestParam(name="pageSize", defaultValue="10") Integer pageSize,
								   HttpServletRequest req) {
		QueryWrapper<WmContractInfo> queryWrapper = QueryGenerator.initQueryWrapper(wmContractInfo, req.getParameterMap());
		Page<WmContractInfo> page = new Page<WmContractInfo>(pageNo, pageSize);
		IPage<WmContractInfo> pageList = wmContractInfoService.page(page, queryWrapper);
		return Result.ok(pageList);
	}
	
	/**
	 *   添加
	 *
	 * @param wmContractInfo
	 * @return
	 */
	@AutoLog(value = "厂商合同信息管理-添加")
	@ApiOperation(value="厂商合同信息管理-添加", notes="厂商合同信息管理-添加")
	@PostMapping(value = "/add")
	public Result<?> add(@RequestBody WmContractInfo wmContractInfo) {
		wmContractInfoService.save(wmContractInfo);
		return Result.ok("添加成功！");
	}
	
	/**
	 *  编辑
	 *
	 * @param wmContractInfo
	 * @return
	 */
	@AutoLog(value = "厂商合同信息管理-编辑")
	@ApiOperation(value="厂商合同信息管理-编辑", notes="厂商合同信息管理-编辑")
	@PutMapping(value = "/edit")
	public Result<?> edit(@RequestBody WmContractInfo wmContractInfo) {
		wmContractInfoService.updateById(wmContractInfo);
		return Result.ok("编辑成功!");
	}
	
	/**
	 *   通过id删除
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "厂商合同信息管理-通过id删除")
	@ApiOperation(value="厂商合同信息管理-通过id删除", notes="厂商合同信息管理-通过id删除")
	@DeleteMapping(value = "/delete")
	public Result<?> delete(@RequestParam(name="id",required=true) String id) {
		wmContractInfoService.removeById(id);
		return Result.ok("删除成功!");
	}
	
	/**
	 *  批量删除
	 *
	 * @param ids
	 * @return
	 */
	@AutoLog(value = "厂商合同信息管理-批量删除")
	@ApiOperation(value="厂商合同信息管理-批量删除", notes="厂商合同信息管理-批量删除")
	@DeleteMapping(value = "/deleteBatch")
	public Result<?> deleteBatch(@RequestParam(name="ids",required=true) String ids) {
		this.wmContractInfoService.removeByIds(Arrays.asList(ids.split(",")));
		return Result.ok("批量删除成功!");
	}
	
	/**
	 * 通过id查询
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "厂商合同信息管理-通过id查询")
	@ApiOperation(value="厂商合同信息管理-通过id查询", notes="厂商合同信息管理-通过id查询")
	@GetMapping(value = "/queryById")
	public Result<?> queryById(@RequestParam(name="id",required=true) String id) {
		WmContractInfo wmContractInfo = wmContractInfoService.getById(id);
		if(wmContractInfo==null) {
			return Result.error("未找到对应数据");
		}
		return Result.ok(wmContractInfo);
	}

	 /**
	  * 通过id查询合同及厂商信息
	  *
	  * @param id 合同id
	  * @return Result
	  */
	 @AutoLog(value = "厂商合同信息管理-通过id查询")
	 @ApiOperation(value="厂商合同信息管理-通过id查询", notes="厂商合同信息管理-通过id查询")
	 @GetMapping(value = "/queryDetailById")
	 public Result<?> queryDetailById(@RequestParam(name="id") String id) {
		 WmContractInfo wmContractInfo = wmContractInfoService.getById(id);
		 if(wmContractInfo==null) {
			 return Result.error("未找到对应数据");
		 }
		 WmContractVO vo = new WmContractVO();
		 BeanUtil.copyProperties(wmContractInfo, vo);
		 WmManufacturerInfo manufacturerInfo = wmManufacturerInfoService.getById(wmContractInfo.getWmManufacturerId());
		 if (manufacturerInfo != null) {
			 vo.setWmManufacturerName(manufacturerInfo.getManufacturerName());
		 }
		 return Result.ok(vo);
	 }


    /**
    * 导出excel
    *
    * @param request
    * @param wmContractInfo
    */
    @RequestMapping(value = "/exportXls")
    public ModelAndView exportXls(HttpServletRequest request, WmContractInfo wmContractInfo) {
        return super.exportXls(request, wmContractInfo, WmContractInfo.class, "厂商合同信息管理");
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
        return super.importExcel(request, response, WmContractInfo.class);
    }

}
