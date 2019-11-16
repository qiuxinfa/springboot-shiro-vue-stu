package com.qxf.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.qxf.pojo.LoginLog;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface LoginLogMapper extends BaseMapper<LoginLog> {

    /**
     * 查询登录次数
     */
    Integer findMaxLoginTatalByUserId(@Param("userId") String userId);

    /**
     * 用户登录日志，searchKeyWord查询关键字，可以是用户名，可以是ip，模糊查询
     */
    List<LoginLog> findUserLoginLogByPage(Pagination page,@Param("searchKeyWord") String searchKeyWord);

    /**
     * 查询用户登录总次数
     */
    List<LoginLog> findUserLoginTotal();
}