package com.qxf.pojo;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/15
 * @Description: 学生实体
 */
@Data
@TableName("t_student")
public class Student implements Serializable{
    private String id;
    private String name;             //学生姓名
    @TableField("student_number")
    private String studentNumber;    //学号
    private Integer age;             //年龄
    private Integer sex;             //性别
    private String phone;            //联系电话
    @TableField("photo_url")
    private String photoUrl;         //头像地址
    private String email;            //邮箱
    @TableField("clazz_id")
    private String clazzId;          //班级id
    @TableField("major_id")
    private String majorId;          //专业id
    @TableField("institute_id")
    private String instituteId;      //学院id
    @TableField(exist = false)
    private String clazzName;        //班级名称
    @TableField(exist = false)
    private String majorName;        //专业名称
    @TableField(exist = false)
    private String instituteName;    //学院名称
    @TableField(exist = false)
    private String[] ids;            //id集合
}
