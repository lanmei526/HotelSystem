package com.school.HotelSystem.system.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.school.HotelSystem.system.dao.RoleInfoMapper;
import com.school.HotelSystem.system.model.RoleInfo;
import com.school.HotelSystem.system.service.RoleService;
@Service
public class RoleServiceImpl implements RoleService{

	@Autowired
	private RoleInfoMapper roleInfoMapper;
	@Override
	public List<RoleInfo> queryRoleList() {
		return roleInfoMapper.queryRoleList();
	}
	@Override
	public int addRole(RoleInfo role) {
		return roleInfoMapper.insertSelective(role);
	}
	@Override
	public int deleteRole(String id) {
		return roleInfoMapper.deleteByPrimaryKey(id);
	}
	@Override
	public RoleInfo queryRoleByUserId(String id) {
		return roleInfoMapper.queryRoleByUserId(id);
	}
	@Override
	public RoleInfo queryRoleByRoleId(String id) {
		return roleInfoMapper.selectByPrimaryKey(id);
	}

}
