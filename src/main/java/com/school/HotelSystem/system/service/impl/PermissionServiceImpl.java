package com.school.HotelSystem.system.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.school.HotelSystem.system.dao.PermissionInfoMapper;
import com.school.HotelSystem.system.model.PermissionInfo;
import com.school.HotelSystem.system.service.PermissionService;

import frame.utils.PrimaryKeyUtil;

@Service
public class PermissionServiceImpl implements PermissionService {

	@Autowired
	private PermissionInfoMapper permissionInfoMapper;

	@Override
	public int addPermission(PermissionInfo permission) {
		permission.setPermissionId(PrimaryKeyUtil.getPrimaryKey());
		return permissionInfoMapper.insertSelective(permission);
	}

	@Override
	public int deletePermission(String id) {
		return permissionInfoMapper.deleteByPrimaryKey(id);
	}

	@Override
	public PermissionInfo queryPermissionById(String id) {
		return permissionInfoMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updatePermission(PermissionInfo permission) {
		return permissionInfoMapper.updateByPrimaryKeySelective(permission);
	}

	@Override
	public List<PermissionInfo> querySelectPermissionByRole(String id) {
		return permissionInfoMapper.querySelectPermissionByRole(id);
	}

	@Override
	public List<PermissionInfo> queryPermissionMenuListById(String id) {
		return permissionInfoMapper.queryPermissionMenuListById(id);
	}

	@Override
	public List<PermissionInfo> querypermissionMenuListByParentId(String id) {
		return permissionInfoMapper.querypermissionMenuListByParentId(id);
	}


	@Override
	public List<PermissionInfo> queryPermissionList() {
		return permissionInfoMapper.queryPermissionList();
	}

	@Override
	public List<PermissionInfo> queryPermissionListByType(String permissionType) {
		return permissionInfoMapper.queryPermissionListByType(permissionType);
	}

}
