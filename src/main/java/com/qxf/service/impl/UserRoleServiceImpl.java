package com.qxf.service.impl;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.qxf.mapper.UserRoleMapper;
import com.qxf.pojo.UserRole;
import com.qxf.service.UserRoleService;
import org.springframework.stereotype.Service;

@Service
public class UserRoleServiceImpl extends ServiceImpl<UserRoleMapper, UserRole> implements UserRoleService {
	
}
