package com.school.HotelSystem.system.service;

import java.util.List;

import com.school.HotelSystem.system.model.TravellerInfo;

public interface BillService {

	List<TravellerInfo> queryTravelInfoList();

	List<TravellerInfo> queryTravelInfoListBySome(String travellerName, String roomType);

}
