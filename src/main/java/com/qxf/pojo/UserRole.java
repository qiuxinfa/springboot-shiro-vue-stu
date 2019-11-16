package com.qxf.pojo;

import lombok.Data;

import java.io.Serializable;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/15
 * @Description: 用户-角色
 */
@Data
public class UserRole implements Serializable{
    private String id;
    private String userId;   //用户id
    private String roleId;   //角色id
}
