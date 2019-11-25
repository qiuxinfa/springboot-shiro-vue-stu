package com.qxf.service.impl;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.qxf.exception.MyException;
import com.qxf.mapper.TeacherMapper;
import com.qxf.pojo.Teacher;
import com.qxf.service.TeacherService;
import com.qxf.utils.EnumCode;
import com.qxf.utils.ResultUtil;
import org.springframework.stereotype.Service;

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
    @Override
    public List<Teacher> getListByPage(Page<Teacher> page, String name) {
        return super.baseMapper.getListByPage(page,name);
    }

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
        return ResultUtil.result(EnumCode.OK.getValue(),"新增成功");
    }

    @Override
    public List<Teacher> findAllTeacher() {
        return super.baseMapper.findAllTeacher();
    }
}
