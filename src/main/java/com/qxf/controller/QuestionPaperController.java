package com.qxf.controller;

import com.qxf.pojo.ExamVo;
import com.qxf.pojo.QuestionExam;
import com.qxf.pojo.QuestionPaper;
import com.qxf.service.QuestionPaperService;
import com.qxf.utils.EnumCode;
import com.qxf.utils.ResultUtil;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * 试卷(QuestionPaper)表控制层
 *
 * @author makejava
 * @since 2020-02-15 16:56:56
 */
@RestController
@RequestMapping("paper")
public class QuestionPaperController {
    /**
     * 服务对象
     */
    @Resource
    private QuestionPaperService questionPaperService;

    /**
     * 通过主键查询单条数据
     *
     * @param paperId 主键
     * @return 单条数据
     */
    @GetMapping("getPaperById")
    public Object getPaperById(String paperId) {
        Map<String,List<?>> map = this.questionPaperService.getPaperById(paperId);
        return ResultUtil.result(EnumCode.OK.getValue(),"请求成功",map);
    }

    //随机组卷（暂时不考虑多选题）
    @PostMapping("/add")
    public Object add(ExamVo exam) {
        return this.questionPaperService.add(exam);
    }
}