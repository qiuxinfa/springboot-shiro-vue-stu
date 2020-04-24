package com.qxf.service;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.IService;
import com.qxf.pojo.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/15
 * @Description: com.qxf.service
 */
public interface UserService extends IService<User>{

    //不分页查询
    List<User> findAllUser(User user);

    /**
     * 根据用户名查询用户
     */
    User findUserByUsername(String username);

    /**
     * 登录
     */
    Object login(User user, HttpSession session, HttpServletRequest request);

    /**
     * @desc: 新增用户
     */
    Object addUser(User user);


    /**
     * @desc: 查询用户
     */
    List<User> findUserByPage(Page<User> page, User user);

    /**
     * @desc: 批量删除用户
     */
    Object delUsers(String[] ids);

    /**
     * @desc: 登陆验证
     */
    List<User> checkUser(User user);

    /**
     * 修改用户状态
     */
    Object editUserStatus(User user);

    /**
     * 用户修改用户个人信息
     */
    Object editUserInfo(User user);
}
