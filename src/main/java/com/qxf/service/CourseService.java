package com.qxf.service;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.IService;
import com.qxf.pojo.Course;

import java.util.List;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/24
 * @Description: com.qxf.service
 */
public interface CourseService extends IService<Course>{
    List<Course> getListByPage(Page<Course> page, String name);

    Object addCourse(Course course);
}
