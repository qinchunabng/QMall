package com.qin.mall.auth.mapper;

import com.qin.mall.auth.domain.UmsMemberStatisticsInfo;

public interface UmsMemberStatisticsInfoMapper {
    int deleteByPrimaryKey(Long id);

    int insert(UmsMemberStatisticsInfo record);

    int insertSelective(UmsMemberStatisticsInfo record);

    UmsMemberStatisticsInfo selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(UmsMemberStatisticsInfo record);

    int updateByPrimaryKey(UmsMemberStatisticsInfo record);
}