package com.qxf.controller;

import com.baomidou.mybatisplus.plugins.Page;
import com.qxf.pojo.Course;
import com.qxf.pojo.User;
import com.qxf.service.CourseService;
import com.qxf.utils.EnumCode;
import com.qxf.utils.ResultUtil;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.util.List;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/24
 * @Description: com.qxf.controller
 */
@RestController
@RequestMapping("/course")
public class CourseController {
    @Autowired
    private CourseService courseService;

    //管理员：课程列表
    @GetMapping("/list")
    public Object getListByPage(Integer startPage,Integer pageSize,String name){
        Page<Course> page = new Page<>(startPage,pageSize);
        List<Course> list = courseService.getListByPage(page,name);
        return ResultUtil.result(EnumCode.OK.getValue(),"请求成功",list,page.getTotal());
    }

    //管理员：添加新课程
    @PostMapping("/add")
    public Object addCourse(Course course) throws ParseException {
        return courseService.addCourse(course);
    }

    //管理员：删除课程
    @PostMapping("/delete")
    public Object deleteCourse(Course course){
        String[] ids = course.getIds();
        if (null == ids || ids.length == 0) {
            return ResultUtil.result(EnumCode.BAD_REQUEST.getValue(), EnumCode.BAD_REQUEST.getText());
        }
        return courseService.deleteCourse(ids);
    }

    //学生：我的未选课程
    @GetMapping("/choice")
    public Object getNotSelectedCourse(Integer startPage, Integer pageSize, HttpSession session){
        Page<Course> page = new Page<>(startPage,pageSize);
        User user = (User) session.getAttribute("user");
        List<Course> list = courseService.getNotSelectedCourse(page,user.getId());
        return ResultUtil.result(EnumCode.OK.getValue(),"请求成功",list,page.getTotal());
    }

    //学生：我的课程列表
    @GetMapping("/mycourse")
    public Object getSelectedCourse(Integer startPage, Integer pageSize, HttpSession session){
        Page<Course> page = new Page<>(startPage,pageSize);
        User user = (User) session.getAttribute("user");
        if(user == null){
            user = (User) SecurityUtils.getSubject().getPrincipal();
            session.setAttribute("user",user);
        }
        List<Course> list = courseService.getSelectedCourse(page,user.getId());
        return ResultUtil.result(EnumCode.OK.getValue(),"请求成功",list,page.getTotal());
    }

    //学生：将未选课程添加到我的课程
    @PostMapping("/student")
    public Object addCourseToStudent(Course course){
        return courseService.addCourseToStudent(course);
    }

    //老师：个人中心-课程中心列表
    @GetMapping("/center")
    public Object getCourseByTeacher(Integer startPage, Integer pageSize, HttpSession session){
        Page<Course> page = new Page<>(startPage,pageSize);
        User user = (User) SecurityUtils.getSubject().getPrincipal();
        List<Course> list = courseService.getCourseByTeacher(page,user.getId());
        return ResultUtil.result(EnumCode.OK.getValue(),"请求成功",list,page.getTotal());
    }


}
