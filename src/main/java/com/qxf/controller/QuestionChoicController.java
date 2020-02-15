package com.qxf.controller;

import com.qxf.pojo.QuestionChoic;
import com.qxf.service.QuestionChoicService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * 选择题库，question_type2单选，3多选(QuestionChoic)表控制层
 *
 * @author makejava
 * @since 2020-02-15 16:56:52
 */
@RestController
@RequestMapping("questionChoic")
public class QuestionChoicController {
    /**
     * 服务对象
     */
    @Resource
    private QuestionChoicService questionChoicService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public QuestionChoic selectOne(String id) {
        return this.questionChoicService.queryById(id);
    }

}