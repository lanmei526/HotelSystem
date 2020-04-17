package com.school.HotelSystem.system.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.school.HotelSystem.system.dao.UserRoleMapper;
import com.school.HotelSystem.system.model.UserRole;
import com.school.HotelSystem.system.service.UserRoleService;

@Service
public class UserRoleServiceImpl implements UserRoleService {

	@Autowired
	private UserRoleMapper userRoleMapper;
	@Override
	public List<UserRole> queryUserRoleList() {
		return userRoleMapper.queryUserRoleList();
	}
	@Override
	public int FPUserRole(UserRole userRole) {
		return userRoleMapper.insertSelective(userRole);
	}
	@Override
	public int deleteUserRoleByUserId(String id) {
		return userRoleMapper.deleteByUserId(id);
	}

}
