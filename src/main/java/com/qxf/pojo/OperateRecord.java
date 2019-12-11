package com.qxf.pojo;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/15
 * @Description: 操作记录
 */
@Data
@TableName("t_operate_record")
public class OperateRecord implements Serializable{
    private String id;
    @TableField("request_url")
    private String requestUrl;      //请求url
    @TableField("remote_addr")
    private String remoteAddr;      //请求IP
    private String params;          //请求参数
    private String method;          //请求方法
    @TableField("create_time")
    private Date createTime;        //请求时间
    @TableField("user_id")
    private String userId;          //用户id
    @TableField("is_success")
    private Integer isSuccess;      //请求是否成功
    @TableField(exist = false)
    private String permName;        //请求url
    @TableField(exist = false)
    private String username;        //用户名
    @TableField(exist = false)
    private Integer total;          //请求次数
    @TableField(exist = false)
    private Integer type;          //请求类型
}
