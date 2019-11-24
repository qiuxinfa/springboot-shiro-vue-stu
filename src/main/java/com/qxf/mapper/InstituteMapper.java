package com.qxf.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.qxf.pojo.Institute;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/24
 * @Description: com.qxf.mapper
 */
public interface InstituteMapper extends BaseMapper<Institute>{
    List<Institute> getInstituteByPage(Page<Institute> page,@Param("name") String name);

    public List<Institute> findAllInstitute();
}
