package com.qxf.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.qxf.pojo.User;

import java.util.List;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/15
 * @Description: com.qxf.mapper
 */
public interface UserMapper extends BaseMapper<User>{
    //分页查询
    List<User> findUserByPage(Pagination page,User user);

    //登录验证
    List<User> checkUser(User user);

    User findUserByUsername(String username);

    //不分页查询
    List<User> findAllUser(User user);
}
