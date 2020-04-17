package com.school.HotelSystem.system.model;

public class RoomInfo {
    private Integer roomNo;

    private String roomType;

    private String roomCheckIn;

    private Integer roomTravellerId;

    private String userId;

    public Integer getRoomNo() {
        return roomNo;
    }

    public void setRoomNo(Integer roomNo) {
        this.roomNo = roomNo;
    }

    public String getRoomType() {
        return roomType;
    }

    public void setRoomType(String roomType) {
        this.roomType = roomType;
    }

    public String getRoomCheckIn() {
        return roomCheckIn;
    }

    public void setRoomCheckIn(String roomCheckIn) {
        this.roomCheckIn = roomCheckIn;
    }

    public Integer getRoomTravellerId() {
        return roomTravellerId;
    }

    public void setRoomTravellerId(Integer roomTravellerId) {
        this.roomTravellerId = roomTravellerId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

	@Override
	public String toString() {
		return "RoomInfo [roomNo=" + roomNo + ", roomType=" + roomType + ", roomCheckIn=" + roomCheckIn
				+ ", roomTravellerId=" + roomTravellerId + ", userId=" + userId + "]";
	}
    
    
}