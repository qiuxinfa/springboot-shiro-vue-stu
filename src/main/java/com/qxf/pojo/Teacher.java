package com.qxf.pojo;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/15
 * @Description: 老师
 */
@Data
@TableName("t_teacher")
public class Teacher implements Serializable{
    private String id;
    private String name;             //老师姓名
    private Integer age;             //年龄
    private Integer sex;             //年龄
    private String title;            //职称id
    private String email;            //邮箱
    private String phone;            //电话
    @TableField("photo_url")
    private String photoUrl;        //头像地址
    @TableField(exist = false)
    private String titleName;       //职称名称
    @TableField(exist = false)
    private String[] ids;            //id集合
}
