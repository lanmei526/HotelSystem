package com.school.HotelSystem.system.service;

import com.school.HotelSystem.system.model.RolePermission;

public interface RolePermissionService {

	int deleteRolePermissionById(String id);

	int addRolePermission(RolePermission rolePermission);

}
