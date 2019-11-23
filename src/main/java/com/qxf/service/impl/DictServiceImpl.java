package com.qxf.service.impl;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.qxf.mapper.DictMapper;
import com.qxf.pojo.SysDict;
import com.qxf.service.DictService;

import java.util.List;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/23
 * @Description: com.qxf.service.impl
 */
public class DictServiceImpl extends ServiceImpl<DictMapper,SysDict> implements DictService {
    @Override
    public List<SysDict> findListByDictTypeCode(String dictTypeCode) {
        return null;
    }
}
