package com.qxf.service;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.IService;
import com.qxf.pojo.Institute;

import java.util.List;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/24
 * @Description: com.qxf.service
 */
public interface InstituteService extends IService<Institute>{
    List<Institute> getInstituteByPage(Page<Institute> page, String name);

    public Object addInstitute(Institute institute);

    public List<Institute> findAllInstitute();

    Object deleteInstitute(String[] ids);
}
