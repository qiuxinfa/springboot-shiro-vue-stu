package com.qxf.pojo;

import lombok.Data;

import java.io.Serializable;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/15
 * @Description: 角色
 */
@Data
public class Role implements Serializable{
    private String id;
    private String name;       //角色名称
    private String roleDesc;   //角色描述
}
