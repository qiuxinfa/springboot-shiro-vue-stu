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

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    QuestionFillJudge queryById(String id);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<QuestionFillJudge> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param questionFillJudge 实例对象
     * @return 对象列表
     */
    List<QuestionFillJudge> queryAll(QuestionFillJudge questionFillJudge);

    /**
     * 新增数据
     *
     * @param questionFillJudge 实例对象
     * @return 影响行数
     */
    int insert(QuestionFillJudge questionFillJudge);

    /**
     * 修改数据
     *
     * @param questionFillJudge 实例对象
     * @return 影响行数
     */
    int update(QuestionFillJudge questionFillJudge);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteById(String id);

}