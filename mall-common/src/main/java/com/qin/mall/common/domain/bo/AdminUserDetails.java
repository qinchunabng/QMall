package com.qin.mall.common.domain.bo;

import com.qin.mall.common.domain.dto.UmsAdminDto;
import com.qin.mall.common.domain.dto.UmsResourceDto;
import com.qin.mall.common.enums.UserEnableStatus;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;
import java.util.List;
import java.util.stream.Collectors;

/**
 * Spring Security需要的用户详情
 * @author qinch
 */
public class AdminUserDetails implements UserDetails {

    private UmsAdminDto umsAdminDto;

    private List<UmsResourceDto> resourceList;

    public AdminUserDetails(UmsAdminDto umsAdminDto, List<UmsResourceDto> resourceList) {
        this.umsAdminDto = umsAdminDto;
        this.resourceList = resourceList;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        //返回当前用户的角色
        return resourceList.stream()
                .map(role -> new SimpleGrantedAuthority(role.getId() + ":" + role.getName()))
                .collect(Collectors.toList());
    }

    @Override
    public String getPassword() {
        return umsAdminDto.getPassword();
    }

    @Override
    public String getUsername() {
        return umsAdminDto.getUsername();
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return UserEnableStatus.ENABLE.getCode() == umsAdminDto.getStatus();
    }
}
