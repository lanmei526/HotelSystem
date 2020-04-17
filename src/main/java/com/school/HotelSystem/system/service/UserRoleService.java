package com.school.HotelSystem.system.service;

import java.util.List;

import com.school.HotelSystem.system.model.UserRole;
public interface UserRoleService {

	List<UserRole> queryUserRoleList();

	int FPUserRole(UserRole userRole);

	int deleteUserRoleByUserId(String id);

}
