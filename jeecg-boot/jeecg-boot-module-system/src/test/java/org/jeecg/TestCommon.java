package org.jeecg;

import cn.hutool.core.date.DateUtil;

import java.io.File;

public class TestCommon {


    public static void main(String[] args) {
        StringBuffer sb = new StringBuffer();
        String today = DateUtil.today();
        sb.append(File.separator).append("qrcode")
                .append(File.separator).append(today).append(File.separator);
        String bizPath = sb.toString();
        bizPath = bizPath.replaceAll("\\\\", "/");
        File file = new File(bizPath );
        if (!file.exists()) {
            file.mkdirs();// 创建文件根目录
        }
        System.out.printf("----- "+ bizPath);

        String s = String.format("%04d", 1);
        System.out.printf(s);
    }
}
