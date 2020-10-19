package com.qin.mall.ums.domain;

public class UmsRoleMenuRelation {
    /**
     *  
     */
    private Long id;

    /**
     *  角色ID
     */
    private Long roleId;

    /**
     *  菜单ID
     */
    private Long menuId;

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

    public Long getMenuId() {
        return menuId;
    }

    public void setMenuId(Long menuId) {
        this.menuId = menuId;
    }
}