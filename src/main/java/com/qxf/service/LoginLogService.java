package com.qxf.service;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.IService;
import com.qxf.pojo.LoginLog;

import java.util.List;

public interface LoginLogService extends IService<LoginLog> {

    /**
     * 查询登录次数
     */
    Integer findMaxLoginTatalByUserId(String userId);


    /**
     * 用户登录日志
     */
    List<LoginLog> findUserLoginLogByPage(Page<LoginLog> page, String searchKeyWord);

    /**
     * 统计登陆
     */
    Object findUserLoginTotal();
}
