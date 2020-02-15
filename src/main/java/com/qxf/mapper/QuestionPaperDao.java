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

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    QuestionPaper queryById(String id);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<QuestionPaper> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param questionPaper 实例对象
     * @return 对象列表
     */
    List<QuestionPaper> queryAll(QuestionPaper questionPaper);

    /**
     * 新增数据
     *
     * @param questionPaper 实例对象
     * @return 影响行数
     */
    int insert(QuestionPaper questionPaper);

    /**
     * 修改数据
     *
     * @param questionPaper 实例对象
     * @return 影响行数
     */
    int update(QuestionPaper questionPaper);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteById(String id);

}