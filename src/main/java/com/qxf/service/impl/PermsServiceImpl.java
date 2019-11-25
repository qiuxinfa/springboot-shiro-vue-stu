package com.qxf.service.impl;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.qxf.mapper.PermsMapper;
import com.qxf.pojo.Perms;
import com.qxf.service.PermsService;
import com.qxf.utils.EnumCode;
import com.qxf.utils.ResultUtil;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;


@Service
public class PermsServiceImpl extends ServiceImpl<PermsMapper, Perms> implements PermsService {


    public List<Perms> loadUserResources(Map map){
        return null;
    }

    /**
     * @desc: 查询菜单
     */
    public List<Perms> findPermissionByPage(Page<Perms> page,String dto) {
        return super.baseMapper.findPermissionByPage(page,dto);
    }

    /**
     * @desc: 新增菜单
     */
    @Transactional
    public Object addPermissions(Perms vo) {

        Perms p = new Perms();
        p.setId(UUID.randomUUID().toString());
        p.setName(vo.getName());
        p.setUrl(vo.getUrl());
        p.setType(vo.getType());
        p.setParentId(vo.getParentId());
        baseMapper.insert(p);
        return ResultUtil.result(EnumCode.OK.getValue(), "新增成功");

    }

    /**
     * @desc: 删除菜单  应该同时删掉t_role_perms表的相关记录
     */
    @Transactional
    public Object delPermis(String[] ids) {

        for (String id : ids) {
           super.baseMapper.deleteById(id);


        }
        return ResultUtil.result(EnumCode.OK.getValue(), "删除成功");
    }

    /**
     * @desc: 根据菜单查询菜单
     */
    public List<Perms> findPermissionByName(String name) {
        return super.baseMapper.findPermissionByName(name);
    }

    /**
     * @desc: 根据父级id查询上级菜单
     */
    public List<Perms> findLastPermissionByType(String type) {
        return super.baseMapper.findLastPermissionByType(type);
    }

    /**
     * @desc: 查询所有父级菜单绑定树形
     */
    public List<Perms> findBasePermission() {
        List<Perms> list = super.baseMapper.findBasePermission();
        if (null != list && !list.isEmpty()) {
            for (int i = 0,j = list.size();i< j;i++) {
               List<Perms> children = super.baseMapper.findPermissionByFatherId(list.get(i).getId());
               if (null != children && !children.isEmpty()) {
                   list.get(i).setChildren(children);
                   for (int i1 = 0, j1 = children.size();i1 < j1; i1++) {
                       List<Perms> children1 = super.baseMapper.findPermissionByFatherId(children.get(i1).getId());
                       if (null != children1 && !children1.isEmpty()) {
                           children.get(i1).setChildren(children1);
                       }
                   }
               }
            }
        }
        return list;
    }

    /**
     * 根据url查询记录
     */
    public Integer findCountByUrl(String requestUrl) {
        return super.baseMapper.findCountByUrl(requestUrl);
    }
}
