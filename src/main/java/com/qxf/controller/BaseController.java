package com.qxf.controller;

import com.qxf.pojo.User;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;


public class BaseController {


    /**
     * 获取 request
     */
    protected HttpServletRequest getRequest() {

        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder
                .getRequestAttributes())
                .getRequest();
        return request;

    }

    /**
     * 获取用户名称
     * @return
     */
    protected String getUserName() {

        Subject subject = SecurityUtils.getSubject();
        User user = (User) subject.getPrincipal();
        if (null == user) {
            return null;
        }
        return null == user.getUsername() ? null : user.getUsername();

    }

    /**
     * 获取用户名id
     * @return
     */
    protected String getUserId() {

        Subject subject = SecurityUtils.getSubject();
        User user = (User) subject.getPrincipal();
        if (null == user) {
            return null;
        }
        return null == user.getId() ? null : user.getId();

    }

    /**
     * 获取角色id
     * @return
     */
    protected String getRoleId() {

        Subject subject = SecurityUtils.getSubject();
        User user = (User) subject.getPrincipal();
        if (null == user) {
            return null;
        }
        return null == user.getRoleId() ? null : user.getRoleId();

    }

    /**
     * 获取角色名称
     * @return
     */
    protected String getRoleName() {

        Subject subject = SecurityUtils.getSubject();
        User user = (User) subject.getPrincipal();
        if (null == user) {
            return null;
        }
        return null == user.getRoleName() ? null : user.getRoleName();

    }

}
