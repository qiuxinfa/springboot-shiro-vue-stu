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

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    QuestionExamRecord queryById(String id);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<QuestionExamRecord> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param questionExamRecord 实例对象
     * @return 对象列表
     */
    List<QuestionExamRecord> queryAll(QuestionExamRecord questionExamRecord);

    /**
     * 新增数据
     *
     * @param questionExamRecord 实例对象
     * @return 影响行数
     */
    int insert(QuestionExamRecord questionExamRecord);

    /**
     * 修改数据
     *
     * @param questionExamRecord 实例对象
     * @return 影响行数
     */
    int update(QuestionExamRecord questionExamRecord);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteById(String id);

}