package com.qxf.service;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.IService;
import com.qxf.pojo.Student;

import java.util.List;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/24
 * @Description: com.qxf.service
 */
public interface StudentService extends IService<Student>{
    List<Student> getListByPage(Page<Student> page, String name);
    Object addStudent(Student student);
    Integer getStudentCount(String majorId);
    Object deleteStudent(String[] ids);
}
