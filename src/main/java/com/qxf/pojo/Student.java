package com.qxf.pojo;

import lombok.Data;

import java.io.Serializable;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/15
 * @Description: 学生实体
 */
@Data
public class Student implements Serializable{
    private String id;
    private String name;             //学生姓名
    private String studentNumerb;    //学号
    private Integer age;             //年龄
    private Integer sex;             //性别
    private String phone;            //联系电话
    private String photoUrl;         //头像地址
    private String email;            //邮箱
    private String clazzId;          //班级id
    private String majorId;          //专业id
    private String instituteId;      //学院id
}
