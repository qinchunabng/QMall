package com.qin.mall.auth.mapper;

import com.qin.mall.auth.domain.UmsRolePermissionRelation;

public interface UmsRolePermissionRelationMapper {
    int deleteByPrimaryKey(Long id);

    int insert(UmsRolePermissionRelation record);

    int insertSelective(UmsRolePermissionRelation record);

    UmsRolePermissionRelation selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(UmsRolePermissionRelation record);

    int updateByPrimaryKey(UmsRolePermissionRelation record);
}