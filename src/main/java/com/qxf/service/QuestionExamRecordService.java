package com.qxf.service;

import com.qxf.pojo.QuestionExamRecord;
import java.util.List;

/**
 * 考试记录表(QuestionExamRecord)表服务接口
 *
 * @author makejava
 * @since 2020-02-15 16:56:57
 */
public interface QuestionExamRecordService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    QuestionExamRecord queryById(String id);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<QuestionExamRecord> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param questionExamRecord 实例对象
     * @return 实例对象
     */
    QuestionExamRecord insert(QuestionExamRecord questionExamRecord);

    /**
     * 修改数据
     *
     * @param questionExamRecord 实例对象
     * @return 实例对象
     */
    QuestionExamRecord update(QuestionExamRecord questionExamRecord);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(String id);

}