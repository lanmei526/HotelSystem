package com.school.HotelSystem.system.model;

public class TravellerInfoKey {
    private Integer travellerId;

    private Integer roomNo;

    public Integer getTravellerId() {
        return travellerId;
    }

    public void setTravellerId(Integer travellerId) {
        this.travellerId = travellerId;
    }

    public Integer getRoomNo() {
        return roomNo;
    }

    public void setRoomNo(Integer roomNo) {
        this.roomNo = roomNo;
    }

	@Override
	public String toString() {
		return "TravellerInfoKey [travellerId=" + travellerId + ", roomNo=" + roomNo + "]";
	}
    
}