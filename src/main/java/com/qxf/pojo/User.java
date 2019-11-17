package com.qxf.pojo;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

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
    private Date createTime;    //创建时间
    private Data lastLoginTime; //最近一次登录时间
    private String roleId;      //角色id
    private String roleName;    //角色名称
    private List<Perms> userPerms; //用户拥有的权限
}
