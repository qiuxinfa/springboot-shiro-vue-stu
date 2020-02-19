package com.qxf.pojo;

import java.io.Serializable;

/**
 * 考试安排(QuestionExam)实体类
 *
 * @author makejava
 * @since 2020-02-15 16:56:56
 */
public class QuestionExam implements Serializable {
    private static final long serialVersionUID = 594854847476890487L;
    /**
    * id
    */
    private String id;
    /**
    * 考试介绍
    */
    private String examDesc;
    /**
    * 课程名称
    */
    private String examCourse;
    /**
    * 试卷ID
    */
    private String paperId;
    /**
    * 考试日期
    */
    private Object examDate;
    /**
    * 考试时长
    */
    private Integer totalTime;
    /**
    * 专业
    */
    private String major;
    /**
    * 学院
    */
    private String institute;
    /**
    * 总分
    */
    private Integer totalScore;
    /**
    * 考试类型
    */
    private String examType;


    private String[] ids;

    public String[] getIds() {
        return ids;
    }

    public void setIds(String[] ids) {
        this.ids = ids;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getExamDesc() {
        return examDesc;
    }

    public void setExamDesc(String examDesc) {
        this.examDesc = examDesc;
    }

    public String getExamCourse() {
        return examCourse;
    }

    public void setExamCourse(String examCourse) {
        this.examCourse = examCourse;
    }

    public String getPaperId() {
        return paperId;
    }

    public void setPaperId(String  paperId) {
        this.paperId = paperId;
    }

    public Object getExamDate() {
        return examDate;
    }

    public void setExamDate(Object examDate) {
        this.examDate = examDate;
    }

    public Integer getTotalTime() {
        return totalTime;
    }

    public void setTotalTime(Integer totalTime) {
        this.totalTime = totalTime;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getInstitute() {
        return institute;
    }

    public void setInstitute(String institute) {
        this.institute = institute;
    }

    public Integer getTotalScore() {
        return totalScore;
    }

    public void setTotalScore(Integer totalScore) {
        this.totalScore = totalScore;
    }

    public String getExamType() {
        return examType;
    }

    public void setExamType(String examType) {
        this.examType = examType;
    }

}