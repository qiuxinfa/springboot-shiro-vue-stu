package com.qxf.pojo;

import java.io.Serializable;

/**
 * 选择题库，question_type2单选，3多选(QuestionChoic)实体类
 *
 * @author makejava
 * @since 2020-02-15 16:56:47
 */
public class QuestionChoic implements Serializable {
    private static final long serialVersionUID = 234837659066006261L;
    /**
    * id
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
    * 选项A
    */
    private String choiceA;
    /**
    * 选项B
    */
    private String choiceB;
    /**
    * 选项C
    */
    private String choiceC;
    /**
    * 选项D
    */
    private String choiceD;
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
    * 题目类型：2单选，3多选
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

    public String getChoiceA() {
        return choiceA;
    }

    public void setChoiceA(String choiceA) {
        this.choiceA = choiceA;
    }

    public String getChoiceB() {
        return choiceB;
    }

    public void setChoiceB(String choiceB) {
        this.choiceB = choiceB;
    }

    public String getChoiceC() {
        return choiceC;
    }

    public void setChoiceC(String choiceC) {
        this.choiceC = choiceC;
    }

    public String getChoiceD() {
        return choiceD;
    }

    public void setChoiceD(String choiceD) {
        this.choiceD = choiceD;
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