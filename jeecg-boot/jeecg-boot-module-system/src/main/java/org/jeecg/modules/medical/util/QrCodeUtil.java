package org.jeecg.modules.medical.util;

import java.io.ByteArrayOutputStream;

import java.io.FileOutputStream;

import java.io.IOException;

import java.io.OutputStream;

import java.util.HashMap;

import java.util.Map;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.WriterException;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;



/**

 * 二维码工具类

 * @author limingcheng

 *

 */

public class QrCodeUtil {



    /**

     * 生成一个二维码图片

     * @param width

     * @param height

     * @param content

     * @return

     * @throws WriterException

     * @throws IOException

     */

    private static byte[] createQRCode(int width, int height, String content) throws WriterException, IOException {

// 二维码基本参数设置

        Map<EncodeHintType, Object> hints = new HashMap<EncodeHintType, Object>();

        hints.put(EncodeHintType.CHARACTER_SET, "utf-8");// 设置编码字符集utf-8

        hints.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.M);// 设置纠错等级L/M/Q/H,纠错等级越高越不易识别，当前设置等级为最高等级H

        hints.put(EncodeHintType.MARGIN, 0);// 可设置范围为0-10，但仅四个变化0 1(2) 3(4 5 6) 7(8 9 10)

// 生成图片类型为QRCode

        BarcodeFormat format = BarcodeFormat.QR_CODE;

// 创建位矩阵对象

        BitMatrix bitMatrix = new MultiFormatWriter().encode(content, format, width, height, hints);

// 设置位矩阵转图片的参数

//        MatrixToImageConfig config = new MatrixToImageConfig(Color.black.getRGB(), Color.white.getRGB());

// 位矩阵对象转流对象

        ByteArrayOutputStream os = new ByteArrayOutputStream();
        MatrixToImageWriter.writeToStream(bitMatrix, "png", os);
        return os.toByteArray();
    }

    /**
     * 生成二维码
     * @param width
     * @param height
     * @param path
     * @param content
     * @return
     */
    public static Boolean generateQrcode(int width,int height,String path,String content) {
        byte[] b = new byte[0];
        OutputStream os = null;
        try{
            b = QrCodeUtil.createQRCode(width, height, content);
            os = new FileOutputStream(path);
            os.write(b);
        } catch (WriterException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }finally {
            try {
                if (os != null)
                    os.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return Boolean.TRUE;
    }


    public static void main(String[] args) throws WriterException, IOException {

        byte[] b = createQRCode(100, 100, "遇见最好的自己！");

        OutputStream os = new FileOutputStream("E:\\bestme.png");

        os.write(b);

        os.close();

    }

}
