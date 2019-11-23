package com.qxf.service.impl;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.qxf.mapper.DictMapper;
import com.qxf.pojo.SysDict;
import com.qxf.service.DictService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/23
 * @Description: com.qxf.service.impl
 */
@Service
public class DictServiceImpl extends ServiceImpl<DictMapper,SysDict> implements DictService {


    @Override
    public List<SysDict> findDictByPage(Page<SysDict> page, String dictValue) {
        return null;
    }

    @Override
    public List<SysDict> findListByDictTypeCode(String dictTypeCode) {
        return super.baseMapper.findListByDictTypeCode(dictTypeCode);
    }
}
