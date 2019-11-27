package com.qxf.pojo;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonSubTypes;
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
    private Double credit;       //学分
    @TableField(exist = false)
    private String courseTypeName; //课程类型名称
    @TableField(exist = false)
    private String teachersName;   //任课老师，可能有多个
    @TableField(exist = false)
    private Integer studentNum;    //选课人数
    @TableField(exist = false)
    private String[] teacherIds;   //任课老师id
    @TableField(exist = false)
    private String[] ids;          //id集合，可以是课程的id，也可能是课程-老师中间表的id
    @TableField(exist = false)
    private Double score;          //得分
    @TableField(exist = false)
    private Integer status;      //老师是否录入了成绩：1是，0否
    @TableField(exist = false)
    private String isCanDelete;  //是否可以退订已选课程
}
