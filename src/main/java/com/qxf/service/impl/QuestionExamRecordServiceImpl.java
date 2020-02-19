package com.qxf.service.impl;

import com.qxf.pojo.QuestionExamRecord;
import com.qxf.mapper.QuestionExamRecordDao;
import com.qxf.pojo.User;
import com.qxf.service.QuestionExamRecordService;
import com.qxf.utils.EnumCode;
import com.qxf.utils.ResultUtil;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * 考试记录表(QuestionExamRecord)表服务实现类
 *
 * @author makejava
 * @since 2020-02-15 16:56:57
 */
@Service("questionExamRecordService")
public class QuestionExamRecordServiceImpl implements QuestionExamRecordService {
    @Resource
    private QuestionExamRecordDao questionExamRecordDao;

    @Override
    public Object add(QuestionExamRecord questionExamRecord) {
        Subject subject = SecurityUtils.getSubject();
        User user = (User) subject.getPrincipal();
        questionExamRecord.setId(UUID.randomUUID().toString().replace("-",""));
        questionExamRecord.setJoinId(user.getId());  //当前考试人ID
        questionExamRecord.setJoinDate(new Date());  //考试日期
        //questionExamRecord.setJoinResultLevel();
        this.questionExamRecordDao.add(questionExamRecord);
        return ResultUtil.result(EnumCode.OK.getValue(),"考试结束，成绩为："+questionExamRecord.getJoinScore()+"分");
    }
}