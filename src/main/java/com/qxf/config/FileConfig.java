package com.qxf.config;

import org.springframework.boot.web.servlet.MultipartConfigFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.servlet.MultipartConfigElement;

/**
 * @Auther: qiuxinfa
 * @Date: 2020/4/26
 * @Description: 配置文件上传的大小
 */
@Configuration
public class FileConfig {

    /**
     * 配置文件上传大小
     */
    @Bean
    public MultipartConfigElement multipartConfigElement(){
        MultipartConfigFactory factory = new MultipartConfigFactory();
        //  单个数据大小 100M
        factory.setMaxFileSize("102400KB");
        /// 总上传数据大小 100M
        factory.setMaxRequestSize("102400KB");
        return factory.createMultipartConfig();
    }

}