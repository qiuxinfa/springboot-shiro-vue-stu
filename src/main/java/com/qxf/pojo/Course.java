package com.qxf.pojo;

import lombok.Data;

import java.io.Serializable;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/15
 * @Description: 课程
 */
@Data
public class Course implements Serializable{
    private String id;
    private String name;         //课程名
    private Integer courseType;  //课程类型
    private String courseNumber; //课程编码
}
