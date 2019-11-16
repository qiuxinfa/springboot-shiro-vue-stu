package com.qxf.pojo;

import lombok.Data;

import java.io.Serializable;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/15
 * @Description: 学院
 */
@Data
public class Institute implements Serializable{
    private String id;
    private String name;              //学院名
    private String instituteNumber;  //学院编码
}
