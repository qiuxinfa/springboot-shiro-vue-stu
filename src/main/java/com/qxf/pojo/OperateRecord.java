package com.qxf.pojo;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/15
 * @Description: 操作记录
 */
@Data
public class OperateRecord implements Serializable{
    private String id;
    private String requestUrl;      //请求url
    private String remoteAddr;      //请求IP
    private String params;          //请求参数
    private String method;          //请求方法
    private Date createTime;        //请求时间
    private String userId;          //用户id
    private Integer isSuccess;      //请求是否成功
}
