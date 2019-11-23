package com.qxf.controller;

import com.baomidou.mybatisplus.plugins.Page;
import com.qxf.pojo.Role;
import com.qxf.pojo.RolePerms;
import com.qxf.service.RolePermsService;
import com.qxf.service.RoleService;
import com.qxf.utils.EnumCode;
import com.qxf.utils.ResultUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;
import java.util.List;

@RestController
@RequestMapping(value = "role")
public class RoleController {

    @Autowired
    private RoleService roleService;

    @Autowired
    private RolePermsService rolePermissionService;

    /**
     * @desc: 查询角色
     */
    @RequestMapping(value = "/list" ,method = RequestMethod.GET)
    public Object findRoleByPage(Integer startPage,Integer pageSize,String roleName) {

        Page<Role> page = new Page<Role>(startPage,pageSize);
        List<Role> list = roleService.findRoleByPage(page,roleName);
        return ResultUtil.result(EnumCode.OK.getValue(),EnumCode.OK.getText(),list,page.getTotal());
    }

    /**
     * @desc: 新增角色
     */
    @RequestMapping(value = "/add" ,method = RequestMethod.POST)
    public Object addRoles(@Valid Role vo, BindingResult bindingResult) {
        return roleService.addRoles(vo);
    }

    /**
     * @desc: 删除角色
     */
    @RequestMapping(value = "/delete",method = RequestMethod.POST)
    public Object delRoles(Role role) {
        String[] ids = role.getIds();
        if (null == ids || ids.length == 0) {
            return ResultUtil.result(EnumCode.BAD_REQUEST.getValue(), EnumCode.BAD_REQUEST.getText());
        }
        return roleService.delRole(ids);
    }

    /**
     * 根据角色查询角色权限
     */
    @RequestMapping(value = "/findRolesPermisByRole",method = RequestMethod.GET)
    public Object findRolesPermisByRole(String roleId) {
        if (null == roleId) {
            return ResultUtil.result(EnumCode.BAD_REQUEST.getValue(), EnumCode.BAD_REQUEST.getText());
        }
        List<RolePerms> list = rolePermissionService.findRolesPermisByRole(roleId);
        String[] arr = new String[list.size()];
        for (int i = 0,j=list.size(); i < j; i++) {
            arr[i] = list.get(i).getPermsId();
        }
        return ResultUtil.result(EnumCode.OK.getValue(),EnumCode.OK.getText(), arr);
    }

    /**
     * 添加角色权限
     */
    @RequestMapping(value = "/perms",method = RequestMethod.POST)
    public Object addRolesPermis(RolePerms vo, BindingResult bindingResult) {
        return rolePermissionService.addRolesPermis(vo);
    }

    /**
     * 绑定角色下拉框
     */
    @RequestMapping(value = "/findAllRoles",method = RequestMethod.GET)
    public Object findAllRoles(RolePerms vo,BindingResult bindingResult) {
        List<Role> list = roleService.findAllRoles();
        return ResultUtil.result(EnumCode.OK.getValue(),EnumCode.OK.getText(),list);
    }

}
