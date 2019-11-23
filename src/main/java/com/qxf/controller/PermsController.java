package com.qxf.controller;

import com.baomidou.mybatisplus.plugins.Page;
import com.qxf.pojo.Perms;
import com.qxf.service.PermsService;
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
@RequestMapping(value = "perms")
public class PermsController extends BaseController{

    @Autowired
    private PermsService permissionService;

    /**
     * @desc: 查询菜单
     */
    @RequestMapping(value = "/list" ,method = RequestMethod.GET)
    public Object findPermissionByPage(Integer startPage,Integer pageSize,String permsName) {

        Page<Perms> page = new Page<Perms>(startPage,pageSize);
        List<Perms> list = permissionService.findPermissionByPage(page,permsName);
        return ResultUtil.result(EnumCode.OK.getValue(),EnumCode.OK.getText(),list,page.getTotal());
    }

    /**
     * @desc: 新增菜单
     */
    @RequestMapping(value = "/add" ,method = RequestMethod.POST)
    public Object addPermissions(@Valid Perms vo, BindingResult bindingResult) {
      return permissionService.addPermissions(vo);
    }

    /**
     * @desc: 删除菜单
     */
    @RequestMapping(value = "/delete",method = RequestMethod.POST)
    public Object delPermis(Perms perms) {
        String[] ids = perms.getIds();
        if (null == ids || ids.length == 0) {
            return ResultUtil.result(EnumCode.BAD_REQUEST.getValue(), EnumCode.BAD_REQUEST.getText());
        }
        return permissionService.delPermis(ids);
    }

    /**
     * @desc: 查询父级菜单为1的所有菜单
     */
    @RequestMapping(value = "/findLastPermissionByType" ,method = RequestMethod.GET)
    public Object findAllBasePermission(String type) {
        List<Perms> list = permissionService.findLastPermissionByType(type);
        if (null == list ||list.isEmpty()) {
            return ResultUtil.result(EnumCode.GONE.getValue(),"没有记录");
        }
        return ResultUtil.result(EnumCode.OK.getValue(),EnumCode.OK.getText(),list);
    }

    /**
     * @desc: 绑定树形菜单
     */
    @RequestMapping(value = "/findBasePermission" ,method = RequestMethod.GET)
    public Object findBasePermission() {
        List<Perms> list = permissionService.findBasePermission();
        return ResultUtil.result(EnumCode.OK.getValue(),EnumCode.OK.getText(),list);
    }
}
