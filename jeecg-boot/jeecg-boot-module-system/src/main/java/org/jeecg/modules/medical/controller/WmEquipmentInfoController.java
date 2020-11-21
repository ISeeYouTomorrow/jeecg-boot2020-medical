package org.jeecg.modules.medical.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.SecurityUtils;
import org.jeecg.common.api.vo.Result;
import org.jeecg.common.aspect.annotation.AutoLog;
import org.jeecg.common.system.query.QueryGenerator;
import org.jeecg.common.system.vo.LoginUser;
import org.jeecg.common.util.oConvertUtils;
import org.jeecg.modules.medical.entity.WmEquipmentApprove;
import org.jeecg.modules.medical.entity.WmEquipmentInfo;
import org.jeecg.modules.medical.entity.WmEquipmentType;
import org.jeecg.modules.medical.entity.WmInviteBid;
import org.jeecg.modules.medical.service.*;
import org.jeecg.modules.medical.util.MedicalUtils;
import org.jeecg.modules.medical.vo.WmEquipmentInfoPage;
import org.jeecgframework.poi.excel.ExcelImportUtil;
import org.jeecgframework.poi.excel.def.NormalExcelConstants;
import org.jeecgframework.poi.excel.entity.ExportParams;
import org.jeecgframework.poi.excel.entity.ImportParams;
import org.jeecgframework.poi.excel.view.JeecgEntityExcelView;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;
import java.util.stream.Collectors;

 /**
 * @Description: 设备档案信息
 * @Author: jeecg-boot
 * @Date:   2020-11-10
 * @Version: V1.0
 */
@Api(tags="设备档案信息")
@RestController
@RequestMapping("/medical/wmEquipmentInfo")
@Slf4j
public class WmEquipmentInfoController {
	@Autowired
	private IWmEquipmentInfoService wmEquipmentInfoService;
	@Autowired
	private IWmInviteBidService wmInviteBidService;
	@Autowired
	private IWmEquipmentApproveService wmEquipmentApproveService;
	@Autowired
	private IWmEquipmentTypeService wmEquipmentTypeService;
	@Autowired
	private MedicalQrCodeService qrCodeService;

	//添加操作对象锁
	private static final Object object = new Object();

	/**
	 * 分页列表查询
	 *
	 * @param wmEquipmentInfo
	 * @param pageNo
	 * @param pageSize
	 * @param req
	 * @return
	 */
	@AutoLog(value = "设备档案信息-分页列表查询")
	@ApiOperation(value="设备档案信息-分页列表查询", notes="设备档案信息-分页列表查询")
	@GetMapping(value = "/list")
	public Result<?> queryPageList(WmEquipmentInfo wmEquipmentInfo,
								   @RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
								   @RequestParam(name="pageSize", defaultValue="10") Integer pageSize,
								   HttpServletRequest req) {
		QueryWrapper<WmEquipmentInfo> queryWrapper = QueryGenerator.initQueryWrapper(wmEquipmentInfo, req.getParameterMap());
		Page<WmEquipmentInfo> page = new Page<>(pageNo, pageSize);
		IPage<WmEquipmentInfo> pageList = wmEquipmentInfoService.page(page, queryWrapper);
		return Result.ok(pageList);
	}
	
	/**
	 *   添加
	 *
	 * @param wmEquipmentInfoPage
	 * @return
	 */
	@AutoLog(value = "设备档案信息-添加")
	@ApiOperation(value="设备档案信息-添加", notes="设备档案信息-添加")
	@PostMapping(value = "/add")
	public Result<?> add(@RequestBody WmEquipmentInfoPage wmEquipmentInfoPage) {
		String typeId = wmEquipmentInfoPage.getEquipmentType();
		WmEquipmentType equipmentType = wmEquipmentTypeService.getById(typeId);
		String code = equipmentType.getTypeAlias18();

		int count = 0;
		synchronized (object) {
			count = wmEquipmentInfoService.getEquipmentTypeCount(typeId);
		}
		//设备个数
		int num = wmEquipmentInfoPage.getProcurementNumber();

		//设备采购多个需要插入多条记录，且生成对应的编号和二维码
		if (num == 1) {
			String equipmentCode = MedicalUtils.generateEquipmentCode(code, ++count);
			WmEquipmentInfo wmEquipmentInfo = new WmEquipmentInfo();
			BeanUtils.copyProperties(wmEquipmentInfoPage, wmEquipmentInfo);
			wmEquipmentInfo.setEquipmentCode(equipmentCode);
			//生成设备二维码和设备编号
			String path = qrCodeService.equipmentQrCode(wmEquipmentInfo);
			wmEquipmentInfo.setEquipmentQrcode(path);
			wmEquipmentInfoService.saveMain(wmEquipmentInfo, wmEquipmentInfoPage.getWmInviteBidList(),wmEquipmentInfoPage.getWmEquipmentApproveList());
		} else if (num > 1) {
			wmEquipmentInfoService.saveBatchMain(code,count,wmEquipmentInfoPage);
		}

		return Result.ok("添加成功！");
	}
	
	/**
	 *  编辑
	 *
	 * @param wmEquipmentInfoPage
	 * @return
	 */
	@AutoLog(value = "设备档案信息-编辑")
	@ApiOperation(value="设备档案信息-编辑", notes="设备档案信息-编辑")
	@PutMapping(value = "/edit")
	public Result<?> edit(@RequestBody WmEquipmentInfoPage wmEquipmentInfoPage) {
		WmEquipmentInfo wmEquipmentInfo = new WmEquipmentInfo();
		BeanUtils.copyProperties(wmEquipmentInfoPage, wmEquipmentInfo);
		WmEquipmentInfo wmEquipmentInfoEntity = wmEquipmentInfoService.getById(wmEquipmentInfo.getId());
		if(wmEquipmentInfoEntity==null) {
			return Result.error("未找到对应数据");
		}
		Date date = Calendar.getInstance().getTime();
		wmEquipmentInfo.setUpdateTime(date);
		LoginUser sysUser = (LoginUser) SecurityUtils.getSubject().getPrincipal();
		wmEquipmentInfo.setUpdateBy(sysUser.getUsername());
		wmEquipmentInfo.setStartUseTime(date);
		wmEquipmentInfoService.updateMain(wmEquipmentInfo, wmEquipmentInfoPage.getWmInviteBidList(),wmEquipmentInfoPage.getWmEquipmentApproveList());
		return Result.ok("编辑成功!");
	}

	 /**
	  *  编辑设备领用信息
	  *
	  * @param wmEquipmentInfoPage
	  * @return
	  */
	 @AutoLog(value = "设备档案信息-编辑")
	 @ApiOperation(value="设备档案信息-编辑", notes="设备档案信息-编辑")
	 @PutMapping(value = "/editUsed")
	 public Result<?> editUsed(@RequestBody WmEquipmentInfoPage wmEquipmentInfoPage) {
		 WmEquipmentInfo wmEquipmentInfo = new WmEquipmentInfo();
		 BeanUtils.copyProperties(wmEquipmentInfoPage, wmEquipmentInfo);
		 WmEquipmentInfo wmEquipmentInfoEntity = wmEquipmentInfoService.getById(wmEquipmentInfo.getId());
		 if(wmEquipmentInfoEntity==null) {
			 return Result.error("未找到对应数据");
		 }
		 Date date = Calendar.getInstance().getTime();
		 wmEquipmentInfo.setUpdateTime(date);
		 LoginUser sysUser = (LoginUser) SecurityUtils.getSubject().getPrincipal();
		 wmEquipmentInfo.setStartUseTime(date);
		 wmEquipmentInfo.setUpdateBy(sysUser.getUsername());
		 wmEquipmentInfoService.updateUsed(wmEquipmentInfo);
		 return Result.ok("编辑成功!");
	 }

	/**
	 *   通过id删除
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "设备档案信息-通过id删除")
	@ApiOperation(value="设备档案信息-通过id删除", notes="设备档案信息-通过id删除")
	@DeleteMapping(value = "/delete")
	public Result<?> delete(@RequestParam(name="id",required=true) String id) {
		wmEquipmentInfoService.delMain(id);
		return Result.ok("删除成功!");
	}
	
	/**
	 *  批量删除
	 *
	 * @param ids
	 * @return
	 */
	@AutoLog(value = "设备档案信息-批量删除")
	@ApiOperation(value="设备档案信息-批量删除", notes="设备档案信息-批量删除")
	@DeleteMapping(value = "/deleteBatch")
	public Result<?> deleteBatch(@RequestParam(name="ids",required=true) String ids) {
		this.wmEquipmentInfoService.delBatchMain(Arrays.asList(ids.split(",")));
		return Result.ok("批量删除成功！");
	}
	
	/**
	 * 通过id查询
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "设备档案信息-通过id查询")
	@ApiOperation(value="设备档案信息-通过id查询", notes="设备档案信息-通过id查询")
	@GetMapping(value = "/queryById")
	public Result<?> queryById(@RequestParam(name="id",required=true) String id) {
		WmEquipmentInfo wmEquipmentInfo = wmEquipmentInfoService.getById(id);
		if(wmEquipmentInfo==null) {
			return Result.error("未找到对应数据");
		}
		return Result.ok(wmEquipmentInfo);

	}
	
	/**
	 * 通过id查询
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "设备招标信息集合-通过id查询")
	@ApiOperation(value="设备招标信息集合-通过id查询", notes="设备招标信息-通过id查询")
	@GetMapping(value = "/queryWmInviteBidByMainId")
	public Result<?> queryWmInviteBidListByMainId(@RequestParam(name="id",required=true) String id) {
		List<WmInviteBid> wmInviteBidList = wmInviteBidService.selectByMainId(id);
		return Result.ok(wmInviteBidList);
	}
	/**
	 * 通过id查询
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "设备审批信息集合-通过id查询")
	@ApiOperation(value="设备审批信息集合-通过id查询", notes="设备审批信息-通过id查询")
	@GetMapping(value = "/queryWmEquipmentApproveByMainId")
	public Result<?> queryWmEquipmentApproveListByMainId(@RequestParam(name="id",required=true) String id) {
		List<WmEquipmentApprove> wmEquipmentApproveList = wmEquipmentApproveService.selectByMainId(id);
		return Result.ok(wmEquipmentApproveList);
	}

    /**
    * 导出excel
    *
    * @param request
    * @param wmEquipmentInfo
    */
    @RequestMapping(value = "/exportXls")
    public ModelAndView exportXls(HttpServletRequest request, WmEquipmentInfo wmEquipmentInfo) {
      // Step.1 组装查询条件查询数据
      QueryWrapper<WmEquipmentInfo> queryWrapper = QueryGenerator.initQueryWrapper(wmEquipmentInfo, request.getParameterMap());
      LoginUser sysUser = (LoginUser) SecurityUtils.getSubject().getPrincipal();

      //Step.2 获取导出数据
      List<WmEquipmentInfo> queryList = wmEquipmentInfoService.list(queryWrapper);
      // 过滤选中数据
      String selections = request.getParameter("selections");
      List<WmEquipmentInfo> wmEquipmentInfoList = new ArrayList<WmEquipmentInfo>();
      if(oConvertUtils.isEmpty(selections)) {
          wmEquipmentInfoList = queryList;
      }else {
          List<String> selectionList = Arrays.asList(selections.split(","));
          wmEquipmentInfoList = queryList.stream().filter(item -> selectionList.contains(item.getId())).collect(Collectors.toList());
      }

      // Step.3 组装pageList
      List<WmEquipmentInfoPage> pageList = new ArrayList<WmEquipmentInfoPage>();
      for (WmEquipmentInfo main : wmEquipmentInfoList) {
          WmEquipmentInfoPage vo = new WmEquipmentInfoPage();
          BeanUtils.copyProperties(main, vo);
          List<WmInviteBid> wmInviteBidList = wmInviteBidService.selectByMainId(main.getId());
          vo.setWmInviteBidList(wmInviteBidList);
          List<WmEquipmentApprove> wmEquipmentApproveList = wmEquipmentApproveService.selectByMainId(main.getId());
          vo.setWmEquipmentApproveList(wmEquipmentApproveList);
          pageList.add(vo);
      }

      // Step.4 AutoPoi 导出Excel
      ModelAndView mv = new ModelAndView(new JeecgEntityExcelView());
      mv.addObject(NormalExcelConstants.FILE_NAME, "设备档案信息列表");
      mv.addObject(NormalExcelConstants.CLASS, WmEquipmentInfoPage.class);
      mv.addObject(NormalExcelConstants.PARAMS, new ExportParams("设备档案信息数据", "导出人:"+sysUser.getRealname(), "设备档案信息"));
      mv.addObject(NormalExcelConstants.DATA_LIST, pageList);
      return mv;
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
      MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
      Map<String, MultipartFile> fileMap = multipartRequest.getFileMap();
      for (Map.Entry<String, MultipartFile> entity : fileMap.entrySet()) {
          MultipartFile file = entity.getValue();// 获取上传文件对象
          ImportParams params = new ImportParams();
          params.setTitleRows(2);
          params.setHeadRows(1);
          params.setNeedSave(true);
          try {
              List<WmEquipmentInfoPage> list = ExcelImportUtil.importExcel(file.getInputStream(), WmEquipmentInfoPage.class, params);
              for (WmEquipmentInfoPage page : list) {
                  WmEquipmentInfo po = new WmEquipmentInfo();
                  BeanUtils.copyProperties(page, po);
                  wmEquipmentInfoService.saveMain(po, page.getWmInviteBidList(),page.getWmEquipmentApproveList());
              }
              return Result.ok("文件导入成功！数据行数:" + list.size());
          } catch (Exception e) {
              log.error(e.getMessage(),e);
              return Result.error("文件导入失败:"+e.getMessage());
          } finally {
              try {
                  file.getInputStream().close();
              } catch (IOException e) {
                  e.printStackTrace();
              }
          }
      }
      return Result.ok("文件导入失败！");
    }

}
