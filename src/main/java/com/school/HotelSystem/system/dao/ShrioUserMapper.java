package com.school.HotelSystem.system.dao;

import java.util.List;

import com.school.HotelSystem.system.model.ShrioUser;

public interface ShrioUserMapper {
    int deleteByPrimaryKey(String id);

	int insert(ShrioUser record);

	int insertSelective(ShrioUser record);

	ShrioUser selectByPrimaryKey(String id);

	int updateByPrimaryKeySelective(ShrioUser record);

	int updateByPrimaryKey(ShrioUser record);


	List<ShrioUser> queryYuangongList();

	ShrioUser queryUser(ShrioUser shrioUser);

	ShrioUser queryUserByUserCode(String usercode);

	ShrioUser searchCookie(String value);

	List<ShrioUser> queryUserByAll(String username, String roleName);
}