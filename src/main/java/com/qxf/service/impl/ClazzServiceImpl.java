package com.qxf.service.impl;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.qxf.exception.MyException;
import com.qxf.mapper.ClazzMapper;
import com.qxf.pojo.Clazz;
import com.qxf.service.ClazzService;
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
public class ClazzServiceImpl extends ServiceImpl<ClazzMapper,Clazz> implements ClazzService {
    @Override
    public List<Clazz> getListByPage(Page<Clazz> page, String name) {
        return super.baseMapper.getListByPage(page,name);
    }

    @Override
    public Object addClazz(Clazz clazz) {
        Map<String,Object> map = new HashMap<>();
        map.put("name",clazz.getName().trim());
        map.put("major_id",clazz.getMajorId().trim());
        map.put("institute_id",clazz.getInstituteId());
        List<Clazz> list = super.selectByMap(map);
        if(list != null && list.size()>0){
            throw new MyException(ResultUtil.result(EnumCode.BAD_REQUEST.getValue(), "该班级已存在", null));
        }
        super.baseMapper.insert(clazz);
        return ResultUtil.result(EnumCode.OK.getValue(),"新增成功");
    }
}
