package com.school.HotelSystem.system.model;

import java.util.Date;

public class RoomSwapInfo {
    private Integer travellerId;

    private String travellerName;

    private Integer roomNo;

    private String roomType;

    private Double roomAddPice;

    private Date swapTime;

    public Integer getTravellerId() {
        return travellerId;
    }

    public void setTravellerId(Integer travellerId) {
        this.travellerId = travellerId;
    }

    public String getTravellerName() {
        return travellerName;
    }

    public void setTravellerName(String travellerName) {
        this.travellerName = travellerName;
    }

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

    public Double getRoomAddPice() {
        return roomAddPice;
    }

    public void setRoomAddPice(Double roomAddPice) {
        this.roomAddPice = roomAddPice;
    }

    public Date getSwapTime() {
        return swapTime;
    }

    public void setSwapTime(Date swapTime) {
        this.swapTime = swapTime;
    }
}