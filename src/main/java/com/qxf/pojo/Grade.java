package com.qxf.pojo;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/15
 * @Description: 成绩
 */
@Data
public class Grade implements Serializable{
    private String id;
    private String studentId;   //学生id
    private String courseId;    //课程id
    private String teacherId;   //老师id
    private Integer examType;   //考试类型
    private Date examTime;      //考试时间
    private Double score;       //得分
}
