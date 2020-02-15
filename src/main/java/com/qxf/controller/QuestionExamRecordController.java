package com.qxf.controller;

import com.qxf.pojo.QuestionExamRecord;
import com.qxf.service.QuestionExamRecordService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * 考试记录表(QuestionExamRecord)表控制层
 *
 * @author makejava
 * @since 2020-02-15 16:56:57
 */
@RestController
@RequestMapping("questionExamRecord")
public class QuestionExamRecordController {
    /**
     * 服务对象
     */
    @Resource
    private QuestionExamRecordService questionExamRecordService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public QuestionExamRecord selectOne(String id) {
        return this.questionExamRecordService.queryById(id);
    }

}