package com.school.HotelSystem.system.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.school.HotelSystem.system.dao.RolePermissionMapper;
import com.school.HotelSystem.system.model.RolePermission;
import com.school.HotelSystem.system.service.RolePermissionService;

import frame.utils.PrimaryKeyUtil;

@Service
public class RolePermissionServiceImpl implements RolePermissionService {

	@Autowired
	private RolePermissionMapper rolePermissionMapper;
	@Override
	public int deleteRolePermissionById(String id) {
		return rolePermissionMapper.deleteByRoleId(id);
	}

	@Override
	public int addRolePermission(RolePermission rolePermission) {
		rolePermission.setId(PrimaryKeyUtil.getPrimaryKey());
		return rolePermissionMapper.insertSelective(rolePermission);
	}

}
