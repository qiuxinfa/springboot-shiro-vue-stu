package com.qxf.service.impl;

import com.qxf.pojo.QuestionChoic;
import com.qxf.mapper.QuestionChoicDao;
import com.qxf.service.QuestionChoicService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 选择题库，question_type2单选，3多选(QuestionChoic)表服务实现类
 *
 * @author makejava
 * @since 2020-02-15 16:56:52
 */
@Service("questionChoicService")
public class QuestionChoicServiceImpl implements QuestionChoicService {
    @Resource
    private QuestionChoicDao questionChoicDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public QuestionChoic queryById(String id) {
        return this.questionChoicDao.queryById(id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<QuestionChoic> queryAllByLimit(int offset, int limit) {
        return this.questionChoicDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param questionChoic 实例对象
     * @return 实例对象
     */
    @Override
    public QuestionChoic insert(QuestionChoic questionChoic) {
        this.questionChoicDao.insert(questionChoic);
        return questionChoic;
    }

    /**
     * 修改数据
     *
     * @param questionChoic 实例对象
     * @return 实例对象
     */
    @Override
    public QuestionChoic update(QuestionChoic questionChoic) {
        this.questionChoicDao.update(questionChoic);
        return this.queryById(questionChoic.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(String id) {
        return this.questionChoicDao.deleteById(id) > 0;
    }
}