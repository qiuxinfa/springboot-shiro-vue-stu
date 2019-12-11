package com.qxf.service.impl;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.qxf.mapper.OperateRecordMapper;
import com.qxf.pojo.OperateRecord;
import com.qxf.service.OperateRecordService;
import com.qxf.utils.EnumCode;
import com.qxf.utils.ResultUtil;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class OperateRecordServiceImpl extends ServiceImpl<OperateRecordMapper, OperateRecord> implements OperateRecordService {

    /**
     * 查询操作记录
     */
    public List<OperateRecord> findOperatingRecordByPage(Page<OperateRecord> page, String searchKeyWord){
        return super.baseMapper.findOperateRecordByPage(page,searchKeyWord);
    }

    /**
     * 访问统计
     */
    public Object findUserReqTotal() {
        List<OperateRecord> reqList = super.baseMapper.findAllRequstCount();
        List<Map<String,Object>> reqData1 = new ArrayList<>();
        List<Map<String,Object>> reqData2 = new ArrayList<>();
        String[] arrNa = new String[reqList.size()];
        for (int i = 0, j = reqList.size(); i < j; i++) {
            if (reqList.get(i).getType().equals(1)) {
                // 有请求方法
                Map<String,Object> map = new HashMap<>();
                map.put("name",reqList.get(i).getMethod());
                map.put("value",reqList.get(i).getTotal());
                reqData1.add(map);
            } else {
                // 没有查到请求方法
                Map<String,Object> map = new HashMap<>();
                map.put("name",reqList.get(i).getMethod());
                map.put("value",reqList.get(i).getTotal());
                reqData2.add(map);
            }
            arrNa[i] = reqList.get(i).getMethod();
        }
        Map<String,Object> map = new HashMap<>();
        map.put("methodList",reqData1);
        map.put("userList",reqData2);
        map.put("arrName",arrNa);

        return ResultUtil.result(EnumCode.OK.getValue(), EnumCode.OK.getText(), map);
    }
}
