package com.qxf.pojo;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/15
 * @Description: 角色-权限
 */
@Data
@TableName("t_role_perms")
public class RolePerms implements Serializable{
    private String id;
    @TableField("role_id")
    private String roleId;   //角色id
    @TableField("perms_id")
    private String permsId;  //权限id
    @TableField(exist = false)
    private String[] permsIds;  //某个角色的全部权限

    private String[] ids;    //
}
