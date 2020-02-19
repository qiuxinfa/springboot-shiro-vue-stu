package com.qxf.mapper;

import com.qxf.pojo.QuestionPaper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 试卷(QuestionPaper)表数据库访问层
 *
 * @author makejava
 * @since 2020-02-15 16:56:56
 */
public interface QuestionPaperDao {
    int add(QuestionPaper questionPaper);
}