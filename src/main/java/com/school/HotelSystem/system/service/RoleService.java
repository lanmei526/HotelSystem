package com.school.HotelSystem.system.service;

import java.util.List;

import com.school.HotelSystem.system.model.RoleInfo;

public interface RoleService {

	List<RoleInfo> queryRoleList();

	int addRole(RoleInfo role);

	int deleteRole(String id);

	RoleInfo queryRoleByUserId(String id);

	RoleInfo queryRoleByRoleId(String id);

}
