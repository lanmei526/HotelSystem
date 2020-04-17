package com.school.HotelSystem.system.dao;

import java.util.List;

import com.school.HotelSystem.system.model.ShrioUser;
import com.school.HotelSystem.system.model.UserRole;

public interface UserRoleMapper {
    int deleteByPrimaryKey(String id);

    int insert(UserRole record);

    int insertSelective(UserRole record);

    UserRole selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(UserRole record);

    int updateByPrimaryKey(UserRole record);

	List<UserRole> queryUserRoleList();

	List<ShrioUser> queryYuangongList();

	int deleteByUserId(String id);
}