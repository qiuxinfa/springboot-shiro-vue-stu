package com.qxf.controller;

import com.qxf.pojo.SysDict;
import com.qxf.utils.EnumCode;
import com.qxf.utils.ResultUtil;
import org.springframework.web.bind.annotation.RequestMapping;
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

    public Object findListByDictTypeCode(String dictTypeCode){
        List<SysDict> list = null;
        return ResultUtil.result(EnumCode.OK.getValue(),"请求成功",list);
    }
}
