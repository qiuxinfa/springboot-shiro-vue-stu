package com.qxf.pojo;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/15
 * @Description: 登录日志
 */
@Data
@TableName("t_login_log")
public class LoginLog implements Serializable{
    private String id;
    @TableField("user_id")
    private String userId;        //用户id
    @TableField("login_time")
    private Date loginTime;       //登录时间
    @TableField("login_ip")
    private String loginIp;       //登录IP
    @TableField("login_total")
    private Integer loginTotal;  //登录次数
    @TableField(exist = false)
    private String username;     //用户名
}
