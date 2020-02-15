package com.qxf.service;

import com.qxf.pojo.QuestionChoic;
import java.util.List;

/**
 * 选择题库，question_type2单选，3多选(QuestionChoic)表服务接口
 *
 * @author makejava
 * @since 2020-02-15 16:56:52
 */
public interface QuestionChoicService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    QuestionChoic queryById(String id);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<QuestionChoic> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param questionChoic 实例对象
     * @return 实例对象
     */
    QuestionChoic insert(QuestionChoic questionChoic);

    /**
     * 修改数据
     *
     * @param questionChoic 实例对象
     * @return 实例对象
     */
    QuestionChoic update(QuestionChoic questionChoic);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(String id);

}