package org.jeecg.modules.medical.service;

import cn.hutool.core.io.FileUtil;
import cn.hutool.extra.qrcode.QrCodeUtil;
import cn.hutool.json.JSONUtil;
import lombok.extern.slf4j.Slf4j;
import org.jeecg.modules.medical.entity.WmAreaSpace;
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

    private final static String JPG = ".jpg";
    /**
     * 生成区域二维码
     * @param wmAreaSpace 区域信息
     * @return String
     */
    public String wmAreaQrCode(WmAreaSpace wmAreaSpace) {
        StringBuffer sb = new StringBuffer();
        sb.append("{");
        sb.append("\"id\":\"").append(wmAreaSpace.getId()).append("\",");
        sb.append("\"areaCode\":\"").append(wmAreaSpace.getAreaCode()).append("\",");
        sb.append("\"areaName\":\"").append(wmAreaSpace.getAreaName()).append("\"");
        sb.append("}");

        String json = sb.toString();
        log.debug("MedicaQrCodeService.wmAreaQrCode {}",json);
        String ctxPath = uploadpath;
        String fileName = null;
        String bizPath = File.separator+"qrcode"+File.separator+LocalDate.now().getYear()+File.separator;
        File file = new File(ctxPath + bizPath );
        if (!file.exists()) {
            file.mkdirs();// 创建文件根目录
        }
        fileName = wmAreaSpace.getAreaCode() + "_"+ System.currentTimeMillis() ;
        String destPath = bizPath + fileName + JPG;
        QrCodeUtil.generate(json, 200, 200, FileUtil.file(ctxPath+destPath));
        log.info("生成区域二维码图片路径: {}",destPath);
        return destPath;
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
