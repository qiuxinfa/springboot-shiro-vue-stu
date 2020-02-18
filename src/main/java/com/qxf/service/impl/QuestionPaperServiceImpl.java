package com.qxf.service.impl;

import com.qxf.mapper.QuestionChoicDao;
import com.qxf.mapper.QuestionFillJudgeDao;
import com.qxf.pojo.QuestionChoic;
import com.qxf.pojo.QuestionFillJudge;
import com.qxf.pojo.QuestionPaper;
import com.qxf.mapper.QuestionPaperDao;
import com.qxf.service.QuestionPaperService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 试卷(QuestionPaper)表服务实现类
 *
 * @author makejava
 * @since 2020-02-15 16:56:56
 */
@Service("questionPaperService")
public class QuestionPaperServiceImpl implements QuestionPaperService {
    @Resource
    private QuestionFillJudgeDao questionFillJudgeDao;

    @Resource
    private QuestionChoicDao questionChoicDao;

    @Override
    public Map<String, List<?>> getPaperById(String paperId) {
        //0.填空题
        List<QuestionFillJudge> fills = questionFillJudgeDao.getQuestionFillJudgeList("0",paperId);
        //1.判断题
        List<QuestionFillJudge> judges = questionFillJudgeDao.getQuestionFillJudgeList("1",paperId);
        //2.单选题
        List<QuestionChoic> singles = questionChoicDao.getQuestionChoicList("2",paperId);
        //3.多选题
        List<QuestionChoic> multiples = questionChoicDao.getQuestionChoicList("3",paperId);
        Map<String, List<?>> map = new HashMap<>();
        map.put("0",fills);
        map.put("1",judges);
        map.put("2",singles);
        map.put("3",multiples);
        return map;
    }
}