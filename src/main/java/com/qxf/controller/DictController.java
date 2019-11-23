package com.qxf.controller;

import com.baomidou.mybatisplus.plugins.Page;
import com.qxf.pojo.SysDict;
import com.qxf.service.DictService;
import com.qxf.utils.EnumCode;
import com.qxf.utils.ResultUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/23
 * @Description: 字典
 */
@RestController
@RequestMapping("dict")
public class DictController {

    @Autowired
    private DictService dictService;

    //查询字典列表
    @GetMapping(value = "/list")
    public Object findDictByPage(Integer startPage,Integer pageSize,String dictValue) {
        Page<SysDict> page = new Page<SysDict>(startPage,pageSize);
        List<SysDict> list = dictService.findDictByPage(page,dictValue);
        return ResultUtil.result(EnumCode.OK.getValue(), "请求成功", list, page.getTotal());
    }

    //根据字典类别查询字典下拉列表
    @GetMapping("/findListByDictTypeCode")
    public Object findListByDictTypeCode(String dictTypeCode){
        List<SysDict> list = dictService.findListByDictTypeCode(dictTypeCode);
        return ResultUtil.result(EnumCode.OK.getValue(),"请求成功",list);
    }
}
