package com.qxf.pojo;

import lombok.Data;

import java.io.Serializable;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/15
 * @Description: 课程-老师中间表
 */
@Data
public class CourseTeacher implements Serializable{
    private String id;
    private String courseId;   //课程id
    private String teacherId;  //老师id
}
