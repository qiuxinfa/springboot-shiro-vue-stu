package com.qxf.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.qxf.pojo.Role;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RoleMapper extends BaseMapper<Role> {

    /**
     * @desc: 查询角色
     */
    List<Role> findRoleByPage(Pagination page, @Param("roleName") String roleName);

    /**
     * 绑定角色下拉框
     */
    List<Role> findAllRoles();
}