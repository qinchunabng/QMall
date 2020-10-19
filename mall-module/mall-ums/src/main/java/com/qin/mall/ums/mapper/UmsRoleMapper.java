package com.qin.mall.ums.mapper;

import com.qin.mall.ums.domain.UmsRole;

public interface UmsRoleMapper {
    int deleteByPrimaryKey(Long id);

    int insert(UmsRole record);

    int insertSelective(UmsRole record);

    UmsRole selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(UmsRole record);

    int updateByPrimaryKey(UmsRole record);
}