package com.qxf.pojo;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/15
 * @Description: 权限
 */
@Data
public class Perms implements Serializable{
    private String id;
    private String name;      //权限名
    private String url;       //权限地址
    private String parentId;  //父权限id
    private Integer type;     //权限类型
    private Integer sort;     //权限排序号
    private List<Perms> children; //子权限
}
