package com.qxf.service.impl;

import com.qxf.pojo.QuestionFillJudge;
import com.qxf.mapper.QuestionFillJudgeDao;
import com.qxf.service.QuestionFillJudgeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 填空题和判断题库，question_type，0填空1判断(QuestionFillJudge)表服务实现类
 *
 * @author makejava
 * @since 2020-02-15 16:56:56
 */
@Service("questionFillJudgeService")
public class QuestionFillJudgeServiceImpl implements QuestionFillJudgeService {
    @Resource
    private QuestionFillJudgeDao questionFillJudgeDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public QuestionFillJudge queryById(String id) {
        return this.questionFillJudgeDao.queryById(id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<QuestionFillJudge> queryAllByLimit(int offset, int limit) {
        return this.questionFillJudgeDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param questionFillJudge 实例对象
     * @return 实例对象
     */
    @Override
    public QuestionFillJudge insert(QuestionFillJudge questionFillJudge) {
        this.questionFillJudgeDao.insert(questionFillJudge);
        return questionFillJudge;
    }

    /**
     * 修改数据
     *
     * @param questionFillJudge 实例对象
     * @return 实例对象
     */
    @Override
    public QuestionFillJudge update(QuestionFillJudge questionFillJudge) {
        this.questionFillJudgeDao.update(questionFillJudge);
        return this.queryById(questionFillJudge.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(String id) {
        return this.questionFillJudgeDao.deleteById(id) > 0;
    }
}