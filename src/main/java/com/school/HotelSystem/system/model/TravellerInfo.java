package com.school.HotelSystem.system.model;

import java.util.Date;

public class TravellerInfo extends TravellerInfoKey {
    private String travellerName;

    private Date travellerInTime;

    private Date travellerOutTime;

    private Integer travellerJifen;
    
    private RoomInfo roomInfo;
    
    private RoomVolumeInfo roomVolumeInfo;

    public String getTravellerName() {
        return travellerName;
    }

    public RoomInfo getRoomInfo() {
		return roomInfo;
	}

	public void setRoomInfo(RoomInfo roomInfo) {
		this.roomInfo = roomInfo;
	}

	public RoomVolumeInfo getRoomVolumeInfo() {
		return roomVolumeInfo;
	}

	public void setRoomVolumeInfo(RoomVolumeInfo roomVolumeInfo) {
		this.roomVolumeInfo = roomVolumeInfo;
	}

	public void setTravellerName(String travellerName) {
        this.travellerName = travellerName;
    }

    public Date getTravellerInTime() {
        return travellerInTime;
    }

    public void setTravellerInTime(Date travellerInTime) {
        this.travellerInTime = travellerInTime;
    }

    public Date getTravellerOutTime() {
        return travellerOutTime;
    }

    public void setTravellerOutTime(Date travellerOutTime) {
        this.travellerOutTime = travellerOutTime;
    }

    public Integer getTravellerJifen() {
        return travellerJifen;
    }

    public void setTravellerJifen(Integer travellerJifen) {
        this.travellerJifen = travellerJifen;
    }

	@Override
	public String toString() {
		return "TravellerInfo [travellerName=" + travellerName + ", travellerInTime=" + travellerInTime
				+ ", travellerOutTime=" + travellerOutTime + ", travellerJifen=" + travellerJifen + ", roomInfo="
				+ roomInfo + ", roomVolumeInfo=" + roomVolumeInfo + "]";
	}
    
}