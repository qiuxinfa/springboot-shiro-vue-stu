package com.qxf.pojo;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/15
 * @Description: 班级
 */
@Data
@TableName("t_clazz")
public class Clazz implements Serializable{
    private String id;
    @TableField("clazz_number")
    private String clazzNumber;      //班级编码
    private String name;             //班级名
    @TableField("major_id")
    private String majorId;          //班级所属专业id
    @TableField("institute_id")
    private String instituteId;      //班级所属学院id
}
