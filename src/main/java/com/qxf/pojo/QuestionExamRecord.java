package com.qxf.pojo;

import java.io.Serializable;

/**
 * 考试记录表(QuestionExamRecord)实体类
 *
 * @author makejava
 * @since 2020-02-15 16:56:57
 */
public class QuestionExamRecord implements Serializable {
    private static final long serialVersionUID = -99076139299360705L;
    /**
    * 考试记录表的主键
    */
    private String id;
    /**
    * 考试安排ID
    */
    private String examId;
    /**
    * 考试参与者的用户id
    */
    private String joinId;
    /**
    * 参加考试的时间
    */
    private Object joinDate;
    /**
    * 完成考试所用的时间,单位分钟
    */
    private Integer joinTimeCost;
    /**
    * 参与考试的实际得分
    */
    private Integer joinScore;
    /**
    * 考试结果的等级
    */
    private Integer joinResultLevel;
    /**
    * 考生选择的答案id集合
    */
    private String joinAnswerIds;


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getExamId() {
        return examId;
    }

    public void setExamId(String examId) {
        this.examId = examId;
    }

    public String getJoinId() {
        return joinId;
    }

    public void setJoinId(String joinId) {
        this.joinId = joinId;
    }

    public Object getJoinDate() {
        return joinDate;
    }

    public void setJoinDate(Object joinDate) {
        this.joinDate = joinDate;
    }

    public Integer getJoinTimeCost() {
        return joinTimeCost;
    }

    public void setJoinTimeCost(Integer joinTimeCost) {
        this.joinTimeCost = joinTimeCost;
    }

    public Integer getJoinScore() {
        return joinScore;
    }

    public void setJoinScore(Integer joinScore) {
        this.joinScore = joinScore;
    }

    public Integer getJoinResultLevel() {
        return joinResultLevel;
    }

    public void setJoinResultLevel(Integer joinResultLevel) {
        this.joinResultLevel = joinResultLevel;
    }

    public String getJoinAnswerIds() {
        return joinAnswerIds;
    }

    public void setJoinAnswerIds(String joinAnswerIds) {
        this.joinAnswerIds = joinAnswerIds;
    }

}