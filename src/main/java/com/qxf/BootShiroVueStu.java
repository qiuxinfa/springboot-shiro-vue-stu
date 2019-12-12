package com.qxf;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/17
 * @Description: com.qxf
 */
@SpringBootApplication
@MapperScan("com.qxf.mapper")
public class BootShiroVueStu {
    public static void main(String[] args) {
        SpringApplication.run(BootShiroVueStu.class,args);
    }
}
