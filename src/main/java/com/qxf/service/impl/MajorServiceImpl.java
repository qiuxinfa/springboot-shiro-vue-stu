package com.qxf.service.impl;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.qxf.exception.MyException;
import com.qxf.mapper.MajorMapper;
import com.qxf.pojo.Major;
import com.qxf.service.MajorService;
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
public class MajorServiceImpl extends ServiceImpl<MajorMapper,Major> implements MajorService {
    @Override
    public List<Major> getListByPage(Page<Major> page, String name) {
        return super.baseMapper.getListByPage(page,name);
    }

    @Transactional
    @Override
    public Object addMajor(Major major) {
        Map<String,Object> map = new HashMap<>();
        map.put("name",major.getName().trim());
        map.put("major_number",major.getMajorNumber().trim());
        map.put("institute_id",major.getInstituteId().trim());
        List<Major> list = super.baseMapper.selectByMap(map);
        if (list.size() > 0) {
            throw new MyException(ResultUtil.result(EnumCode.BAD_REQUEST.getValue(), "该专业已存在", null));
        }
        super.baseMapper.insert(major);
        return  ResultUtil.result(EnumCode.OK.getValue(), "新增成功");
    }

    @Override
    public List<Major> findAllMajor(String instituteId) {
        return super.baseMapper.findAllMajor(instituteId);
    }
}
