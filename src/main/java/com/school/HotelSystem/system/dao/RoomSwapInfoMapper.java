package com.school.HotelSystem.system.dao;

import com.school.HotelSystem.system.model.RoomSwapInfo;

public interface RoomSwapInfoMapper {
    int deleteByPrimaryKey(Integer travellerId);

    int insert(RoomSwapInfo record);

    int insertSelective(RoomSwapInfo record);

    RoomSwapInfo selectByPrimaryKey(Integer travellerId);

    int updateByPrimaryKeySelective(RoomSwapInfo record);

    int updateByPrimaryKey(RoomSwapInfo record);
}