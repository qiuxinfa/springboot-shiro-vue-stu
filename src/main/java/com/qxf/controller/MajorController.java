package com.qxf.controller;

import com.baomidou.mybatisplus.plugins.Page;
import com.qxf.pojo.Major;
import com.qxf.service.MajorService;
import com.qxf.utils.EnumCode;
import com.qxf.utils.ResultUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/24
 * @Description: com.qxf.controller
 */
@RestController
@RequestMapping("major")
public class MajorController {

    @Autowired
    private MajorService majorService;

    @GetMapping("/list")
    public Object getListByPage(Integer startPage,Integer pageSize,String name){
        Page<Major> page = new Page<>(startPage,pageSize);
        List<Major> list = majorService.getListByPage(page,name);
        return ResultUtil.result(EnumCode.OK.getValue(),"请求成功",list,page.getTotal());
    }

    //添加学院
    @PostMapping("/add")
    public Object addMajor(Major major){
        return majorService.addMajor(major);
    }
    //添加学院
    @PostMapping("/delete")
    public Object deleteMajor(Major major){
        String[] ids = major.getIds();
        if (null == ids || ids.length == 0) {
            return ResultUtil.result(EnumCode.BAD_REQUEST.getValue(), EnumCode.BAD_REQUEST.getText());
        }
        return majorService.deleteMajor(ids);
    }
    @GetMapping("/findAllMajor")
    public Object findAllMajor(String instituteId){
        List<Major> list = majorService.findAllMajor(instituteId);
        return ResultUtil.result(EnumCode.OK.getValue(),"请求成功",list);
    }
}
