package org.jeecg.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.web.servlet.MultipartConfigFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.servlet.MultipartConfigElement;

@Configuration
public class MultipartConfig {
    /**
     * 文件上传临时路径
     * */
    @Bean
    MultipartConfigElement multipartConfigElement(
//            @Value("${spring.servlet.multipart.max-file-size:}") String maxFileSize,
//            @Value("${spring.servlet.multipart.max-request-size:}") String maxRequestSize,
//            @Value("${spring.servlet.multipart.file-size-threshold:}") String fileSizeThreshold,
            @Value("${spring.servlet.multipart.location}") String location){
        MultipartConfigFactory multipartConfigFactory = new MultipartConfigFactory();
        //单个文件大小
//        multipartConfigFactory.setMaxFileSize(maxFileSize);
        //单次请求文件大小
//        multipartConfigFactory.setMaxRequestSize(maxRequestSize);
        //
//        multipartConfigFactory.setFileSizeThreshold(fileSizeThreshold);
        //上传路径
//		multipartConfigFactory.setLocation(location);
        return multipartConfigFactory.createMultipartConfig();
    }

}
