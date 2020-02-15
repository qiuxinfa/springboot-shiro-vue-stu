package com.qxf.service;

import com.qxf.pojo.QuestionFillJudge;
import java.util.List;

/**
 * 填空题和判断题库，question_type，0填空1判断(QuestionFillJudge)表服务接口
 *
 * @author makejava
 * @since 2020-02-15 16:56:56
 */
public interface QuestionFillJudgeService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    QuestionFillJudge queryById(String id);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<QuestionFillJudge> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param questionFillJudge 实例对象
     * @return 实例对象
     */
    QuestionFillJudge insert(QuestionFillJudge questionFillJudge);

    /**
     * 修改数据
     *
     * @param questionFillJudge 实例对象
     * @return 实例对象
     */
    QuestionFillJudge update(QuestionFillJudge questionFillJudge);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(String id);

}