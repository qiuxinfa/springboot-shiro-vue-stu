package com.qxf.service.impl;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.qxf.exception.MyException;
import com.qxf.mapper.InstituteMapper;
import com.qxf.pojo.Institute;
import com.qxf.service.InstituteService;
import com.qxf.utils.EnumCode;
import com.qxf.utils.ResultUtil;
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

    @Override
    public List<Institute> getInstituteByPage(Page<Institute> page, String name) {
        return super.baseMapper.getInstituteByPage(page,name);
    }

    @Transactional
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
}
