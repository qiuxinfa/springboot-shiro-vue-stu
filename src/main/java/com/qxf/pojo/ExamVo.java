package com.qxf.pojo;

/**
 * @Auther: qiuxinfa
 * @Date: 2020/2/19
 * @Description: com.qxf.pojo
 */
public class ExamVo {
    private String paperId;   //试卷id
    private Integer fillCnt;   //填空题数量
    private Integer fillScore; //填空题分数
    private Integer judgeCnt;  //判断题数量
    private Integer judgeScore; //判断题分数
    private Integer singleCnt;  //单选题数量
    private Integer singleScore; //单选题分数
    private Integer multipleCnt; //多选题数量
    private Integer multipleScore; //多选题分数

    public String getPaperId() {
        return paperId;
    }

    public void setPaperId(String paperId) {
        this.paperId = paperId;
    }

    public Integer getFillCnt() {
        return fillCnt;
    }

    public void setFillCnt(Integer fillCnt) {
        this.fillCnt = fillCnt;
    }

    public Integer getFillScore() {
        return fillScore;
    }

    public void setFillScore(Integer fillScore) {
        this.fillScore = fillScore;
    }

    public Integer getJudgeCnt() {
        return judgeCnt;
    }

    public void setJudgeCnt(Integer judgeCnt) {
        this.judgeCnt = judgeCnt;
    }

    public Integer getJudgeScore() {
        return judgeScore;
    }

    public void setJudgeScore(Integer judgeScore) {
        this.judgeScore = judgeScore;
    }

    public Integer getSingleCnt() {
        return singleCnt;
    }

    public void setSingleCnt(Integer singleCnt) {
        this.singleCnt = singleCnt;
    }

    public Integer getSingleScore() {
        return singleScore;
    }

    public void setSingleScore(Integer singleScore) {
        this.singleScore = singleScore;
    }

    public Integer getMultipleCnt() {
        return multipleCnt;
    }

    public void setMultipleCnt(Integer multipleCnt) {
        this.multipleCnt = multipleCnt;
    }

    public Integer getMultipleScore() {
        return multipleScore;
    }

    public void setMultipleScore(Integer multipleScore) {
        this.multipleScore = multipleScore;
    }

    @Override
    public String toString() {
        return "ExamVo{" +
                "paperId='" + paperId + '\'' +
                ", fillCnt='" + fillCnt + '\'' +
                ", fillScore='" + fillScore + '\'' +
                ", judgeCnt='" + judgeCnt + '\'' +
                ", judgeScore='" + judgeScore + '\'' +
                ", singleCnt='" + singleCnt + '\'' +
                ", singleScore='" + singleScore + '\'' +
                ", multipleCnt='" + multipleCnt + '\'' +
                ", multipleScore='" + multipleScore + '\'' +
                '}';
    }
}
