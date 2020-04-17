package com.school.HotelSystem.system.dao;

import java.util.List;

import com.school.HotelSystem.system.model.RoleInfo;

public interface RoleInfoMapper {
    int deleteByPrimaryKey(String roleId);

    int insert(RoleInfo record);

    int insertSelective(RoleInfo record);

    RoleInfo selectByPrimaryKey(String roleId);

    int updateByPrimaryKeySelective(RoleInfo record);

    int updateByPrimaryKey(RoleInfo record);

	List<RoleInfo> queryRoleList();

	RoleInfo queryRoleByUserId(String id);
}