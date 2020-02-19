package com.qxf.service.impl;

import com.qxf.mapper.QuestionChoicDao;
import com.qxf.mapper.QuestionExamDao;
import com.qxf.mapper.QuestionFillJudgeDao;
import com.qxf.pojo.*;
import com.qxf.mapper.QuestionPaperDao;
import com.qxf.service.QuestionPaperService;
import com.qxf.utils.EnumCode;
import com.qxf.utils.ResultUtil;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.*;

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

    @Resource
    private QuestionPaperDao questionPaperDao;

    @Resource
    private QuestionExamDao questionExamDao;

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

    @Override
    public Object add(ExamVo exam) {
        String paperId = exam.getPaperId();
        Integer fillCnt = exam.getFillCnt();
        Integer judgeCnt = exam.getJudgeCnt();
        Integer singleCnt = exam.getSingleCnt();
        Integer totalScore = 0;
        String msg = "随机组卷失败，失败原因：";
        //0.填空题的数量
        List<QuestionFillJudge> fills = questionFillJudgeDao.getQuestionFillJudgeList("0",null);
        if(fills!=null && fillCnt > fills.size()){
            msg += "填空题数量最多是"+fills.size()+"题";
            return ResultUtil.result(EnumCode.BAD_REQUEST.getValue(),msg);
        }
        //1.判断题的数量
        List<QuestionFillJudge> judges = questionFillJudgeDao.getQuestionFillJudgeList("1",null);
        if(judges!=null && judgeCnt > judges.size()){
            msg += "判断题数量最多是"+judges.size()+"题";
            return ResultUtil.result(EnumCode.BAD_REQUEST.getValue(),msg);
        }
        //2.单选题的数量
        List<QuestionChoic> singles = questionChoicDao.getQuestionChoicList("2",null);
        if(singles!=null && singleCnt > singles.size()){
            msg += "单选题数量最多是"+singles.size()+"题";
            return ResultUtil.result(EnumCode.BAD_REQUEST.getValue(),msg);
        }
        //3.多选题的数量（暂时不考虑多选题）
//        List<QuestionChoic> multiples = questionChoicDao.getQuestionChoicList("3",null);

        //打乱list中的数据顺序
        Collections.shuffle(fills);
        Collections.shuffle(judges);
        Collections.shuffle(singles);

        //向question_paper表插入数据
        for (int i=0;i<fillCnt;i++){
            QuestionFillJudge fill = fills.get(i);
            QuestionPaper paper = new QuestionPaper();
            paper.setId(UUID.randomUUID().toString().replace("-",""));
            paper.setPaperId(paperId);
            paper.setQuestionId(fill.getId());
            int cnt = questionPaperDao.add(paper);
            if(cnt > 0){
                totalScore += Integer.valueOf(fill.getQuestionScore());
            }
        }
        for (int i=0;i<judgeCnt;i++){
            QuestionFillJudge judge = judges.get(i);
            QuestionPaper paper = new QuestionPaper();
            paper.setId(UUID.randomUUID().toString().replace("-",""));
            paper.setQuestionId(judge.getId());
            paper.setPaperId(paperId);
            int cnt = questionPaperDao.add(paper);
            if(cnt > 0){
                totalScore += Integer.valueOf(judge.getQuestionScore());
            }
        }
        for (int i=0;i<singleCnt;i++){
            QuestionChoic single = singles.get(i);
            QuestionPaper paper = new QuestionPaper();
            paper.setQuestionId(single.getId());
            paper.setId(UUID.randomUUID().toString().replace("-",""));
            paper.setPaperId(paperId);
            int cnt = questionPaperDao.add(paper);
            if(cnt > 0){
                totalScore += Integer.valueOf(single.getQuestionScore());
            }
        }
        //更新考试的总分
        QuestionExam questionExam = new QuestionExam();
        questionExam.setPaperId(paperId);
        questionExam.setTotalScore(totalScore);
        int cnt = questionExamDao.updateScoreByPaperId(questionExam);
        if(cnt > 0){
            return ResultUtil.result(EnumCode.OK.getValue(),"随机组卷成功");
        }else {
            return ResultUtil.result(EnumCode.OK.getValue(),"随机组卷失败，失败原因：更新总分失败");
        }

    }
}