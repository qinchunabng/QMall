package com.qin.mall.ums.mapper;

import com.qin.mall.ums.domain.UmsResource;

import java.util.List;

public interface UmsResourceMapper {
    int deleteByPrimaryKey(Long id);

    int insert(UmsResource record);

    int insertSelective(UmsResource record);

    UmsResource selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(UmsResource record);

    int updateByPrimaryKey(UmsResource record);

    List<UmsResource> getResourceByAdminId(Long adminUserId);
}