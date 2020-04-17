package com.school.HotelSystem.system.model;

import java.util.List;

public class UserRole {
    private String id;

    private String userId;

    private String roleId;
    private ShrioUser shrioUser;
    private RoleInfo roleInfo;
  

	public ShrioUser getShrioUser() {
		return shrioUser;
	}

	public void setShrioUser(ShrioUser shrioUser) {
		this.shrioUser = shrioUser;
	}

	public RoleInfo getRoleInfo() {
		return roleInfo;
	}

	public void setRoleInfo(RoleInfo roleInfo) {
		this.roleInfo = roleInfo;
	}

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getRoleId() {
        return roleId;
    }

    public void setRoleId(String roleId) {
        this.roleId = roleId;
    }

	@Override
	public String toString() {
		return "UserRole [id=" + id + ", userId=" + userId + ", roleId=" + roleId + ", shrioUser=" + shrioUser
				+ ", roleInfo=" + roleInfo + "]";
	}
    
}