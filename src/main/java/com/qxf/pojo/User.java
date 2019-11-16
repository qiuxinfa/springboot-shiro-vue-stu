package com.qxf.pojo;

import lombok.Data;

import java.io.Serializable;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/15
 * @Description: 用户实体
 */
@Data
public class User implements Serializable{
    private String id;
    private String username;    //用户名
    private String password;    //密码
    private String email;       //邮箱
    private String photoUrl;    //头像地址
    private Integer userType;   //用户类型
    private Integer enable;     //是否可用
}
