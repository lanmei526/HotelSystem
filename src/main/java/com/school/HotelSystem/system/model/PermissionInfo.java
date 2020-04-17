package com.school.HotelSystem.system.model;

public class PermissionInfo {
    private String permissionId;

	private String permissionName;

	private String permissionType;

	private String parentId;

	private String url;

	private String available;

	public String getPermissionId() {
		return permissionId;
	}

	public void setPermissionId(String permissionId) {
		this.permissionId = permissionId;
	}

	public String getPermissionName() {
		return permissionName;
	}

	public void setPermissionName(String permissionName) {
		this.permissionName = permissionName;
	}

	public String getPermissionType() {
		return permissionType;
	}

	public void setPermissionType(String permissionType) {
		this.permissionType = permissionType;
	}

	public String getParentId() {
		return parentId;
	}

	public void setParentId(String parentId) {
		this.parentId = parentId;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getAvailable() {
		return available;
	}

	public void setAvailable(String available) {
		this.available = available;
	}

	@Override
	public String toString() {
		return "PermissionInfo [permissionId=" + permissionId + ", permissionName=" + permissionName
				+ ", permissionType=" + permissionType + ", parentId=" + parentId + ", url=" + url + ", available="
				+ available + "]";
	}

	
}