package org.jeecg.modules.system.util;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.jeecg.common.util.oConvertUtils;
import org.jeecg.modules.system.entity.SysPermission;

/**
 * @Author: scott
 * @Date: 2019-04-03
 */
public class PermissionDataUtil {

	/**
	 * 智能处理错误数据，简化用户失误操作
	 *
	 * @param permission
	 */
	public static SysPermission intelligentProcessData(SysPermission permission) {
		if (permission == null) {
			return null;
		}

		// 组件
		if (oConvertUtils.isNotEmpty(permission.getComponent())) {
			String component = permission.getComponent();
			if (component.startsWith("/")) {
				component = component.substring(1);
			}
			if (component.startsWith("views/")) {
				component = component.replaceFirst("views/", "");
			}
			if (component.startsWith("src/views/")) {
				component = component.replaceFirst("src/views/", "");
			}
			if (component.endsWith(".vue")) {
				component = component.replace(".vue", "");
			}
			permission.setComponent(component);
		}

		// 请求URL
		if (oConvertUtils.isNotEmpty(permission.getUrl())) {
			String url = permission.getUrl();
			if (url.endsWith(".vue")) {
				url = url.replace(".vue", "");
			}
			if (!url.startsWith("http") && !url.startsWith("/") && !url.trim().startsWith("{{")) {
				url = "/" + url;
			}
			permission.setUrl(url);
		}

		// 一级菜单默认组件
		if (0 == permission.getMenuType() && oConvertUtils.isEmpty(permission.getComponent())) {
			// 一级菜单默认组件
			permission.setComponent("layouts/RouteView");
		}
		return permission;
	}

	/**
	 * 如果没有index页面 需要new 一个放到list中
	 *
	 * @param metaList
	 */
	public static void addIndexPage(List<SysPermission> metaList) {
		boolean hasIndexMenu = false;
		for (SysPermission sysPermission : metaList) {
			if ("首页".equals(sysPermission.getName())) {
				hasIndexMenu = true;
				break;
			}
		}
		if (!hasIndexMenu) {
			metaList.add(0, new SysPermission(true));
		}
	}

	/**
	 * 判断是否授权首页
	 *
	 * @param metaList
	 * @return
	 */
	public static boolean hasIndexPage(List<SysPermission> metaList) {
		boolean hasIndexMenu = false;
		for (SysPermission sysPermission : metaList) {
			if ("首页".equals(sysPermission.getName())) {
				hasIndexMenu = true;
				break;
			}
		}
		return hasIndexMenu;
	}

	/**
	 * app菜单定义
	 */
	public static Map<String, String> appMenuMap = new HashMap<>(18);
	/**
	 * 移动端菜单权限
	 * 129d80f55ac5591e504cf0728bdf8ce3, c1a462b90f5edfba64107718ed050d59, 设备档案, /idevices/WmEquipmentInfo, medical/WmEquipmentInfoList
	 * 74a900d2a6e1528fe46828816854b9a8, c1a462b90f5edfba64107718ed050d59, 科室领用, /medical/wmEquipmentUsedList, medical/WmEquipmentUsedList
	 * 0a9c43b095b83bdfa200ef62e0ed5b35, c1a462b90f5edfba64107718ed050d59, 公共借调, /medical/wmEquipmentOnloan, medical/WmEquipmentOnloanList,
	 * a46578d1e9079240b22e1d49b1c4a48d, c1a462b90f5edfba64107718ed050d59, 设备转科, /medical/wmEquipmentTransfer, medical/WmEquipmentTransferList
	 *
	 *
	 * bef037781bf591a0a0dae7ee86f1c1ed, 4b7b3a1153a3df17a4c783ea0ddac897, 维修申请, /maintenance/wmMaintenanceApply, medical/WmMaintenanceInfoList
	 * 3dc2ac60a97f10ef41f373955f33d708, 4b7b3a1153a3df17a4c783ea0ddac897, 维修派工, /maintenance/wmMaintenanceInfoWork, medical/WmMaintenanceInfoWorkList
	 * 3367fff8c75ca4d73cedb22f4bc88f9a, 4b7b3a1153a3df17a4c783ea0ddac897, 维修处理, /maintenance/wmMaintenanceTreatment, medical/WmMaintenanceTreatmentList
	 * 339f6afd470aae9c01ec6888f05dbc5d, 4b7b3a1153a3df17a4c783ea0ddac897, 保养实施, /maintenance/implementation, medical/WmEquipmentImplementList
	 * 02286d4d1cf4338634b48195cd56dd9c, 4b7b3a1153a3df17a4c783ea0ddac897, 保养验收, /maintenance/acceptance, medical/WmMaintenanceAcceptance,
	 *
	 *
	 *
	 * da8d5bdbd86c4cc28c40c38bf0c64483, 0dc1f75240b48291701a3f19c0380ae3, 设备巡检, /qualityControl/EquipmentExamine, medical/qualitycontrol/WmEquipmentExamineHistoryList,
	 * db5789378ff62b53951a3ca155c9560a, 0dc1f75240b48291701a3f19c0380ae3, 计量实施, /qualityControl/MeasureExplain, medical/WmMeasureWorkList
	 * 1333765299179356161, 0dc1f75240b48291701a3f19c0380ae3, 计量验收, /imeasure/wmMeasureCheck, medical/WmMeasureCheckList
	 * effb6d561b0c765027c989dcc40a49be, 0dc1f75240b48291701a3f19c0380ae3, 设备盘点, /qualityControl/EquipmentInventory, qualityControl/EquipmentInventoryList
	 * 88211c3042da1beeeb5c7a969999657a, 0dc1f75240b48291701a3f19c0380ae3, 不良事件, /qualityControl/AdverseEvent, medical/qualitycontrol/WmAdverseEventList
	 * 572e347656b9291e5320e1e8bde0a747, 0dc1f75240b48291701a3f19c0380ae3, 设备报废, /qualityControl/equipmentScrapHistory, medical/qualitycontrol/WmEquipmentScrapHistoryList
	 *
	 * 1df887301feb1788ab0b5cdb941985b5, ffd4e6766385ac2de3b7900fc8073f22, 厂商管理, /imanufacturer/manufacturerInfo, medical
	 * 44df313303afc211b3069e85cae52abd, ffd4e6766385ac2de3b7900fc8073f22, 证书管理, /imanufacturer/certificate, medical/WmCertificateInfoList/WmManufacturerInfoList
	 * 67172184a3c7dba4b312c1d6e745a1a9, ffd4e6766385ac2de3b7900fc8073f22, 合同管理, /imanufacturer/contractInfo, medical/WmContractInfoList
	 */
	static {
		appMenuMap.put("129d80f55ac5591e504cf0728bdf8ce3", "设备查询");
		appMenuMap.put("74a900d2a6e1528fe46828816854b9a8", "科室领用");
		appMenuMap.put("0a9c43b095b83bdfa200ef62e0ed5b35", "公共借调");
		appMenuMap.put("a46578d1e9079240b22e1d49b1c4a48d", "设备转科");

		appMenuMap.put("bef037781bf591a0a0dae7ee86f1c1ed", "维修申请");
		appMenuMap.put("3dc2ac60a97f10ef41f373955f33d708", "维修派工");
		appMenuMap.put("3367fff8c75ca4d73cedb22f4bc88f9a", "维修处理");
		appMenuMap.put("339f6afd470aae9c01ec6888f05dbc5d", "保养实施");
		appMenuMap.put("02286d4d1cf4338634b48195cd56dd9c", "保养验收");



		appMenuMap.put("da8d5bdbd86c4cc28c40c38bf0c64483", "设备巡检");
		appMenuMap.put("db5789378ff62b53951a3ca155c9560a", "计量实施");
		appMenuMap.put("1333765299179356161", "计量验收");
		appMenuMap.put("effb6d561b0c765027c989dcc40a49be", "设备盘点");
		appMenuMap.put("88211c3042da1beeeb5c7a969999657a", "不良事件");
		appMenuMap.put("572e347656b9291e5320e1e8bde0a747", "设备报废");


		appMenuMap.put("1df887301feb1788ab0b5cdb941985b5", "厂商查询");
		appMenuMap.put("44df313303afc211b3069e85cae52abd", "证书查询");
		appMenuMap.put("67172184a3c7dba4b312c1d6e745a1a9", "合同查询");

	}

}
