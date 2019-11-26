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

    @GetMapping("/list")
    public Object getListByPage(Integer startPage,Integer pageSize,String name){
        Page<Course> page = new Page<>(startPage,pageSize);
        List<Course> list = courseService.getListByPage(page,name);
        return ResultUtil.result(EnumCode.OK.getValue(),"请求成功",list,page.getTotal());
    }

    @PostMapping("/add")
    public Object addCourse(Course course){
        return courseService.addCourse(course);
    }

    @GetMapping("/choice")
    public Object getNotSelectedCourse(Integer startPage, Integer pageSize, HttpSession session){
        Page<Course> page = new Page<>(startPage,pageSize);
        User user = (User) session.getAttribute("user");
        List<Course> list = courseService.getNotSelectedCourse(page,user.getId());
        return ResultUtil.result(EnumCode.OK.getValue(),"请求成功",list,page.getTotal());
    }

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
}
