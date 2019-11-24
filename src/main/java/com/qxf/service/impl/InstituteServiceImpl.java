package com.qxf.service.impl;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.qxf.mapper.InstituteMapper;
import com.qxf.pojo.Institute;
import com.qxf.service.InstituteService;
import org.springframework.stereotype.Service;

import java.util.List;

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
}
