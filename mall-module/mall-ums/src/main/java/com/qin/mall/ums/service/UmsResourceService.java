package com.qin.mall.ums.service;

import com.qin.mall.ums.domain.UmsResource;

import java.util.List;

public interface UmsResourceService {

    /**
     * 根据用户ID获取资源权限
     * @param adminUserId
     * @return
     */
    List<UmsResource> getResource(Long adminUserId);
}
