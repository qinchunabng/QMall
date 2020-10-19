package com.qin.mall.ums.service.impl;

import com.qin.mall.ums.domain.UmsResource;
import com.qin.mall.ums.mapper.UmsResourceMapper;
import com.qin.mall.ums.service.UmsResourceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author qinch
 */
@Service
public class UmsResourceServiceImpl implements UmsResourceService {

    @Autowired
    private UmsResourceMapper umsResourceMapper;

    /**
     * 根据用户ID获取资源权限
     * @param adminUserId
     * @return
     */
    @Cacheable(value = "UmsResource", key = "#p0")
    @Override
    public List<UmsResource> getResource(Long adminUserId) {
        return umsResourceMapper.getResourceByAdminId(adminUserId);
    }
}
