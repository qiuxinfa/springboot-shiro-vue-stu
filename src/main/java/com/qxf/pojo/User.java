package com.qxf.pojo;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
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
@TableName("t_user")
public class User implements Serializable{
    private String id;
    private String username;    //用户名
    private String password;    //密码
    private String email;       //邮箱
    @TableField("photo_url")
    private String photoUrl;    //头像地址
    private Integer enable;     //是否可用
    @TableField("create_time")
    private Date createTime;    //创建时间
    @TableField("last_login_time")
    private Date lastLoginTime; //最近一次登录时间
    @TableField(exist = false)
    private String roleId;      //角色id
    @TableField(exist = false)
    private String roleName;    //角色名称
    @TableField(exist = false)
    private List<Perms> userPerms; //用户拥有的权限
    @TableField(exist = false)
    private String[] ids;          //批量删除用户的id
}
