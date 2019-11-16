package com.qxf.pojo;

import lombok.Data;

import java.io.Serializable;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/15
 * @Description: 专业
 */
@Data
public class Major implements Serializable{
    private String id;
    private String name;          //专业名称
    private String majorNumber;   //专业编码
    private String instituteId;   //学院id
}
