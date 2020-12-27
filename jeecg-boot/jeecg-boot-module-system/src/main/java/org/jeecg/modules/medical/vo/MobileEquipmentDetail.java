package org.jeecg.modules.medical.vo;

import lombok.Data;
import org.jeecg.modules.medical.entity.WmManufacturerInfo;

@Data
public class MobileEquipmentDetail extends WmEquipmentInfoPage{

    private String equipmentTypeTxt;
    private String originManufacturerTxt;
    private String saleManufacturerTxt;
    private String useDept_dictText;
    private String chargeArea_dictText;
    private String chargePerson_dictText;

    private WmContractVO contractVO;

    private WmManufacturerInfo orignManu;

    private WmManufacturerInfo saleManu;



}
