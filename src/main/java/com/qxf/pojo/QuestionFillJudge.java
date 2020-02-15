package com.qxf.pojo;

import java.io.Serializable;

/**
 * 填空题和判断题库，question_type，0填空1判断(QuestionFillJudge)实体类
 *
 * @author makejava
 * @since 2020-02-15 16:56:56
 */
public class QuestionFillJudge implements Serializable {
    private static final long serialVersionUID = -29280519836422018L;
    /**
    * 填空题id
    */
    private String id;
    /**
    * 题目创建人ID
    */
    private String createId;
    /**
    * 题目创建时间
    */
    private Object createTime;
    /**
    * 题目更新人ID
    */
    private String updateId;
    /**
    * 题目更新时间
    */
    private Object updateTime;
    /**
    * 题目内容
    */
    private String questionContent;
    /**
    * 题目答案
    */
    private String questionAnswer;
    /**
    * 题目解析
    */
    private String questionExplain;
    /**
    * 题目分数
    */
    private String questionScore;
    /**
    * 题目难度等级
    */
    private String questionLevel;
    /**
    * 题目所属科目
    */
    private String questionSubject;
    /**
    * 题目类型：0填空题，1判断题
    */
    private Integer questionType;


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCreateId() {
        return createId;
    }

    public void setCreateId(String createId) {
        this.createId = createId;
    }

    public Object getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Object createTime) {
        this.createTime = createTime;
    }

    public String getUpdateId() {
        return updateId;
    }

    public void setUpdateId(String updateId) {
        this.updateId = updateId;
    }

    public Object getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Object updateTime) {
        this.updateTime = updateTime;
    }

    public String getQuestionContent() {
        return questionContent;
    }

    public void setQuestionContent(String questionContent) {
        this.questionContent = questionContent;
    }

    public String getQuestionAnswer() {
        return questionAnswer;
    }

    public void setQuestionAnswer(String questionAnswer) {
        this.questionAnswer = questionAnswer;
    }

    public String getQuestionExplain() {
        return questionExplain;
    }

    public void setQuestionExplain(String questionExplain) {
        this.questionExplain = questionExplain;
    }

    public String getQuestionScore() {
        return questionScore;
    }

    public void setQuestionScore(String questionScore) {
        this.questionScore = questionScore;
    }

    public String getQuestionLevel() {
        return questionLevel;
    }

    public void setQuestionLevel(String questionLevel) {
        this.questionLevel = questionLevel;
    }

    public String getQuestionSubject() {
        return questionSubject;
    }

    public void setQuestionSubject(String questionSubject) {
        this.questionSubject = questionSubject;
    }

    public Integer getQuestionType() {
        return questionType;
    }

    public void setQuestionType(Integer questionType) {
        this.questionType = questionType;
    }

}