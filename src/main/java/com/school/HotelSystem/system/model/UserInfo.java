package com.school.HotelSystem.system.model;

public class UserInfo {
    private String id;

    private Integer userId;

    private String userName;

    private String userPassword;

    private Integer userCall;

    private Integer userJifen;

    private String locked;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public Integer getUserCall() {
        return userCall;
    }

    public void setUserCall(Integer userCall) {
        this.userCall = userCall;
    }

    public Integer getUserJifen() {
        return userJifen;
    }

    public void setUserJifen(Integer userJifen) {
        this.userJifen = userJifen;
    }

    public String getLocked() {
        return locked;
    }

    public void setLocked(String locked) {
        this.locked = locked;
    }
}