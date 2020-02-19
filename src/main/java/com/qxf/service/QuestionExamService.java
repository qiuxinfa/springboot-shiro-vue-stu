package com.qxf.service;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.IService;
import com.qxf.pojo.QuestionExam;
import java.util.List;

/**
 * 考试安排(QuestionExam)表服务接口
 *
 * @author makejava
 * @since 2020-02-15 16:56:56
 */
public interface QuestionExamService extends IService<QuestionExam>{

    List<QuestionExam> getListByPage(Page<QuestionExam> page, String name);

    QuestionExam getExamById(String id);

    Object add(QuestionExam exam);

    Object delete(String[] ids);

}