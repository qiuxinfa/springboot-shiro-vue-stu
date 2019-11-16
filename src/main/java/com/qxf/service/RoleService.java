package com.qxf.service;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.IService;
import com.qxf.pojo.Role;

import java.util.List;

public interface RoleService extends IService<Role> {

    /**
     * @desc: 查询角色
     */
    List<Role> findRoleByPage(Page<Role> page, String roleName);

    /**
     * @desc: 新增角色
     */
    Object addRoles(Role vo);

    /**
     * @desc: 删除角色
     */
    Object delRole(String[] ids);

    /**
     * 绑定角色下拉框
     */
    List<Role> findAllRoles();
}
