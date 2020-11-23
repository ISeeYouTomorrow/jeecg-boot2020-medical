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
import org.jeecg.modules.medical.entity.WmCertificateInfo;
import org.jeecg.modules.medical.service.IWmCertificateInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Arrays;

 /**
 * @Description: 厂商证书管理
 * @Author: lxl
 * @Date:   2020-11-09
 * @Version: V1.0
 */
@Api(tags="厂商证书管理")
@RestController
@RequestMapping("/medical/wmCertificateInfo")
@Slf4j
public class WmCertificateInfoController extends JeecgController<WmCertificateInfo, IWmCertificateInfoService> {
	@Autowired
	private IWmCertificateInfoService wmCertificateInfoService;
	
	/**
	 * 分页列表查询
	 *
	 * @param wmCertificateInfo
	 * @param pageNo
	 * @param pageSize
	 * @param req
	 * @return
	 */
	@AutoLog(value = "厂商证书管理-分页列表查询")
	@ApiOperation(value="厂商证书管理-分页列表查询", notes="厂商证书管理-分页列表查询")
	@GetMapping(value = "/list")
	public Result<?> queryPageList(WmCertificateInfo wmCertificateInfo,
								   @RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
								   @RequestParam(name="pageSize", defaultValue="10") Integer pageSize,
								   HttpServletRequest req) {
		QueryWrapper<WmCertificateInfo> queryWrapper = QueryGenerator.initQueryWrapper(wmCertificateInfo, req.getParameterMap());
		Page<WmCertificateInfo> page = new Page<WmCertificateInfo>(pageNo, pageSize);
		IPage<WmCertificateInfo> pageList = wmCertificateInfoService.page(page, queryWrapper);
		return Result.ok(pageList);
	}
	
	/**
	 *   添加
	 *
	 * @param wmCertificateInfo
	 * @return
	 */
	@AutoLog(value = "厂商证书管理-添加")
	@ApiOperation(value="厂商证书管理-添加", notes="厂商证书管理-添加")
	@PostMapping(value = "/add")
	public Result<?> add(@RequestBody WmCertificateInfo wmCertificateInfo) {
		wmCertificateInfoService.save(wmCertificateInfo);
		return Result.ok("添加成功！");
	}
	
	/**
	 *  编辑
	 *
	 * @param wmCertificateInfo
	 * @return
	 */
	@AutoLog(value = "厂商证书管理-编辑")
	@ApiOperation(value="厂商证书管理-编辑", notes="厂商证书管理-编辑")
	@PutMapping(value = "/edit")
	public Result<?> edit(@RequestBody WmCertificateInfo wmCertificateInfo) {
		wmCertificateInfoService.updateById(wmCertificateInfo);
		return Result.ok("编辑成功!");
	}
	
	/**
	 *   通过id删除
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "厂商证书管理-通过id删除")
	@ApiOperation(value="厂商证书管理-通过id删除", notes="厂商证书管理-通过id删除")
	@DeleteMapping(value = "/delete")
	public Result<?> delete(@RequestParam(name="id",required=true) String id) {
		wmCertificateInfoService.removeById(id);
		return Result.ok("删除成功!");
	}
	
	/**
	 *  批量删除
	 *
	 * @param ids
	 * @return
	 */
	@AutoLog(value = "厂商证书管理-批量删除")
	@ApiOperation(value="厂商证书管理-批量删除", notes="厂商证书管理-批量删除")
	@DeleteMapping(value = "/deleteBatch")
	public Result<?> deleteBatch(@RequestParam(name="ids",required=true) String ids) {
		this.wmCertificateInfoService.removeByIds(Arrays.asList(ids.split(",")));
		return Result.ok("批量删除成功!");
	}
	
	/**
	 * 通过id查询
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "厂商证书管理-通过id查询")
	@ApiOperation(value="厂商证书管理-通过id查询", notes="厂商证书管理-通过id查询")
	@GetMapping(value = "/queryById")
	public Result<?> queryById(@RequestParam(name="id",required=true) String id) {
		WmCertificateInfo wmCertificateInfo = wmCertificateInfoService.getById(id);
		if(wmCertificateInfo==null) {
			return Result.error("未找到对应数据");
		}
		return Result.ok(wmCertificateInfo);
	}

    /**
    * 导出excel
    *
    * @param request
    * @param wmCertificateInfo
    */
    @RequestMapping(value = "/exportXls")
    public ModelAndView exportXls(HttpServletRequest request, WmCertificateInfo wmCertificateInfo) {
        return super.exportXls(request, wmCertificateInfo, WmCertificateInfo.class, "厂商证书管理");
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
        return super.importExcel(request, response, WmCertificateInfo.class);
    }

}
