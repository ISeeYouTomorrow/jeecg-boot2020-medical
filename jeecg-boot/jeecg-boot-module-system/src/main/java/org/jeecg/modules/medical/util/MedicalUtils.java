package org.jeecg.modules.medical.util;

import java.time.LocalDate;

/**
 * 业务功能工具类
 */
public class MedicalUtils {

    private static final String EQUIPMENT_CODE_FORMAT = "%05d";

    /**
     * 生成设备编号 设备类型+年份+个数编号(YYSS-2020-00001)
     * @param typeCode 设备类型
     * @param count 当前设备个数
     * @return String
     */
    public static String generateEquipmentCode(String typeCode,int count) {
        int year = LocalDate.now().getYear();
        String equipmentCode = typeCode + "-"+year+"-" + String.format(EQUIPMENT_CODE_FORMAT, count);

        return equipmentCode;
    }


}
