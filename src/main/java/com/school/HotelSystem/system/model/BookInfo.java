package com.school.HotelSystem.system.model;

import java.util.Date;

public class BookInfo {
    private Integer travellerId;

    private String travellerName;

    private String roomType;

    private Integer travellerCall;

    private Date travellerInTime;

    private Date travellerOutTime;

    private Integer travellerJifen;

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

    public String getRoomType() {
        return roomType;
    }

    public void setRoomType(String roomType) {
        this.roomType = roomType;
    }

    public Integer getTravellerCall() {
        return travellerCall;
    }

    public void setTravellerCall(Integer travellerCall) {
        this.travellerCall = travellerCall;
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
}