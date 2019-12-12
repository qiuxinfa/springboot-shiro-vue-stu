package com.qxf.pojo;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/15
 * @Description: 成绩
 */
@Data
@TableName("t_grade")
public class Grade implements Serializable{
    private String id;
    @TableField("student_id")
    private String studentId;   //学生id
    @TableField("course_id")
    private String courseId;    //课程id
    @TableField("teacher_id")
    private String teacherId;   //老师id
    @TableField("exam_type")
    private Integer examType;   //考试类型
    @TableField("exam_time")
    private Date examTime;      //考试时间
    private Double score;       //得分
    private Integer status;     //老师是否录入了成绩：1是，0否
    @TableField(exist = false)
    private String studentName; //学生姓名
    @TableField(exist = false)
    private String[] ids;            //id集合
}
