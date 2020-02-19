package com.qxf.controller;

import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.plugins.Page;
import com.qxf.pojo.QuestionExam;
import com.qxf.service.QuestionExamService;
import com.qxf.utils.EnumCode;
import com.qxf.utils.ResultUtil;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * 考试安排(QuestionExam)表控制层
 *
 * @author makejava
 * @since 2020-02-15 16:56:56
 */
@RestController
@RequestMapping("exam")
public class QuestionExamController {
    /**
     * 服务对象
     */
    @Resource
    private QuestionExamService questionExamService;

    //分页查询考试列表
    @GetMapping("/list")
    public Object getListByPage(Integer startPage,Integer pageSize,String name){
        Page<QuestionExam> page = new Page<>(startPage,pageSize);
        List<QuestionExam> list = questionExamService.getListByPage(page,name);
        return ResultUtil.result(EnumCode.OK.getValue(),"请求成功",list,page.getTotal());
    }

    //根据ID查询考试安排
    @GetMapping("/getExamById")
    public Object getExamById(String id){
        QuestionExam result = questionExamService.getExamById(id);
        return ResultUtil.result(EnumCode.OK.getValue(),"请求成功", JSONObject.toJSONString(result));
    }

    @PostMapping("/add")
    public Object add(QuestionExam exam) {
        return this.questionExamService.add(exam);
    }


    @PostMapping("/delete")
    public Object delete(QuestionExam exam){
        String[] ids = exam.getIds();
        if (null == ids || ids.length == 0) {
            return ResultUtil.result(EnumCode.BAD_REQUEST.getValue(), EnumCode.BAD_REQUEST.getText());
        }
        return questionExamService.delete(ids);
    }
}