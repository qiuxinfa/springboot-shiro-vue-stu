package com.qxf.service;

import com.baomidou.mybatisplus.service.IService;
import com.qxf.pojo.Perms;
import com.qxf.pojo.RolePerms;

import java.util.List;

public interface RolePermsService extends IService<RolePerms> {

    /**
     * 添加角色权限
     */
    Object addRolesPermis(RolePerms vo);

    /**
     * 根据角色查询角色权限
     */
    List<RolePerms> findRolesPermisByRole(String roleId);

    /**
     * 根据角色id查询记录数
     */
    Integer findCountByRole(String roleId, String url);

    /**
     * 根据父id\用户类型查询角色菜单
     */
    List<Perms> findRolesPermisByFatherId(String fatherId, String roleId);
}
