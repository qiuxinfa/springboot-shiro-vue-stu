package com.qxf.pojo;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/15
 * @Description: 专业
 */
@Data
@TableName("t_major")
public class Major implements Serializable{
    private String id;
    private String name;          //专业名称
    @TableField("major_number")
    private String majorNumber;   //专业编码
    @TableField("institute_id")
    private String instituteId;   //学院id
    @TableField(exist = false)
    private String instituteName; //所属学院名称
    @TableField(exist = false)
    private String[] ids;            //id集合
}
