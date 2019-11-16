package com.qxf.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.qxf.pojo.Perms;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PermsMapper extends BaseMapper<Perms> {

    /**
     * @desc: 查询菜单
     */
    List<Perms> findPermissionByPage(Pagination page, @Param("permsName") String permsName);

    /**
     * @desc: 根据菜单查询菜单
     */
    List<Perms> findPermissionByName(@Param("name") String name);

    /**
     * @desc: 查询所有父级菜单绑定下拉框
     */
    List<Perms> findLastPermissionByType(@Param("type") String type);

    /**
     * @desc: 查询所有父级菜单绑定树形
     */
    List<Perms> findBasePermission();

    /**
     * @desc: 根据父级id查询菜单
     */
    List<Perms> findPermissionByFatherId(@Param("fatherId") String fatherId);

    /**
     * 根据url查询记录
     */
    Integer findCountByUrl(@Param("requestUrl") String requestUrl);
}