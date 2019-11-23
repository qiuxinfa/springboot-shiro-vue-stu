package com.qxf.pojo;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/15
 * @Description: 角色
 */
@Data
@TableName("t_role")
public class Role implements Serializable{
    private String id;
    private String name;       //角色名称
    @TableField("role_desc")
    private String roleDesc;   //角色描述
    @TableField(exist = false)
    private String[] ids;      //要删除的角色id
}
