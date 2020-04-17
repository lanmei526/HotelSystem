package com.school.HotelSystem.system.model;

public class RolePermission {
    private String id;

    private String roleId;

    private String permissId;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getRoleId() {
        return roleId;
    }

    public void setRoleId(String roleId) {
        this.roleId = roleId;
    }

    public String getPermissId() {
        return permissId;
    }

    public void setPermissId(String permissId) {
        this.permissId = permissId;
    }
}