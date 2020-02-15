package com.qxf.service.impl;

import com.qxf.pojo.QuestionPaper;
import com.qxf.mapper.QuestionPaperDao;
import com.qxf.service.QuestionPaperService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 试卷(QuestionPaper)表服务实现类
 *
 * @author makejava
 * @since 2020-02-15 16:56:56
 */
@Service("questionPaperService")
public class QuestionPaperServiceImpl implements QuestionPaperService {
    @Resource
    private QuestionPaperDao questionPaperDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public QuestionPaper queryById(String id) {
        return this.questionPaperDao.queryById(id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<QuestionPaper> queryAllByLimit(int offset, int limit) {
        return this.questionPaperDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param questionPaper 实例对象
     * @return 实例对象
     */
    @Override
    public QuestionPaper insert(QuestionPaper questionPaper) {
        this.questionPaperDao.insert(questionPaper);
        return questionPaper;
    }

    /**
     * 修改数据
     *
     * @param questionPaper 实例对象
     * @return 实例对象
     */
    @Override
    public QuestionPaper update(QuestionPaper questionPaper) {
        this.questionPaperDao.update(questionPaper);
        return this.queryById(questionPaper.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(String id) {
        return this.questionPaperDao.deleteById(id) > 0;
    }
}