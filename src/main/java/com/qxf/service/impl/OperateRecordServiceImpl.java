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
import java.util.List;

@Service
public class OperateRecordServiceImpl extends ServiceImpl<OperateRecordMapper, OperateRecord> implements OperateRecordService {

    /**
     * 查询操作记录
     */
    public List<OperateRecord> findOperatingRecordByPage(Page<OperateRecord> page, OperateRecord dto){
        return super.baseMapper.findOperateRecordByPage(page,dto);
    }

    /**
     * 访问统计
     */
    public Object findUserReqTotal() {

        Integer reqList = super.baseMapper.findAllRequstCount();
//        List<RequstOprDto> reqData1 = new ArrayList<>();
//        List<RequstOprDto> reqData2 = new ArrayList<>();
//        String[] arrNa = new String[reqList.size()];
//        RequstOprDto reo = null;
//        for (int i = 0, j = reqList.size(); i < j; i++) {
//            if (reqList.get(i).getType().equals(1)) {
//                // Method
//                reo = new RequstOprDto();
//                reo.setName(reqList.get(i).getNa());
//                reo.setValue(reqList.get(i).getTotal());
//                reqData1.add(reo);
//            } else {
//                // 源
//                reo = new RequstOprDto();
//                reo.setName(reqList.get(i).getNa());
//                reo.setValue(reqList.get(i).getTotal());
//                reqData2.add(reo);
//            }
//            arrNa[i] = reqList.get(i).getNa();
//        }
//
//        RequstOprDto r = new RequstOprDto();
//        List<RequstOprDto> reqData3 = new ArrayList<>();
//        r.setMetlist((ArrayList) reqData1);
//        r.setUsrlist((ArrayList) reqData2);
//        r.setArrName(arrNa);
//        reqData3.add(r);

        return ResultUtil.result(EnumCode.OK.getValue(), EnumCode.OK.getText(), reqList);
    }
}
