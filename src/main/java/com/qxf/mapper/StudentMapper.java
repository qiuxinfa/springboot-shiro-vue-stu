package com.qxf.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.qxf.pojo.Student;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/24
 * @Description: com.qxf.mapper
 */
public interface StudentMapper extends BaseMapper<Student>{
    List<Student> getListByPage(Page<Student> page, @Param("name") String name);
    Integer getStudentCount();
}
