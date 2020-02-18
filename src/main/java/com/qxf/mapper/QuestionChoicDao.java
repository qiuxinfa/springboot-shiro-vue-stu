package com.qxf.mapper;

import com.qxf.pojo.QuestionChoic;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 选择题库，question_type2单选，3多选(QuestionChoic)表数据库访问层
 *
 * @author makejava
 * @since 2020-02-15 16:56:51
 */
public interface QuestionChoicDao {
    List<QuestionChoic> getQuestionChoicList(@Param("questionType") String questionType, @Param("paperId") String paperId);

}