package com.school.HotelSystem.system.dao;

import java.util.List;

import com.school.HotelSystem.system.model.TravellerInfo;
import com.school.HotelSystem.system.model.TravellerInfoKey;

public interface TravellerInfoMapper {
    int deleteByPrimaryKey(TravellerInfoKey key);

    int insert(TravellerInfo record);

    int insertSelective(TravellerInfo record);

    TravellerInfo selectByPrimaryKey(TravellerInfoKey key);

    int updateByPrimaryKeySelective(TravellerInfo record);

    int updateByPrimaryKey(TravellerInfo record);

	List<TravellerInfo> queryTravelInfoList();

	List<TravellerInfo> queryTravelInfoListBySome(String travellerName, String roomType);
}