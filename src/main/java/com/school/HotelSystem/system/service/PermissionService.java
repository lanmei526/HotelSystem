package com.school.HotelSystem.system.service;

import java.util.List;

import com.school.HotelSystem.system.model.PermissionInfo;

public interface PermissionService {

	List<PermissionInfo> queryPermissionList();

	int addPermission(PermissionInfo permission);

	int deletePermission(String id);

	PermissionInfo queryPermissionById(String id);

	int updatePermission(PermissionInfo permission);

	List<PermissionInfo> querySelectPermissionByRole(String id);

	List<PermissionInfo> queryPermissionMenuListById(String id);

	List<PermissionInfo> querypermissionMenuListByParentId(String parentId);

	List<PermissionInfo> queryPermissionListByType(String permissionType);

}
