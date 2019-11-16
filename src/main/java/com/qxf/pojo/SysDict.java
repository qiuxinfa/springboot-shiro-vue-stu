package com.qxf.pojo;

import lombok.Data;

import java.io.Serializable;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/15
 * @Description: 字典
 */
@Data
public class SysDict implements Serializable{
    private String id;
    private String dictCode;      //字典编码
    private String dictValue;     //字典值
    private String dictTypeCode;  //字典分类编码
    private String dictDesc;      //字典描述
    private String dictOrder;     //字典拍序号
}
