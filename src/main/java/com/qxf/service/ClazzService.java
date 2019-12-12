package com.qxf.service;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.IService;
import com.qxf.pojo.Clazz;

import java.util.List;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/24
 * @Description: com.qxf.service
 */
public interface ClazzService extends IService<Clazz>{
    List<Clazz> getListByPage(Page<Clazz> page,String name);
    public Object addClazz(Clazz clazz);

    List<Clazz> getAllClazz(String majorId);

    Object deleteClazz(String[] ids);
}
