package com.qxf.service.impl;

import com.qxf.pojo.QuestionExam;
import com.qxf.mapper.QuestionExamDao;
import com.qxf.service.QuestionExamService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 考试安排(QuestionExam)表服务实现类
 *
 * @author makejava
 * @since 2020-02-15 16:56:56
 */
@Service("questionExamService")
public class QuestionExamServiceImpl implements QuestionExamService {
    @Resource
    private QuestionExamDao questionExamDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public QuestionExam queryById(String id) {
        return this.questionExamDao.queryById(id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<QuestionExam> queryAllByLimit(int offset, int limit) {
        return this.questionExamDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param questionExam 实例对象
     * @return 实例对象
     */
    @Override
    public QuestionExam insert(QuestionExam questionExam) {
        this.questionExamDao.insert(questionExam);
        return questionExam;
    }

    /**
     * 修改数据
     *
     * @param questionExam 实例对象
     * @return 实例对象
     */
    @Override
    public QuestionExam update(QuestionExam questionExam) {
        this.questionExamDao.update(questionExam);
        return this.queryById(questionExam.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(String id) {
        return this.questionExamDao.deleteById(id) > 0;
    }
}