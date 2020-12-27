package org.jeecg;

import cn.hutool.core.date.DateUtil;
import cn.hutool.http.HttpUtil;
import org.apache.http.HttpEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.junit.Test;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

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


    @Test
    public void testShark() throws IOException {
        CloseableHttpClient m_HttpClient = HttpClients.createDefault();
        byte[] bytes = new byte[]{65, 66, 65, 0, 87, 36, 66, 6, 55, 49, 85, 52, 6, 104, -1, 51, -119, -122, 6, 23, 3, 0, 72, 3, -111, 83, -106, -83, -2, 6, -80, 37, 9, 2, 100, 3, -36, 0, 10, 0, 32, 3, -68, 2, -56, 0, 23, 25, 0, 0, 2, 0, 0, 30, 10, -94, 13, 0, 0, 30, 10, -94, 13, -27, -61};
        String url = "http://39.96.4.124:8763/wdf/shakev2";
        HttpPost httpPost = new HttpPost(url);
        httpPost.setEntity(new ByteArrayEntity(bytes));
        String contentType = "text/plain";
        if (contentType != null)
            httpPost.setHeader("Content-type", contentType);
        CloseableHttpResponse httpResponse = m_HttpClient.execute(httpPost);
        try {
            HttpEntity entityResponse = httpResponse.getEntity();
            int contentLength = (int) entityResponse.getContentLength();
            if (contentLength <= 0)
                throw new IOException("No response");
            byte[] respBuffer = new byte[contentLength];
            if (entityResponse.getContent().read(respBuffer) != respBuffer.length)
                throw new IOException("Read response buffer error");
            System.out.println("------------------------------------------");
            for (byte b : respBuffer) {
                System.out.print(b+",");
            }
            System.out.println("\n------------------------------------------");
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            httpResponse.close();
        }


    }

    @Test
    public void testCheckCode() throws UnsupportedEncodingException {
        String code = "1290";
        String encode = java.util.Base64.getEncoder().encodeToString(code.getBytes("UTF-8"));
        String _code = new String(java.util.Base64.getDecoder().decode(encode),"UTF-8");
        System.out.println(_code);
    }
}
