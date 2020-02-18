package com.qxf.service.impl;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.qxf.pojo.QuestionExam;
import com.qxf.mapper.QuestionExamDao;
import com.qxf.service.QuestionExamService;
import org.springframework.stereotype.Service;
import java.util.List;

/**
 * 考试安排(QuestionExam)表服务实现类
 *
 * @author makejava
 * @since 2020-02-15 16:56:56
 */
@Service("questionExamService")
public class QuestionExamServiceImpl extends ServiceImpl<QuestionExamDao,QuestionExam> implements QuestionExamService {


    @Override
    public List<QuestionExam> getListByPage(Page<QuestionExam> page, String name) {
        return super.baseMapper.getListByPage(page,name);
    }

    @Override
    public QuestionExam getExamById(String id) {
        return super.baseMapper.getExamById(id);
    }

}