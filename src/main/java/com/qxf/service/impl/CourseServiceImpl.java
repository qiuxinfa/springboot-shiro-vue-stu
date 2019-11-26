package com.qxf.service.impl;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.qxf.exception.MyException;
import com.qxf.mapper.CourseMapper;
import com.qxf.pojo.Course;
import com.qxf.pojo.CourseTeacher;
import com.qxf.service.CourseService;
import com.qxf.service.CourseTeacherService;
import com.qxf.utils.EnumCode;
import com.qxf.utils.ResultUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/24
 * @Description: com.qxf.service.impl
 */
@Service
public class CourseServiceImpl extends ServiceImpl<CourseMapper,Course> implements CourseService {
    @Autowired
    private CourseTeacherService courseTeacherService;

    @Override
    public List<Course> getListByPage(Page<Course> page, String name) {
        return super.baseMapper.getListByPage(page,name);
    }

    @Transactional
    @Override
    public Object addCourse(Course course) {
        Map<String,Object> map = new HashMap<>();
        map.put("name",course.getName().trim());
        map.put("course_type",course.getCourseType());
        List<Course> list = selectByMap(map);
        if(list != null && list.size()>0){
            throw new MyException(ResultUtil.result(EnumCode.BAD_REQUEST.getValue(), "该课程已存在", null));
        }
        super.baseMapper.insert(course);

        //插入t_course_teacher中间表，一门课程可以有多个任课老师
        String[] teacherIds = course.getTeacherIds();
        if(teacherIds!=null && teacherIds.length>0){
            for (int i=0;i<teacherIds.length;i++){
                CourseTeacher courseTeacher = new CourseTeacher();
                courseTeacher.setCourseId(course.getId());
                courseTeacher.setTeacherId(teacherIds[i]);
                courseTeacherService.insert(courseTeacher);
            }
        }
        return ResultUtil.result(EnumCode.OK.getValue(),"新增成功");
    }

    @Override
    public List<Course> getNotSelectedCourse(Page<Course> page, String studentId) {

        return super.baseMapper.getNotSelectedCourse(page,studentId);
    }

    @Override
    public List<Course> getSelectedCourse(Page<Course> page, String studentId) {
        return super.baseMapper.getSelectedCourse(page,studentId);
    }
}
