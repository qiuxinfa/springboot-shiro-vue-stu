package com.qxf.service.impl;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.qxf.exception.MyException;
import com.qxf.mapper.MajorMapper;
import com.qxf.pojo.Clazz;
import com.qxf.pojo.Major;
import com.qxf.service.ClazzService;
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
public class MajorServiceImpl extends ServiceImpl<MajorMapper,Major> implements MajorService {
    @Autowired
    private ClazzService clazzService;

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
    public Object deleteMajor(String[] ids) {
        Map<String,Object> map;
        for (String id : ids) {
            //根据专业id查询班级情况，如果有班级存在，则不能删除
            map = new HashMap<>();
            map.put("major_id",id);
            List<Clazz> list = clazzService.selectByMap(map);
            if(list != null && list.size()>0){
                return ResultUtil.result(EnumCode.BAD_REQUEST.getValue(), "选择的专业中存在班级，删除失败",null);
            }
        }
        //逐个删除
        for (String id : ids){
            baseMapper.deleteById(id);
        }

        return ResultUtil.result(EnumCode.OK.getValue(), "删除成功");
    }

    @Override
    public List<Major> findAllMajor(String instituteId) {
        return super.baseMapper.findAllMajor(instituteId);
    }
}
