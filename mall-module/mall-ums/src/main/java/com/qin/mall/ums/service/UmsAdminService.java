package com.qin.mall.ums.service;

import com.qin.mall.common.domain.bo.AdminUserDetails;

/**
 * UmsAdmin业务逻辑
 * @author qinch
 */
public interface UmsAdminService {

    /**
     * 通过用户名称后去用户信息
     * @param username
     * @return
     */
    AdminUserDetails getDetail(String username);
}
