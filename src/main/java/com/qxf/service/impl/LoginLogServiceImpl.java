package com.qxf.service.impl;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.qxf.mapper.LoginLogMapper;
import com.qxf.pojo.LoginLog;
import com.qxf.service.LoginLogService;
import com.qxf.utils.EnumCode;
import com.qxf.utils.ResultUtil;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class LoginLogServiceImpl extends ServiceImpl<LoginLogMapper, LoginLog> implements LoginLogService {
    /**
     * 查询登录次数
     */
    public Integer findMaxLoginTatalByUserId(String usrId) {
        return super.baseMapper.findMaxLoginTatalByUserId(usrId);
    }

    /**
     * 用户登录日志
     */
    public List<LoginLog> findUserLoginLogByPage(Page<LoginLog> page, String searchKeyWord) {
        return super.baseMapper.findUserLoginLogByPage(page, searchKeyWord);
    }

    /**
     * 统计登陆
     */
    public Object findUserLoginTotal() {

        List<LoginLog> loignList = super.baseMapper.findUserLoginTotal();
        String[] strName = new String[loignList.size()];
        int[] itotal = new int[loignList.size()];
        for (int i = 0, j = loignList.size(); i < j; i++) {
            strName[i] = loignList.get(i).getUsername();
            itotal[i] = loignList.get(i).getLoginTotal();
        }
        Map<String,Object> map = new HashMap<>();
        map.put("name",strName);
        map.put("total",itotal);
        return ResultUtil.result(EnumCode.OK.getValue(), EnumCode.OK.getText(), map);
    }
}
