package com.qxf.service;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.IService;
import com.qxf.pojo.Perms;

import java.util.List;
import java.util.Map;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/16
 * @Description: com.qxf.service
 */
public interface PermsService extends IService<Perms> {
    List<Perms> loadUserResources(Map map);
    /**
     * @desc: 查询菜单
     */
    List<Perms> findPermissionByPage(Page<Perms> page, String permsName);

    /**
     * @desc: 新增菜单
     */
    Object addPermissions(Perms vo);

    /**
     * @desc: 删除菜单
     */
    Object delPermis(String[] ids);

    /**
     * @desc: 根据菜单查询菜单
     */
    List<Perms> findPermissionByName(String name);

    /**
     * @desc: 根据父级id查询上级菜单
     */
    List<Perms> findLastPermissionByType(String type);

    /**
     * @desc: 查询所有父级菜单绑定树形
     */
    List<Perms> findBasePermission();

    /**
     * 根据url查询记录
     */
    Integer findCountByUrl(String requestUrl);
}
