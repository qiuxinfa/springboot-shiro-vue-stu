package com.qxf.shiro;

import com.qxf.pojo.User;
import com.qxf.service.UserService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;
import java.util.List;

public class AuthRealm extends AuthorizingRealm {

    /**
     * 日志打印
     */
    private final static Logger log = LoggerFactory.getLogger(AuthRealm.class);

    /**
     * 用户
     */
    @Autowired
    private UserService userService;

    //授权
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals){
        return null;
    }

    /**
     * @desc: 认证
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        log.info("======================= 认证登陆 ======================");
        // 获取用户输入的token
        UsernamePasswordToken upToken = (UsernamePasswordToken) token;
        String name = upToken.getUsername();
        String pass = String.valueOf(upToken.getPassword());
        User u = new User();
        u.setUsername(name);
        u.setPassword(pass);
        List<User> list = userService.checkUser(u);
        User userInfoDto = null;
        if (null == list || list.isEmpty()) {
            throw new AuthenticationException("账号或密码错误");
        } else if (list.get(0).getEnable() == 0) {
            /**
             * 账号被禁用
             */
            throw new AuthenticationException("账号已被禁止登陆");
        }else{
            userInfoDto = list.get(0);
            //登录成功
            userInfoDto.setLastLoginTime(new Date());
        }
        log.info("======================= 登陆成功 ======================");
        return new SimpleAuthenticationInfo(userInfoDto, userInfoDto.getPassword(), getName());
    }
}
