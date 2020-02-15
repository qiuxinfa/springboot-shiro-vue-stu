package com.qxf.pojo;

import java.io.Serializable;

/**
 * 试卷(QuestionPaper)实体类
 *
 * @author makejava
 * @since 2020-02-15 16:56:56
 */
public class QuestionPaper implements Serializable {
    private static final long serialVersionUID = -93130706258837099L;
    /**
    * id
    */
    private String id;
    /**
    * 试卷ID
    */
    private String paperId;
    /**
    * 题目ID
    */
    private String questionId;


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPaperId() {
        return paperId;
    }

    public void setPaperId(String paperId) {
        this.paperId = paperId;
    }

    public String getQuestionId() {
        return questionId;
    }

    public void setQuestionId(String questionId) {
        this.questionId = questionId;
    }

}