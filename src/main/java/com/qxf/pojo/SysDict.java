package com.qxf.pojo;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/15
 * @Description: 字典
 */
@Data
@TableName("t_sys_dict")
public class SysDict implements Serializable{
    private String id;
    @TableField("dict_code")
    private String dictCode;      //字典编码
    @TableField("dict_value")
    private String dictValue;     //字典值
    @TableField("dict_type_code")
    private String dictTypeCode;  //字典分类编码
    @TableField("dict_desc")
    private String dictDesc;      //字典描述
    @TableField("dict_order")
    private Integer dictOrder;     //字典拍序号
}
