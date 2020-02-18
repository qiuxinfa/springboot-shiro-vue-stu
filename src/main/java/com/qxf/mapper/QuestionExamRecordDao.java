package com.qxf.mapper;

import com.qxf.pojo.QuestionExamRecord;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 考试记录表(QuestionExamRecord)表数据库访问层
 *
 * @author makejava
 * @since 2020-02-15 16:56:57
 */
public interface QuestionExamRecordDao {
    int add(QuestionExamRecord questionExamRecord);
}