package com.qxf.service.impl;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.qxf.mapper.RolePermsMapper;
import com.qxf.pojo.Perms;
import com.qxf.pojo.RolePerms;
import com.qxf.service.RolePermsService;
import com.qxf.utils.EnumCode;
import com.qxf.utils.ResultUtil;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class RolePermsServiceImpl extends ServiceImpl<RolePermsMapper, RolePerms> implements RolePermsService {

    /**
     * 根据角色查询角色权限
     */
    public List<RolePerms> findRolesPermisByRole(String roleId) {
        return baseMapper.findRolesPermisByRole(roleId);
    }

    /**
     * 添加角色权限
     */
    @Transactional
    public Object addRolesPermis(RolePerms vo) {
        RolePerms rp = null;
        String roleId = vo.getRoleId();
        String[] permisIds = vo.getPermsIds()==null?new String[0]:vo.getPermsIds();

        Map<String,Object> map = new HashMap<>();
        map.put("role_id",roleId);
        super.baseMapper.deleteByMap(map);

        for (int i = 0,j=permisIds.length; i < j; i++) {
            rp = new RolePerms();
            rp.setRoleId(roleId);
            rp.setPermsId(permisIds[i]);
            super.baseMapper.insert(rp);
        }
        return ResultUtil.result(EnumCode.OK.getValue(), "保存成功");
    }

    /**
     * 根据角色id查询记录数
     */
    public Integer findCountByRole(String roleId,String url) {
        return super.baseMapper.findCountByRole(roleId, url);
    }

    /**
     * 根据父id\用户类型查询角色菜单
     */
    public List<Perms> findRolesPermisByFatherId(String fatherId, String roleId) {
        return super.baseMapper.findRolesPermisByFatherId(fatherId, roleId);
    }
}
