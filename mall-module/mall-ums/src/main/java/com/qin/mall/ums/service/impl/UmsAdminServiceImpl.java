package com.qin.mall.ums.service.impl;

import com.qin.mall.common.domain.bo.AdminUserDetails;
import com.qin.mall.common.domain.dto.UmsAdminDto;
import com.qin.mall.common.domain.dto.UmsResourceDto;
import com.qin.mall.ums.domain.UmsAdmin;
import com.qin.mall.ums.domain.UmsResource;
import com.qin.mall.ums.mapper.UmsAdminMapper;
import com.qin.mall.ums.service.UmsAdminService;
import com.qin.mall.ums.service.UmsResourceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

/**
 * UmsAdmin业务逻辑
 */
@Service
public class UmsAdminServiceImpl implements UmsAdminService {

    @Autowired
    private UmsAdminMapper umsAdminMapper;

    @Autowired
    private UmsResourceService umsResourceService;

    /**
     * 通过用户名称后去用户信息
     *
     * @param username
     * @return
     */
    @Override
    public AdminUserDetails getDetail(String username) {
        UmsAdmin umsAdmin = new UmsAdmin();
        umsAdmin.setUsername(username);
        UmsAdmin admin = umsAdminMapper.select(umsAdmin);
        if (admin == null) {
            return null;
        }
        //获取用户信息
        UmsAdminDto umsAdminDto = new UmsAdminDto();
        umsAdminDto.setId(admin.getId());
        umsAdminDto.setPassword(admin.getPassword());
        umsAdminDto.setStatus(admin.getStatus());
        umsAdminDto.setUsername(admin.getUsername());
        //获取用户关联权限
        List<UmsResource> resourceList = umsResourceService.getResource(admin.getId());
        AdminUserDetails adminUserDetails = new AdminUserDetails(umsAdminDto, resourceList.stream()
                .map(umsResource -> {
                    UmsResourceDto umsResourceDto = new UmsResourceDto();
                    umsResourceDto.setId(umsResource.getId());
                    umsResourceDto.setName(umsResource.getName());
                    umsResourceDto.setUrl(umsResource.getUrl());
                    return umsResourceDto;
                })
                .collect(Collectors.toList())
        );
        return adminUserDetails;
    }
}
