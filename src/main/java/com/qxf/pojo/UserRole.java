package com.qxf.pojo;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/15
 * @Description: 用户-角色
 */
@Data
@TableName("t_user_role")
public class UserRole implements Serializable{
    private String id;
    @TableField("user_id")
    private String userId;   //用户id
    @TableField("role_id")
    private String roleId;   //角色id
}
