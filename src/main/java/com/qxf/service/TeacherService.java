package com.qxf.service;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.IService;
import com.qxf.pojo.Teacher;

import java.util.List;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/24
 * @Description: com.qxf.service
 */
public interface TeacherService extends IService<Teacher>{
    List<Teacher> getListByPage(Page<Teacher> page,String name);
    Object addTeacher(Teacher teacher);
}
