package com.qxf.controller;

import com.qxf.pojo.QuestionExam;
import com.qxf.service.QuestionExamService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * 考试安排(QuestionExam)表控制层
 *
 * @author makejava
 * @since 2020-02-15 16:56:56
 */
@RestController
@RequestMapping("questionExam")
public class QuestionExamController {
    /**
     * 服务对象
     */
    @Resource
    private QuestionExamService questionExamService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public QuestionExam selectOne(String id) {
        return this.questionExamService.queryById(id);
    }

}