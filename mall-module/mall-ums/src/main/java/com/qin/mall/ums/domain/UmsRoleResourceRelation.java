package com.qin.mall.ums.domain;

public class UmsRoleResourceRelation {
    /**
     *  
     */
    private Long id;

    /**
     *  角色ID
     */
    private Long roleId;

    /**
     *  资源ID
     */
    private Long resourceId;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getRoleId() {
        return roleId;
    }

    public void setRoleId(Long roleId) {
        this.roleId = roleId;
    }

    public Long getResourceId() {
        return resourceId;
    }

    public void setResourceId(Long resourceId) {
        this.resourceId = resourceId;
    }
}