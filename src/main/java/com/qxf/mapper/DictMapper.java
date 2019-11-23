package com.qxf.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.qxf.pojo.SysDict;

import java.util.List;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/23
 * @Description: com.qxf.mapper
 */
public interface DictMapper extends BaseMapper<SysDict>{
    List<SysDict> findDictByPage(Page<SysDict> page, SysDict dict);

    List<SysDict> findListByDictTypeCode(String dictTypeCode);
}
