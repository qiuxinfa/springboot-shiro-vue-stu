package com.qxf.pojo;

import lombok.Data;

import java.io.Serializable;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/15
 * @Description: 班级
 */
@Data
public class Clazz implements Serializable{
    private String id;
    private String clazzNumber;      //班级编码
    private String name;             //班级名
    private String majorId;          //班级所属专业id
    private String instituteId;      //班级所属学院id
}
