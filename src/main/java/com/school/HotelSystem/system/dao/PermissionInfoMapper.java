package com.school.HotelSystem.system.dao;

import java.util.List;

import com.school.HotelSystem.system.model.PermissionInfo;

public interface PermissionInfoMapper {

	int deleteByPrimaryKey(String permissionId);

    int insert(PermissionInfo record);

    int insertSelective(PermissionInfo record);

    PermissionInfo selectByPrimaryKey(String permissionId);

    int updateByPrimaryKeySelective(PermissionInfo record);

    int updateByPrimaryKey(PermissionInfo record);

	List<PermissionInfo> queryPermissionList();

	List<PermissionInfo> querySelectPermissionByRole(String id);

	List<PermissionInfo> queryPermissionMenuListById(String id);

	List<PermissionInfo> querypermissionMenuListByParentId(String id);

	List<PermissionInfo> queryPermissionListByType(String permissionType);
}