package com.qin.mall.auth.mapper;

import com.qin.mall.auth.domain.UmsMemberTask;

public interface UmsMemberTaskMapper {
    int deleteByPrimaryKey(Long id);

    int insert(UmsMemberTask record);

    int insertSelective(UmsMemberTask record);

    UmsMemberTask selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(UmsMemberTask record);

    int updateByPrimaryKey(UmsMemberTask record);
}