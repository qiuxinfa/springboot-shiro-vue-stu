package com.qxf.pojo;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/15
 * @Description: 权限
 */
@Data
@TableName("t_perms")
public class Perms implements Serializable{
    private String id;
    private String name;      //权限名
    private String url;       //权限地址
    @TableField("parent_id")
    private String parentId;  //父权限id
    private Integer type;     //权限类型
    private Integer sort;     //权限排序号
    @TableField(exist = false)
    private List<Perms> children; //子权限
    @TableField(exist = false)
    private String lastPermis; //上级菜单名称
    @TableField(exist = false)
    private String[] ids;     //要删除的权限id
}
