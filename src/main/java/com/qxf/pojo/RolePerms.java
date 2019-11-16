package com.qxf.pojo;

import lombok.Data;

import java.io.Serializable;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/15
 * @Description: 角色-权限
 */
@Data
public class RolePerms implements Serializable{
    private String id;
    private String roleId;   //角色id
    private String permsId;  //权限id
}
