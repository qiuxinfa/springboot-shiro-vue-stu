package com.qxf.service.impl;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.qxf.exception.MyException;
import com.qxf.mapper.InstituteMapper;
import com.qxf.pojo.Institute;
import com.qxf.pojo.Major;
import com.qxf.service.InstituteService;
import com.qxf.service.MajorService;
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
public class InstituteServiceImpl extends ServiceImpl<InstituteMapper,Institute> implements InstituteService {

    @Autowired
    private MajorService majorService;

    @Override
    public List<Institute> getInstituteByPage(Page<Institute> page, String name) {
        return super.baseMapper.getInstituteByPage(page,name);
    }

    @Override
    public Object addInstitute(Institute institute) {
        Map<String,Object> map = new HashMap<>();
        map.put("name",institute.getName().trim());
        map.put("institute_number",institute.getInstituteNumber().trim());
        List<Institute> list = super.baseMapper.selectByMap(map);
        if (list.size() > 0) {
            throw new MyException(ResultUtil.result(EnumCode.BAD_REQUEST.getValue(), "该学院已存在", null));
        }
        super.baseMapper.insert(institute);
        return  ResultUtil.result(EnumCode.OK.getValue(), "新增成功");
    }

    @Override
    public List<Institute> findAllInstitute() {
        return super.baseMapper.findAllInstitute();
    }

    @Override
    public Object deleteInstitute(String[] ids) {
        Map<String,Object> map;
        for (String id : ids) {
            //根据课程查询选课情况，如果有学生选择了该课程，则不能删除
            map = new HashMap<>();
            map.put("institute_id",id);
            List<Major> list = majorService.selectByMap(map);
            if(list != null && list.size()>0){
                return ResultUtil.result(EnumCode.BAD_REQUEST.getValue(), "选择的学院中存在专业，删除失败",null);
            }
        }
        //逐个删除
        for (String id : ids){
            baseMapper.deleteById(id);
        }

        return ResultUtil.result(EnumCode.OK.getValue(), "删除成功");
    }
}
