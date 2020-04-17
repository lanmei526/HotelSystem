package com.school.HotelSystem.system.dao;

import com.school.HotelSystem.system.model.RoomVolumeInfo;

public interface RoomVolumeInfoMapper {
    int deleteByPrimaryKey(String roomType);

	int insert(RoomVolumeInfo record);

	int insertSelective(RoomVolumeInfo record);

	RoomVolumeInfo selectByPrimaryKey(String roomType);

	int updateByPrimaryKeySelective(RoomVolumeInfo record);

	int updateByPrimaryKey(RoomVolumeInfo record);

}