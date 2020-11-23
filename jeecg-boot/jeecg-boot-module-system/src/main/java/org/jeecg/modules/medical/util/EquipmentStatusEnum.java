package org.jeecg.modules.medical.util;

/**
 * 设备状态 0=默认(闲置) 1=已使用 2=已借用 3=维修 4=保养  5=计量 9=删除
 */
public enum EquipmentStatusEnum {
    STATUS_ENUM0("0","闲置"),
    //转科的也是使用中的
    STATUS_ENUM1("1","已使用"),
    STATUS_ENUM2("2","已借用"),
    STATUS_ENUM3("3","维修"),
    STATUS_ENUM4("4","保养"),
    STATUS_ENUM5("5","计量"),
    STATUS_ENUM9("9","删除")
    ;

    private String code;
    private String name;



    EquipmentStatusEnum(String code, String name) {
        this.code = code;
        this.name = name;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
