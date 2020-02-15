package com.qxf.controller;

import com.qxf.pojo.QuestionPaper;
import com.qxf.service.QuestionPaperService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * 试卷(QuestionPaper)表控制层
 *
 * @author makejava
 * @since 2020-02-15 16:56:56
 */
@RestController
@RequestMapping("questionPaper")
public class QuestionPaperController {
    /**
     * 服务对象
     */
    @Resource
    private QuestionPaperService questionPaperService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public QuestionPaper selectOne(String id) {
        return this.questionPaperService.queryById(id);
    }

}