package com.qxf.mapper;

import com.qxf.pojo.QuestionFillJudge;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 填空题和判断题库，question_type，0填空1判断(QuestionFillJudge)表数据库访问层
 *
 * @author makejava
 * @since 2020-02-15 16:56:56
 */
public interface QuestionFillJudgeDao {
    List<QuestionFillJudge> getQuestionFillJudgeList(@Param("questionType") String questionType, @Param("paperId") String paperId);
}