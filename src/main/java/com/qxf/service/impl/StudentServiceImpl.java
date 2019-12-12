package com.qxf.service.impl;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.qxf.exception.MyException;
import com.qxf.mapper.StudentMapper;
import com.qxf.pojo.Major;
import com.qxf.pojo.Student;
import com.qxf.pojo.User;
import com.qxf.pojo.UserRole;
import com.qxf.service.*;
import com.qxf.utils.EnumCode;
import com.qxf.utils.ResultUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/24
 * @Description: com.qxf.service.impl
 */
@Service
public class StudentServiceImpl extends ServiceImpl<StudentMapper,Student> implements StudentService {

    @Autowired
    private UserService userService;

    @Autowired
    private UserRoleService userRoleService;

    @Autowired
    private InstituteService instituteService;

    @Autowired
    private MajorService majorService;

    @Override
    public List<Student> getListByPage(Page<Student> page, String name) {
        return super.baseMapper.getListByPage(page,name);
    }

    @Transactional
    @Override
    public Object addStudent(Student student) {
        //生成学号：年份+学院代码+专业代码+四位随机数字，从1000开始
        Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("GMT+08:00"));
        Integer year = calendar.get(Calendar.YEAR);
        String instituteNumber = instituteService.selectById(student.getInstituteId().trim()).getInstituteNumber();
        String majorNumber = majorService.selectById(student.getMajorId().trim()).getMajorNumber();
        Integer total = this.getStudentCount(student.getMajorId().trim());  //本专业学生总数
        String number = "1000";   //随机数字起始
        if(total!=null){
            number = ""+(1000+total);
        }
        String studentNumber = year + instituteNumber +majorNumber + number;   //学号

        //判断要插入的学生是否存在
        Map<String,Object> map = new HashMap<>();
        map.put("student_number",studentNumber);
        map.put("clazz_id",student.getClazzId().trim());
        map.put("major_id",student.getMajorId().trim());
        map.put("institute_id",student.getInstituteId().trim());
        List<Student> list = super.baseMapper.selectByMap(map);
        if(list!=null && list.size()>0){
            throw new MyException(ResultUtil.result(EnumCode.BAD_REQUEST.getValue(),"该学生已存在",null));
        }

        //插入学生
        student.setStudentNumber(studentNumber);
        super.baseMapper.insert(student);

        //把学生信息插入到t_user表和t_user_roel表，使得学生可以用姓名和默认密码a123456登录
        User u = new User();
        u.setId(student.getId());
        u.setUsername(student.getName().trim());
        u.setPassword("d477887b0636e5d87f79cc25c99d7dc9");
        if(student.getPhotoUrl()!=null){
            u.setPhotoUrl(student.getPhotoUrl().trim());
        }
        if(student.getEmail()!=null){
            u.setEmail(student.getEmail().trim());
        }
        u.setEnable(1);
        u.setCreateTime(new Date());
        userService.insert(u);

        //再把user信息插入到_user_roel表中
        UserRole ur = new UserRole();
        ur.setUserId(u.getId());
        ur.setRoleId("3");  //角色为学生
        userRoleService.insert(ur);
        return ResultUtil.result(EnumCode.OK.getValue(),"新增成功");
    }

    @Override
    public Integer getStudentCount(String majorId) {
        return super.baseMapper.getStudentCount(majorId);
    }

    @Override
    public Object deleteStudent(String[] ids) {
        //逐个删除
        for (String id : ids){
            baseMapper.deleteById(id);
        }

        return ResultUtil.result(EnumCode.OK.getValue(), "删除成功");
    }

}
