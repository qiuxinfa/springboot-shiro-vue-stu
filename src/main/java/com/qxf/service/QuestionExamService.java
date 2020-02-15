package com.qxf.service;

import com.qxf.pojo.QuestionExam;
import java.util.List;

/**
 * 考试安排(QuestionExam)表服务接口
 *
 * @author makejava
 * @since 2020-02-15 16:56:56
 */
public interface QuestionExamService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    QuestionExam queryById(String id);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<QuestionExam> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param questionExam 实例对象
     * @return 实例对象
     */
    QuestionExam insert(QuestionExam questionExam);

    /**
     * 修改数据
     *
     * @param questionExam 实例对象
     * @return 实例对象
     */
    QuestionExam update(QuestionExam questionExam);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(String id);

}