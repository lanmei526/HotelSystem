package com.school.HotelSystem.system.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.school.HotelSystem.system.dao.TravellerInfoMapper;
import com.school.HotelSystem.system.model.TravellerInfo;
import com.school.HotelSystem.system.service.BillService;
@Service
public class BillServiceImpl implements BillService {

	@Autowired
	private TravellerInfoMapper travellerInfoMapper;
	@Override
	public List<TravellerInfo> queryTravelInfoList() {
		return travellerInfoMapper.queryTravelInfoList();
	}
	@Override
	public List<TravellerInfo> queryTravelInfoListBySome(String travellerName, String roomType) {
		return travellerInfoMapper.queryTravelInfoListBySome(travellerName,roomType);
	}
	

}
