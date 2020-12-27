package org.jeecg.modules.medical.service;

import cn.hutool.core.date.DateUtil;
import cn.hutool.core.io.FileUtil;
import cn.hutool.extra.qrcode.QrCodeUtil;
import lombok.extern.slf4j.Slf4j;
import org.jeecg.modules.medical.entity.WmAreaSpace;
import org.jeecg.modules.medical.entity.WmEquipmentInfo;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.io.File;
import java.time.LocalDate;

/**
 * 医疗管理二维码工具类
 *
 * @author xile
 *
 */
@Service
@Slf4j
public class MedicalQrCodeService {

    @Value(value = "${jeecg.path.upload}")
    private String uploadpath;

    /**
     * 本地：local minio：minio 阿里：alioss
     */
    @Value(value="${jeecg.uploadType}")
    private String uploadType;

    /**
     * 二维码宽度
     */
    private static final Integer WIDTH = 120;
    /**
     * 二维码高度
     */
    private static final Integer HEIGHT = 120;

    /**
     * 二维码格式
     */
    private final static String PNG = ".png";

    /**
     * 二维码图片路径
     */
    private static final String QRCODE_PATH = "qrcode";


    /**
     * 生成区域二维码
     * @param wmAreaSpace 区域信息
     * @return String
     */
    public String wmAreaQrCode(WmAreaSpace wmAreaSpace) {
        StringBuffer sb = new StringBuffer();
        sb.append("{");
        sb.append("\"id\":\"").append(wmAreaSpace.getId()).append("\",");
        sb.append("\"areaCode\":\"").append(wmAreaSpace.getAreaCode()).append("\"");
//        sb.append("\"areaName\":\"").append(wmAreaSpace.getAreaName()).append("\"");
        sb.append("}");

        String json = sb.toString();
        log.debug("MedicaQrCodeService.wmAreaQrCode {}",json);
        String fileName = null;
        String bizPath = File.separator+"qrcode"+File.separator+LocalDate.now().getYear()+File.separator;
        File file = new File(uploadpath + bizPath );
        if (!file.exists()) {
            file.mkdirs();// 创建文件根目录
        }
        fileName = wmAreaSpace.getAreaCode() + "_"+ System.currentTimeMillis() ;
        String destPath = bizPath + fileName + PNG;
//        QrCodeUtil.generate(json, WIDTH, HEIGHT, FileUtil.file(uploadpath+destPath));
        org.jeecg.modules.medical.util.QrCodeUtil.generateQrcode(WIDTH, HEIGHT,uploadpath+destPath,json);
        log.info("生成区域二维码图片路径: {}",destPath);
        return destPath;
    }


    /**
     * 生成设备二维码
     * @param equipmentInfo 设备信息
     * @return String
     */
    public String equipmentQrCode(WmEquipmentInfo equipmentInfo) {
        StringBuffer sb = new StringBuffer();
        sb.append("{");
        sb.append("\"id\":\"").append(equipmentInfo.getId()).append("\",");
        sb.append("\"equipmentCode\":\"").append(equipmentInfo.getEquipmentCode()).append("\"");
        sb.append("}");
//        sb.append("http://id/").append(equipmentInfo.getId());

        String json = sb.toString();
        log.debug("MedicaQrCodeService.equipmentQrCode {}",json);
        String fileName = null;

        fileName = equipmentInfo.getEquipmentCode() + "_"+ System.currentTimeMillis() ;
        String destPath = getBizPath() + fileName + PNG;
        org.jeecg.modules.medical.util.QrCodeUtil.generateQrcode(WIDTH, HEIGHT,uploadpath+destPath,json);
//        QrCodeUtil.generate(json, WIDTH, HEIGHT, FileUtil.file(uploadpath+destPath));
        log.info("生成设备二维码图片路径: {}",destPath);
        return destPath;
    }

    /**
     * 获取biz path
     * @return String
     */
    private String getBizPath() {
        StringBuffer sb = new StringBuffer();
        String today = DateUtil.today();
        sb.append(File.separator).append(QRCODE_PATH)
                .append(File.separator).append(today).append(File.separator);
        String bizPath = sb.toString();
        bizPath = bizPath.replaceAll("\\\\", "/");
        File file = new File(uploadpath + bizPath );
        if (!file.exists()) {
            file.mkdirs();// 创建文件根目录
        }
        return bizPath;
    }

    /**
     * 识别二维码
     * @param file 二维码路径
     * @return String
     */
    public String decodeWmAreaQrCode(String file) {
        file = uploadpath + File.separator+file;
        String decode = QrCodeUtil.decode(FileUtil.file(file));
        log.info("获取区域二维码图片信息 {}",decode);
        return decode;
    }

}
