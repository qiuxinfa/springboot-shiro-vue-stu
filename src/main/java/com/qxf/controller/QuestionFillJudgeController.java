package com.qxf.controller;

import com.qxf.pojo.QuestionFillJudge;
import com.qxf.service.QuestionFillJudgeService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * 填空题和判断题库，question_type，0填空1判断(QuestionFillJudge)表控制层
 *
 * @author makejava
 * @since 2020-02-15 16:56:57
 */
@RestController
@RequestMapping("questionFillJudge")
public class QuestionFillJudgeController {
    /**
     * 服务对象
     */
    @Resource
    private QuestionFillJudgeService questionFillJudgeService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public QuestionFillJudge selectOne(String id) {
        return this.questionFillJudgeService.queryById(id);
    }

}