package com.qxf.controller;

import com.baomidou.mybatisplus.plugins.Page;
import com.qxf.pojo.LoginLog;
import com.qxf.pojo.OperateRecord;
import com.qxf.service.LoginLogService;
import com.qxf.service.OperateRecordService;
import com.qxf.utils.EnumCode;
import com.qxf.utils.ResultUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/23
 * @Description: com.qxf.controller
 */
@RestController
@RequestMapping("sys")
public class SysController {
    @Autowired
    private LoginLogService loginLogService;

    @Autowired
    private OperateRecordService operateRecordService;

    //登录日志列表
    @GetMapping("/loginLog/list")
    public Object getLoginLogByPage(Integer startPage,Integer pageSize,String searchKeyWord){
        Page<LoginLog> page = new Page<LoginLog>(startPage,pageSize);
        List<LoginLog> list = loginLogService.findUserLoginLogByPage(page,searchKeyWord);
        return ResultUtil.result(EnumCode.OK.getValue(), EnumCode.OK.getText(), list, page.getTotal());
    }
    //登录日志列表
    @GetMapping("/operateRecord/list")
    public Object getOperateRecordByPage(Integer startPage,Integer pageSize,String searchKeyWord){
        Page<OperateRecord> page = new Page<OperateRecord>(startPage,pageSize);
        List<OperateRecord> list = operateRecordService.findOperatingRecordByPage(page,searchKeyWord);
        return ResultUtil.result(EnumCode.OK.getValue(), EnumCode.OK.getText(), list, page.getTotal());
    }

    //用户登录统计
    @GetMapping(value = "/findUserLoginTotal")
    public Object findUserLoginTotal() {
        return loginLogService.findUserLoginTotal();
    }

    //用户请求统计
    @GetMapping(value = "/findUserReqTotal")
    public Object findUserReqTotal() {
        return operateRecordService.findUserReqTotal();
    }
}
