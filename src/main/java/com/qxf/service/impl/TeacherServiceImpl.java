package com.qxf.service.impl;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.qxf.exception.MyException;
import com.qxf.mapper.TeacherMapper;
import com.qxf.pojo.Teacher;
import com.qxf.pojo.User;
import com.qxf.pojo.UserRole;
import com.qxf.service.TeacherService;
import com.qxf.service.UserRoleService;
import com.qxf.service.UserService;
import com.qxf.utils.EnumCode;
import com.qxf.utils.ResultUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/24
 * @Description: com.qxf.service.impl
 */
@Service
public class TeacherServiceImpl extends ServiceImpl<TeacherMapper,Teacher> implements TeacherService{

    @Autowired
    private UserService userService;

    @Autowired
    private UserRoleService userRoleService;

    @Override
    public List<Teacher> getListByPage(Page<Teacher> page, String name) {
        return super.baseMapper.getListByPage(page,name);
    }

    @Transactional
    @Override
    public Object addTeacher(Teacher teacher) {
        Map<String,Object> map = new HashMap<>();
        map.put("name",teacher.getName().trim());
        map.put("sex",teacher.getSex());
        map.put("age",teacher.getAge());
        map.put("phone",teacher.getPhone().trim());
        List<Teacher> list = selectByMap(map);
        if(list!=null && list.size()>0){
            throw new MyException(ResultUtil.result(EnumCode.BAD_REQUEST.getValue(),"该老师已存在",null));
        }
        super.baseMapper.insert(teacher);

        //把老师信息插入到t_user表和t_user_roel表，使得老师可以用姓名和默认密码a123456登录
        User u = new User();
        u.setId(teacher.getId());
        u.setUsername(teacher.getName().trim());
        u.setPassword("d477887b0636e5d87f79cc25c99d7dc9");
        if(teacher.getPhotoUrl()!=null){
            u.setPhotoUrl(teacher.getPhotoUrl().trim());
        }
        if(teacher.getEmail()!=null){
            u.setEmail(teacher.getEmail().trim());
        }
        u.setEnable(1);
        u.setCreateTime(new Date());
        userService.insert(u);

        //再把user信息插入到_user_roel表中
        UserRole ur = new UserRole();
        ur.setUserId(u.getId());
        ur.setRoleId("2");  //角色为老师
        userRoleService.insert(ur);

        return ResultUtil.result(EnumCode.OK.getValue(),"新增成功");
    }

    @Override
    public List<Teacher> findAllTeacher() {
        return super.baseMapper.findAllTeacher();
    }
}
