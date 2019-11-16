package com.qxf.pojo;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/15
 * @Description: 登录日志
 */
@Data
public class LoginLog implements Serializable{
    private String id;
    private String userId;        //用户id
    private Date loginTime;       //登录时间
    private String loginIp;       //登录IP
    private Integer loginTotal;  //登录次数
}
