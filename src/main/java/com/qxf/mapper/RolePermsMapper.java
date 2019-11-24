package com.qxf.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.qxf.pojo.Perms;
import com.qxf.pojo.RolePerms;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RolePermsMapper extends BaseMapper<RolePerms> {

    /**
     * 根据角色查询角色权限
     */
    List<RolePerms> findRolesPermisByRole(@Param("roleId") String roleId);

    /**
     * 根据角色id查询记录数
     */
    Integer findCountByRole(@Param("roleId") String roleId, @Param("url") String url);

    /**
     * 根据父id\角色id查询角色菜单
     */
    List<Perms> findRolesPermisByFatherId(@Param("parentId") String parentId, @Param("roleId") String roleId);
}