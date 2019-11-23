package com.qxf.pojo;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/15
 * @Description: 课程
 */
@Data
@TableName("t_course")
public class Course implements Serializable{
    private String id;
    private String name;         //课程名
    @TableField("course_type")
    private Integer courseType;  //课程类型
    @TableField("course_number")
    private String courseNumber; //课程编码
}
