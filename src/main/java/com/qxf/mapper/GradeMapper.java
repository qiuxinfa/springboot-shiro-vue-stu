package com.qxf.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.qxf.pojo.CourseTeacher;
import com.qxf.pojo.Grade;

import java.util.List;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/26
 * @Description: com.qxf.mapper
 */
public interface GradeMapper extends BaseMapper<Grade>{
    List<Grade> viewStudent(CourseTeacher courseTeacher);
}
