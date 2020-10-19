package com.qin.mall.auth.mapper;

import com.qin.mall.auth.domain.UmsGrowthChangeHistory;

public interface UmsGrowthChangeHistoryMapper {
    int deleteByPrimaryKey(Long id);

    int insert(UmsGrowthChangeHistory record);

    int insertSelective(UmsGrowthChangeHistory record);

    UmsGrowthChangeHistory selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(UmsGrowthChangeHistory record);

    int updateByPrimaryKey(UmsGrowthChangeHistory record);
}