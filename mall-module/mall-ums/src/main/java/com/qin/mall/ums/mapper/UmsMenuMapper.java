package com.qin.mall.ums.mapper;

import com.qin.mall.ums.domain.UmsMenu;

public interface UmsMenuMapper {
    int deleteByPrimaryKey(Long id);

    int insert(UmsMenu record);

    int insertSelective(UmsMenu record);

    UmsMenu selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(UmsMenu record);

    int updateByPrimaryKey(UmsMenu record);
}