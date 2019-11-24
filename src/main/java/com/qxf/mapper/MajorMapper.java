package com.qxf.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.qxf.pojo.Major;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/24
 * @Description: com.qxf.mapper.xml
 */
public interface MajorMapper extends BaseMapper<Major>{
    public List<Major> getListByPage(Page<Major> page, @Param("name") String name);

    public List<Major> findAllMajor(@Param("instituteId") String instituteId);
}
