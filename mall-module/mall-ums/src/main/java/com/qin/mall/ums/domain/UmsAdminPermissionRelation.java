package com.qin.mall.ums.domain;

public class UmsAdminPermissionRelation {
    /**
     *  
     */
    private Long id;

    /**
     *  
     */
    private Long adminId;

    /**
     *  
     */
    private Long permissionId;

    /**
     *  
     */
    private Integer type;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getAdminId() {
        return adminId;
    }

    public void setAdminId(Long adminId) {
        this.adminId = adminId;
    }

    public Long getPermissionId() {
        return permissionId;
    }

    public void setPermissionId(Long permissionId) {
        this.permissionId = permissionId;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }
}