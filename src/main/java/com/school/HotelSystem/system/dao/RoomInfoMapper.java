package com.school.HotelSystem.system.dao;

import com.school.HotelSystem.system.model.RoomInfo;

public interface RoomInfoMapper {
    int deleteByPrimaryKey(Integer roomNo);

    int insert(RoomInfo record);

    int insertSelective(RoomInfo record);

    RoomInfo selectByPrimaryKey(Integer roomNo);

    int updateByPrimaryKeySelective(RoomInfo record);

    int updateByPrimaryKey(RoomInfo record);
}