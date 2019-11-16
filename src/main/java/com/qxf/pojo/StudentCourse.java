package com.qxf.pojo;

import lombok.Data;

import java.io.Serializable;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/15
 * @Description: 学生-课程
 */
@Data
public class StudentCourse implements Serializable{
    private String id;
    private String studentId;   //学生id
    private String courseId;    //课程id
}
